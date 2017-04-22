; ModuleID = '/root/root_explo/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Square_root.str = internal unnamed_addr constant [12 x i8] c"Square_root\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @dup(i32 %x) readnone {
  %arr = alloca [20 x i5], align 1                ; [#uses=4 type=[20 x i5]*]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !43), !dbg !44 ; [debug line = 4:19] [debug variable = x]
  %x.cast = zext i32 %x to i35, !dbg !45          ; [#uses=1 type=i35] [debug line = 5:2]
  %_shl = shl nuw i35 %x.cast, 3, !dbg !45        ; [#uses=1 type=i35] [debug line = 5:2]
  %_shl.cast = sext i35 %_shl to i36, !dbg !45    ; [#uses=1 type=i36] [debug line = 5:2]
  %x.cast3 = zext i32 %x to i33, !dbg !45         ; [#uses=1 type=i33] [debug line = 5:2]
  %_shl1 = shl nuw i33 %x.cast3, 1, !dbg !45      ; [#uses=1 type=i33] [debug line = 5:2]
  %_shl1.cast = sext i33 %_shl1 to i36, !dbg !45  ; [#uses=1 type=i36] [debug line = 5:2]
  %x.assign = add i36 %_shl1.cast, %_shl.cast, !dbg !45 ; [#uses=1 type=i36] [debug line = 5:2]
  %x.assign.cast.cast = sext i36 %x.assign to i56, !dbg !45 ; [#uses=1 type=i56] [debug line = 5:2]
  call void @llvm.dbg.value(metadata !{i36 %x.assign}, i64 0, metadata !43), !dbg !45 ; [debug line = 5:2] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[20 x i5]* %arr}, metadata !47), !dbg !51 ; [debug line = 6:23] [debug variable = arr]
  call void @llvm.dbg.value(metadata !{i36 %x.assign}, i64 0, metadata !52), !dbg !53 ; [debug line = 6:43] [debug variable = y]
  br label %1, !dbg !54                           ; [debug line = 7:2]

; <label>:1                                       ; preds = %2, %0
  %y1 = phi i56 [ %x.assign.cast.cast, %0 ], [ %tmp.3, %2 ] ; [#uses=3 type=i56]
  %cou1 = phi i5 [ 0, %0 ], [ %cou1.1, %2 ]       ; [#uses=5 type=i5]
  %cou1.cast3 = trunc i5 %cou1 to i1, !dbg !54    ; [#uses=1 type=i1] [debug line = 7:2]
  %cou1.cast2 = zext i5 %cou1 to i6, !dbg !54     ; [#uses=1 type=i6] [debug line = 7:2]
  %cou1.cast = zext i5 %cou1 to i64, !dbg !54     ; [#uses=1 type=i64] [debug line = 7:2]
  %tmp = icmp eq i56 %y1, 0, !dbg !54             ; [#uses=1 type=i1] [debug line = 7:2]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !54 ; [debug line = 7:2]

.preheader.preheader:                             ; preds = %1
  %cou1.cast2.lcssa = phi i6 [ %cou1.cast2, %1 ]  ; [#uses=1 type=i6]
  %cou1.cast3.lcssa = phi i1 [ %cou1.cast3, %1 ]  ; [#uses=1 type=i1]
  %cou1.lcssa = phi i5 [ %cou1, %1 ]              ; [#uses=1 type=i5]
  %_lshr.f = lshr i5 %cou1.lcssa, 1, !dbg !55     ; [#uses=1 type=i5] [debug line = 13:6]
  %_lshr.f.cast = trunc i5 %_lshr.f to i4, !dbg !55 ; [#uses=2 type=i4] [debug line = 13:6]
  %tmp.1.cast = zext i4 %_lshr.f.cast to i64, !dbg !55 ; [#uses=1 type=i64] [debug line = 13:6]
  %tmp.6 = add i6 %cou1.cast2.lcssa, -1, !dbg !57 ; [#uses=1 type=i6] [debug line = 14:3]
  br label %.preheader, !dbg !55                  ; [debug line = 13:6]

; <label>:2                                       ; preds = %1
  %tmp.2 = srem i56 %y1, 10, !dbg !59             ; [#uses=1 type=i56] [debug line = 8:3]
  %arr.addr = getelementptr [20 x i5]* %arr, i64 0, i64 %cou1.cast, !dbg !59 ; [#uses=1 type=i5*] [debug line = 8:3]
  %tmp.2.cast.cast = trunc i56 %tmp.2 to i5, !dbg !59 ; [#uses=1 type=i5] [debug line = 8:3]
  store i5 %tmp.2.cast.cast, i5* %arr.addr, align 1, !dbg !59 ; [debug line = 8:3]
  %cou1.1 = add i5 %cou1, 1, !dbg !61             ; [#uses=1 type=i5] [debug line = 9:3]
  call void @llvm.dbg.value(metadata !{i5 %cou1.1}, i64 0, metadata !62), !dbg !61 ; [debug line = 9:3] [debug variable = cou1]
  %y1.tr = trunc i56 %y1 to i54, !dbg !63         ; [#uses=1 type=i54] [debug line = 10:3]
  %tmp.1 = sdiv i54 %y1.tr, 10, !dbg !63          ; [#uses=1 type=i54] [debug line = 10:3]
  %tmp.3 = sext i54 %tmp.1 to i56, !dbg !63       ; [#uses=1 type=i56] [debug line = 10:3]
  br label %1, !dbg !64                           ; [debug line = 11:2]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i = phi i4 [ %i.1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i4]
  %z = phi i64 [ %z.1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i64]
  %i.cast1 = zext i4 %i to i6, !dbg !55           ; [#uses=1 type=i6] [debug line = 13:6]
  %i.cast = zext i4 %i to i64, !dbg !55           ; [#uses=1 type=i64] [debug line = 13:6]
  %tmp.5 = icmp ult i4 %i, %_lshr.f.cast, !dbg !55 ; [#uses=1 type=i1] [debug line = 13:6]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 10, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %4, label %_ifconv, !dbg !55 ; [debug line = 13:6]

; <label>:4                                       ; preds = %.preheader
  %tmp.7 = sub i6 %tmp.6, %i.cast1, !dbg !57      ; [#uses=1 type=i6] [debug line = 14:3]
  %tmp.7.cast = sext i6 %tmp.7 to i64, !dbg !57   ; [#uses=1 type=i64] [debug line = 14:3]
  %arr.addr.1 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp.7.cast, !dbg !57 ; [#uses=1 type=i5*] [debug line = 14:3]
  %arr.load = load i5* %arr.addr.1, align 1       ; [#uses=1 type=i5]
  %extLd12.cast = sext i5 %arr.load to i10, !dbg !57 ; [#uses=1 type=i10] [debug line = 14:3]
  %arr.addr.2 = getelementptr [20 x i5]* %arr, i64 0, i64 %i.cast, !dbg !57 ; [#uses=1 type=i5*] [debug line = 14:3]
  %arr.load.1 = load i5* %arr.addr.2, align 1     ; [#uses=1 type=i5]
  %extLd9.cast = sext i5 %arr.load.1 to i10, !dbg !57 ; [#uses=1 type=i10] [debug line = 14:3]
  %tmp.8 = mul i10 %extLd12.cast, %extLd9.cast, !dbg !57 ; [#uses=1 type=i10] [debug line = 14:3]
  %tmp. = sext i10 %tmp.8 to i63, !dbg !57        ; [#uses=1 type=i63] [debug line = 14:3]
  %tmp.10 = zext i63 %tmp. to i64, !dbg !57       ; [#uses=1 type=i64] [debug line = 14:3]
  %tmp.9 = shl nuw i64 %tmp.10, 1, !dbg !57       ; [#uses=1 type=i64] [debug line = 14:3]
  %z.1 = add nsw i64 %z, %tmp.9, !dbg !57         ; [#uses=1 type=i64] [debug line = 14:3]
  call void @llvm.dbg.value(metadata !{i64 %z.1}, i64 0, metadata !65), !dbg !57 ; [debug line = 14:3] [debug variable = z]
  %i.1 = add i4 %i, 1, !dbg !66                   ; [#uses=1 type=i4] [debug line = 13:19]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !67), !dbg !66 ; [debug line = 13:19] [debug variable = i]
  br label %.preheader, !dbg !66                  ; [debug line = 13:19]

_ifconv:                                          ; preds = %.preheader
  %z.lcssa = phi i64 [ %z, %.preheader ]          ; [#uses=2 type=i64]
  %arr.addr.3 = getelementptr [20 x i5]* %arr, i64 0, i64 %tmp.1.cast, !dbg !68 ; [#uses=1 type=i5*] [debug line = 16:18]
  %arr.load.2 = load i5* %arr.addr.3, align 1     ; [#uses=1 type=i5]
  %extLd.cast = sext i5 %arr.load.2 to i10, !dbg !68 ; [#uses=2 type=i10] [debug line = 16:18]
  %tmp.4 = mul i10 %extLd.cast, %extLd.cast, !dbg !68 ; [#uses=1 type=i10] [debug line = 16:18]
  %tmp.11 = sext i10 %tmp.4 to i32, !dbg !68      ; [#uses=1 type=i32] [debug line = 16:18]
  %tmp.12 = trunc i64 %z.lcssa to i32, !dbg !68   ; [#uses=1 type=i32] [debug line = 16:18]
  %tmp.13 = add i32 %tmp.11, %tmp.12, !dbg !68    ; [#uses=1 type=i32] [debug line = 16:18]
  %tmp.14 = trunc i64 %z.lcssa to i32             ; [#uses=1 type=i32]
  %tmp.15 = select i1 %cou1.cast3.lcssa, i32 %tmp.13, i32 %tmp.14 ; [#uses=1 type=i32]
  ret i32 %tmp.15, !dbg !69                       ; [debug line = 18:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

; [#uses=0]
define void @Square_root(i32* %num, float* %ans) nounwind uwtable {
  %ans_local = alloca float, align 4              ; [#uses=3 type=float*]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %num) nounwind, !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(float* %ans) nounwind, !map !76
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @Square_root.str) nounwind
  %remy = alloca [20 x i32], align 16             ; [#uses=5 type=[20 x i32]*]
  %h = alloca [100 x i8], align 16                ; [#uses=10 type=[100 x i8]*]
  call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !80), !dbg !81 ; [debug line = 20:23] [debug variable = num]
  call void @llvm.dbg.value(metadata !{float* %ans}, i64 0, metadata !82), !dbg !83 ; [debug line = 20:35] [debug variable = ans]
  call void @llvm.dbg.declare(metadata !{[20 x i32]* %remy}, metadata !84), !dbg !87 ; [debug line = 27:5] [debug variable = remy]
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %h}, metadata !88), !dbg !93 ; [debug line = 28:6] [debug variable = h]
  %n = load i32* %num, align 4, !dbg !94          ; [#uses=2 type=i32] [debug line = 29:13]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !95), !dbg !94 ; [debug line = 29:13] [debug variable = n]
  br label %1, !dbg !96                           ; [debug line = 30:1]

; <label>:1                                       ; preds = %2, %0
  %n1 = phi i32 [ %n, %0 ], [ %n.1, %2 ]          ; [#uses=2 type=i32]
  %len2 = phi i32 [ 0, %0 ], [ %len, %2 ]         ; [#uses=3 type=i32]
  %len2.cast = trunc i32 %len2 to i1, !dbg !97    ; [#uses=1 type=i1] [debug line = 34:15]
  call void @llvm.dbg.value(metadata !{i32 %len2}, i64 0, metadata !98), !dbg !97 ; [debug line = 34:15] [debug variable = len2]
  %tmp = icmp eq i32 %n1, 0, !dbg !96             ; [#uses=1 type=i1] [debug line = 30:1]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !96 ; [debug line = 30:1]

.preheader.preheader:                             ; preds = %1
  %len2.cast.lcssa = phi i1 [ %len2.cast, %1 ]    ; [#uses=1 type=i1]
  %len2.lcssa = phi i32 [ %len2, %1 ]             ; [#uses=11 type=i32]
  br label %.preheader, !dbg !99                  ; [debug line = 35:1]

; <label>:2                                       ; preds = %1
  %n.1 = sdiv i32 %n1, 10, !dbg !100              ; [#uses=1 type=i32] [debug line = 31:2]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !95), !dbg !100 ; [debug line = 31:2] [debug variable = n]
  %len = add nsw i32 %len2, 1, !dbg !102          ; [#uses=1 type=i32] [debug line = 32:1]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !103), !dbg !102 ; [debug line = 32:1] [debug variable = len]
  br label %1, !dbg !104                          ; [debug line = 33:1]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %tmp. = phi i32 [ %tmp.22, %3 ], [ %n, %.preheader.preheader ] ; [#uses=3 type=i32]
  %len1 = phi i32 [ %len2.1, %3 ], [ %len2.lcssa, %.preheader.preheader ] ; [#uses=1 type=i32]
  %tmp.11 = icmp eq i32 %tmp., 0, !dbg !99        ; [#uses=1 type=i1] [debug line = 35:1]
  br i1 %tmp.11, label %4, label %3, !dbg !99     ; [debug line = 35:1]

; <label>:3                                       ; preds = %.preheader
  %tmp.19 = srem i32 %tmp., 10, !dbg !105         ; [#uses=1 type=i32] [debug line = 36:2]
  %tmp.22.cast = trunc i32 %tmp.19 to i6, !dbg !105 ; [#uses=1 type=i6] [debug line = 36:2]
  %tmp.20 = add i6 %tmp.22.cast, -16, !dbg !105   ; [#uses=1 type=i6] [debug line = 36:2]
  %tmp.23.cast = zext i6 %tmp.20 to i8, !dbg !105 ; [#uses=1 type=i8] [debug line = 36:2]
  %len2.1 = add nsw i32 %len1, -1, !dbg !105      ; [#uses=2 type=i32] [debug line = 36:2]
  %tmp.21 = sext i32 %len2.1 to i64, !dbg !105    ; [#uses=1 type=i64] [debug line = 36:2]
  %h.addr.4 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.21, !dbg !105 ; [#uses=1 type=i8*] [debug line = 36:2]
  store i8 %tmp.23.cast, i8* %h.addr.4, align 1, !dbg !105 ; [debug line = 36:2]
  %tmp.22 = sdiv i32 %tmp., 10, !dbg !107         ; [#uses=2 type=i32] [debug line = 37:1]
  store i32 %tmp.22, i32* %num, align 4, !dbg !107 ; [debug line = 37:1]
  call void @llvm.dbg.value(metadata !{i32 %len2.1}, i64 0, metadata !98), !dbg !108 ; [debug line = 38:1] [debug variable = len2]
  br label %.preheader, !dbg !109                 ; [debug line = 39:1]

; <label>:4                                       ; preds = %.preheader
  %tmp.12 = sext i32 %len2.lcssa to i64, !dbg !110 ; [#uses=1 type=i64] [debug line = 40:1]
  %h.addr = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.12, !dbg !110 ; [#uses=1 type=i8*] [debug line = 40:1]
  store i8 48, i8* %h.addr, align 1, !dbg !110    ; [debug line = 40:1]
  %tmp.13 = add nsw i32 %len2.lcssa, 1, !dbg !111 ; [#uses=3 type=i32] [debug line = 41:1]
  %tmp.14 = sext i32 %tmp.13 to i64, !dbg !111    ; [#uses=1 type=i64] [debug line = 41:1]
  %h.addr.1 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.14, !dbg !111 ; [#uses=1 type=i8*] [debug line = 41:1]
  store i8 48, i8* %h.addr.1, align 1, !dbg !111  ; [debug line = 41:1]
  %tmp.15 = add nsw i32 %len2.lcssa, 2, !dbg !112 ; [#uses=1 type=i32] [debug line = 42:1]
  %tmp.16 = sext i32 %tmp.15 to i64, !dbg !112    ; [#uses=1 type=i64] [debug line = 42:1]
  %h.addr.2 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.16, !dbg !112 ; [#uses=1 type=i8*] [debug line = 42:1]
  store i8 48, i8* %h.addr.2, align 1, !dbg !112  ; [debug line = 42:1]
  %tmp.17 = add nsw i32 %len2.lcssa, 3, !dbg !113 ; [#uses=1 type=i32] [debug line = 43:1]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !113    ; [#uses=1 type=i64] [debug line = 43:1]
  %h.addr.3 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.18, !dbg !113 ; [#uses=1 type=i8*] [debug line = 43:1]
  store i8 48, i8* %h.addr.3, align 1, !dbg !113  ; [debug line = 43:1]
  br i1 %len2.cast.lcssa, label %11, label %5, !dbg !114 ; [debug line = 44:1]

; <label>:5                                       ; preds = %4
  %h.addr.5 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0, !dbg !115 ; [#uses=1 type=i8*] [debug line = 47:3]
  %h.load = load i8* %h.addr.5, align 16, !dbg !115 ; [#uses=2 type=i8] [debug line = 47:3]
  %tmp.26.cast = zext i8 %h.load to i9, !dbg !115 ; [#uses=1 type=i9] [debug line = 47:3]
  %tmp.26.cast1 = zext i8 %h.load to i11, !dbg !115 ; [#uses=1 type=i11] [debug line = 47:3]
  %_shl = shl nuw i11 %tmp.26.cast1, 3, !dbg !115 ; [#uses=1 type=i11] [debug line = 47:3]
  %_shl.cast = sext i11 %_shl to i12, !dbg !115   ; [#uses=1 type=i12] [debug line = 47:3]
  %_shl6 = shl nuw i9 %tmp.26.cast, 1, !dbg !115  ; [#uses=1 type=i9] [debug line = 47:3]
  %_shl6.cast = sext i9 %_shl6 to i12, !dbg !115  ; [#uses=1 type=i12] [debug line = 47:3]
  %h.addr.6 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 1, !dbg !115 ; [#uses=1 type=i8*] [debug line = 47:3]
  %h.load.1 = load i8* %h.addr.6, align 1, !dbg !115 ; [#uses=1 type=i8] [debug line = 47:3]
  %tmp.28.cast = sext i8 %h.load.1 to i11, !dbg !115 ; [#uses=1 type=i11] [debug line = 47:3]
  %tmp2 = add i12 %_shl.cast, %_shl6.cast, !dbg !115 ; [#uses=1 type=i12] [debug line = 47:3]
  %tmp3 = add i11 %tmp.28.cast, -528, !dbg !115   ; [#uses=1 type=i11] [debug line = 47:3]
  %tmp3.cast = sext i11 %tmp3 to i12, !dbg !115   ; [#uses=1 type=i12] [debug line = 47:3]
  %temp = add i12 %tmp2, %tmp3.cast, !dbg !115    ; [#uses=3 type=i12] [debug line = 47:3]
  call void @llvm.dbg.value(metadata !{i12 %temp}, i64 0, metadata !117), !dbg !115 ; [debug line = 47:3] [debug variable = temp]
  br label %6, !dbg !118                          ; [debug line = 48:7]

; <label>:6                                       ; preds = %10, %5
  %a = phi i4 [ 0, %5 ], [ %a.2, %10 ]            ; [#uses=1 type=i4]
  %a.2 = phi i4 [ 1, %5 ], [ %i, %10 ]            ; [#uses=5 type=i4]
  %a.2.cast17.cast = zext i4 %a.2 to i8, !dbg !118 ; [#uses=2 type=i8] [debug line = 48:7]
  %tmp.24 = icmp ult i4 %a.2, -6, !dbg !118       ; [#uses=1 type=i1] [debug line = 48:7]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 9, i64 5) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.24, label %8, label %.loopexit2.loopexit33, !dbg !118 ; [debug line = 48:7]

; <label>:8                                       ; preds = %6
  %tmp.27 = mul i8 %a.2.cast17.cast, %a.2.cast17.cast, !dbg !120 ; [#uses=1 type=i8] [debug line = 49:11]
  %tmp.33.cast = zext i8 %tmp.27 to i12, !dbg !120 ; [#uses=1 type=i12] [debug line = 49:11]
  %tmp.28 = icmp sgt i12 %tmp.33.cast, %temp, !dbg !120 ; [#uses=1 type=i1] [debug line = 49:11]
  br i1 %tmp.28, label %9, label %10, !dbg !120   ; [debug line = 49:11]

; <label>:9                                       ; preds = %8
  %a.2.lcssa = phi i4 [ %a.2, %8 ]                ; [#uses=1 type=i4]
  %a.1 = add i4 %a.2.lcssa, -1, !dbg !122         ; [#uses=1 type=i4] [debug line = 50:15]
  call void @llvm.dbg.value(metadata !{i4 %a.1}, i64 0, metadata !124), !dbg !122 ; [debug line = 50:15] [debug variable = a]
  br label %.loopexit2, !dbg !125                 ; [debug line = 51:14]

; <label>:10                                      ; preds = %8
  call void @llvm.dbg.value(metadata !{i4 %a.2}, i64 0, metadata !124), !dbg !126 ; [debug line = 53:14] [debug variable = a]
  %i = add i4 %a.2, 1, !dbg !127                  ; [#uses=1 type=i4] [debug line = 48:16]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !128), !dbg !127 ; [debug line = 48:16] [debug variable = i]
  br label %6, !dbg !127                          ; [debug line = 48:16]

; <label>:11                                      ; preds = %4
  %h.addr.7 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0, !dbg !129 ; [#uses=1 type=i8*] [debug line = 59:6]
  %h.load.2 = load i8* %h.addr.7, align 16, !dbg !129 ; [#uses=1 type=i8] [debug line = 59:6]
  %tmp.30.cast = sext i8 %h.load.2 to i9, !dbg !129 ; [#uses=1 type=i9] [debug line = 59:6]
  %temp.1 = add i9 %tmp.30.cast, -48, !dbg !129   ; [#uses=2 type=i9] [debug line = 59:6]
  %temp.1.cast = sext i9 %temp.1 to i12, !dbg !129 ; [#uses=2 type=i12] [debug line = 59:6]
  call void @llvm.dbg.value(metadata !{i9 %temp.1}, i64 0, metadata !117), !dbg !129 ; [debug line = 59:6] [debug variable = temp]
  br label %12, !dbg !131                         ; [debug line = 61:10]

; <label>:12                                      ; preds = %16, %11
  %i.1 = phi i3 [ 1, %11 ], [ %i.3, %16 ]         ; [#uses=4 type=i3]
  %i.1.cast16.cast = zext i3 %i.1 to i6, !dbg !131 ; [#uses=2 type=i6] [debug line = 61:10]
  %tmp.23 = icmp ult i3 %i.1, -3, !dbg !131       ; [#uses=1 type=i1] [debug line = 61:10]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.23, label %14, label %.loopexit2.loopexit, !dbg !131 ; [debug line = 61:10]

; <label>:14                                      ; preds = %12
  %tmp.25 = mul i6 %i.1.cast16.cast, %i.1.cast16.cast, !dbg !133 ; [#uses=1 type=i6] [debug line = 62:11]
  %tmp.35.cast = zext i6 %tmp.25 to i9, !dbg !133 ; [#uses=1 type=i9] [debug line = 62:11]
  %tmp.26 = icmp sgt i9 %tmp.35.cast, %temp.1, !dbg !133 ; [#uses=1 type=i1] [debug line = 62:11]
  br i1 %tmp.26, label %15, label %16, !dbg !133  ; [debug line = 62:11]

; <label>:15                                      ; preds = %14
  %i.1.lcssa = phi i3 [ %i.1, %14 ]               ; [#uses=1 type=i3]
  %a.5 = add i3 %i.1.lcssa, -1, !dbg !135         ; [#uses=1 type=i3] [debug line = 63:15]
  %a.5.cast = zext i3 %a.5 to i4, !dbg !135       ; [#uses=1 type=i4] [debug line = 63:15]
  call void @llvm.dbg.value(metadata !{i3 %a.5}, i64 0, metadata !124), !dbg !135 ; [debug line = 63:15] [debug variable = a]
  br label %.loopexit2, !dbg !137                 ; [debug line = 64:14]

; <label>:16                                      ; preds = %14
  %i.3 = add i3 %i.1, 1, !dbg !138                ; [#uses=1 type=i3] [debug line = 61:19]
  call void @llvm.dbg.value(metadata !{i3 %i.3}, i64 0, metadata !128), !dbg !138 ; [debug line = 61:19] [debug variable = i]
  br label %12, !dbg !138                         ; [debug line = 61:19]

.loopexit2.loopexit:                              ; preds = %12
  br label %.loopexit2

.loopexit2.loopexit33:                            ; preds = %6
  br label %.loopexit2

.loopexit2:                                       ; preds = %.loopexit2.loopexit33, %.loopexit2.loopexit, %15, %9
  %len3 = phi i32 [ %len2.lcssa, %9 ], [ %len2.lcssa, %15 ], [ %len2.lcssa, %.loopexit2.loopexit ], [ %len2.lcssa, %.loopexit2.loopexit33 ] ; [#uses=1 type=i32]
  %k = phi i2 [ -1, %9 ], [ -2, %15 ], [ -2, %.loopexit2.loopexit ], [ -1, %.loopexit2.loopexit33 ] ; [#uses=2 type=i2]
  %a.3 = phi i4 [ %a.1, %9 ], [ %a.5.cast, %15 ], [ 0, %.loopexit2.loopexit ], [ %a, %.loopexit2.loopexit33 ] ; [#uses=5 type=i4]
  %temp2 = phi i12 [ %temp, %9 ], [ %temp.1.cast, %15 ], [ %temp.1.cast, %.loopexit2.loopexit ], [ %temp, %.loopexit2.loopexit33 ] ; [#uses=1 type=i12]
  %size_of_a.0.in = phi i32 [ %len2.lcssa, %9 ], [ %tmp.13, %15 ], [ %tmp.13, %.loopexit2.loopexit ], [ %len2.lcssa, %.loopexit2.loopexit33 ] ; [#uses=3 type=i32]
  %k.cast = zext i2 %k to i3, !dbg !139           ; [#uses=1 type=i3] [debug line = 46:3]
  %a.3.cast15.cast1 = zext i4 %a.3 to i21, !dbg !139 ; [#uses=1 type=i21] [debug line = 46:3]
  %a.3.cast15.cast = zext i4 %a.3 to i8, !dbg !139 ; [#uses=2 type=i8] [debug line = 46:3]
  %a.3.cast1 = zext i4 %a.3 to i7, !dbg !139      ; [#uses=1 type=i7] [debug line = 46:3]
  %a.3.cast = zext i4 %a.3 to i5, !dbg !139       ; [#uses=1 type=i5] [debug line = 46:3]
  %_signbit = lshr i32 %size_of_a.0.in, 31, !dbg !139 ; [#uses=1 type=i32] [debug line = 46:3]
  %_cond = trunc i32 %_signbit to i1, !dbg !139   ; [#uses=1 type=i1] [debug line = 46:3]
  %_neg = sub i32 0, %size_of_a.0.in, !dbg !139   ; [#uses=1 type=i32] [debug line = 46:3]
  %_lshr = lshr i32 %_neg, 1, !dbg !139           ; [#uses=1 type=i32] [debug line = 46:3]
  %_neg.t = sub i32 0, %_lshr, !dbg !139          ; [#uses=1 type=i32] [debug line = 46:3]
  %_lshr.f = lshr i32 %size_of_a.0.in, 1, !dbg !139 ; [#uses=1 type=i32] [debug line = 46:3]
  %size_of_a = select i1 %_cond, i32 %_neg.t, i32 %_lshr.f, !dbg !139 ; [#uses=1 type=i32] [debug line = 46:3]
  call void @llvm.dbg.value(metadata !{i32 %size_of_a}, i64 0, metadata !140), !dbg !139 ; [debug line = 46:3] [debug variable = size_of_a]
  %divisor = shl nuw i5 %a.3.cast, 1, !dbg !141   ; [#uses=3 type=i5] [debug line = 68:18]
  %divisor.cast1 = zext i5 %divisor to i17, !dbg !141 ; [#uses=1 type=i17] [debug line = 68:18]
  %divisor.cast = zext i5 %divisor to i32, !dbg !141 ; [#uses=3 type=i32] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i5 %divisor}, i64 0, metadata !142), !dbg !141 ; [debug line = 68:18] [debug variable = divisor]
  %tmp.29 = mul i8 %a.3.cast15.cast, %a.3.cast15.cast, !dbg !143 ; [#uses=1 type=i8] [debug line = 69:27]
  %tmp.37.cast = zext i8 %tmp.29 to i12, !dbg !143 ; [#uses=1 type=i12] [debug line = 69:27]
  %remainder = sub i12 %temp2, %tmp.37.cast, !dbg !143 ; [#uses=3 type=i12] [debug line = 69:27]
  %remainder.cast1 = zext i12 %remainder to i13, !dbg !143 ; [#uses=1 type=i13] [debug line = 69:27]
  %remainder.cast2 = zext i12 %remainder to i15, !dbg !143 ; [#uses=1 type=i15] [debug line = 69:27]
  %remainder.cast = sext i12 %remainder to i32, !dbg !143 ; [#uses=1 type=i32] [debug line = 69:27]
  call void @llvm.dbg.value(metadata !{i12 %remainder}, i64 0, metadata !144), !dbg !143 ; [debug line = 69:27] [debug variable = remainder]
  %remy.addr = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 0, !dbg !145 ; [#uses=1 type=i32*] [debug line = 70:1]
  store i32 %remainder.cast, i32* %remy.addr, align 16, !dbg !145 ; [debug line = 70:1]
  %_shl1 = shl nuw i15 %remainder.cast2, 3, !dbg !146 ; [#uses=1 type=i15] [debug line = 71:1]
  %_shl1.cast = sext i15 %_shl1 to i16, !dbg !146 ; [#uses=1 type=i16] [debug line = 71:1]
  %_shl2 = shl nuw i13 %remainder.cast1, 1, !dbg !146 ; [#uses=1 type=i13] [debug line = 71:1]
  %_shl2.cast = sext i13 %_shl2 to i16, !dbg !146 ; [#uses=1 type=i16] [debug line = 71:1]
  %tmp.30 = add i2 %k, -1, !dbg !146              ; [#uses=1 type=i2] [debug line = 71:1]
  %tmp.31 = zext i2 %tmp.30 to i64, !dbg !146     ; [#uses=1 type=i64] [debug line = 71:1]
  %h.addr.8 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.31, !dbg !146 ; [#uses=1 type=i8*] [debug line = 71:1]
  %h.load.3 = load i8* %h.addr.8, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 71:1]
  %tmp.41.cast = sext i8 %h.load.3 to i9, !dbg !146 ; [#uses=1 type=i9] [debug line = 71:1]
  %tmp5 = add i16 %_shl2.cast, %_shl1.cast, !dbg !146 ; [#uses=1 type=i16] [debug line = 71:1]
  %tmp6 = add i9 %tmp.41.cast, -48, !dbg !146     ; [#uses=1 type=i9] [debug line = 71:1]
  %tmp6.cast = sext i9 %tmp6 to i16, !dbg !146    ; [#uses=1 type=i16] [debug line = 71:1]
  %temp.2 = add i16 %tmp5, %tmp6.cast, !dbg !146  ; [#uses=2 type=i16] [debug line = 71:1]
  %temp.2.cast = sext i16 %temp.2 to i32, !dbg !146 ; [#uses=1 type=i32] [debug line = 71:1]
  call void @llvm.dbg.value(metadata !{i16 %temp.2}, i64 0, metadata !117), !dbg !146 ; [debug line = 71:1] [debug variable = temp]
  %temp.2.tr = sext i16 %temp.2 to i17, !dbg !147 ; [#uses=1 type=i17] [debug line = 72:28]
  %divisor.tr = zext i5 %divisor to i17, !dbg !147 ; [#uses=1 type=i17] [debug line = 72:28]
  %tmp.1 = sdiv i17 %temp.2.tr, %divisor.tr, !dbg !147 ; [#uses=2 type=i17] [debug line = 72:28]
  %tmp.32 = icmp sgt i17 %tmp.1, 9, !dbg !148     ; [#uses=1 type=i1] [debug line = 73:1]
  %. = select i1 %tmp.32, i17 9, i17 %tmp.1, !dbg !148 ; [#uses=2 type=i17] [debug line = 73:1]
  %..cast.cast = sext i17 %. to i21, !dbg !149    ; [#uses=1 type=i21] [debug line = 75:1]
  %_shl8 = shl nuw i7 %a.3.cast1, 3, !dbg !149    ; [#uses=1 type=i7] [debug line = 75:1]
  %_shl8.cast = zext i7 %_shl8 to i17, !dbg !149  ; [#uses=1 type=i17] [debug line = 75:1]
  %tmp7 = add i17 %., %_shl8.cast, !dbg !149      ; [#uses=1 type=i17] [debug line = 75:1]
  %a.6 = add i17 %divisor.cast1, %tmp7, !dbg !149 ; [#uses=1 type=i17] [debug line = 75:1]
  %a.6.cast = sext i17 %a.6 to i32, !dbg !149     ; [#uses=1 type=i32] [debug line = 75:1]
  call void @llvm.dbg.value(metadata !{i17 %a.6}, i64 0, metadata !124), !dbg !149 ; [debug line = 75:1] [debug variable = a]
  %tmp.33 = mul i21 %a.3.cast15.cast1, %..cast.cast, !dbg !150 ; [#uses=1 type=i21] [debug line = 77:1]
  %tmp.34 = sext i21 %tmp.33 to i31, !dbg !150    ; [#uses=1 type=i31] [debug line = 77:1]
  %tmp.35 = zext i31 %tmp.34 to i32, !dbg !150    ; [#uses=1 type=i32] [debug line = 77:1]
  %tmp.36 = shl nuw i32 %tmp.35, 1, !dbg !150     ; [#uses=1 type=i32] [debug line = 77:1]
  %remainder.1 = sub nsw i32 %temp.2.cast, %tmp.36, !dbg !150 ; [#uses=2 type=i32] [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %remainder.1}, i64 0, metadata !144), !dbg !150 ; [debug line = 77:1] [debug variable = remainder]
  %remy.addr.1 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 1, !dbg !151 ; [#uses=1 type=i32*] [debug line = 78:1]
  store i32 %remainder.1, i32* %remy.addr.1, align 4, !dbg !151 ; [debug line = 78:1]
  %k.2 = add i3 %k.cast, 1, !dbg !152             ; [#uses=1 type=i3] [debug line = 79:1]
  %k.2.cast = zext i3 %k.2 to i32, !dbg !152      ; [#uses=1 type=i32] [debug line = 79:1]
  call void @llvm.dbg.value(metadata !{i3 %k.2}, i64 0, metadata !153), !dbg !152 ; [debug line = 79:1] [debug variable = k]
  %tmp.37 = add nsw i32 %len3, 4, !dbg !154       ; [#uses=1 type=i32] [debug line = 80:1]
  br label %.backedge, !dbg !154                  ; [debug line = 80:1]

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2
  %t = phi i32 [ 2, %.loopexit2 ], [ %t.be, %.backedge.backedge ] ; [#uses=6 type=i32]
  %k.1 = phi i32 [ %k.2.cast, %.loopexit2 ], [ %k.1.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %a.4 = phi i32 [ %a.6.cast, %.loopexit2 ], [ %a.4.be, %.backedge.backedge ] ; [#uses=6 type=i32]
  %remainder2 = phi i32 [ %remainder.1, %.loopexit2 ], [ %remainder2.be, %.backedge.backedge ] ; [#uses=2 type=i32]
  %tmp.38 = icmp sgt i32 %k.1, %tmp.37, !dbg !154 ; [#uses=1 type=i1] [debug line = 80:1]
  br i1 %tmp.38, label %22, label %17, !dbg !154  ; [debug line = 80:1]

; <label>:17                                      ; preds = %.backedge
  %t.2 = add nsw i32 %t, -1, !dbg !155            ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp.41 = sext i32 %t.2 to i64, !dbg !155       ; [#uses=1 type=i64] [debug line = 81:49]
  %remy.addr.2 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.41, !dbg !155 ; [#uses=2 type=i32*] [debug line = 81:49]
  %remy.load = load i32* %remy.addr.2, align 4, !dbg !155 ; [#uses=2 type=i32] [debug line = 81:49]
  %_shl3 = shl i32 %remy.load, 3, !dbg !155       ; [#uses=1 type=i32] [debug line = 81:49]
  %_shl4 = shl i32 %remy.load, 1, !dbg !155       ; [#uses=1 type=i32] [debug line = 81:49]
  %k.4 = add nsw i32 %k.1, -1, !dbg !155          ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp.42 = sext i32 %k.4 to i64, !dbg !155       ; [#uses=1 type=i64] [debug line = 81:49]
  %h.addr.9 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.42, !dbg !155 ; [#uses=1 type=i8*] [debug line = 81:49]
  %h.load.4 = load i8* %h.addr.9, align 1, !dbg !155 ; [#uses=1 type=i8] [debug line = 81:49]
  %tmp.53.cast = sext i8 %h.load.4 to i9, !dbg !155 ; [#uses=1 type=i9] [debug line = 81:49]
  call void @llvm.dbg.value(metadata !{i32 %new_temp}, i64 0, metadata !157), !dbg !155 ; [debug line = 81:49] [debug variable = new_temp]
  %tmp.43 = call fastcc i32 @dup(i32 %a.4) nounwind, !dbg !158 ; [#uses=1 type=i32] [debug line = 82:29]
  %tmp8 = add i32 %_shl4, %_shl3, !dbg !155       ; [#uses=1 type=i32] [debug line = 81:49]
  %tmp9 = add i9 %tmp.53.cast, -48, !dbg !155     ; [#uses=1 type=i9] [debug line = 81:49]
  %tmp9.cast = sext i9 %tmp9 to i32, !dbg !155    ; [#uses=1 type=i32] [debug line = 81:49]
  %new_temp = add i32 %tmp8, %tmp9.cast, !dbg !155 ; [#uses=1 type=i32] [debug line = 81:49]
  %temp2.1 = sub i32 %new_temp, %tmp.43, !dbg !158 ; [#uses=3 type=i32] [debug line = 82:29]
  call void @llvm.dbg.value(metadata !{i32 %temp2.1}, i64 0, metadata !159), !dbg !158 ; [debug line = 82:29] [debug variable = temp2]
  %tmp.44 = icmp slt i32 %temp2.1, 0, !dbg !160   ; [#uses=1 type=i1] [debug line = 83:6]
  br i1 %tmp.44, label %18, label %21, !dbg !160  ; [debug line = 83:6]

; <label>:18                                      ; preds = %17
  %vr1 = sdiv i32 %a.4, 10, !dbg !161             ; [#uses=1 type=i32] [debug line = 84:25]
  %vr1.cast = trunc i32 %vr1 to i29, !dbg !161    ; [#uses=1 type=i29] [debug line = 84:25]
  call void @llvm.dbg.value(metadata !{i32 %vr1}, i64 0, metadata !163), !dbg !161 ; [debug line = 84:25] [debug variable = vr1]
  %a.7 = add nsw i32 %a.4, -1, !dbg !164          ; [#uses=2 type=i32] [debug line = 85:10]
  call void @llvm.dbg.value(metadata !{i32 %a.7}, i64 0, metadata !124), !dbg !164 ; [debug line = 85:10] [debug variable = a]
  %vr2 = sdiv i32 %a.7, 10, !dbg !165             ; [#uses=2 type=i32] [debug line = 86:24]
  %vr2.cast = trunc i32 %vr2 to i29, !dbg !165    ; [#uses=1 type=i29] [debug line = 86:24]
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !166), !dbg !165 ; [debug line = 86:24] [debug variable = vr2]
  %tmp.47 = icmp eq i29 %vr1.cast, %vr2.cast, !dbg !167 ; [#uses=1 type=i1] [debug line = 87:10]
  br i1 %tmp.47, label %19, label %20, !dbg !167  ; [debug line = 87:10]

; <label>:19                                      ; preds = %18
  %remainder.3 = add nsw i32 %remainder2, %divisor.cast, !dbg !168 ; [#uses=2 type=i32] [debug line = 88:15]
  call void @llvm.dbg.value(metadata !{i32 %remainder.3}, i64 0, metadata !144), !dbg !168 ; [debug line = 88:15] [debug variable = remainder]
  store i32 %remainder.3, i32* %remy.addr.2, align 4, !dbg !170 ; [debug line = 89:14]
  br label %.backedge.backedge, !dbg !171         ; [debug line = 90:5]

; <label>:20                                      ; preds = %18
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !124), !dbg !172 ; [debug line = 92:9] [debug variable = a]
  %tmp.56 = add nsw i32 %t, -2, !dbg !174         ; [#uses=1 type=i32] [debug line = 93:8]
  %tmp.57 = sext i32 %tmp.56 to i64, !dbg !174    ; [#uses=1 type=i64] [debug line = 93:8]
  %remy.addr.4 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.57, !dbg !174 ; [#uses=2 type=i32*] [debug line = 93:8]
  %remy.load.1 = load i32* %remy.addr.4, align 4, !dbg !174 ; [#uses=1 type=i32] [debug line = 93:8]
  %tmp.58 = add nsw i32 %divisor.cast, %remy.load.1, !dbg !174 ; [#uses=1 type=i32] [debug line = 93:8]
  store i32 %tmp.58, i32* %remy.addr.4, align 4, !dbg !174 ; [debug line = 93:8]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !153), !dbg !175 ; [debug line = 94:8] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %t.2}, i64 0, metadata !176), !dbg !177 ; [debug line = 95:5] [debug variable = t]
  br label %.backedge.backedge

; <label>:21                                      ; preds = %17
  %quotient = udiv i32 %temp2.1, %divisor.cast, !dbg !178 ; [#uses=2 type=i32] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i32 %quotient}, i64 0, metadata !180), !dbg !178 ; [debug line = 99:5] [debug variable = quotient]
  %tmp.48 = icmp sgt i32 %quotient, 9, !dbg !181  ; [#uses=1 type=i1] [debug line = 100:4]
  %.6 = select i1 %tmp.48, i32 9, i32 %quotient, !dbg !181 ; [#uses=2 type=i32] [debug line = 100:4]
  %_shl5 = shl i32 %a.4, 3, !dbg !182             ; [#uses=1 type=i32] [debug line = 102:4]
  %_shl7 = shl i32 %a.4, 1, !dbg !182             ; [#uses=1 type=i32] [debug line = 102:4]
  %tmp10 = add i32 %.6, %_shl5, !dbg !182         ; [#uses=1 type=i32] [debug line = 102:4]
  %a.8 = add nsw i32 %_shl7, %tmp10, !dbg !182    ; [#uses=1 type=i32] [debug line = 102:4]
  call void @llvm.dbg.value(metadata !{i32 %a.8}, i64 0, metadata !124), !dbg !182 ; [debug line = 102:4] [debug variable = a]
  %tmp.49 = trunc i32 %.6 to i31, !dbg !183       ; [#uses=1 type=i31] [debug line = 103:4]
  %tmp.50 = zext i4 %a.3 to i31, !dbg !183        ; [#uses=1 type=i31] [debug line = 103:4]
  %tmp.51 = mul i31 %tmp.50, %tmp.49, !dbg !183   ; [#uses=1 type=i31] [debug line = 103:4]
  %tmp.52 = zext i31 %tmp.51 to i32, !dbg !183    ; [#uses=1 type=i32] [debug line = 103:4]
  %tmp.53 = shl nuw i32 %tmp.52, 1, !dbg !183     ; [#uses=1 type=i32] [debug line = 103:4]
  %remainder.2 = sub nsw i32 %temp2.1, %tmp.53, !dbg !183 ; [#uses=2 type=i32] [debug line = 103:4]
  call void @llvm.dbg.value(metadata !{i32 %remainder.2}, i64 0, metadata !144), !dbg !183 ; [debug line = 103:4] [debug variable = remainder]
  %tmp.54 = sext i32 %t to i64, !dbg !184         ; [#uses=1 type=i64] [debug line = 104:4]
  %remy.addr.3 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.54, !dbg !184 ; [#uses=1 type=i32*] [debug line = 104:4]
  store i32 %remainder.2, i32* %remy.addr.3, align 4, !dbg !184 ; [debug line = 104:4]
  %k.3 = add nsw i32 %k.1, 1, !dbg !185           ; [#uses=1 type=i32] [debug line = 105:4]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !153), !dbg !185 ; [debug line = 105:4] [debug variable = k]
  %t.1 = add nsw i32 %t, 1, !dbg !186             ; [#uses=1 type=i32] [debug line = 106:4]
  call void @llvm.dbg.value(metadata !{i32 %t.1}, i64 0, metadata !176), !dbg !186 ; [debug line = 106:4] [debug variable = t]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %21, %20, %19
  %t.be = phi i32 [ %t.1, %21 ], [ %t, %19 ], [ %t.2, %20 ] ; [#uses=1 type=i32]
  %k.1.be = phi i32 [ %k.3, %21 ], [ %k.1, %19 ], [ %k.4, %20 ] ; [#uses=1 type=i32]
  %a.4.be = phi i32 [ %a.8, %21 ], [ %a.7, %19 ], [ %vr2, %20 ] ; [#uses=1 type=i32]
  %remainder2.be = phi i32 [ %remainder.2, %21 ], [ %remainder.3, %19 ], [ %remainder2, %20 ] ; [#uses=1 type=i32]
  br label %.backedge

; <label>:22                                      ; preds = %.backedge
  %a.4.lcssa = phi i32 [ %a.4, %.backedge ]       ; [#uses=1 type=i32]
  %t.lcssa = phi i32 [ %t, %.backedge ]           ; [#uses=1 type=i32]
  %tmp.39 = sitofp i32 %a.4.lcssa to float, !dbg !187 ; [#uses=2 type=float] [debug line = 108:1]
  store float %tmp.39, float* %ans_local, align 4
  %tmp.40 = sub nsw i32 %t.lcssa, %size_of_a, !dbg !188 ; [#uses=1 type=i32] [debug line = 109:5]
  br label %23, !dbg !188                         ; [debug line = 109:5]

; <label>:23                                      ; preds = %24, %22
  %tmp.45 = phi float [ %tmp.39, %22 ], [ %tmp.55, %24 ] ; [#uses=1 type=float]
  %i.2 = phi i31 [ 0, %22 ], [ %i.4, %24 ]        ; [#uses=2 type=i31]
  %i.2.cast = zext i31 %i.2 to i32, !dbg !188     ; [#uses=1 type=i32] [debug line = 109:5]
  %tmp.46 = icmp slt i32 %i.2.cast, %tmp.40, !dbg !188 ; [#uses=1 type=i1] [debug line = 109:5]
  br i1 %tmp.46, label %24, label %25, !dbg !188  ; [debug line = 109:5]

; <label>:24                                      ; preds = %23
  %tmp.55 = fdiv float %tmp.45, 1.000000e+01, !dbg !190 ; [#uses=2 type=float] [debug line = 110:1]
  store float %tmp.55, float* %ans_local, align 4
  %i.4 = add i31 %i.2, 1, !dbg !191               ; [#uses=1 type=i31] [debug line = 109:23]
  call void @llvm.dbg.value(metadata !{i31 %i.4}, i64 0, metadata !128), !dbg !191 ; [debug line = 109:23] [debug variable = i]
  br label %23, !dbg !191                         ; [debug line = 109:23]

; <label>:25                                      ; preds = %23
  %ans_local.load = load float* %ans_local, align 4 ; [#uses=1 type=float]
  store float %ans_local.load, float* %ans, align 4
  ret void, !dbg !192                             ; [debug line = 111:2]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!30, !37}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/root/root_explo/solution2/.autopilot/db/Square_Root_explo.pragma.2.c", metadata !"/root", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dup", metadata !"dup", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"Desktop/explo/Square_Root_explo.c", metadata !"/root", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Square_root", metadata !"Square_root", metadata !"", metadata !6, i32 20, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, float*)* @Square_root, null, null, metadata !11, i32 21} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !17}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !21, metadata !24, metadata !25, metadata !26, metadata !28}
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !22, i32 346, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/root", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !22, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !22, i32 347, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !22, i32 348, metadata !23, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !27, i32 27, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/root", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !29, i32 157, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/root", null} ; [ DW_TAG_file_type ]
!30 = metadata !{null, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!31 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!32 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"long long"}
!34 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!36 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!37 = metadata !{void (i32*, float*)* @Square_root, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !36}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"float*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"num", metadata !"ans"}
!43 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777220, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 4, i32 19, metadata !5, null}
!45 = metadata !{i32 5, i32 2, metadata !46, null}
!46 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786688, metadata !46, metadata !"arr", metadata !6, i32 6, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !10, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 19}       ; [ DW_TAG_subrange_type ]
!51 = metadata !{i32 6, i32 23, metadata !46, null}
!52 = metadata !{i32 786688, metadata !46, metadata !"y", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 6, i32 43, metadata !46, null}
!54 = metadata !{i32 7, i32 2, metadata !46, null}
!55 = metadata !{i32 13, i32 6, metadata !56, null}
!56 = metadata !{i32 786443, metadata !46, i32 13, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 14, i32 3, metadata !58, null}
!58 = metadata !{i32 786443, metadata !56, i32 13, i32 23, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 8, i32 3, metadata !60, null}
!60 = metadata !{i32 786443, metadata !46, i32 7, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 3, metadata !60, null}
!62 = metadata !{i32 786688, metadata !46, metadata !"cou1", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 10, i32 3, metadata !60, null}
!64 = metadata !{i32 11, i32 2, metadata !60, null}
!65 = metadata !{i32 786688, metadata !46, metadata !"z", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 13, i32 19, metadata !56, null}
!67 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 16, i32 18, metadata !46, null}
!69 = metadata !{i32 18, i32 2, metadata !46, null}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 31, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"num", metadata !74, metadata !"int", i32 0, i32 31}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, i32 1}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 31, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"ans", metadata !74, metadata !"float", i32 0, i32 31}
!80 = metadata !{i32 786689, metadata !13, metadata !"num", metadata !6, i32 16777236, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 20, i32 23, metadata !13, null}
!82 = metadata !{i32 786689, metadata !13, metadata !"ans", metadata !6, i32 33554452, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 20, i32 35, metadata !13, null}
!84 = metadata !{i32 786688, metadata !85, metadata !"remy", metadata !6, i32 27, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786443, metadata !13, i32 21, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 32, i32 0, i32 0, metadata !9, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{i32 27, i32 5, metadata !85, null}
!88 = metadata !{i32 786688, metadata !85, metadata !"h", metadata !6, i32 28, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 8, i32 0, i32 0, metadata !90, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ]
!90 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!93 = metadata !{i32 28, i32 6, metadata !85, null}
!94 = metadata !{i32 29, i32 13, metadata !85, null}
!95 = metadata !{i32 786688, metadata !85, metadata !"n", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 30, i32 1, metadata !85, null}
!97 = metadata !{i32 34, i32 15, metadata !85, null}
!98 = metadata !{i32 786688, metadata !85, metadata !"len2", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 35, i32 1, metadata !85, null}
!100 = metadata !{i32 31, i32 2, metadata !101, null}
!101 = metadata !{i32 786443, metadata !85, i32 31, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 32, i32 1, metadata !101, null}
!103 = metadata !{i32 786688, metadata !85, metadata !"len", metadata !6, i32 24, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 33, i32 1, metadata !101, null}
!105 = metadata !{i32 36, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !85, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 37, i32 1, metadata !106, null}
!108 = metadata !{i32 38, i32 1, metadata !106, null}
!109 = metadata !{i32 39, i32 1, metadata !106, null}
!110 = metadata !{i32 40, i32 1, metadata !85, null}
!111 = metadata !{i32 41, i32 1, metadata !85, null}
!112 = metadata !{i32 42, i32 1, metadata !85, null}
!113 = metadata !{i32 43, i32 1, metadata !85, null}
!114 = metadata !{i32 44, i32 1, metadata !85, null}
!115 = metadata !{i32 47, i32 3, metadata !116, null}
!116 = metadata !{i32 786443, metadata !85, i32 45, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786688, metadata !85, metadata !"temp", metadata !6, i32 23, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 48, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !116, i32 48, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 49, i32 11, metadata !121, null}
!121 = metadata !{i32 786443, metadata !119, i32 49, i32 10, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 50, i32 15, metadata !123, null}
!123 = metadata !{i32 786443, metadata !121, i32 50, i32 14, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786688, metadata !85, metadata !"a", metadata !6, i32 25, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 51, i32 14, metadata !123, null}
!126 = metadata !{i32 53, i32 14, metadata !121, null}
!127 = metadata !{i32 48, i32 16, metadata !119, null}
!128 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 59, i32 6, metadata !130, null}
!130 = metadata !{i32 786443, metadata !85, i32 58, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 61, i32 10, metadata !132, null}
!132 = metadata !{i32 786443, metadata !130, i32 61, i32 6, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 62, i32 11, metadata !134, null}
!134 = metadata !{i32 786443, metadata !132, i32 62, i32 10, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 63, i32 15, metadata !136, null}
!136 = metadata !{i32 786443, metadata !134, i32 63, i32 14, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 64, i32 14, metadata !136, null}
!138 = metadata !{i32 61, i32 19, metadata !132, null}
!139 = metadata !{i32 46, i32 3, metadata !116, null}
!140 = metadata !{i32 786688, metadata !85, metadata !"size_of_a", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 68, i32 18, metadata !85, null}
!142 = metadata !{i32 786688, metadata !85, metadata !"divisor", metadata !6, i32 68, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 69, i32 27, metadata !85, null}
!144 = metadata !{i32 786688, metadata !85, metadata !"remainder", metadata !6, i32 69, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 70, i32 1, metadata !85, null}
!146 = metadata !{i32 71, i32 1, metadata !85, null}
!147 = metadata !{i32 72, i32 28, metadata !85, null}
!148 = metadata !{i32 73, i32 1, metadata !85, null}
!149 = metadata !{i32 75, i32 1, metadata !85, null}
!150 = metadata !{i32 77, i32 1, metadata !85, null}
!151 = metadata !{i32 78, i32 1, metadata !85, null}
!152 = metadata !{i32 79, i32 1, metadata !85, null}
!153 = metadata !{i32 786688, metadata !85, metadata !"k", metadata !6, i32 26, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 80, i32 1, metadata !85, null}
!155 = metadata !{i32 81, i32 49, metadata !156, null}
!156 = metadata !{i32 786443, metadata !85, i32 81, i32 6, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786688, metadata !156, metadata !"new_temp", metadata !6, i32 81, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 82, i32 29, metadata !156, null}
!159 = metadata !{i32 786688, metadata !156, metadata !"temp2", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 83, i32 6, metadata !156, null}
!161 = metadata !{i32 84, i32 25, metadata !162, null}
!162 = metadata !{i32 786443, metadata !156, i32 84, i32 10, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786688, metadata !162, metadata !"vr1", metadata !6, i32 84, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 85, i32 10, metadata !162, null}
!165 = metadata !{i32 86, i32 24, metadata !162, null}
!166 = metadata !{i32 786688, metadata !162, metadata !"vr2", metadata !6, i32 86, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 87, i32 10, metadata !162, null}
!168 = metadata !{i32 88, i32 15, metadata !169, null}
!169 = metadata !{i32 786443, metadata !162, i32 88, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 89, i32 14, metadata !169, null}
!171 = metadata !{i32 90, i32 5, metadata !169, null}
!172 = metadata !{i32 92, i32 9, metadata !173, null}
!173 = metadata !{i32 786443, metadata !162, i32 92, i32 8, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 93, i32 8, metadata !173, null}
!175 = metadata !{i32 94, i32 8, metadata !173, null}
!176 = metadata !{i32 786688, metadata !85, metadata !"t", metadata !6, i32 67, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 95, i32 5, metadata !173, null}
!178 = metadata !{i32 99, i32 5, metadata !179, null}
!179 = metadata !{i32 786443, metadata !156, i32 99, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786688, metadata !85, metadata !"quotient", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 100, i32 4, metadata !179, null}
!182 = metadata !{i32 102, i32 4, metadata !179, null}
!183 = metadata !{i32 103, i32 4, metadata !179, null}
!184 = metadata !{i32 104, i32 4, metadata !179, null}
!185 = metadata !{i32 105, i32 4, metadata !179, null}
!186 = metadata !{i32 106, i32 4, metadata !179, null}
!187 = metadata !{i32 108, i32 1, metadata !85, null}
!188 = metadata !{i32 109, i32 5, metadata !189, null}
!189 = metadata !{i32 786443, metadata !85, i32 109, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 110, i32 1, metadata !189, null}
!191 = metadata !{i32 109, i32 23, metadata !189, null}
!192 = metadata !{i32 111, i32 2, metadata !85, null}
