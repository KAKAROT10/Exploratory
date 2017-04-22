; ModuleID = '/root/square_explo/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@Square3_str = internal unnamed_addr constant [8 x i8] c"Square3\00"

declare i93 @llvm.part.select.i93(i93, i32, i32) nounwind readnone

declare i65 @llvm.part.select.i65(i65, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i168 @llvm.part.select.i168(i168, i32, i32) nounwind readnone

declare i129 @llvm.part.select.i129(i129, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i32 @Square3_duplex(i64 %x) nounwind uwtable readnone {
  %x_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %x) nounwind
  %arr = alloca [20 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %cou1 = phi i32 [ 0, %0 ], [ %cou1_1, %2 ]
  %y = phi i64 [ %x_read, %0 ], [ %y_1, %2 ]
  %tmp = icmp eq i64 %y, 0
  %cou1_1 = add nsw i32 %cou1, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %cou1, i32 31)
  %p_neg = sub i32 0, %cou1
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31)
  %tmp_10 = zext i31 %p_lshr to i32
  %p_neg_t = sub i32 0, %tmp_10
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %cou1, i32 1, i32 31)
  %tmp_11 = zext i31 %p_lshr_f to i32
  %tmp_s = select i1 %tmp_3, i32 %p_neg_t, i32 %tmp_11
  %tmp_6 = add i32 %cou1, -1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %tmp_2 = srem i64 %y, 10
  %tmp_12 = trunc i64 %tmp_2 to i32
  %tmp_4 = sext i32 %cou1 to i64
  %arr_addr = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_4
  store i32 %tmp_12, i32* %arr_addr, align 4
  %sext_cast = sext i64 %y to i129
  %mul = mul i129 29514790517935282586, %sext_cast
  %neg_mul = sub i129 0, %mul
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y, i32 63)
  %tmp_20 = call i61 @_ssdm_op_PartSelect.i61.i129.i32.i32(i129 %neg_mul, i32 68, i32 128)
  %tmp_13 = sext i61 %tmp_20 to i64
  %tmp_21 = call i61 @_ssdm_op_PartSelect.i61.i129.i32.i32(i129 %mul, i32 68, i32 128)
  %tmp_17 = sext i61 %tmp_21 to i64
  %tmp_18 = select i1 %tmp_19, i64 %tmp_13, i64 %tmp_17
  %neg_ti = sub i64 0, %tmp_18
  %y_1 = select i1 %tmp_19, i64 %neg_ti, i64 %tmp_17
  br label %1

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i = phi i31 [ %i_1, %3 ], [ 0, %.preheader.preheader ]
  %z = phi i32 [ %z_2, %3 ], [ 0, %.preheader.preheader ]
  %i_cast = zext i31 %i to i32
  %tmp_5 = icmp slt i32 %i_cast, %tmp_s
  %i_1 = add i31 %i, 1
  br i1 %tmp_5, label %3, label %_ifconv

; <label>:3                                       ; preds = %.preheader
  %tmp_7 = sub i32 %tmp_6, %i_cast
  %tmp_8 = sext i32 %tmp_7 to i64
  %arr_addr_1 = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_8
  %arr_load = load i32* %arr_addr_1, align 4
  %tmp_9 = zext i31 %i to i64
  %arr_addr_2 = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_9
  %arr_load_1 = load i32* %arr_addr_2, align 4
  %tmp_1 = mul i32 %arr_load, %arr_load_1
  %tmp_22 = shl i32 %tmp_1, 1
  %z_2 = add nsw i32 %z, %tmp_22
  br label %.preheader

_ifconv:                                          ; preds = %.preheader
  %tmp_25 = trunc i32 %cou1 to i1
  %tmp_26 = trunc i32 %p_neg to i1
  %tmp_27 = call i2 @_ssdm_op_BitConcatenate.i2.i1.i1(i1 false, i1 %tmp_26)
  %tmp_28 = sub i2 0, %tmp_27
  %tmp_23 = call i2 @_ssdm_op_BitConcatenate.i2.i1.i1(i1 false, i1 %tmp_25)
  %tmp_24 = select i1 %tmp_3, i2 %tmp_28, i2 %tmp_23
  %tmp_14 = icmp eq i2 %tmp_24, 1
  %tmp_15 = sext i32 %tmp_s to i64
  %arr_addr_3 = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_15
  %arr_load_2 = load i32* %arr_addr_3, align 4
  %tmp_16 = mul nsw i32 %arr_load_2, %arr_load_2
  %z_3 = add nsw i32 %z, %tmp_16
  %z_1 = select i1 %tmp_14, i32 %z_3, i32 %z
  ret i32 %z_1
}

define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak double @_ssdm_op_Read.ap_auto.doubleP(double*) {
entry:
  %empty = load double* %0
  ret double %empty
}

define weak i64 @_ssdm_op_PartSelect.i64.i168.i32.i32(i168, i32, i32) nounwind readnone {
entry:
  %empty = call i168 @llvm.part.select.i168(i168 %0, i32 %1, i32 %2)
  %empty_15 = trunc i168 %empty to i64
  ret i64 %empty_15
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i61 @_ssdm_op_PartSelect.i61.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i61 @_ssdm_op_PartSelect.i61.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_16 = trunc i129 %empty to i61
  ret i61 %empty_16
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i46 @_ssdm_op_PartSelect.i46.i47.i32.i32(i47, i32, i32) nounwind readnone

define weak i43 @_ssdm_op_PartSelect.i43.i93.i32.i32(i93, i32, i32) nounwind readnone {
entry:
  %empty = call i93 @llvm.part.select.i93(i93 %0, i32 %1, i32 %2)
  %empty_17 = trunc i93 %empty to i43
  ret i43 %empty_17
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i31
  ret i31 %empty_18
}

define weak i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65, i32, i32) nounwind readnone {
entry:
  %empty = call i65 @llvm.part.select.i65(i65 %0, i32 %1, i32 %2)
  %empty_19 = trunc i65 %empty to i29
  ret i29 %empty_19
}

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_20 = trunc i64 %empty to i11
  ret i11 %empty_20
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_21 = shl i64 1, %empty
  %empty_22 = and i64 %0, %empty_21
  %empty_23 = icmp ne i64 %empty_22, 0
  ret i1 %empty_23
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_24 = shl i53 1, %empty
  %empty_25 = and i53 %0, %empty_24
  %empty_26 = icmp ne i53 %empty_25, 0
  ret i1 %empty_26
}

define weak i1 @_ssdm_op_BitSelect.i1.i47.i32(i47, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i47
  %empty_27 = shl i47 1, %empty
  %empty_28 = and i47 %0, %empty_27
  %empty_29 = icmp ne i47 %empty_28, 0
  ret i1 %empty_29
}

define weak i1 @_ssdm_op_BitSelect.i1.i46.i32(i46, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i46
  %empty_30 = shl i46 1, %empty
  %empty_31 = and i46 %0, %empty_30
  %empty_32 = icmp ne i46 %empty_31, 0
  ret i1 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_33 = and i32 %0, %empty
  %empty_34 = icmp ne i32 %empty_33, 0
  ret i1 %empty_34
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_35 = shl i12 1, %empty
  %empty_36 = and i12 %0, %empty_35
  %empty_37 = icmp ne i12 %empty_36, 0
  ret i1 %empty_37
}

declare i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone

declare i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61, i3) nounwind readnone

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_38 = zext i52 %1 to i53
  %empty_39 = shl i53 %empty, 52
  %empty_40 = or i53 %empty_39, %empty_38
  ret i53 %empty_40
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_41 = zext i1 %1 to i32
  %empty_42 = shl i32 %empty, 1
  %empty_43 = or i32 %empty_42, %empty_41
  ret i32 %empty_43
}

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

define weak i2 @_ssdm_op_BitConcatenate.i2.i1.i1(i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %0 to i2
  %empty_44 = zext i1 %1 to i2
  %empty_45 = shl i2 %empty, 1
  %empty_46 = or i2 %empty_45, %empty_44
  ret i2 %empty_46
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @Square3(double* %c, double* %ans) nounwind uwtable {
_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap(double* %c) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(double* %ans) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @Square3_str) nounwind
  %arr = alloca [20 x i32], align 16
  %c_read = call double @_ssdm_op_Read.ap_auto.doubleP(double* %c) nounwind
  %x_assign = fmul double %c_read, 1.000000e+02
  %p_Val2_1 = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_1 to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i = zext i53 %p_Result_1 to i168
  %tmp_i_i_i_cast5 = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_cast5
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_2_i_i = sub i11 1023, %loc_V
  %tmp_2_i_i_cast = sext i11 %tmp_2_i_i to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_2_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_4_i_i = zext i32 %sh_assign_1_cast to i168
  %tmp_4_i_i_cast = zext i32 %sh_assign_1_cast to i53
  %tmp_5_i_i = lshr i53 %p_Result_1, %tmp_4_i_i_cast
  %tmp_7_i_i = shl i168 %tmp_i_i, %tmp_4_i_i
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_5_i_i, i32 52)
  %tmp_27 = zext i1 %tmp to i64
  %tmp_39 = call i64 @_ssdm_op_PartSelect.i64.i168.i32.i32(i168 %tmp_7_i_i, i32 52, i32 115)
  %p_Val2_4 = select i1 %isNeg, i64 %tmp_27, i64 %tmp_39
  %p_Val2_7_i_i = sub i64 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i64 %p_Val2_7_i_i, i64 %p_Val2_4
  br label %0

; <label>:0                                       ; preds = %1, %_ifconv
  %cou1 = phi i32 [ 0, %_ifconv ], [ %cou1_2, %1 ]
  %y2 = phi i64 [ %p_Val2_s, %_ifconv ], [ %y_2, %1 ]
  %tmp_s = icmp eq i64 %y2, 0
  %cou1_2 = add nsw i32 %cou1, 1
  br i1 %tmp_s, label %2, label %1

; <label>:1                                       ; preds = %0
  %tmp_21 = srem i64 %y2, 10
  %tmp_50 = trunc i64 %tmp_21 to i32
  %tmp_23 = sext i32 %cou1 to i64
  %arr_addr_4 = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_23
  store i32 %tmp_50, i32* %arr_addr_4, align 4
  %sext_cast = sext i64 %y2 to i129
  %mul = mul i129 29514790517935282586, %sext_cast
  %neg_mul = sub i129 0, %mul
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %y2, i32 63)
  %tmp_58 = call i61 @_ssdm_op_PartSelect.i61.i129.i32.i32(i129 %neg_mul, i32 68, i32 128)
  %tmp_55 = sext i61 %tmp_58 to i64
  %tmp_59 = call i61 @_ssdm_op_PartSelect.i61.i129.i32.i32(i129 %mul, i32 68, i32 128)
  %tmp_56 = sext i61 %tmp_59 to i64
  %tmp_57 = select i1 %tmp_54, i64 %tmp_55, i64 %tmp_56
  %neg_ti = sub i64 0, %tmp_57
  %y_2 = select i1 %tmp_54, i64 %neg_ti, i64 %tmp_56
  br label %0

; <label>:2                                       ; preds = %0
  %arr_addr = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 0
  %arr_load = load i32* %arr_addr, align 16
  %tmp_17 = sext i32 %arr_load to i64
  %tmp_18 = call fastcc i32 @Square3_duplex(i64 %tmp_17)
  %tmp_19 = srem i32 %tmp_18, 10
  %s_5 = sext i32 %tmp_19 to i64
  %tmp_20 = add nsw i32 %cou1, -1
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i = phi i31 [ 0, %2 ], [ %i_2, %4 ]
  %sqr1 = phi i64 [ %s_5, %2 ], [ %sqr_2, %4 ]
  %s = phi i46 [ 0, %2 ], [ %tmp_69, %4 ]
  %f = phi i64 [ 10, %2 ], [ %tmp_28, %4 ]
  %s_cast = sext i46 %s to i47
  %i_cast = zext i31 %i to i32
  %tmp_24 = icmp slt i32 %i_cast, %tmp_20
  %i_2 = add i31 %i, 1
  br i1 %tmp_24, label %4, label %.preheader

; <label>:4                                       ; preds = %3
  %tmp_25 = srem i64 %p_Val2_s, %f
  %tmp_26 = call fastcc i32 @Square3_duplex(i64 %tmp_25)
  %sext1_cast = sext i32 %tmp_26 to i65
  %mul2 = mul i65 6871947674, %sext1_cast
  %neg_mul3 = sub i65 0, %mul2
  %tmp_60 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_26, i32 31)
  %tmp_61 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul3, i32 36, i32 64)
  %tmp_62 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul2, i32 36, i32 64)
  %p_v1_v = select i1 %tmp_60, i29 %tmp_61, i29 %tmp_62
  %neg_ti8 = sub i29 0, %p_v1_v
  %tmp_63 = select i1 %tmp_60, i29 %neg_ti8, i29 %tmp_62
  %tmp_64 = shl i64 %f, 3
  %tmp_65 = shl i64 %f, 1
  %tmp_28 = add i64 %tmp_64, %tmp_65
  %tmp_29 = srem i64 %p_Val2_s, %tmp_28
  %tmp_30 = call fastcc i32 @Square3_duplex(i64 %tmp_29)
  %tmp_31 = srem i32 %tmp_30, 10
  %tmp_70 = trunc i32 %tmp_31 to i29
  %tmp_32 = add i29 %tmp_63, %tmp_70
  %tmp_33_cast_cast_cast = sext i29 %tmp_32 to i47
  %s_1 = add i47 %s_cast, %tmp_33_cast_cast_cast
  %tmp_33 = srem i47 %s_1, 10
  %tmp_34_cast = sext i47 %tmp_33 to i64
  %tmp_34 = mul nsw i64 %f, %tmp_34_cast
  %sqr_2 = add nsw i64 %tmp_34, %sqr1
  %tmp_71 = trunc i47 %s_1 to i46
  %sext9_cast = sext i46 %tmp_71 to i93
  %mul1 = mul i93 112589990684263, %sext9_cast
  %neg_mul1 = sub i93 0, %mul1
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i47.i32(i47 %s_1, i32 45)
  %tmp_73 = call i43 @_ssdm_op_PartSelect.i43.i93.i32.i32(i93 %neg_mul1, i32 50, i32 92)
  %tmp_66 = sext i43 %tmp_73 to i46
  %tmp_74 = call i43 @_ssdm_op_PartSelect.i43.i93.i32.i32(i93 %mul1, i32 50, i32 92)
  %tmp_67 = sext i43 %tmp_74 to i46
  %tmp_68 = select i1 %tmp_72, i46 %tmp_66, i46 %tmp_67
  %neg_ti1 = sub i46 0, %tmp_68
  %tmp_69 = select i1 %tmp_72, i46 %neg_ti1, i46 %tmp_67
  br label %3

.preheader:                                       ; preds = %3, %5
  %i_1 = phi i31 [ %i_3, %5 ], [ 0, %3 ]
  %sqr_1 = phi i64 [ %sqr_3, %5 ], [ %sqr1, %3 ]
  %s_2 = phi i46 [ %tmp_83, %5 ], [ %s, %3 ]
  %f_1 = phi i64 [ %f_2, %5 ], [ %f, %3 ]
  %g = phi i32 [ %g_1, %5 ], [ 1, %3 ]
  %s_2_cast = sext i46 %s_2 to i47
  %i_1_cast = zext i31 %i_1 to i32
  %tmp_35 = icmp slt i32 %i_1_cast, %tmp_20
  %i_3 = add i31 %i_1, 1
  br i1 %tmp_35, label %5, label %6

; <label>:5                                       ; preds = %.preheader
  %tmp_36 = sext i32 %g to i64
  %p_sdiv2 = sdiv i64 %p_Val2_4, %tmp_36
  %p_neg3 = sub i64 0, %p_sdiv2
  %tmp_37 = select i1 %p_Result_s, i64 %p_neg3, i64 %p_sdiv2
  %tmp_38 = call fastcc i32 @Square3_duplex(i64 %tmp_37)
  %sext2_cast = sext i32 %tmp_38 to i65
  %mul3 = mul i65 6871947674, %sext2_cast
  %neg_mul2 = sub i65 0, %mul3
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_38, i32 31)
  %tmp_77 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul2, i32 36, i32 64)
  %tmp_78 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul3, i32 36, i32 64)
  %p_v_v = select i1 %tmp_76, i29 %tmp_77, i29 %tmp_78
  %neg_ti2 = sub i29 0, %p_v_v
  %tmp_75 = select i1 %tmp_76, i29 %neg_ti2, i29 %tmp_78
  %tmp_79 = shl i32 %g, 3
  %tmp_87 = shl i32 %g, 1
  %g_1 = add i32 %tmp_79, %tmp_87
  %tmp_40 = sext i32 %g_1 to i64
  %p_sdiv = sdiv i64 %p_Val2_4, %tmp_40
  %p_neg = sub i64 0, %p_sdiv
  %tmp_41 = select i1 %p_Result_s, i64 %p_neg, i64 %p_sdiv
  %tmp_42 = call fastcc i32 @Square3_duplex(i64 %tmp_41)
  %tmp_43 = srem i32 %tmp_42, 10
  %tmp_88 = trunc i32 %tmp_43 to i29
  %tmp_44 = add i29 %tmp_75, %tmp_88
  %tmp_46_cast_cast_cast = sext i29 %tmp_44 to i47
  %s_3 = add i47 %s_2_cast, %tmp_46_cast_cast_cast
  %tmp_45 = srem i47 %s_3, 10
  %tmp_47_cast = sext i47 %tmp_45 to i64
  %tmp_46 = mul nsw i64 %f_1, %tmp_47_cast
  %sqr_3 = add nsw i64 %tmp_46, %sqr_1
  %tmp_89 = shl i64 %f_1, 3
  %tmp_90 = shl i64 %f_1, 1
  %f_2 = add i64 %tmp_89, %tmp_90
  %tmp_91 = trunc i47 %s_3 to i46
  %sext3_cast = sext i46 %tmp_91 to i93
  %mul4 = mul i93 112589990684263, %sext3_cast
  %neg_mul4 = sub i93 0, %mul4
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i47.i32(i47 %s_3, i32 45)
  %tmp_93 = call i43 @_ssdm_op_PartSelect.i43.i93.i32.i32(i93 %neg_mul4, i32 50, i32 92)
  %tmp_80 = sext i43 %tmp_93 to i46
  %tmp_94 = call i43 @_ssdm_op_PartSelect.i43.i93.i32.i32(i93 %mul4, i32 50, i32 92)
  %tmp_81 = sext i43 %tmp_94 to i46
  %tmp_82 = select i1 %tmp_92, i46 %tmp_80, i46 %tmp_81
  %neg_ti3 = sub i46 0, %tmp_82
  %tmp_83 = select i1 %tmp_92, i46 %neg_ti3, i46 %tmp_81
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %tmp_47 = sext i32 %tmp_20 to i64
  %arr_addr_5 = getelementptr inbounds [20 x i32]* %arr, i64 0, i64 %tmp_47
  %arr_load_3 = load i32* %arr_addr_5, align 4
  %tmp_48 = sext i32 %arr_load_3 to i64
  %tmp_49 = call fastcc i32 @Square3_duplex(i64 %tmp_48)
  %sext4_cast = sext i32 %tmp_49 to i65
  %mul5 = mul i65 %sext4_cast, 6871947674
  %neg_mul5 = sub i65 0, %mul5
  %tmp_95 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_49, i32 31)
  %tmp_96 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %neg_mul5, i32 36, i32 64)
  %tmp_84 = sext i29 %tmp_96 to i32
  %tmp_97 = call i29 @_ssdm_op_PartSelect.i29.i65.i32.i32(i65 %mul5, i32 36, i32 64)
  %tmp_85 = sext i29 %tmp_97 to i32
  %tmp_86 = select i1 %tmp_95, i32 %tmp_84, i32 %tmp_85
  %neg_ti4 = sub i32 0, %tmp_86
  %tmp_98 = select i1 %tmp_95, i32 %neg_ti4, i32 %tmp_85
  %tmp_53_cast_cast_cast = sext i32 %tmp_98 to i47
  %d = add i47 %s_2_cast, %tmp_53_cast_cast_cast
  %d_2_cast = sext i47 %d to i64
  %tmp_51 = mul nsw i64 %d_2_cast, %f_1
  %sqr_4 = add nsw i64 %tmp_51, %sqr_1
  %tmp_52 = sitofp i64 %sqr_4 to double
  %tmp_53 = fdiv double %tmp_52, 1.000000e+04
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %ans, double %tmp_53) nounwind
  ret void
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!13}

!0 = metadata !{i32 (i64)* @Square3_duplex, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"long long"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{void (double*, double*)* @Square3, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"c", metadata !"ans"}
!13 = metadata !{metadata !14, [1 x i32]* @llvm_global_ctors_0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"llvm.global_ctors.0", metadata !18, metadata !"", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 63, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"c", metadata !18, metadata !"double", i32 0, i32 63}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 63, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"ans", metadata !18, metadata !"double", i32 0, i32 63}
