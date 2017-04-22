; ModuleID = '/root/root_explo/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Square_root_str = internal unnamed_addr constant [12 x i8] c"Square_root\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
declare i65 @llvm.part.select.i65(i65, i32, i32) nounwind readnone

; [#uses=1]
declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i105 @llvm.part.select.i105(i105, i32, i32) nounwind readnone

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @Square_root_dup(i32 %x) readnone {
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !13), !dbg !22 ; [debug line = 4:19] [debug variable = x]
  %arr = alloca [20 x i5], align 1                ; [#uses=4 type=[20 x i5]*]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !13), !dbg !22 ; [debug line = 4:19] [debug variable = x]
  %p_shl = call i35 @_ssdm_op_BitConcatenate.i35.i32.i3(i32 %x_read, i3 0), !dbg !23 ; [#uses=1 type=i35] [debug line = 5:2]
  %p_shl_cast = sext i35 %p_shl to i36, !dbg !23  ; [#uses=1 type=i36] [debug line = 5:2]
  %p_shl1 = call i33 @_ssdm_op_BitConcatenate.i33.i32.i1(i32 %x_read, i1 false), !dbg !23 ; [#uses=1 type=i33] [debug line = 5:2]
  %p_shl1_cast = sext i33 %p_shl1 to i36, !dbg !23 ; [#uses=1 type=i36] [debug line = 5:2]
  %y = add i36 %p_shl_cast, %p_shl1_cast, !dbg !23 ; [#uses=1 type=i36] [debug line = 5:2]
  %x_assign_cast_cast_cast = sext i36 %y to i52, !dbg !23 ; [#uses=1 type=i52] [debug line = 5:2]
  call void @llvm.dbg.value(metadata !{i36 %y}, i64 0, metadata !13), !dbg !23 ; [debug line = 5:2] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[20 x i5]* %arr}, metadata !25), !dbg !29 ; [debug line = 6:23] [debug variable = arr]
  call void @llvm.dbg.value(metadata !{i36 %y}, i64 0, metadata !30), !dbg !31 ; [debug line = 6:43] [debug variable = y]
  br label %1, !dbg !32                           ; [debug line = 7:2]

; <label>:1                                       ; preds = %2, %0
  %indvars_iv = phi i5 [ %cou1, %2 ], [ 0, %0 ]   ; [#uses=5 type=i5]
  %y1 = phi i52 [ %tmp_14, %2 ], [ %x_assign_cast_cast_cast, %0 ] ; [#uses=4 type=i52]
  %cou1_cast = zext i5 %indvars_iv to i64, !dbg !32 ; [#uses=1 type=i64] [debug line = 7:2]
  %tmp = icmp eq i52 %y1, 0, !dbg !32             ; [#uses=1 type=i1] [debug line = 7:2]
  %cou1 = add i5 %indvars_iv, 1, !dbg !33         ; [#uses=1 type=i5] [debug line = 11:2]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !32 ; [debug line = 7:2]

.preheader.preheader:                             ; preds = %1
  %tmp_3 = trunc i5 %indvars_iv to i1, !dbg !32   ; [#uses=1 type=i1] [debug line = 7:2]
  %cou1_cast2 = zext i5 %indvars_iv to i6, !dbg !32 ; [#uses=1 type=i6] [debug line = 7:2]
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %indvars_iv, i32 1, i32 4), !dbg !35 ; [#uses=2 type=i4] [debug line = 13:6]
  %tmp_1_cast = zext i4 %p_lshr_f_cast to i64, !dbg !35 ; [#uses=1 type=i64] [debug line = 13:6]
  %tmp_6 = add i6 -1, %cou1_cast2, !dbg !37       ; [#uses=1 type=i6] [debug line = 14:3]
  br label %.preheader, !dbg !35                  ; [debug line = 13:6]

; <label>:2                                       ; preds = %1
  %tmp_2 = srem i52 %y1, 10, !dbg !39             ; [#uses=1 type=i52] [debug line = 8:3]
  %arr_addr = getelementptr [20 x i5]* %arr, i64 0, i64 %cou1_cast, !dbg !39 ; [#uses=1 type=i5*] [debug line = 8:3]
  %tmp_9 = trunc i52 %tmp_2 to i5, !dbg !39       ; [#uses=1 type=i5] [debug line = 8:3]
  store i5 %tmp_9, i5* %arr_addr, align 1, !dbg !39 ; [debug line = 8:3]
  call void @llvm.dbg.value(metadata !{i5 %cou1}, i64 0, metadata !40), !dbg !41 ; [debug line = 9:3] [debug variable = cou1]
  %sext_cast = sext i52 %y1 to i105, !dbg !42     ; [#uses=1 type=i105] [debug line = 10:3]
  %mul = mul i105 7205759403792794, %sext_cast, !dbg !42 ; [#uses=2 type=i105] [debug line = 10:3]
  %neg_mul = sub i105 0, %mul, !dbg !42           ; [#uses=1 type=i105] [debug line = 10:3]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i52.i32(i52 %y1, i32 51), !dbg !42 ; [#uses=2 type=i1] [debug line = 10:3]
  %tmp_17 = call i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105 %neg_mul, i32 56, i32 104), !dbg !42 ; [#uses=1 type=i49] [debug line = 10:3]
  %tmp_1 = sext i49 %tmp_17 to i52, !dbg !42      ; [#uses=1 type=i52] [debug line = 10:3]
  %tmp_18 = call i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105 %mul, i32 56, i32 104), !dbg !42 ; [#uses=1 type=i49] [debug line = 10:3]
  %tmp_5 = sext i49 %tmp_18 to i52, !dbg !42      ; [#uses=2 type=i52] [debug line = 10:3]
  %tmp_10 = select i1 %tmp_16, i52 %tmp_1, i52 %tmp_5, !dbg !42 ; [#uses=1 type=i52] [debug line = 10:3]
  %neg_ti = sub i52 0, %tmp_10, !dbg !42          ; [#uses=1 type=i52] [debug line = 10:3]
  %tmp_14 = select i1 %tmp_16, i52 %neg_ti, i52 %tmp_5, !dbg !42 ; [#uses=1 type=i52] [debug line = 10:3]
  br label %1, !dbg !33                           ; [debug line = 11:2]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i = phi i4 [ %i_1, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %z = phi i15 [ %z_1, %3 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i15]
  %i_cast1 = zext i4 %i to i6, !dbg !35           ; [#uses=1 type=i6] [debug line = 13:6]
  %i_cast = zext i4 %i to i64, !dbg !35           ; [#uses=1 type=i64] [debug line = 13:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 10, i64 0) nounwind ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i, %p_lshr_f_cast, !dbg !35 ; [#uses=1 type=i1] [debug line = 13:6]
  %i_1 = add i4 %i, 1, !dbg !43                   ; [#uses=1 type=i4] [debug line = 13:19]
  br i1 %exitcond, label %_ifconv, label %3, !dbg !35 ; [debug line = 13:6]

; <label>:3                                       ; preds = %.preheader
  %tmp_7 = sub i6 %tmp_6, %i_cast1, !dbg !37      ; [#uses=1 type=i6] [debug line = 14:3]
  %tmp_7_cast = sext i6 %tmp_7 to i64, !dbg !37   ; [#uses=1 type=i64] [debug line = 14:3]
  %arr_addr_1 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp_7_cast, !dbg !37 ; [#uses=1 type=i5*] [debug line = 14:3]
  %arr_load = load i5* %arr_addr_1, align 1       ; [#uses=1 type=i5]
  %extLd12_cast = sext i5 %arr_load to i10, !dbg !37 ; [#uses=1 type=i10] [debug line = 14:3]
  %arr_addr_2 = getelementptr [20 x i5]* %arr, i64 0, i64 %i_cast, !dbg !37 ; [#uses=1 type=i5*] [debug line = 14:3]
  %arr_load_1 = load i5* %arr_addr_2, align 1     ; [#uses=1 type=i5]
  %extLd9_cast = sext i5 %arr_load_1 to i10, !dbg !37 ; [#uses=1 type=i10] [debug line = 14:3]
  %tmp_8 = mul i10 %extLd12_cast, %extLd9_cast, !dbg !37 ; [#uses=1 type=i10] [debug line = 14:3]
  %tmp_15 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_8, i1 false) ; [#uses=1 type=i11]
  %tmp_9_cast = sext i11 %tmp_15 to i15, !dbg !37 ; [#uses=1 type=i15] [debug line = 14:3]
  %z_1 = add i15 %z, %tmp_9_cast, !dbg !37        ; [#uses=1 type=i15] [debug line = 14:3]
  call void @llvm.dbg.value(metadata !{i15 %z_1}, i64 0, metadata !44), !dbg !37 ; [debug line = 14:3] [debug variable = z]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !45), !dbg !43 ; [debug line = 13:19] [debug variable = i]
  br label %.preheader, !dbg !43                  ; [debug line = 13:19]

_ifconv:                                          ; preds = %.preheader
  %arr_addr_3 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp_1_cast, !dbg !46 ; [#uses=1 type=i5*] [debug line = 16:18]
  %arr_load_2 = load i5* %arr_addr_3, align 1     ; [#uses=1 type=i5]
  %extLd_cast = sext i5 %arr_load_2 to i10, !dbg !46 ; [#uses=2 type=i10] [debug line = 16:18]
  %tmp_4 = mul i10 %extLd_cast, %extLd_cast, !dbg !46 ; [#uses=1 type=i10] [debug line = 16:18]
  %tmp_s = sext i10 %tmp_4 to i32, !dbg !46       ; [#uses=1 type=i32] [debug line = 16:18]
  %tmp_11 = sext i15 %z to i32, !dbg !46          ; [#uses=2 type=i32] [debug line = 16:18]
  %tmp_12 = add i32 %tmp_s, %tmp_11, !dbg !46     ; [#uses=1 type=i32] [debug line = 16:18]
  %tmp_13 = select i1 %tmp_3, i32 %tmp_12, i32 %tmp_11 ; [#uses=1 type=i32]
  ret i32 %tmp_13, !dbg !47                       ; [debug line = 18:2]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i52.i32.i32(i52, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=2]
define weak i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105, i32, i32) nounwind readnone {
entry:
  %empty = call i105 @llvm.part.select.i105(i105 %0, i32 %1, i32 %2) ; [#uses=1 type=i105]
  %empty_11 = trunc i105 %empty to i49            ; [#uses=1 type=i49]
  ret i49 %empty_11
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2) ; [#uses=1 type=i5]
  %empty_12 = trunc i5 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_12
}

; [#uses=2]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_13 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_13
}

; [#uses=8]
define weak i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65, i32, i32) nounwind readnone {
entry:
  %empty = call i65 @llvm.part.select.i65(i65 %0, i32 %1, i32 %2) ; [#uses=1 type=i65]
  %empty_14 = trunc i65 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_14
}

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone

; [#uses=0]
declare i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i52.i32(i52, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i52                     ; [#uses=1 type=i52]
  %empty_15 = shl i52 1, %empty                   ; [#uses=1 type=i52]
  %empty_16 = and i52 %0, %empty_15               ; [#uses=1 type=i52]
  %empty_17 = icmp ne i52 %empty_16, 0            ; [#uses=1 type=i1]
  ret i1 %empty_17
}

; [#uses=6]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_18 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_19 = icmp ne i32 %empty_18, 0            ; [#uses=1 type=i1]
  ret i1 %empty_19
}

; [#uses=0]
define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17                    ; [#uses=1 type=i17]
  %empty_20 = shl i17 1, %empty                   ; [#uses=1 type=i17]
  %empty_21 = and i17 %0, %empty_20               ; [#uses=1 type=i17]
  %empty_22 = icmp ne i17 %empty_21, 0            ; [#uses=1 type=i1]
  ret i1 %empty_22
}

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_23 = zext i1 %1 to i9                    ; [#uses=1 type=i9]
  %empty_24 = shl i9 %empty, 1                    ; [#uses=1 type=i9]
  %empty_25 = or i9 %empty_24, %empty_23          ; [#uses=1 type=i9]
  ret i9 %empty_25
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8                       ; [#uses=1 type=i8]
  %empty_26 = zext i4 %1 to i8                    ; [#uses=1 type=i8]
  %empty_27 = shl i8 %empty, 4                    ; [#uses=1 type=i8]
  %empty_28 = or i8 %empty_27, %empty_26          ; [#uses=1 type=i8]
  ret i8 %empty_28
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4, i1, i3) nounwind readnone

; [#uses=1]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_29 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_30 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_31 = or i7 %empty_30, %empty_29          ; [#uses=1 type=i7]
  ret i7 %empty_31
}

; [#uses=0]
declare i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6                       ; [#uses=1 type=i6]
  %empty_32 = zext i2 %1 to i6                    ; [#uses=1 type=i6]
  %empty_33 = shl i6 %empty, 2                    ; [#uses=1 type=i6]
  %empty_34 = or i6 %empty_33, %empty_32          ; [#uses=1 type=i6]
  ret i6 %empty_34
}

; [#uses=0]
declare i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4, i1, i1) nounwind readnone

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5                       ; [#uses=1 type=i5]
  %empty_35 = zext i1 %1 to i5                    ; [#uses=1 type=i5]
  %empty_36 = shl i5 %empty, 1                    ; [#uses=1 type=i5]
  %empty_37 = or i5 %empty_36, %empty_35          ; [#uses=1 type=i5]
  ret i5 %empty_37
}

; [#uses=1]
define weak i35 @_ssdm_op_BitConcatenate.i35.i32.i3(i32, i3) nounwind readnone {
entry:
  %empty = zext i32 %0 to i35                     ; [#uses=1 type=i35]
  %empty_38 = zext i3 %1 to i35                   ; [#uses=1 type=i35]
  %empty_39 = shl i35 %empty, 3                   ; [#uses=1 type=i35]
  %empty_40 = or i35 %empty_39, %empty_38         ; [#uses=1 type=i35]
  ret i35 %empty_40
}

; [#uses=1]
define weak i33 @_ssdm_op_BitConcatenate.i33.i32.i1(i32, i1) nounwind readnone {
entry:
  %empty = zext i32 %0 to i33                     ; [#uses=1 type=i33]
  %empty_41 = zext i1 %1 to i33                   ; [#uses=1 type=i33]
  %empty_42 = shl i33 %empty, 1                   ; [#uses=1 type=i33]
  %empty_43 = or i33 %empty_42, %empty_41         ; [#uses=1 type=i33]
  ret i33 %empty_43
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32                     ; [#uses=1 type=i32]
  %empty_44 = zext i1 %1 to i32                   ; [#uses=1 type=i32]
  %empty_45 = shl i32 %empty, 1                   ; [#uses=1 type=i32]
  %empty_46 = or i32 %empty_45, %empty_44         ; [#uses=1 type=i32]
  ret i32 %empty_46
}

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

; [#uses=1]
define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22                     ; [#uses=1 type=i22]
  %empty_47 = zext i1 %1 to i22                   ; [#uses=1 type=i22]
  %empty_48 = shl i22 %empty, 1                   ; [#uses=1 type=i22]
  %empty_49 = or i22 %empty_48, %empty_47         ; [#uses=1 type=i22]
  ret i22 %empty_49
}

; [#uses=0]
declare i22 @_ssdm_op_BitConcatenate.i22.i19.i3(i19, i3) nounwind readnone

; [#uses=1]
define weak i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12, i3) nounwind readnone {
entry:
  %empty = zext i12 %0 to i15                     ; [#uses=1 type=i15]
  %empty_50 = zext i3 %1 to i15                   ; [#uses=1 type=i15]
  %empty_51 = shl i15 %empty, 3                   ; [#uses=1 type=i15]
  %empty_52 = or i15 %empty_51, %empty_50         ; [#uses=1 type=i15]
  ret i15 %empty_52
}

; [#uses=1]
define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13                     ; [#uses=1 type=i13]
  %empty_53 = zext i1 %1 to i13                   ; [#uses=1 type=i13]
  %empty_54 = shl i13 %empty, 1                   ; [#uses=1 type=i13]
  %empty_55 = or i13 %empty_54, %empty_53         ; [#uses=1 type=i13]
  ret i13 %empty_55
}

; [#uses=1]
define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11                      ; [#uses=1 type=i11]
  %empty_56 = zext i3 %1 to i11                   ; [#uses=1 type=i11]
  %empty_57 = shl i11 %empty, 3                   ; [#uses=1 type=i11]
  %empty_58 = or i11 %empty_57, %empty_56         ; [#uses=1 type=i11]
  ret i11 %empty_58
}

; [#uses=1]
define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11                     ; [#uses=1 type=i11]
  %empty_59 = zext i1 %1 to i11                   ; [#uses=1 type=i11]
  %empty_60 = shl i11 %empty, 1                   ; [#uses=1 type=i11]
  %empty_61 = or i11 %empty_60, %empty_59         ; [#uses=1 type=i11]
  ret i11 %empty_61
}

; [#uses=0]
define void @Square_root(i32* %num, float* %ans) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %num) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(float* %ans) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @Square_root_str) nounwind
  %remy = alloca [20 x i32], align 16             ; [#uses=5 type=[20 x i32]*]
  %h = alloca [100 x i8], align 16                ; [#uses=9 type=[100 x i8]*]
  call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !58), !dbg !65 ; [debug line = 20:23] [debug variable = num]
  call void @llvm.dbg.value(metadata !{float* %ans}, i64 0, metadata !66), !dbg !67 ; [debug line = 20:35] [debug variable = ans]
  call void @llvm.dbg.declare(metadata !{[20 x i32]* %remy}, metadata !68), !dbg !71 ; [debug line = 27:5] [debug variable = remy]
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %h}, metadata !72), !dbg !77 ; [debug line = 28:6] [debug variable = h]
  %n = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %num) nounwind, !dbg !78 ; [#uses=2 type=i32] [debug line = 29:13]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !79), !dbg !78 ; [debug line = 29:13] [debug variable = n]
  br label %1, !dbg !80                           ; [debug line = 30:1]

; <label>:1                                       ; preds = %2, %0
  %n1 = phi i32 [ %n, %0 ], [ %n_1, %2 ]          ; [#uses=3 type=i32]
  %len2 = phi i32 [ 0, %0 ], [ %len, %2 ]         ; [#uses=9 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %len2}, i64 0, metadata !81), !dbg !82 ; [debug line = 34:15] [debug variable = len2]
  %tmp = icmp eq i32 %n1, 0, !dbg !80             ; [#uses=1 type=i1] [debug line = 30:1]
  %len = add nsw i32 %len2, 1, !dbg !83           ; [#uses=4 type=i32] [debug line = 32:1]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !80 ; [debug line = 30:1]

.preheader.preheader:                             ; preds = %1
  %tmp_32 = trunc i32 %len2 to i1, !dbg !82       ; [#uses=1 type=i1] [debug line = 34:15]
  br label %.preheader, !dbg !85                  ; [debug line = 35:1]

; <label>:2                                       ; preds = %1
  %sext_cast = sext i32 %n1 to i65, !dbg !86      ; [#uses=1 type=i65] [debug line = 31:2]
  %mul = mul i65 %sext_cast, 6871947674, !dbg !86 ; [#uses=2 type=i65] [debug line = 31:2]
  %neg_mul = sub i65 0, %mul, !dbg !86            ; [#uses=1 type=i65] [debug line = 31:2]
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n1, i32 31), !dbg !86 ; [#uses=2 type=i1] [debug line = 31:2]
  %tmp_44 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul, i32 36, i32 64), !dbg !86 ; [#uses=1 type=i29] [debug line = 31:2]
  %tmp_34 = sext i29 %tmp_44 to i32, !dbg !86     ; [#uses=1 type=i32] [debug line = 31:2]
  %tmp_49 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul, i32 36, i32 64), !dbg !86 ; [#uses=1 type=i29] [debug line = 31:2]
  %tmp_35 = sext i29 %tmp_49 to i32, !dbg !86     ; [#uses=2 type=i32] [debug line = 31:2]
  %tmp_45 = select i1 %tmp_36, i32 %tmp_34, i32 %tmp_35, !dbg !86 ; [#uses=1 type=i32] [debug line = 31:2]
  %neg_ti = sub i32 0, %tmp_45, !dbg !86          ; [#uses=1 type=i32] [debug line = 31:2]
  %n_1 = select i1 %tmp_36, i32 %neg_ti, i32 %tmp_35, !dbg !86 ; [#uses=1 type=i32] [debug line = 31:2]
  call void @llvm.dbg.value(metadata !{i32 %n_1}, i64 0, metadata !79), !dbg !86 ; [debug line = 31:2] [debug variable = n]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !87), !dbg !83 ; [debug line = 32:1] [debug variable = len]
  br label %1, !dbg !88                           ; [debug line = 33:1]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %tmp_s = phi i32 [ %tmp_22, %3 ], [ %n, %.preheader.preheader ] ; [#uses=4 type=i32]
  %len1 = phi i32 [ %len2_1, %3 ], [ %len2, %.preheader.preheader ] ; [#uses=1 type=i32]
  %tmp_11 = icmp eq i32 %tmp_s, 0, !dbg !85       ; [#uses=1 type=i1] [debug line = 35:1]
  br i1 %tmp_11, label %4, label %3, !dbg !85     ; [debug line = 35:1]

; <label>:3                                       ; preds = %.preheader
  %tmp_19 = srem i32 %tmp_s, 10, !dbg !89         ; [#uses=1 type=i32] [debug line = 36:2]
  %tmp_64 = trunc i32 %tmp_19 to i6, !dbg !89     ; [#uses=1 type=i6] [debug line = 36:2]
  %tmp_20 = add i6 -16, %tmp_64, !dbg !89         ; [#uses=1 type=i6] [debug line = 36:2]
  %tmp_23_cast = zext i6 %tmp_20 to i8, !dbg !89  ; [#uses=1 type=i8] [debug line = 36:2]
  %len2_1 = add nsw i32 -1, %len1, !dbg !89       ; [#uses=2 type=i32] [debug line = 36:2]
  %tmp_21 = sext i32 %len2_1 to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 36:2]
  %h_addr_4 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_21, !dbg !89 ; [#uses=1 type=i8*] [debug line = 36:2]
  store i8 %tmp_23_cast, i8* %h_addr_4, align 1, !dbg !89 ; [debug line = 36:2]
  %sext5_cast = sext i32 %tmp_s to i65, !dbg !91  ; [#uses=1 type=i65] [debug line = 37:1]
  %mul6 = mul i65 6871947674, %sext5_cast, !dbg !91 ; [#uses=2 type=i65] [debug line = 37:1]
  %neg_mul7 = sub i65 0, %mul6, !dbg !91          ; [#uses=1 type=i65] [debug line = 37:1]
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_s, i32 31), !dbg !91 ; [#uses=2 type=i1] [debug line = 37:1]
  %tmp_66 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul7, i32 36, i32 64), !dbg !91 ; [#uses=1 type=i29] [debug line = 37:1]
  %tmp_52 = sext i29 %tmp_66 to i32, !dbg !91     ; [#uses=1 type=i32] [debug line = 37:1]
  %tmp_67 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul6, i32 36, i32 64), !dbg !91 ; [#uses=1 type=i29] [debug line = 37:1]
  %tmp_59 = sext i29 %tmp_67 to i32, !dbg !91     ; [#uses=2 type=i32] [debug line = 37:1]
  %tmp_60 = select i1 %tmp_65, i32 %tmp_52, i32 %tmp_59, !dbg !91 ; [#uses=1 type=i32] [debug line = 37:1]
  %neg_ti1 = sub i32 0, %tmp_60, !dbg !91         ; [#uses=1 type=i32] [debug line = 37:1]
  %tmp_22 = select i1 %tmp_65, i32 %neg_ti1, i32 %tmp_59, !dbg !91 ; [#uses=2 type=i32] [debug line = 37:1]
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %num, i32 %tmp_22) nounwind, !dbg !91 ; [debug line = 37:1]
  call void @llvm.dbg.value(metadata !{i32 %len2_1}, i64 0, metadata !81), !dbg !92 ; [debug line = 38:1] [debug variable = len2]
  br label %.preheader, !dbg !93                  ; [debug line = 39:1]

; <label>:4                                       ; preds = %.preheader
  %tmp_12 = sext i32 %len2 to i64, !dbg !94       ; [#uses=1 type=i64] [debug line = 40:1]
  %h_addr = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_12, !dbg !94 ; [#uses=1 type=i8*] [debug line = 40:1]
  store i8 48, i8* %h_addr, align 1, !dbg !94     ; [debug line = 40:1]
  %tmp_14 = sext i32 %len to i64, !dbg !95        ; [#uses=1 type=i64] [debug line = 41:1]
  %h_addr_1 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_14, !dbg !95 ; [#uses=1 type=i8*] [debug line = 41:1]
  store i8 48, i8* %h_addr_1, align 1, !dbg !95   ; [debug line = 41:1]
  %tmp_15 = add nsw i32 %len2, 2, !dbg !96        ; [#uses=1 type=i32] [debug line = 42:1]
  %tmp_16 = sext i32 %tmp_15 to i64, !dbg !96     ; [#uses=1 type=i64] [debug line = 42:1]
  %h_addr_2 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_16, !dbg !96 ; [#uses=1 type=i8*] [debug line = 42:1]
  store i8 48, i8* %h_addr_2, align 1, !dbg !96   ; [debug line = 42:1]
  %tmp_17 = add nsw i32 %len2, 3, !dbg !97        ; [#uses=1 type=i32] [debug line = 43:1]
  %tmp_18 = sext i32 %tmp_17 to i64, !dbg !97     ; [#uses=1 type=i64] [debug line = 43:1]
  %h_addr_3 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_18, !dbg !97 ; [#uses=1 type=i8*] [debug line = 43:1]
  store i8 48, i8* %h_addr_3, align 1, !dbg !97   ; [debug line = 43:1]
  %h_addr_5 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0, !dbg !98 ; [#uses=1 type=i8*] [debug line = 59:6]
  %h_load = load i8* %h_addr_5, align 16, !dbg !98 ; [#uses=3 type=i8] [debug line = 59:6]
  br i1 %tmp_32, label %10, label %5, !dbg !100   ; [debug line = 44:1]

; <label>:5                                       ; preds = %4
  %p_shl = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %h_load, i3 0), !dbg !101 ; [#uses=1 type=i11] [debug line = 47:3]
  %p_shl_cast = sext i11 %p_shl to i12, !dbg !101 ; [#uses=1 type=i12] [debug line = 47:3]
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %h_load, i1 false), !dbg !101 ; [#uses=1 type=i9] [debug line = 47:3]
  %p_shl6_cast = sext i9 %p_shl6 to i12, !dbg !101 ; [#uses=1 type=i12] [debug line = 47:3]
  %h_addr_6 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 1, !dbg !101 ; [#uses=1 type=i8*] [debug line = 47:3]
  %h_load_1 = load i8* %h_addr_6, align 1, !dbg !101 ; [#uses=1 type=i8] [debug line = 47:3]
  %tmp_28_cast = sext i8 %h_load_1 to i11, !dbg !101 ; [#uses=1 type=i11] [debug line = 47:3]
  %tmp2 = add i12 %p_shl_cast, %p_shl6_cast, !dbg !101 ; [#uses=1 type=i12] [debug line = 47:3]
  %tmp3 = add i11 %tmp_28_cast, -528, !dbg !101   ; [#uses=1 type=i11] [debug line = 47:3]
  %tmp3_cast = sext i11 %tmp3 to i12, !dbg !101   ; [#uses=1 type=i12] [debug line = 47:3]
  %temp = add i12 %tmp2, %tmp3_cast, !dbg !101    ; [#uses=3 type=i12] [debug line = 47:3]
  call void @llvm.dbg.value(metadata !{i12 %temp}, i64 0, metadata !103), !dbg !101 ; [debug line = 47:3] [debug variable = temp]
  br label %6, !dbg !104                          ; [debug line = 48:7]

; <label>:6                                       ; preds = %9, %5
  %a = phi i4 [ 0, %5 ], [ %a_2, %9 ]             ; [#uses=1 type=i4]
  %a_2 = phi i4 [ 1, %5 ], [ %i, %9 ]             ; [#uses=5 type=i4]
  %a_2_cast17_cast = zext i4 %a_2 to i8, !dbg !104 ; [#uses=2 type=i8] [debug line = 48:7]
  %tmp_24 = icmp ult i4 %a_2, -6, !dbg !104       ; [#uses=1 type=i1] [debug line = 48:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 5) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_24, label %7, label %.loopexit2, !dbg !104 ; [debug line = 48:7]

; <label>:7                                       ; preds = %6
  %tmp_27 = mul i8 %a_2_cast17_cast, %a_2_cast17_cast, !dbg !106 ; [#uses=1 type=i8] [debug line = 49:11]
  %tmp_33_cast = zext i8 %tmp_27 to i12, !dbg !106 ; [#uses=1 type=i12] [debug line = 49:11]
  %tmp_28 = icmp sgt i12 %tmp_33_cast, %temp, !dbg !106 ; [#uses=1 type=i1] [debug line = 49:11]
  br i1 %tmp_28, label %8, label %9, !dbg !106    ; [debug line = 49:11]

; <label>:8                                       ; preds = %7
  %a_1 = add i4 %a_2, -1, !dbg !108               ; [#uses=1 type=i4] [debug line = 50:15]
  call void @llvm.dbg.value(metadata !{i4 %a_1}, i64 0, metadata !110), !dbg !108 ; [debug line = 50:15] [debug variable = a]
  br label %.loopexit2, !dbg !111                 ; [debug line = 51:14]

; <label>:9                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i4 %a_2}, i64 0, metadata !110), !dbg !112 ; [debug line = 53:14] [debug variable = a]
  %i = add i4 %a_2, 1, !dbg !113                  ; [#uses=1 type=i4] [debug line = 48:16]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !114), !dbg !113 ; [debug line = 48:16] [debug variable = i]
  br label %6, !dbg !113                          ; [debug line = 48:16]

; <label>:10                                      ; preds = %4
  %tmp_30_cast = sext i8 %h_load to i9, !dbg !98  ; [#uses=1 type=i9] [debug line = 59:6]
  %temp_1 = add i9 %tmp_30_cast, -48, !dbg !98    ; [#uses=2 type=i9] [debug line = 59:6]
  %temp_1_cast = sext i9 %temp_1 to i12, !dbg !98 ; [#uses=2 type=i12] [debug line = 59:6]
  call void @llvm.dbg.value(metadata !{i9 %temp_1}, i64 0, metadata !103), !dbg !98 ; [debug line = 59:6] [debug variable = temp]
  br label %11, !dbg !115                         ; [debug line = 61:10]

; <label>:11                                      ; preds = %14, %10
  %i_1 = phi i3 [ 1, %10 ], [ %i_3, %14 ]         ; [#uses=4 type=i3]
  %i_1_cast16_cast = zext i3 %i_1 to i6, !dbg !115 ; [#uses=2 type=i6] [debug line = 61:10]
  %tmp_23 = icmp ult i3 %i_1, -3, !dbg !115       ; [#uses=1 type=i1] [debug line = 61:10]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_23, label %12, label %.loopexit2, !dbg !115 ; [debug line = 61:10]

; <label>:12                                      ; preds = %11
  %tmp_25 = mul i6 %i_1_cast16_cast, %i_1_cast16_cast, !dbg !117 ; [#uses=1 type=i6] [debug line = 62:11]
  %tmp_35_cast = zext i6 %tmp_25 to i9, !dbg !117 ; [#uses=1 type=i9] [debug line = 62:11]
  %tmp_26 = icmp sgt i9 %tmp_35_cast, %temp_1, !dbg !117 ; [#uses=1 type=i1] [debug line = 62:11]
  br i1 %tmp_26, label %13, label %14, !dbg !117  ; [debug line = 62:11]

; <label>:13                                      ; preds = %12
  %a_5 = add i3 %i_1, -1, !dbg !119               ; [#uses=1 type=i3] [debug line = 63:15]
  %a_5_cast = zext i3 %a_5 to i4, !dbg !119       ; [#uses=1 type=i4] [debug line = 63:15]
  call void @llvm.dbg.value(metadata !{i3 %a_5}, i64 0, metadata !110), !dbg !119 ; [debug line = 63:15] [debug variable = a]
  br label %.loopexit2, !dbg !121                 ; [debug line = 64:14]

; <label>:14                                      ; preds = %12
  %i_3 = add i3 %i_1, 1, !dbg !122                ; [#uses=1 type=i3] [debug line = 61:19]
  call void @llvm.dbg.value(metadata !{i3 %i_3}, i64 0, metadata !114), !dbg !122 ; [debug line = 61:19] [debug variable = i]
  br label %11, !dbg !122                         ; [debug line = 61:19]

.loopexit2:                                       ; preds = %13, %11, %8, %6
  %k = phi i2 [ -1, %8 ], [ -2, %13 ], [ -2, %11 ], [ -1, %6 ] ; [#uses=2 type=i2]
  %a_3 = phi i4 [ %a_1, %8 ], [ %a_5_cast, %13 ], [ 0, %11 ], [ %a, %6 ] ; [#uses=7 type=i4]
  %temp2 = phi i12 [ %temp, %8 ], [ %temp_1_cast, %13 ], [ %temp_1_cast, %11 ], [ %temp, %6 ] ; [#uses=1 type=i12]
  %size_of_a_0_in = phi i32 [ %len2, %8 ], [ %len, %13 ], [ %len, %11 ], [ %len2, %6 ] ; [#uses=3 type=i32]
  %a_4 = alloca i32                               ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %a_4}, metadata !110) ; [debug variable = a]
  %remainder_4 = alloca i32                       ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %remainder_4}, metadata !123) ; [debug variable = remainder]
  %k_1 = alloca i32                               ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %k_1}, metadata !124) ; [debug variable = k]
  %t = alloca i32                                 ; [#uses=6 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !125) ; [debug variable = t]
  %k_cast = zext i2 %k to i3, !dbg !126           ; [#uses=1 type=i3] [debug line = 46:3]
  %a_3_cast15_cast1 = zext i4 %a_3 to i21, !dbg !126 ; [#uses=1 type=i21] [debug line = 46:3]
  %a_3_cast15_cast = zext i4 %a_3 to i8, !dbg !126 ; [#uses=2 type=i8] [debug line = 46:3]
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %size_of_a_0_in, i32 31), !dbg !126 ; [#uses=1 type=i1] [debug line = 46:3]
  %p_neg = sub i32 0, %size_of_a_0_in, !dbg !126  ; [#uses=1 type=i32] [debug line = 46:3]
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31), !dbg !126 ; [#uses=1 type=i31] [debug line = 46:3]
  %tmp_61 = zext i31 %p_lshr to i32, !dbg !126    ; [#uses=1 type=i32] [debug line = 46:3]
  %p_neg_t = sub i32 0, %tmp_61, !dbg !126        ; [#uses=1 type=i32] [debug line = 46:3]
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %size_of_a_0_in, i32 1, i32 31), !dbg !126 ; [#uses=1 type=i31] [debug line = 46:3]
  %tmp_62 = zext i31 %p_lshr_f to i32, !dbg !126  ; [#uses=1 type=i32] [debug line = 46:3]
  %size_of_a = select i1 %tmp_68, i32 %p_neg_t, i32 %tmp_62, !dbg !126 ; [#uses=1 type=i32] [debug line = 46:3]
  call void @llvm.dbg.value(metadata !{i32 %size_of_a}, i64 0, metadata !127), !dbg !126 ; [debug line = 46:3] [debug variable = size_of_a]
  %divisor = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %a_3, i1 false), !dbg !128 ; [#uses=2 type=i5] [debug line = 68:18]
  %divisor_cast1 = zext i5 %divisor to i17, !dbg !128 ; [#uses=2 type=i17] [debug line = 68:18]
  %divisor_cast = zext i5 %divisor to i32, !dbg !128 ; [#uses=3 type=i32] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i5 %divisor}, i64 0, metadata !129), !dbg !128 ; [debug line = 68:18] [debug variable = divisor]
  %tmp_29 = mul i8 %a_3_cast15_cast, %a_3_cast15_cast, !dbg !130 ; [#uses=1 type=i8] [debug line = 69:27]
  %tmp_37_cast = zext i8 %tmp_29 to i12, !dbg !130 ; [#uses=1 type=i12] [debug line = 69:27]
  %remainder = sub i12 %temp2, %tmp_37_cast, !dbg !130 ; [#uses=3 type=i12] [debug line = 69:27]
  %remainder_cast = sext i12 %remainder to i32, !dbg !130 ; [#uses=1 type=i32] [debug line = 69:27]
  call void @llvm.dbg.value(metadata !{i12 %remainder}, i64 0, metadata !123), !dbg !130 ; [debug line = 69:27] [debug variable = remainder]
  %remy_addr = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 0, !dbg !131 ; [#uses=1 type=i32*] [debug line = 70:1]
  store i32 %remainder_cast, i32* %remy_addr, align 16, !dbg !131 ; [debug line = 70:1]
  %p_shl1 = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %remainder, i3 0), !dbg !132 ; [#uses=1 type=i15] [debug line = 71:1]
  %p_shl1_cast = sext i15 %p_shl1 to i16, !dbg !132 ; [#uses=1 type=i16] [debug line = 71:1]
  %p_shl2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %remainder, i1 false), !dbg !132 ; [#uses=1 type=i13] [debug line = 71:1]
  %p_shl2_cast = sext i13 %p_shl2 to i16, !dbg !132 ; [#uses=1 type=i16] [debug line = 71:1]
  %tmp_30 = add i2 %k, -1, !dbg !132              ; [#uses=1 type=i2] [debug line = 71:1]
  %tmp_31 = zext i2 %tmp_30 to i64, !dbg !132     ; [#uses=1 type=i64] [debug line = 71:1]
  %h_addr_7 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_31, !dbg !132 ; [#uses=1 type=i8*] [debug line = 71:1]
  %h_load_2 = load i8* %h_addr_7, align 1, !dbg !132 ; [#uses=1 type=i8] [debug line = 71:1]
  %tmp_41_cast = sext i8 %h_load_2 to i9, !dbg !132 ; [#uses=1 type=i9] [debug line = 71:1]
  %tmp5 = add i16 %p_shl2_cast, %p_shl1_cast, !dbg !132 ; [#uses=1 type=i16] [debug line = 71:1]
  %tmp6 = add i9 %tmp_41_cast, -48, !dbg !132     ; [#uses=1 type=i9] [debug line = 71:1]
  %tmp6_cast = sext i9 %tmp6 to i16, !dbg !132    ; [#uses=1 type=i16] [debug line = 71:1]
  %temp_2 = add i16 %tmp5, %tmp6_cast, !dbg !132  ; [#uses=3 type=i16] [debug line = 71:1]
  %temp_2_cast_cast = sext i16 %temp_2 to i23, !dbg !132 ; [#uses=1 type=i23] [debug line = 71:1]
  call void @llvm.dbg.value(metadata !{i16 %temp_2}, i64 0, metadata !103), !dbg !132 ; [debug line = 71:1] [debug variable = temp]
  %temp_2_tr = sext i16 %temp_2 to i17, !dbg !133 ; [#uses=1 type=i17] [debug line = 72:28]
  %tmp_1 = sdiv i17 %temp_2_tr, %divisor_cast1, !dbg !133 ; [#uses=1 type=i17] [debug line = 72:28]
  %tmp_69 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %a_3, i4 0) ; [#uses=1 type=i8]
  %p_shl3 = zext i8 %tmp_69 to i22, !dbg !134     ; [#uses=1 type=i22] [debug line = 73:1]
  %tmp_70 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %a_3, i2 0) ; [#uses=1 type=i6]
  %p_shl4 = zext i6 %tmp_70 to i22, !dbg !134     ; [#uses=1 type=i22] [debug line = 73:1]
  %Ny = add i22 %p_shl4, %p_shl3, !dbg !134       ; [#uses=1 type=i22] [debug line = 73:1]
  %x = sext i16 %temp_2 to i22, !dbg !134         ; [#uses=1 type=i22] [debug line = 73:1]
  %slt = icmp slt i22 %x, %Ny, !dbg !134          ; [#uses=1 type=i1] [debug line = 73:1]
  %rev = xor i1 %slt, true, !dbg !134             ; [#uses=1 type=i1] [debug line = 73:1]
  %p_s = select i1 %rev, i17 9, i17 %tmp_1, !dbg !134 ; [#uses=2 type=i17] [debug line = 73:1]
  %p_cast_cast = sext i17 %p_s to i21, !dbg !135  ; [#uses=1 type=i21] [debug line = 75:1]
  %p_shl8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %a_3, i3 0), !dbg !135 ; [#uses=1 type=i7] [debug line = 75:1]
  %p_shl8_cast = zext i7 %p_shl8 to i17, !dbg !135 ; [#uses=1 type=i17] [debug line = 75:1]
  %tmp7 = add i17 %p_s, %p_shl8_cast, !dbg !135   ; [#uses=1 type=i17] [debug line = 75:1]
  %a_6 = add i17 %divisor_cast1, %tmp7, !dbg !135 ; [#uses=1 type=i17] [debug line = 75:1]
  %a_6_cast = sext i17 %a_6 to i32, !dbg !135     ; [#uses=1 type=i32] [debug line = 75:1]
  call void @llvm.dbg.value(metadata !{i17 %a_6}, i64 0, metadata !110), !dbg !135 ; [debug line = 75:1] [debug variable = a]
  %tmp_33 = mul i21 %a_3_cast15_cast1, %p_cast_cast, !dbg !136 ; [#uses=1 type=i21] [debug line = 77:1]
  %tmp_63 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_33, i1 false) ; [#uses=1 type=i22]
  %tmp_36_cast = sext i22 %tmp_63 to i23, !dbg !136 ; [#uses=1 type=i23] [debug line = 77:1]
  %remainder_1 = sub i23 %temp_2_cast_cast, %tmp_36_cast, !dbg !136 ; [#uses=1 type=i23] [debug line = 77:1]
  %remainder_1_cast = sext i23 %remainder_1 to i32, !dbg !136 ; [#uses=2 type=i32] [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i23 %remainder_1}, i64 0, metadata !123), !dbg !136 ; [debug line = 77:1] [debug variable = remainder]
  %remy_addr_1 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 1, !dbg !137 ; [#uses=1 type=i32*] [debug line = 78:1]
  store i32 %remainder_1_cast, i32* %remy_addr_1, align 4, !dbg !137 ; [debug line = 78:1]
  %k_2 = add i3 %k_cast, 1, !dbg !138             ; [#uses=1 type=i3] [debug line = 79:1]
  %k_2_cast = zext i3 %k_2 to i32, !dbg !138      ; [#uses=1 type=i32] [debug line = 79:1]
  call void @llvm.dbg.value(metadata !{i3 %k_2}, i64 0, metadata !124), !dbg !138 ; [debug line = 79:1] [debug variable = k]
  %tmp_37 = add nsw i32 %len2, 4, !dbg !139       ; [#uses=1 type=i32] [debug line = 80:1]
  %tmp_50 = zext i4 %a_3 to i31, !dbg !140        ; [#uses=1 type=i31] [debug line = 103:4]
  store i32 2, i32* %t
  store i32 %k_2_cast, i32* %k_1
  store i32 %remainder_1_cast, i32* %remainder_4
  store i32 %a_6_cast, i32* %a_4
  br label %.backedge, !dbg !139                  ; [debug line = 80:1]

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2
  %k_1_load = load i32* %k_1, !dbg !143           ; [#uses=3 type=i32] [debug line = 105:4]
  %tmp_38 = icmp sgt i32 %k_1_load, %tmp_37, !dbg !139 ; [#uses=1 type=i1] [debug line = 80:1]
  br i1 %tmp_38, label %20, label %15, !dbg !139  ; [debug line = 80:1]

; <label>:15                                      ; preds = %.backedge
  %a_4_load_1 = load i32* %a_4, !dbg !144         ; [#uses=6 type=i32] [debug line = 82:29]
  %t_load_2 = load i32* %t, !dbg !145             ; [#uses=3 type=i32] [debug line = 81:49]
  %t_2 = add nsw i32 -1, %t_load_2, !dbg !145     ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp_41 = sext i32 %t_2 to i64, !dbg !145       ; [#uses=1 type=i64] [debug line = 81:49]
  %remy_addr_2 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_41, !dbg !145 ; [#uses=2 type=i32*] [debug line = 81:49]
  %remy_load = load i32* %remy_addr_2, align 4, !dbg !145 ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp_75 = shl i32 %remy_load, 3, !dbg !145      ; [#uses=1 type=i32] [debug line = 81:49]
  %tmp_76 = shl i32 %remy_load, 1, !dbg !145      ; [#uses=1 type=i32] [debug line = 81:49]
  %k_4 = add nsw i32 -1, %k_1_load, !dbg !145     ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp_42 = sext i32 %k_4 to i64, !dbg !145       ; [#uses=1 type=i64] [debug line = 81:49]
  %h_addr_8 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_42, !dbg !145 ; [#uses=1 type=i8*] [debug line = 81:49]
  %h_load_3 = load i8* %h_addr_8, align 1, !dbg !145 ; [#uses=1 type=i8] [debug line = 81:49]
  %tmp_53_cast = sext i8 %h_load_3 to i9, !dbg !145 ; [#uses=1 type=i9] [debug line = 81:49]
  call void @llvm.dbg.value(metadata !{i32 %new_temp}, i64 0, metadata !146), !dbg !145 ; [debug line = 81:49] [debug variable = new_temp]
  %tmp_43 = call fastcc i32 @Square_root_dup(i32 %a_4_load_1) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 82:29]
  %tmp8 = add i32 %tmp_75, %tmp_76, !dbg !145     ; [#uses=1 type=i32] [debug line = 81:49]
  %tmp9 = add i9 -48, %tmp_53_cast, !dbg !145     ; [#uses=1 type=i9] [debug line = 81:49]
  %tmp9_cast = sext i9 %tmp9 to i32, !dbg !145    ; [#uses=1 type=i32] [debug line = 81:49]
  %new_temp = add i32 %tmp9_cast, %tmp8, !dbg !145 ; [#uses=1 type=i32] [debug line = 81:49]
  %temp2_1 = sub i32 %new_temp, %tmp_43, !dbg !144 ; [#uses=3 type=i32] [debug line = 82:29]
  call void @llvm.dbg.value(metadata !{i32 %temp2_1}, i64 0, metadata !147), !dbg !144 ; [debug line = 82:29] [debug variable = temp2]
  %tmp_77 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %temp2_1, i32 31), !dbg !148 ; [#uses=1 type=i1] [debug line = 83:6]
  br i1 %tmp_77, label %16, label %19, !dbg !148  ; [debug line = 83:6]

; <label>:16                                      ; preds = %15
  %sext1_cast = sext i32 %a_4_load_1 to i65, !dbg !149 ; [#uses=1 type=i65] [debug line = 84:25]
  %mul1 = mul i65 6871947674, %sext1_cast, !dbg !149 ; [#uses=2 type=i65] [debug line = 84:25]
  %neg_mul1 = sub i65 0, %mul1, !dbg !149         ; [#uses=1 type=i65] [debug line = 84:25]
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_4_load_1, i32 31), !dbg !149 ; [#uses=2 type=i1] [debug line = 84:25]
  %tmp_79 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul1, i32 36, i32 64), !dbg !149 ; [#uses=1 type=i29] [debug line = 84:25]
  %tmp_80 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul1, i32 36, i32 64), !dbg !149 ; [#uses=2 type=i29] [debug line = 84:25]
  %p_v_v = select i1 %tmp_78, i29 %tmp_79, i29 %tmp_80, !dbg !149 ; [#uses=1 type=i29] [debug line = 84:25]
  %neg_ti2 = sub i29 0, %p_v_v, !dbg !149         ; [#uses=1 type=i29] [debug line = 84:25]
  %tmp_71 = select i1 %tmp_78, i29 %neg_ti2, i29 %tmp_80, !dbg !149 ; [#uses=1 type=i29] [debug line = 84:25]
  %a_7 = add nsw i32 -1, %a_4_load_1, !dbg !151   ; [#uses=3 type=i32] [debug line = 85:10]
  call void @llvm.dbg.value(metadata !{i32 %a_7}, i64 0, metadata !110), !dbg !151 ; [debug line = 85:10] [debug variable = a]
  %sext2_cast = sext i32 %a_7 to i65, !dbg !152   ; [#uses=1 type=i65] [debug line = 86:24]
  %mul2 = mul i65 6871947674, %sext2_cast, !dbg !152 ; [#uses=2 type=i65] [debug line = 86:24]
  %neg_mul2 = sub i65 0, %mul2, !dbg !152         ; [#uses=1 type=i65] [debug line = 86:24]
  %tmp_81 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_7, i32 31), !dbg !152 ; [#uses=2 type=i1] [debug line = 86:24]
  %tmp_82 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul2, i32 36, i32 64), !dbg !152 ; [#uses=1 type=i29] [debug line = 86:24]
  %tmp_72 = sext i29 %tmp_82 to i32, !dbg !152    ; [#uses=1 type=i32] [debug line = 86:24]
  %tmp_83 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul2, i32 36, i32 64), !dbg !152 ; [#uses=1 type=i29] [debug line = 86:24]
  %tmp_73 = sext i29 %tmp_83 to i32, !dbg !152    ; [#uses=2 type=i32] [debug line = 86:24]
  %tmp_74 = select i1 %tmp_81, i32 %tmp_72, i32 %tmp_73, !dbg !152 ; [#uses=1 type=i32] [debug line = 86:24]
  %neg_ti3 = sub i32 0, %tmp_74, !dbg !152        ; [#uses=1 type=i32] [debug line = 86:24]
  %vr2 = select i1 %tmp_81, i32 %neg_ti3, i32 %tmp_73, !dbg !152 ; [#uses=2 type=i32] [debug line = 86:24]
  %tmp_84 = trunc i32 %vr2 to i29, !dbg !152      ; [#uses=1 type=i29] [debug line = 86:24]
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !153), !dbg !152 ; [debug line = 86:24] [debug variable = vr2]
  %tmp_47 = icmp eq i29 %tmp_71, %tmp_84, !dbg !154 ; [#uses=1 type=i1] [debug line = 87:10]
  br i1 %tmp_47, label %17, label %18, !dbg !154  ; [debug line = 87:10]

; <label>:17                                      ; preds = %16
  %remainder_4_load = load i32* %remainder_4, !dbg !155 ; [#uses=1 type=i32] [debug line = 88:15]
  %remainder_3 = add nsw i32 %divisor_cast, %remainder_4_load, !dbg !155 ; [#uses=2 type=i32] [debug line = 88:15]
  call void @llvm.dbg.value(metadata !{i32 %remainder_3}, i64 0, metadata !123), !dbg !155 ; [debug line = 88:15] [debug variable = remainder]
  store i32 %remainder_3, i32* %remy_addr_2, align 4, !dbg !157 ; [debug line = 89:14]
  store i32 %remainder_3, i32* %remainder_4, !dbg !155 ; [debug line = 88:15]
  store i32 %a_7, i32* %a_4, !dbg !151            ; [debug line = 85:10]
  br label %.backedge.backedge, !dbg !158         ; [debug line = 90:5]

; <label>:18                                      ; preds = %16
  %t_load = load i32* %t, !dbg !159               ; [#uses=1 type=i32] [debug line = 93:8]
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !110), !dbg !161 ; [debug line = 92:9] [debug variable = a]
  %tmp_56 = add nsw i32 %t_load, -2, !dbg !159    ; [#uses=1 type=i32] [debug line = 93:8]
  %tmp_57 = sext i32 %tmp_56 to i64, !dbg !159    ; [#uses=1 type=i64] [debug line = 93:8]
  %remy_addr_4 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_57, !dbg !159 ; [#uses=2 type=i32*] [debug line = 93:8]
  %remy_load_1 = load i32* %remy_addr_4, align 4, !dbg !159 ; [#uses=1 type=i32] [debug line = 93:8]
  %tmp_58 = add nsw i32 %remy_load_1, %divisor_cast, !dbg !159 ; [#uses=1 type=i32] [debug line = 93:8]
  store i32 %tmp_58, i32* %remy_addr_4, align 4, !dbg !159 ; [debug line = 93:8]
  call void @llvm.dbg.value(metadata !{i32 %k_4}, i64 0, metadata !124), !dbg !162 ; [debug line = 94:8] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %t_2}, i64 0, metadata !125), !dbg !163 ; [debug line = 95:5] [debug variable = t]
  store i32 %t_2, i32* %t, !dbg !163              ; [debug line = 95:5]
  store i32 %k_4, i32* %k_1, !dbg !162            ; [debug line = 94:8]
  store i32 %vr2, i32* %a_4, !dbg !161            ; [debug line = 92:9]
  br label %.backedge.backedge

; <label>:19                                      ; preds = %15
  %quotient = udiv i32 %temp2_1, %divisor_cast, !dbg !164 ; [#uses=2 type=i32] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i32 %quotient}, i64 0, metadata !165), !dbg !164 ; [debug line = 99:5] [debug variable = quotient]
  %tmp_48 = icmp sgt i32 %quotient, 9, !dbg !166  ; [#uses=1 type=i1] [debug line = 100:4]
  %p_6 = select i1 %tmp_48, i32 9, i32 %quotient, !dbg !166 ; [#uses=2 type=i32] [debug line = 100:4]
  %tmp_85 = shl i32 %a_4_load_1, 3, !dbg !167     ; [#uses=1 type=i32] [debug line = 102:4]
  %tmp_86 = shl i32 %a_4_load_1, 1, !dbg !167     ; [#uses=1 type=i32] [debug line = 102:4]
  %tmp10 = add i32 %tmp_85, %p_6, !dbg !167       ; [#uses=1 type=i32] [debug line = 102:4]
  %a_8 = add nsw i32 %tmp10, %tmp_86, !dbg !167   ; [#uses=1 type=i32] [debug line = 102:4]
  call void @llvm.dbg.value(metadata !{i32 %a_8}, i64 0, metadata !110), !dbg !167 ; [debug line = 102:4] [debug variable = a]
  %tmp_87 = trunc i32 %p_6 to i31, !dbg !140      ; [#uses=1 type=i31] [debug line = 103:4]
  %tmp_51 = mul i31 %tmp_87, %tmp_50, !dbg !140   ; [#uses=1 type=i31] [debug line = 103:4]
  %tmp_53 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_51, i1 false), !dbg !140 ; [#uses=1 type=i32] [debug line = 103:4]
  %remainder_2 = sub nsw i32 %temp2_1, %tmp_53, !dbg !140 ; [#uses=2 type=i32] [debug line = 103:4]
  call void @llvm.dbg.value(metadata !{i32 %remainder_2}, i64 0, metadata !123), !dbg !140 ; [debug line = 103:4] [debug variable = remainder]
  %tmp_54 = sext i32 %t_load_2 to i64, !dbg !168  ; [#uses=1 type=i64] [debug line = 104:4]
  %remy_addr_3 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_54, !dbg !168 ; [#uses=1 type=i32*] [debug line = 104:4]
  store i32 %remainder_2, i32* %remy_addr_3, align 4, !dbg !168 ; [debug line = 104:4]
  %k_3 = add nsw i32 1, %k_1_load, !dbg !143      ; [#uses=1 type=i32] [debug line = 105:4]
  call void @llvm.dbg.value(metadata !{i32 %k_3}, i64 0, metadata !124), !dbg !143 ; [debug line = 105:4] [debug variable = k]
  %t_1 = add nsw i32 1, %t_load_2, !dbg !169      ; [#uses=1 type=i32] [debug line = 106:4]
  call void @llvm.dbg.value(metadata !{i32 %t_1}, i64 0, metadata !125), !dbg !169 ; [debug line = 106:4] [debug variable = t]
  store i32 %t_1, i32* %t, !dbg !169              ; [debug line = 106:4]
  store i32 %k_3, i32* %k_1, !dbg !143            ; [debug line = 105:4]
  store i32 %remainder_2, i32* %remainder_4, !dbg !140 ; [debug line = 103:4]
  store i32 %a_8, i32* %a_4, !dbg !167            ; [debug line = 102:4]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %19, %18, %17
  br label %.backedge

; <label>:20                                      ; preds = %.backedge
  %a_4_load = load i32* %a_4, !dbg !170           ; [#uses=1 type=i32] [debug line = 108:1]
  %t_load_1 = load i32* %t, !dbg !171             ; [#uses=1 type=i32] [debug line = 109:5]
  %tmp_39 = sitofp i32 %a_4_load to float, !dbg !170 ; [#uses=1 type=float] [debug line = 108:1]
  %tmp_40 = sub nsw i32 %t_load_1, %size_of_a, !dbg !171 ; [#uses=1 type=i32] [debug line = 109:5]
  br label %21, !dbg !171                         ; [debug line = 109:5]

; <label>:21                                      ; preds = %22, %20
  %ans_local = phi float [ %tmp_39, %20 ], [ %tmp_55, %22 ] ; [#uses=2 type=float]
  %i_2 = phi i31 [ 0, %20 ], [ %i_4, %22 ]        ; [#uses=2 type=i31]
  %i_2_cast = zext i31 %i_2 to i32, !dbg !171     ; [#uses=1 type=i32] [debug line = 109:5]
  %tmp_46 = icmp slt i32 %i_2_cast, %tmp_40, !dbg !171 ; [#uses=1 type=i1] [debug line = 109:5]
  %i_4 = add i31 %i_2, 1, !dbg !173               ; [#uses=1 type=i31] [debug line = 109:23]
  br i1 %tmp_46, label %22, label %23, !dbg !171  ; [debug line = 109:5]

; <label>:22                                      ; preds = %21
  %tmp_55 = fdiv float %ans_local, 1.000000e+01, !dbg !174 ; [#uses=1 type=float] [debug line = 110:1]
  call void @llvm.dbg.value(metadata !{i31 %i_4}, i64 0, metadata !114), !dbg !173 ; [debug line = 109:23] [debug variable = i]
  br label %21, !dbg !173                         ; [debug line = 109:23]

; <label>:23                                      ; preds = %21
  call void @_ssdm_op_Write.ap_auto.floatP(float* %ans, float %ans_local) nounwind
  ret void, !dbg !175                             ; [debug line = 111:2]
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"long long"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{void (i32*, float*)* @Square_root, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"float*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"num", metadata !"ans"}
!13 = metadata !{i32 786689, metadata !14, metadata !"x", metadata !15, i32 16777220, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 786478, i32 0, metadata !15, metadata !"dup", metadata !"dup", metadata !"", metadata !15, i32 4, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 5} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786473, metadata !"Desktop/explo/Square_Root_explo.c", metadata !"/root", null} ; [ DW_TAG_file_type ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{metadata !18, metadata !19}
!18 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 4, i32 19, metadata !14, null}
!23 = metadata !{i32 5, i32 2, metadata !24, null}
!24 = metadata !{i32 786443, metadata !14, i32 5, i32 1, metadata !15, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 786688, metadata !24, metadata !"arr", metadata !15, i32 6, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !19, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 19}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 6, i32 23, metadata !24, null}
!30 = metadata !{i32 786688, metadata !24, metadata !"y", metadata !15, i32 6, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 6, i32 43, metadata !24, null}
!32 = metadata !{i32 7, i32 2, metadata !24, null}
!33 = metadata !{i32 11, i32 2, metadata !34, null}
!34 = metadata !{i32 786443, metadata !24, i32 7, i32 13, metadata !15, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 13, i32 6, metadata !36, null}
!36 = metadata !{i32 786443, metadata !24, i32 13, i32 2, metadata !15, i32 2} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 14, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !36, i32 13, i32 23, metadata !15, i32 3} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 8, i32 3, metadata !34, null}
!40 = metadata !{i32 786688, metadata !24, metadata !"cou1", metadata !15, i32 6, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 9, i32 3, metadata !34, null}
!42 = metadata !{i32 10, i32 3, metadata !34, null}
!43 = metadata !{i32 13, i32 19, metadata !36, null}
!44 = metadata !{i32 786688, metadata !24, metadata !"z", metadata !15, i32 6, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 786688, metadata !24, metadata !"i", metadata !15, i32 6, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 16, i32 18, metadata !24, null}
!47 = metadata !{i32 18, i32 2, metadata !24, null}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"num", metadata !52, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 0, i32 1}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"ans", metadata !52, metadata !"float", i32 0, i32 31}
!58 = metadata !{i32 786689, metadata !59, metadata !"num", metadata !15, i32 16777236, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 786478, i32 0, metadata !15, metadata !"Square_root", metadata !"Square_root", metadata !"", metadata !15, i32 20, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, float*)* @Square_root, null, null, metadata !20, i32 21} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62, metadata !63}
!62 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 20, i32 23, metadata !59, null}
!66 = metadata !{i32 786689, metadata !59, metadata !"ans", metadata !15, i32 33554452, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 20, i32 35, metadata !59, null}
!68 = metadata !{i32 786688, metadata !69, metadata !"remy", metadata !15, i32 27, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786443, metadata !59, i32 21, i32 1, metadata !15, i32 4} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 32, i32 0, i32 0, metadata !18, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!71 = metadata !{i32 27, i32 5, metadata !69, null}
!72 = metadata !{i32 786688, metadata !69, metadata !"h", metadata !15, i32 28, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 8, i32 0, i32 0, metadata !74, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!74 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!77 = metadata !{i32 28, i32 6, metadata !69, null}
!78 = metadata !{i32 29, i32 13, metadata !69, null}
!79 = metadata !{i32 786688, metadata !69, metadata !"n", metadata !15, i32 29, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 30, i32 1, metadata !69, null}
!81 = metadata !{i32 786688, metadata !69, metadata !"len2", metadata !15, i32 34, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 34, i32 15, metadata !69, null}
!83 = metadata !{i32 32, i32 1, metadata !84, null}
!84 = metadata !{i32 786443, metadata !69, i32 31, i32 1, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 35, i32 1, metadata !69, null}
!86 = metadata !{i32 31, i32 2, metadata !84, null}
!87 = metadata !{i32 786688, metadata !69, metadata !"len", metadata !15, i32 24, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 33, i32 1, metadata !84, null}
!89 = metadata !{i32 36, i32 2, metadata !90, null}
!90 = metadata !{i32 786443, metadata !69, i32 36, i32 1, metadata !15, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 37, i32 1, metadata !90, null}
!92 = metadata !{i32 38, i32 1, metadata !90, null}
!93 = metadata !{i32 39, i32 1, metadata !90, null}
!94 = metadata !{i32 40, i32 1, metadata !69, null}
!95 = metadata !{i32 41, i32 1, metadata !69, null}
!96 = metadata !{i32 42, i32 1, metadata !69, null}
!97 = metadata !{i32 43, i32 1, metadata !69, null}
!98 = metadata !{i32 59, i32 6, metadata !99, null}
!99 = metadata !{i32 786443, metadata !69, i32 58, i32 6, metadata !15, i32 11} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 44, i32 1, metadata !69, null}
!101 = metadata !{i32 47, i32 3, metadata !102, null}
!102 = metadata !{i32 786443, metadata !69, i32 45, i32 6, metadata !15, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786688, metadata !69, metadata !"temp", metadata !15, i32 23, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 48, i32 7, metadata !105, null}
!105 = metadata !{i32 786443, metadata !102, i32 48, i32 3, metadata !15, i32 8} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 49, i32 11, metadata !107, null}
!107 = metadata !{i32 786443, metadata !105, i32 49, i32 10, metadata !15, i32 9} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 50, i32 15, metadata !109, null}
!109 = metadata !{i32 786443, metadata !107, i32 50, i32 14, metadata !15, i32 10} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786688, metadata !69, metadata !"a", metadata !15, i32 25, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 51, i32 14, metadata !109, null}
!112 = metadata !{i32 53, i32 14, metadata !107, null}
!113 = metadata !{i32 48, i32 16, metadata !105, null}
!114 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !15, i32 22, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 61, i32 10, metadata !116, null}
!116 = metadata !{i32 786443, metadata !99, i32 61, i32 6, metadata !15, i32 12} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 62, i32 11, metadata !118, null}
!118 = metadata !{i32 786443, metadata !116, i32 62, i32 10, metadata !15, i32 13} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 63, i32 15, metadata !120, null}
!120 = metadata !{i32 786443, metadata !118, i32 63, i32 14, metadata !15, i32 14} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 64, i32 14, metadata !120, null}
!122 = metadata !{i32 61, i32 19, metadata !116, null}
!123 = metadata !{i32 786688, metadata !69, metadata !"remainder", metadata !15, i32 69, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 786688, metadata !69, metadata !"k", metadata !15, i32 26, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 786688, metadata !69, metadata !"t", metadata !15, i32 67, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 46, i32 3, metadata !102, null}
!127 = metadata !{i32 786688, metadata !69, metadata !"size_of_a", metadata !15, i32 22, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 68, i32 18, metadata !69, null}
!129 = metadata !{i32 786688, metadata !69, metadata !"divisor", metadata !15, i32 68, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 69, i32 27, metadata !69, null}
!131 = metadata !{i32 70, i32 1, metadata !69, null}
!132 = metadata !{i32 71, i32 1, metadata !69, null}
!133 = metadata !{i32 72, i32 28, metadata !69, null}
!134 = metadata !{i32 73, i32 1, metadata !69, null}
!135 = metadata !{i32 75, i32 1, metadata !69, null}
!136 = metadata !{i32 77, i32 1, metadata !69, null}
!137 = metadata !{i32 78, i32 1, metadata !69, null}
!138 = metadata !{i32 79, i32 1, metadata !69, null}
!139 = metadata !{i32 80, i32 1, metadata !69, null}
!140 = metadata !{i32 103, i32 4, metadata !141, null}
!141 = metadata !{i32 786443, metadata !142, i32 99, i32 4, metadata !15, i32 19} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !69, i32 81, i32 6, metadata !15, i32 15} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 105, i32 4, metadata !141, null}
!144 = metadata !{i32 82, i32 29, metadata !142, null}
!145 = metadata !{i32 81, i32 49, metadata !142, null}
!146 = metadata !{i32 786688, metadata !142, metadata !"new_temp", metadata !15, i32 81, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786688, metadata !142, metadata !"temp2", metadata !15, i32 82, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 83, i32 6, metadata !142, null}
!149 = metadata !{i32 84, i32 25, metadata !150, null}
!150 = metadata !{i32 786443, metadata !142, i32 84, i32 10, metadata !15, i32 16} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 85, i32 10, metadata !150, null}
!152 = metadata !{i32 86, i32 24, metadata !150, null}
!153 = metadata !{i32 786688, metadata !150, metadata !"vr2", metadata !15, i32 86, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 87, i32 10, metadata !150, null}
!155 = metadata !{i32 88, i32 15, metadata !156, null}
!156 = metadata !{i32 786443, metadata !150, i32 88, i32 14, metadata !15, i32 17} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 89, i32 14, metadata !156, null}
!158 = metadata !{i32 90, i32 5, metadata !156, null}
!159 = metadata !{i32 93, i32 8, metadata !160, null}
!160 = metadata !{i32 786443, metadata !150, i32 92, i32 8, metadata !15, i32 18} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 92, i32 9, metadata !160, null}
!162 = metadata !{i32 94, i32 8, metadata !160, null}
!163 = metadata !{i32 95, i32 5, metadata !160, null}
!164 = metadata !{i32 99, i32 5, metadata !141, null}
!165 = metadata !{i32 786688, metadata !69, metadata !"quotient", metadata !15, i32 72, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 100, i32 4, metadata !141, null}
!167 = metadata !{i32 102, i32 4, metadata !141, null}
!168 = metadata !{i32 104, i32 4, metadata !141, null}
!169 = metadata !{i32 106, i32 4, metadata !141, null}
!170 = metadata !{i32 108, i32 1, metadata !69, null}
!171 = metadata !{i32 109, i32 5, metadata !172, null}
!172 = metadata !{i32 786443, metadata !69, i32 109, i32 1, metadata !15, i32 20} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 109, i32 23, metadata !172, null}
!174 = metadata !{i32 110, i32 1, metadata !172, null}
!175 = metadata !{i32 111, i32 2, metadata !69, null}
