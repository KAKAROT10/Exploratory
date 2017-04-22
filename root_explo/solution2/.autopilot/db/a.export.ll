; ModuleID = '/root/root_explo/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Square_root_str = internal unnamed_addr constant [12 x i8] c"Square_root\00"

declare i65 @llvm.part.select.i65(i65, i32, i32) nounwind readnone

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i105 @llvm.part.select.i105(i105, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i32 @Square_root_dup(i32 %x) readnone {
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x)
  %arr = alloca [20 x i5], align 1
  %p_shl = call i35 @_ssdm_op_BitConcatenate.i35.i32.i3(i32 %x_read, i3 0)
  %p_shl_cast = sext i35 %p_shl to i36
  %p_shl1 = call i33 @_ssdm_op_BitConcatenate.i33.i32.i1(i32 %x_read, i1 false)
  %p_shl1_cast = sext i33 %p_shl1 to i36
  %y = add i36 %p_shl_cast, %p_shl1_cast
  %x_assign_cast_cast_cast = sext i36 %y to i52
  br label %1

; <label>:1                                       ; preds = %2, %0
  %indvars_iv = phi i5 [ %cou1, %2 ], [ 0, %0 ]
  %y1 = phi i52 [ %tmp_14, %2 ], [ %x_assign_cast_cast_cast, %0 ]
  %cou1_cast = zext i5 %indvars_iv to i64
  %tmp = icmp eq i52 %y1, 0
  %cou1 = add i5 %indvars_iv, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  %tmp_3 = trunc i5 %indvars_iv to i1
  %cou1_cast2 = zext i5 %indvars_iv to i6
  %p_lshr_f_cast = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %indvars_iv, i32 1, i32 4)
  %tmp_1_cast = zext i4 %p_lshr_f_cast to i64
  %tmp_6 = add i6 -1, %cou1_cast2
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_2 = srem i52 %y1, 10
  %arr_addr = getelementptr [20 x i5]* %arr, i64 0, i64 %cou1_cast
  %tmp_9 = trunc i52 %tmp_2 to i5
  store i5 %tmp_9, i5* %arr_addr, align 1
  %sext_cast = sext i52 %y1 to i105
  %mul = mul i105 7205759403792794, %sext_cast
  %neg_mul = sub i105 0, %mul
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i52.i32(i52 %y1, i32 51)
  %tmp_17 = call i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105 %neg_mul, i32 56, i32 104)
  %tmp_1 = sext i49 %tmp_17 to i52
  %tmp_18 = call i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105 %mul, i32 56, i32 104)
  %tmp_5 = sext i49 %tmp_18 to i52
  %tmp_10 = select i1 %tmp_16, i52 %tmp_1, i52 %tmp_5
  %neg_ti = sub i52 0, %tmp_10
  %tmp_14 = select i1 %tmp_16, i52 %neg_ti, i52 %tmp_5
  br label %1

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i = phi i4 [ %i_1, %3 ], [ 0, %.preheader.preheader ]
  %z = phi i15 [ %z_1, %3 ], [ 0, %.preheader.preheader ]
  %i_cast1 = zext i4 %i to i6
  %i_cast = zext i4 %i to i64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 10, i64 0) nounwind
  %exitcond = icmp eq i4 %i, %p_lshr_f_cast
  %i_1 = add i4 %i, 1
  br i1 %exitcond, label %_ifconv, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_7 = sub i6 %tmp_6, %i_cast1
  %tmp_7_cast = sext i6 %tmp_7 to i64
  %arr_addr_1 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp_7_cast
  %arr_load = load i5* %arr_addr_1, align 1
  %extLd12_cast = sext i5 %arr_load to i10
  %arr_addr_2 = getelementptr [20 x i5]* %arr, i64 0, i64 %i_cast
  %arr_load_1 = load i5* %arr_addr_2, align 1
  %extLd9_cast = sext i5 %arr_load_1 to i10
  %tmp_8 = mul i10 %extLd12_cast, %extLd9_cast
  %tmp_15 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_8, i1 false)
  %tmp_9_cast = sext i11 %tmp_15 to i15
  %z_1 = add i15 %z, %tmp_9_cast
  br label %.preheader

_ifconv:                                          ; preds = %.preheader
  %arr_addr_3 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp_1_cast
  %arr_load_2 = load i5* %arr_addr_3, align 1
  %extLd_cast = sext i5 %arr_load_2 to i10
  %tmp_4 = mul i10 %extLd_cast, %extLd_cast
  %tmp_s = sext i10 %tmp_4 to i32
  %tmp_11 = sext i15 %z to i32
  %tmp_12 = add i32 %tmp_s, %tmp_11
  %tmp_13 = select i1 %tmp_3, i32 %tmp_12, i32 %tmp_11
  ret i32 %tmp_13
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i52.i32.i32(i52, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i5.i32.i32(i5, i32, i32) nounwind readnone

define weak i49 @_ssdm_op_PartSelect.i49.i105.i32.i32(i105, i32, i32) nounwind readnone {
entry:
  %empty = call i105 @llvm.part.select.i105(i105 %0, i32 %1, i32 %2)
  %empty_11 = trunc i105 %empty to i49
  ret i49 %empty_11
}

define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_12 = trunc i5 %empty to i4
  ret i4 %empty_12
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i31
  ret i31 %empty_13
}

define weak i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65, i32, i32) nounwind readnone {
entry:
  %empty = call i65 @llvm.part.select.i65(i65 %0, i32 %1, i32 %2)
  %empty_14 = trunc i65 %empty to i29
  ret i29 %empty_14
}

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone

declare i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i52.i32(i52, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i52
  %empty_15 = shl i52 1, %empty
  %empty_16 = and i52 %0, %empty_15
  %empty_17 = icmp ne i52 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_18 = and i32 %0, %empty
  %empty_19 = icmp ne i32 %empty_18, 0
  ret i1 %empty_19
}

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_20 = shl i17 1, %empty
  %empty_21 = and i17 %0, %empty_20
  %empty_22 = icmp ne i17 %empty_21, 0
  ret i1 %empty_22
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_23 = zext i1 %1 to i9
  %empty_24 = shl i9 %empty, 1
  %empty_25 = or i9 %empty_24, %empty_23
  ret i9 %empty_25
}

declare i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_26 = zext i4 %1 to i8
  %empty_27 = shl i8 %empty, 4
  %empty_28 = or i8 %empty_27, %empty_26
  ret i8 %empty_28
}

declare i8 @_ssdm_op_BitConcatenate.i8.i4.i1.i3(i4, i1, i3) nounwind readnone

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_29 = zext i3 %1 to i7
  %empty_30 = shl i7 %empty, 3
  %empty_31 = or i7 %empty_30, %empty_29
  ret i7 %empty_31
}

declare i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_32 = zext i2 %1 to i6
  %empty_33 = shl i6 %empty, 2
  %empty_34 = or i6 %empty_33, %empty_32
  ret i6 %empty_34
}

declare i6 @_ssdm_op_BitConcatenate.i6.i4.i1.i1(i4, i1, i1) nounwind readnone

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_35 = zext i1 %1 to i5
  %empty_36 = shl i5 %empty, 1
  %empty_37 = or i5 %empty_36, %empty_35
  ret i5 %empty_37
}

define weak i35 @_ssdm_op_BitConcatenate.i35.i32.i3(i32, i3) nounwind readnone {
entry:
  %empty = zext i32 %0 to i35
  %empty_38 = zext i3 %1 to i35
  %empty_39 = shl i35 %empty, 3
  %empty_40 = or i35 %empty_39, %empty_38
  ret i35 %empty_40
}

define weak i33 @_ssdm_op_BitConcatenate.i33.i32.i1(i32, i1) nounwind readnone {
entry:
  %empty = zext i32 %0 to i33
  %empty_41 = zext i1 %1 to i33
  %empty_42 = shl i33 %empty, 1
  %empty_43 = or i33 %empty_42, %empty_41
  ret i33 %empty_43
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_44 = zext i1 %1 to i32
  %empty_45 = shl i32 %empty, 1
  %empty_46 = or i32 %empty_45, %empty_44
  ret i32 %empty_46
}

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_47 = zext i1 %1 to i22
  %empty_48 = shl i22 %empty, 1
  %empty_49 = or i22 %empty_48, %empty_47
  ret i22 %empty_49
}

declare i22 @_ssdm_op_BitConcatenate.i22.i19.i3(i19, i3) nounwind readnone

define weak i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12, i3) nounwind readnone {
entry:
  %empty = zext i12 %0 to i15
  %empty_50 = zext i3 %1 to i15
  %empty_51 = shl i15 %empty, 3
  %empty_52 = or i15 %empty_51, %empty_50
  ret i15 %empty_52
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_53 = zext i1 %1 to i13
  %empty_54 = shl i13 %empty, 1
  %empty_55 = or i13 %empty_54, %empty_53
  ret i13 %empty_55
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_56 = zext i3 %1 to i11
  %empty_57 = shl i11 %empty, 3
  %empty_58 = or i11 %empty_57, %empty_56
  ret i11 %empty_58
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_59 = zext i1 %1 to i11
  %empty_60 = shl i11 %empty, 1
  %empty_61 = or i11 %empty_60, %empty_59
  ret i11 %empty_61
}

define void @Square_root(i32* %num, float* %ans) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %num) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %ans) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @Square_root_str) nounwind
  %remy = alloca [20 x i32], align 16
  %h = alloca [100 x i8], align 16
  %n = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %num) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %n1 = phi i32 [ %n, %0 ], [ %n_1, %2 ]
  %len2 = phi i32 [ 0, %0 ], [ %len, %2 ]
  %tmp = icmp eq i32 %n1, 0
  %len = add nsw i32 %len2, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  %tmp_32 = trunc i32 %len2 to i1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %sext_cast = sext i32 %n1 to i65
  %mul = mul i65 %sext_cast, 6871947674
  %neg_mul = sub i65 0, %mul
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n1, i32 31)
  %tmp_44 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul, i32 36, i32 64)
  %tmp_34 = sext i29 %tmp_44 to i32
  %tmp_49 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul, i32 36, i32 64)
  %tmp_35 = sext i29 %tmp_49 to i32
  %tmp_45 = select i1 %tmp_36, i32 %tmp_34, i32 %tmp_35
  %neg_ti = sub i32 0, %tmp_45
  %n_1 = select i1 %tmp_36, i32 %neg_ti, i32 %tmp_35
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %tmp_s = phi i32 [ %tmp_22, %3 ], [ %n, %.preheader.preheader ]
  %len1 = phi i32 [ %len2_1, %3 ], [ %len2, %.preheader.preheader ]
  %tmp_11 = icmp eq i32 %tmp_s, 0
  br i1 %tmp_11, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_19 = srem i32 %tmp_s, 10
  %tmp_64 = trunc i32 %tmp_19 to i6
  %tmp_20 = add i6 -16, %tmp_64
  %tmp_23_cast = zext i6 %tmp_20 to i8
  %len2_1 = add nsw i32 -1, %len1
  %tmp_21 = sext i32 %len2_1 to i64
  %h_addr_4 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_21
  store i8 %tmp_23_cast, i8* %h_addr_4, align 1
  %sext5_cast = sext i32 %tmp_s to i65
  %mul6 = mul i65 6871947674, %sext5_cast
  %neg_mul7 = sub i65 0, %mul6
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_s, i32 31)
  %tmp_66 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul7, i32 36, i32 64)
  %tmp_52 = sext i29 %tmp_66 to i32
  %tmp_67 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul6, i32 36, i32 64)
  %tmp_59 = sext i29 %tmp_67 to i32
  %tmp_60 = select i1 %tmp_65, i32 %tmp_52, i32 %tmp_59
  %neg_ti1 = sub i32 0, %tmp_60
  %tmp_22 = select i1 %tmp_65, i32 %neg_ti1, i32 %tmp_59
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %num, i32 %tmp_22) nounwind
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  %tmp_12 = sext i32 %len2 to i64
  %h_addr = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_12
  store i8 48, i8* %h_addr, align 1
  %tmp_14 = sext i32 %len to i64
  %h_addr_1 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_14
  store i8 48, i8* %h_addr_1, align 1
  %tmp_15 = add nsw i32 %len2, 2
  %tmp_16 = sext i32 %tmp_15 to i64
  %h_addr_2 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_16
  store i8 48, i8* %h_addr_2, align 1
  %tmp_17 = add nsw i32 %len2, 3
  %tmp_18 = sext i32 %tmp_17 to i64
  %h_addr_3 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_18
  store i8 48, i8* %h_addr_3, align 1
  %h_addr_5 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0
  %h_load = load i8* %h_addr_5, align 16
  br i1 %tmp_32, label %10, label %5

; <label>:5                                       ; preds = %4
  %p_shl = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %h_load, i3 0)
  %p_shl_cast = sext i11 %p_shl to i12
  %p_shl6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %h_load, i1 false)
  %p_shl6_cast = sext i9 %p_shl6 to i12
  %h_addr_6 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 1
  %h_load_1 = load i8* %h_addr_6, align 1
  %tmp_28_cast = sext i8 %h_load_1 to i11
  %tmp2 = add i12 %p_shl_cast, %p_shl6_cast
  %tmp3 = add i11 %tmp_28_cast, -528
  %tmp3_cast = sext i11 %tmp3 to i12
  %temp = add i12 %tmp2, %tmp3_cast
  br label %6

; <label>:6                                       ; preds = %9, %5
  %a = phi i4 [ 0, %5 ], [ %a_2, %9 ]
  %a_2 = phi i4 [ 1, %5 ], [ %i, %9 ]
  %a_2_cast17_cast = zext i4 %a_2 to i8
  %tmp_24 = icmp ult i4 %a_2, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 5) nounwind
  br i1 %tmp_24, label %7, label %.loopexit2

; <label>:7                                       ; preds = %6
  %tmp_27 = mul i8 %a_2_cast17_cast, %a_2_cast17_cast
  %tmp_33_cast = zext i8 %tmp_27 to i12
  %tmp_28 = icmp sgt i12 %tmp_33_cast, %temp
  br i1 %tmp_28, label %8, label %9

; <label>:8                                       ; preds = %7
  %a_1 = add i4 %a_2, -1
  br label %.loopexit2

; <label>:9                                       ; preds = %7
  %i = add i4 %a_2, 1
  br label %6

; <label>:10                                      ; preds = %4
  %tmp_30_cast = sext i8 %h_load to i9
  %temp_1 = add i9 %tmp_30_cast, -48
  %temp_1_cast = sext i9 %temp_1 to i12
  br label %11

; <label>:11                                      ; preds = %14, %10
  %i_1 = phi i3 [ 1, %10 ], [ %i_3, %14 ]
  %i_1_cast16_cast = zext i3 %i_1 to i6
  %tmp_23 = icmp ult i3 %i_1, -3
  %empty_62 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind
  br i1 %tmp_23, label %12, label %.loopexit2

; <label>:12                                      ; preds = %11
  %tmp_25 = mul i6 %i_1_cast16_cast, %i_1_cast16_cast
  %tmp_35_cast = zext i6 %tmp_25 to i9
  %tmp_26 = icmp sgt i9 %tmp_35_cast, %temp_1
  br i1 %tmp_26, label %13, label %14

; <label>:13                                      ; preds = %12
  %a_5 = add i3 %i_1, -1
  %a_5_cast = zext i3 %a_5 to i4
  br label %.loopexit2

; <label>:14                                      ; preds = %12
  %i_3 = add i3 %i_1, 1
  br label %11

.loopexit2:                                       ; preds = %6, %11, %13, %8
  %k = phi i2 [ -1, %8 ], [ -2, %13 ], [ -2, %11 ], [ -1, %6 ]
  %a_3 = phi i4 [ %a_1, %8 ], [ %a_5_cast, %13 ], [ 0, %11 ], [ %a, %6 ]
  %temp2 = phi i12 [ %temp, %8 ], [ %temp_1_cast, %13 ], [ %temp_1_cast, %11 ], [ %temp, %6 ]
  %size_of_a_0_in = phi i32 [ %len2, %8 ], [ %len, %13 ], [ %len, %11 ], [ %len2, %6 ]
  %a_4 = alloca i32
  %remainder_4 = alloca i32
  %k_1 = alloca i32
  %t = alloca i32
  %k_cast = zext i2 %k to i3
  %a_3_cast15_cast1 = zext i4 %a_3 to i21
  %a_3_cast15_cast = zext i4 %a_3 to i8
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %size_of_a_0_in, i32 31)
  %p_neg = sub i32 0, %size_of_a_0_in
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31)
  %tmp_61 = zext i31 %p_lshr to i32
  %p_neg_t = sub i32 0, %tmp_61
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %size_of_a_0_in, i32 1, i32 31)
  %tmp_62 = zext i31 %p_lshr_f to i32
  %size_of_a = select i1 %tmp_68, i32 %p_neg_t, i32 %tmp_62
  %divisor = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %a_3, i1 false)
  %divisor_cast1 = zext i5 %divisor to i17
  %divisor_cast = zext i5 %divisor to i32
  %tmp_29 = mul i8 %a_3_cast15_cast, %a_3_cast15_cast
  %tmp_37_cast = zext i8 %tmp_29 to i12
  %remainder = sub i12 %temp2, %tmp_37_cast
  %remainder_cast = sext i12 %remainder to i32
  %remy_addr = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 0
  store i32 %remainder_cast, i32* %remy_addr, align 16
  %p_shl1 = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %remainder, i3 0)
  %p_shl1_cast = sext i15 %p_shl1 to i16
  %p_shl2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %remainder, i1 false)
  %p_shl2_cast = sext i13 %p_shl2 to i16
  %tmp_30 = add i2 %k, -1
  %tmp_31 = zext i2 %tmp_30 to i64
  %h_addr_7 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_31
  %h_load_2 = load i8* %h_addr_7, align 1
  %tmp_41_cast = sext i8 %h_load_2 to i9
  %tmp5 = add i16 %p_shl2_cast, %p_shl1_cast
  %tmp6 = add i9 %tmp_41_cast, -48
  %tmp6_cast = sext i9 %tmp6 to i16
  %temp_2 = add i16 %tmp5, %tmp6_cast
  %temp_2_cast_cast = sext i16 %temp_2 to i23
  %temp_2_tr = sext i16 %temp_2 to i17
  %tmp_1 = sdiv i17 %temp_2_tr, %divisor_cast1
  %tmp_69 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %a_3, i4 0)
  %p_shl3 = zext i8 %tmp_69 to i22
  %tmp_70 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %a_3, i2 0)
  %p_shl4 = zext i6 %tmp_70 to i22
  %Ny = add i22 %p_shl4, %p_shl3
  %x = sext i16 %temp_2 to i22
  %slt = icmp slt i22 %x, %Ny
  %rev = xor i1 %slt, true
  %p_s = select i1 %rev, i17 9, i17 %tmp_1
  %p_cast_cast = sext i17 %p_s to i21
  %p_shl8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %a_3, i3 0)
  %p_shl8_cast = zext i7 %p_shl8 to i17
  %tmp7 = add i17 %p_s, %p_shl8_cast
  %a_6 = add i17 %divisor_cast1, %tmp7
  %a_6_cast = sext i17 %a_6 to i32
  %tmp_33 = mul i21 %a_3_cast15_cast1, %p_cast_cast
  %tmp_63 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_33, i1 false)
  %tmp_36_cast = sext i22 %tmp_63 to i23
  %remainder_1 = sub i23 %temp_2_cast_cast, %tmp_36_cast
  %remainder_1_cast = sext i23 %remainder_1 to i32
  %remy_addr_1 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 1
  store i32 %remainder_1_cast, i32* %remy_addr_1, align 4
  %k_2 = add i3 %k_cast, 1
  %k_2_cast = zext i3 %k_2 to i32
  %tmp_37 = add nsw i32 %len2, 4
  %tmp_50 = zext i4 %a_3 to i31
  store i32 2, i32* %t
  store i32 %k_2_cast, i32* %k_1
  store i32 %remainder_1_cast, i32* %remainder_4
  store i32 %a_6_cast, i32* %a_4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2
  %k_1_load = load i32* %k_1
  %tmp_38 = icmp sgt i32 %k_1_load, %tmp_37
  br i1 %tmp_38, label %20, label %15

; <label>:15                                      ; preds = %.backedge
  %a_4_load_1 = load i32* %a_4
  %t_load_2 = load i32* %t
  %t_2 = add nsw i32 -1, %t_load_2
  %tmp_41 = sext i32 %t_2 to i64
  %remy_addr_2 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_41
  %remy_load = load i32* %remy_addr_2, align 4
  %tmp_75 = shl i32 %remy_load, 3
  %tmp_76 = shl i32 %remy_load, 1
  %k_4 = add nsw i32 -1, %k_1_load
  %tmp_42 = sext i32 %k_4 to i64
  %h_addr_8 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp_42
  %h_load_3 = load i8* %h_addr_8, align 1
  %tmp_53_cast = sext i8 %h_load_3 to i9
  %tmp_43 = call fastcc i32 @Square_root_dup(i32 %a_4_load_1) nounwind
  %tmp8 = add i32 %tmp_75, %tmp_76
  %tmp9 = add i9 -48, %tmp_53_cast
  %tmp9_cast = sext i9 %tmp9 to i32
  %new_temp = add i32 %tmp9_cast, %tmp8
  %temp2_1 = sub i32 %new_temp, %tmp_43
  %tmp_77 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %temp2_1, i32 31)
  br i1 %tmp_77, label %16, label %19

; <label>:16                                      ; preds = %15
  %sext1_cast = sext i32 %a_4_load_1 to i65
  %mul1 = mul i65 6871947674, %sext1_cast
  %neg_mul1 = sub i65 0, %mul1
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_4_load_1, i32 31)
  %tmp_79 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul1, i32 36, i32 64)
  %tmp_80 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul1, i32 36, i32 64)
  %p_v_v = select i1 %tmp_78, i29 %tmp_79, i29 %tmp_80
  %neg_ti2 = sub i29 0, %p_v_v
  %tmp_71 = select i1 %tmp_78, i29 %neg_ti2, i29 %tmp_80
  %a_7 = add nsw i32 -1, %a_4_load_1
  %sext2_cast = sext i32 %a_7 to i65
  %mul2 = mul i65 6871947674, %sext2_cast
  %neg_mul2 = sub i65 0, %mul2
  %tmp_81 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %a_7, i32 31)
  %tmp_82 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul2, i32 36, i32 64)
  %tmp_72 = sext i29 %tmp_82 to i32
  %tmp_83 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul2, i32 36, i32 64)
  %tmp_73 = sext i29 %tmp_83 to i32
  %tmp_74 = select i1 %tmp_81, i32 %tmp_72, i32 %tmp_73
  %neg_ti3 = sub i32 0, %tmp_74
  %vr2 = select i1 %tmp_81, i32 %neg_ti3, i32 %tmp_73
  %tmp_84 = trunc i32 %vr2 to i29
  %tmp_47 = icmp eq i29 %tmp_71, %tmp_84
  br i1 %tmp_47, label %17, label %18

; <label>:17                                      ; preds = %16
  %remainder_4_load = load i32* %remainder_4
  %remainder_3 = add nsw i32 %divisor_cast, %remainder_4_load
  store i32 %remainder_3, i32* %remy_addr_2, align 4
  store i32 %remainder_3, i32* %remainder_4
  store i32 %a_7, i32* %a_4
  br label %.backedge.backedge

; <label>:18                                      ; preds = %16
  %t_load = load i32* %t
  %tmp_56 = add nsw i32 %t_load, -2
  %tmp_57 = sext i32 %tmp_56 to i64
  %remy_addr_4 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_57
  %remy_load_1 = load i32* %remy_addr_4, align 4
  %tmp_58 = add nsw i32 %remy_load_1, %divisor_cast
  store i32 %tmp_58, i32* %remy_addr_4, align 4
  store i32 %t_2, i32* %t
  store i32 %k_4, i32* %k_1
  store i32 %vr2, i32* %a_4
  br label %.backedge.backedge

; <label>:19                                      ; preds = %15
  %quotient = udiv i32 %temp2_1, %divisor_cast
  %tmp_48 = icmp sgt i32 %quotient, 9
  %p_6 = select i1 %tmp_48, i32 9, i32 %quotient
  %tmp_85 = shl i32 %a_4_load_1, 3
  %tmp_86 = shl i32 %a_4_load_1, 1
  %tmp10 = add i32 %tmp_85, %p_6
  %a_8 = add nsw i32 %tmp10, %tmp_86
  %tmp_87 = trunc i32 %p_6 to i31
  %tmp_51 = mul i31 %tmp_87, %tmp_50
  %tmp_53 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_51, i1 false)
  %remainder_2 = sub nsw i32 %temp2_1, %tmp_53
  %tmp_54 = sext i32 %t_load_2 to i64
  %remy_addr_3 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp_54
  store i32 %remainder_2, i32* %remy_addr_3, align 4
  %k_3 = add nsw i32 1, %k_1_load
  %t_1 = add nsw i32 1, %t_load_2
  store i32 %t_1, i32* %t
  store i32 %k_3, i32* %k_1
  store i32 %remainder_2, i32* %remainder_4
  store i32 %a_8, i32* %a_4
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %19, %18, %17
  br label %.backedge

; <label>:20                                      ; preds = %.backedge
  %a_4_load = load i32* %a_4
  %t_load_1 = load i32* %t
  %tmp_39 = sitofp i32 %a_4_load to float
  %tmp_40 = sub nsw i32 %t_load_1, %size_of_a
  br label %21

; <label>:21                                      ; preds = %22, %20
  %ans_local = phi float [ %tmp_39, %20 ], [ %tmp_55, %22 ]
  %i_2 = phi i31 [ 0, %20 ], [ %i_4, %22 ]
  %i_2_cast = zext i31 %i_2 to i32
  %tmp_46 = icmp slt i32 %i_2_cast, %tmp_40
  %i_4 = add i31 %i_2, 1
  br i1 %tmp_46, label %22, label %23

; <label>:22                                      ; preds = %21
  %tmp_55 = fdiv float %ans_local, 1.000000e+01
  br label %21

; <label>:23                                      ; preds = %21
  call void @_ssdm_op_Write.ap_auto.floatP(float* %ans, float %ans_local) nounwind
  ret void
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
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"num", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"ans", metadata !17, metadata !"float", i32 0, i32 31}
