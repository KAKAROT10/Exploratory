; ModuleID = '/root/root_explo/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Square_root.str = internal unnamed_addr constant [12 x i8] c"Square_root\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @dup(i64 %x) nounwind uwtable {
  %arr = alloca [20 x i64], align 16              ; [#uses=4 type=[20 x i64]*]
  call void @llvm.dbg.value(metadata !{i64 %x}, i64 0, metadata !43), !dbg !44 ; [debug line = 4:19] [debug variable = x]
  %x.assign = mul nsw i64 %x, 10, !dbg !45        ; [#uses=1 type=i64] [debug line = 5:2]
  call void @llvm.dbg.value(metadata !{i64 %x.assign}, i64 0, metadata !43), !dbg !45 ; [debug line = 5:2] [debug variable = x]
  call void @llvm.dbg.declare(metadata !{[20 x i64]* %arr}, metadata !47), !dbg !51 ; [debug line = 6:23] [debug variable = arr]
  call void @llvm.dbg.value(metadata !{i64 %x.assign}, i64 0, metadata !52), !dbg !53 ; [debug line = 6:43] [debug variable = y]
  br label %1, !dbg !54                           ; [debug line = 7:2]

; <label>:1                                       ; preds = %2, %0
  %y1 = phi i64 [ %x.assign, %0 ], [ %y.2, %2 ]   ; [#uses=3 type=i64]
  %cou1 = phi i64 [ 0, %0 ], [ %cou1.1, %2 ]      ; [#uses=3 type=i64]
  %tmp = icmp eq i64 %y1, 0, !dbg !54             ; [#uses=1 type=i1] [debug line = 7:2]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !54 ; [debug line = 7:2]

.preheader.preheader:                             ; preds = %1
  %cou1.0.lcssa = phi i64 [ %cou1, %1 ]           ; [#uses=3 type=i64]
  %tmp.1 = sdiv i64 %cou1.0.lcssa, 2, !dbg !55    ; [#uses=2 type=i64] [debug line = 13:6]
  br label %.preheader, !dbg !55                  ; [debug line = 13:6]

; <label>:2                                       ; preds = %1
  %tmp.2 = srem i64 %y1, 10, !dbg !57             ; [#uses=1 type=i64] [debug line = 8:3]
  %arr.addr = getelementptr inbounds [20 x i64]* %arr, i64 0, i64 %cou1, !dbg !57 ; [#uses=1 type=i64*] [debug line = 8:3]
  store i64 %tmp.2, i64* %arr.addr, align 8, !dbg !57 ; [debug line = 8:3]
  %cou1.1 = add nsw i64 %cou1, 1, !dbg !59        ; [#uses=1 type=i64] [debug line = 9:3]
  call void @llvm.dbg.value(metadata !{i64 %cou1.1}, i64 0, metadata !60), !dbg !59 ; [debug line = 9:3] [debug variable = cou1]
  %y.2 = sdiv i64 %y1, 10, !dbg !61               ; [#uses=1 type=i64] [debug line = 10:3]
  call void @llvm.dbg.value(metadata !{i64 %y.2}, i64 0, metadata !52), !dbg !61 ; [debug line = 10:3] [debug variable = y]
  br label %1, !dbg !62                           ; [debug line = 11:2]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i = phi i64 [ %i.1, %3 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i64]
  %z = phi i64 [ %z.2, %3 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i64]
  %tmp.5 = icmp slt i64 %i, %tmp.1, !dbg !55      ; [#uses=1 type=i1] [debug line = 13:6]
  br i1 %tmp.5, label %3, label %4, !dbg !55      ; [debug line = 13:6]

; <label>:3                                       ; preds = %.preheader
  %i.0.neg = sub i64 0, %i                        ; [#uses=1 type=i64]
  %tmp.6 = add i64 %cou1.0.lcssa, -1, !dbg !63    ; [#uses=1 type=i64] [debug line = 14:3]
  %tmp.7 = add i64 %tmp.6, %i.0.neg, !dbg !63     ; [#uses=1 type=i64] [debug line = 14:3]
  %arr.addr.1 = getelementptr inbounds [20 x i64]* %arr, i64 0, i64 %tmp.7, !dbg !63 ; [#uses=1 type=i64*] [debug line = 14:3]
  %arr.load = load i64* %arr.addr.1, align 8, !dbg !63 ; [#uses=2 type=i64] [debug line = 14:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load) nounwind
  %arr.addr.2 = getelementptr inbounds [20 x i64]* %arr, i64 0, i64 %i, !dbg !63 ; [#uses=1 type=i64*] [debug line = 14:3]
  %arr.load.1 = load i64* %arr.addr.2, align 8, !dbg !63 ; [#uses=2 type=i64] [debug line = 14:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.1) nounwind
  %tmp.8 = mul i64 %arr.load, 2, !dbg !63         ; [#uses=1 type=i64] [debug line = 14:3]
  %tmp.9 = mul i64 %tmp.8, %arr.load.1, !dbg !63  ; [#uses=1 type=i64] [debug line = 14:3]
  %z.2 = add nsw i64 %tmp.9, %z, !dbg !63         ; [#uses=1 type=i64] [debug line = 14:3]
  call void @llvm.dbg.value(metadata !{i64 %z.2}, i64 0, metadata !65), !dbg !63 ; [debug line = 14:3] [debug variable = z]
  %i.1 = add nsw i64 %i, 1, !dbg !66              ; [#uses=1 type=i64] [debug line = 13:19]
  call void @llvm.dbg.value(metadata !{i64 %i.1}, i64 0, metadata !67), !dbg !66 ; [debug line = 13:19] [debug variable = i]
  br label %.preheader, !dbg !66                  ; [debug line = 13:19]

; <label>:4                                       ; preds = %.preheader
  %z.0.lcssa = phi i64 [ %z, %.preheader ]        ; [#uses=2 type=i64]
  %tmp.12 = srem i64 %cou1.0.lcssa, 2, !dbg !68   ; [#uses=1 type=i64] [debug line = 16:2]
  %tmp.13 = icmp eq i64 %tmp.12, 1, !dbg !68      ; [#uses=1 type=i1] [debug line = 16:2]
  br i1 %tmp.13, label %5, label %._crit_edge, !dbg !68 ; [debug line = 16:2]

; <label>:5                                       ; preds = %4
  %arr.addr.3 = getelementptr inbounds [20 x i64]* %arr, i64 0, i64 %tmp.1, !dbg !69 ; [#uses=1 type=i64*] [debug line = 16:18]
  %arr.load.2 = load i64* %arr.addr.3, align 8, !dbg !69 ; [#uses=4 type=i64] [debug line = 16:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i64 %arr.load.2) nounwind
  %tmp.14 = mul nsw i64 %arr.load.2, %arr.load.2, !dbg !69 ; [#uses=1 type=i64] [debug line = 16:18]
  %z.3 = add nsw i64 %tmp.14, %z.0.lcssa, !dbg !69 ; [#uses=1 type=i64] [debug line = 16:18]
  call void @llvm.dbg.value(metadata !{i64 %z.3}, i64 0, metadata !65), !dbg !69 ; [debug line = 16:18] [debug variable = z]
  br label %._crit_edge, !dbg !69                 ; [debug line = 16:18]

._crit_edge:                                      ; preds = %5, %4
  %z.1 = phi i64 [ %z.3, %5 ], [ %z.0.lcssa, %4 ] ; [#uses=1 type=i64]
  %tmp.16 = trunc i64 %z.1 to i32, !dbg !70       ; [#uses=1 type=i32] [debug line = 18:2]
  ret i32 %tmp.16, !dbg !70                       ; [debug line = 18:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=11]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=0]
define void @Square_root(i32* %num, float* %ans) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @Square_root.str) nounwind
  %remy = alloca [20 x i32], align 16             ; [#uses=5 type=[20 x i32]*]
  %h = alloca [100 x i8], align 16                ; [#uses=10 type=[100 x i8]*]
  call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !71), !dbg !72 ; [debug line = 20:23] [debug variable = num]
  call void @llvm.dbg.value(metadata !{float* %ans}, i64 0, metadata !73), !dbg !74 ; [debug line = 20:35] [debug variable = ans]
  call void @llvm.dbg.declare(metadata !{[20 x i32]* %remy}, metadata !75), !dbg !78 ; [debug line = 27:5] [debug variable = remy]
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %h}, metadata !79), !dbg !84 ; [debug line = 28:6] [debug variable = h]
  %n = load i32* %num, align 4, !dbg !85          ; [#uses=2 type=i32] [debug line = 29:13]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !86), !dbg !85 ; [debug line = 29:13] [debug variable = n]
  br label %1, !dbg !87                           ; [debug line = 30:1]

; <label>:1                                       ; preds = %2, %0
  %n1 = phi i32 [ %n, %0 ], [ %n.2, %2 ]          ; [#uses=2 type=i32]
  %len2 = phi i32 [ 0, %0 ], [ %len, %2 ]         ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %len2}, i64 0, metadata !88), !dbg !89 ; [debug line = 34:15] [debug variable = len2]
  %tmp = icmp eq i32 %n1, 0, !dbg !87             ; [#uses=1 type=i1] [debug line = 30:1]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !87 ; [debug line = 30:1]

.preheader.preheader:                             ; preds = %1
  %len.0.lcssa = phi i32 [ %len2, %1 ]            ; [#uses=12 type=i32]
  br label %.preheader, !dbg !90                  ; [debug line = 35:1]

; <label>:2                                       ; preds = %1
  %n.2 = sdiv i32 %n1, 10, !dbg !91               ; [#uses=1 type=i32] [debug line = 31:2]
  call void @llvm.dbg.value(metadata !{i32 %n.2}, i64 0, metadata !86), !dbg !91 ; [debug line = 31:2] [debug variable = n]
  %len = add nsw i32 %len2, 1, !dbg !93           ; [#uses=1 type=i32] [debug line = 32:1]
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !94), !dbg !93 ; [debug line = 32:1] [debug variable = len]
  br label %1, !dbg !95                           ; [debug line = 33:1]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %tmp.19 = phi i32 [ %tmp.35, %3 ], [ %n, %.preheader.preheader ] ; [#uses=3 type=i32]
  %len21 = phi i32 [ %len2.2, %3 ], [ %len.0.lcssa, %.preheader.preheader ] ; [#uses=1 type=i32]
  %tmp.20 = icmp eq i32 %tmp.19, 0, !dbg !90      ; [#uses=1 type=i1] [debug line = 35:1]
  br i1 %tmp.20, label %4, label %3, !dbg !90     ; [debug line = 35:1]

; <label>:3                                       ; preds = %.preheader
  %tmp.30 = srem i32 %tmp.19, 10, !dbg !96        ; [#uses=1 type=i32] [debug line = 36:2]
  %tmp.31 = trunc i32 %tmp.30 to i8, !dbg !96     ; [#uses=1 type=i8] [debug line = 36:2]
  %tmp.32 = add i8 %tmp.31, 48, !dbg !96          ; [#uses=1 type=i8] [debug line = 36:2]
  %len2.2 = add nsw i32 %len21, -1, !dbg !96      ; [#uses=2 type=i32] [debug line = 36:2]
  %tmp.34 = sext i32 %len2.2 to i64, !dbg !96     ; [#uses=1 type=i64] [debug line = 36:2]
  %h.addr.4 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.34, !dbg !96 ; [#uses=1 type=i8*] [debug line = 36:2]
  store i8 %tmp.32, i8* %h.addr.4, align 1, !dbg !96 ; [debug line = 36:2]
  %tmp.35 = sdiv i32 %tmp.19, 10, !dbg !98        ; [#uses=2 type=i32] [debug line = 37:1]
  store i32 %tmp.35, i32* %num, align 4, !dbg !98 ; [debug line = 37:1]
  call void @llvm.dbg.value(metadata !{i32 %len2.2}, i64 0, metadata !88), !dbg !99 ; [debug line = 38:1] [debug variable = len2]
  br label %.preheader, !dbg !100                 ; [debug line = 39:1]

; <label>:4                                       ; preds = %.preheader
  %tmp.21 = sext i32 %len.0.lcssa to i64, !dbg !101 ; [#uses=1 type=i64] [debug line = 40:1]
  %h.addr = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.21, !dbg !101 ; [#uses=1 type=i8*] [debug line = 40:1]
  store i8 48, i8* %h.addr, align 1, !dbg !101    ; [debug line = 40:1]
  %tmp.22 = add nsw i32 %len.0.lcssa, 1, !dbg !102 ; [#uses=3 type=i32] [debug line = 41:1]
  %tmp.23 = sext i32 %tmp.22 to i64, !dbg !102    ; [#uses=1 type=i64] [debug line = 41:1]
  %h.addr.1 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.23, !dbg !102 ; [#uses=1 type=i8*] [debug line = 41:1]
  store i8 48, i8* %h.addr.1, align 1, !dbg !102  ; [debug line = 41:1]
  %tmp.24 = add nsw i32 %len.0.lcssa, 2, !dbg !103 ; [#uses=1 type=i32] [debug line = 42:1]
  %tmp.25 = sext i32 %tmp.24 to i64, !dbg !103    ; [#uses=1 type=i64] [debug line = 42:1]
  %h.addr.2 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.25, !dbg !103 ; [#uses=1 type=i8*] [debug line = 42:1]
  store i8 48, i8* %h.addr.2, align 1, !dbg !103  ; [debug line = 42:1]
  %tmp.26 = add nsw i32 %len.0.lcssa, 3, !dbg !104 ; [#uses=1 type=i32] [debug line = 43:1]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !104    ; [#uses=1 type=i64] [debug line = 43:1]
  %h.addr.3 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.27, !dbg !104 ; [#uses=1 type=i8*] [debug line = 43:1]
  store i8 48, i8* %h.addr.3, align 1, !dbg !104  ; [debug line = 43:1]
  %tmp.28 = and i32 %len.0.lcssa, 1, !dbg !105    ; [#uses=1 type=i32] [debug line = 44:1]
  %tmp.29 = icmp eq i32 %tmp.28, 0, !dbg !105     ; [#uses=1 type=i1] [debug line = 44:1]
  br i1 %tmp.29, label %5, label %10, !dbg !105   ; [debug line = 44:1]

; <label>:5                                       ; preds = %4
  %h.addr.5 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0, !dbg !106 ; [#uses=1 type=i8*] [debug line = 47:3]
  %h.load = load i8* %h.addr.5, align 16, !dbg !106 ; [#uses=2 type=i8] [debug line = 47:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %h.load) nounwind
  %tmp.36 = sext i8 %h.load to i32, !dbg !106     ; [#uses=1 type=i32] [debug line = 47:3]
  %tmp.37 = mul i32 %tmp.36, 10, !dbg !106        ; [#uses=1 type=i32] [debug line = 47:3]
  %h.addr.6 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 1, !dbg !106 ; [#uses=1 type=i8*] [debug line = 47:3]
  %h.load.1 = load i8* %h.addr.6, align 1, !dbg !106 ; [#uses=2 type=i8] [debug line = 47:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %h.load.1) nounwind
  %tmp.38 = sext i8 %h.load.1 to i32, !dbg !106   ; [#uses=1 type=i32] [debug line = 47:3]
  %tmp.39 = add i32 %tmp.37, -528, !dbg !106      ; [#uses=1 type=i32] [debug line = 47:3]
  %temp = add i32 %tmp.39, %tmp.38, !dbg !106     ; [#uses=3 type=i32] [debug line = 47:3]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !108), !dbg !106 ; [debug line = 47:3] [debug variable = temp]
  br label %6, !dbg !109                          ; [debug line = 48:7]

; <label>:6                                       ; preds = %9, %5
  %a = phi i32 [ 0, %5 ], [ %a.2, %9 ]            ; [#uses=1 type=i32]
  %a.2 = phi i32 [ 1, %5 ], [ %i, %9 ]            ; [#uses=6 type=i32]
  %tmp.43 = icmp slt i32 %a.2, 10, !dbg !109      ; [#uses=1 type=i1] [debug line = 48:7]
  br i1 %tmp.43, label %7, label %.loopexit2.loopexit29, !dbg !109 ; [debug line = 48:7]

; <label>:7                                       ; preds = %6
  %tmp.45 = mul nsw i32 %a.2, %a.2, !dbg !111     ; [#uses=1 type=i32] [debug line = 49:11]
  %tmp.46 = icmp sgt i32 %tmp.45, %temp, !dbg !111 ; [#uses=1 type=i1] [debug line = 49:11]
  br i1 %tmp.46, label %8, label %9, !dbg !111    ; [debug line = 49:11]

; <label>:8                                       ; preds = %7
  %i.0.lcssa = phi i32 [ %a.2, %7 ]               ; [#uses=1 type=i32]
  %a.1 = add nsw i32 %i.0.lcssa, -1, !dbg !113    ; [#uses=1 type=i32] [debug line = 50:15]
  call void @llvm.dbg.value(metadata !{i32 %a.1}, i64 0, metadata !115), !dbg !113 ; [debug line = 50:15] [debug variable = a]
  br label %.loopexit2, !dbg !116                 ; [debug line = 51:14]

; <label>:9                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i32 %a.2}, i64 0, metadata !115), !dbg !117 ; [debug line = 53:14] [debug variable = a]
  %i = add nsw i32 %a.2, 1, !dbg !118             ; [#uses=1 type=i32] [debug line = 48:16]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !119), !dbg !118 ; [debug line = 48:16] [debug variable = i]
  br label %6, !dbg !118                          ; [debug line = 48:16]

; <label>:10                                      ; preds = %4
  %h.addr.7 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 59:6]
  %h.load.2 = load i8* %h.addr.7, align 16, !dbg !120 ; [#uses=2 type=i8] [debug line = 59:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %h.load.2) nounwind
  %tmp.41 = sext i8 %h.load.2 to i32, !dbg !120   ; [#uses=1 type=i32] [debug line = 59:6]
  %temp.1 = add nsw i32 %tmp.41, -48, !dbg !120   ; [#uses=3 type=i32] [debug line = 59:6]
  call void @llvm.dbg.value(metadata !{i32 %temp.1}, i64 0, metadata !108), !dbg !120 ; [debug line = 59:6] [debug variable = temp]
  br label %11, !dbg !122                         ; [debug line = 61:10]

; <label>:11                                      ; preds = %14, %10
  %i.1 = phi i32 [ 1, %10 ], [ %i.3, %14 ]        ; [#uses=5 type=i32]
  %tmp.44 = icmp slt i32 %i.1, 5, !dbg !122       ; [#uses=1 type=i1] [debug line = 61:10]
  br i1 %tmp.44, label %12, label %.loopexit2.loopexit, !dbg !122 ; [debug line = 61:10]

; <label>:12                                      ; preds = %11
  %tmp.47 = mul nsw i32 %i.1, %i.1, !dbg !124     ; [#uses=1 type=i32] [debug line = 62:11]
  %tmp.48 = icmp sgt i32 %tmp.47, %temp.1, !dbg !124 ; [#uses=1 type=i1] [debug line = 62:11]
  br i1 %tmp.48, label %13, label %14, !dbg !124  ; [debug line = 62:11]

; <label>:13                                      ; preds = %12
  %i.1.lcssa = phi i32 [ %i.1, %12 ]              ; [#uses=1 type=i32]
  %a.5 = add nsw i32 %i.1.lcssa, -1, !dbg !126    ; [#uses=1 type=i32] [debug line = 63:15]
  call void @llvm.dbg.value(metadata !{i32 %a.5}, i64 0, metadata !115), !dbg !126 ; [debug line = 63:15] [debug variable = a]
  br label %.loopexit2, !dbg !128                 ; [debug line = 64:14]

; <label>:14                                      ; preds = %12
  %i.3 = add nsw i32 %i.1, 1, !dbg !129           ; [#uses=1 type=i32] [debug line = 61:19]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !119), !dbg !129 ; [debug line = 61:19] [debug variable = i]
  br label %11, !dbg !129                         ; [debug line = 61:19]

.loopexit2.loopexit:                              ; preds = %11
  br label %.loopexit2

.loopexit2.loopexit29:                            ; preds = %6
  %a.0.lcssa = phi i32 [ %a, %6 ]                 ; [#uses=1 type=i32]
  br label %.loopexit2

.loopexit2:                                       ; preds = %.loopexit2.loopexit29, %.loopexit2.loopexit, %13, %8
  %len. = phi i32 [ %len.0.lcssa, %8 ], [ %len.0.lcssa, %13 ], [ %len.0.lcssa, %.loopexit2.loopexit ], [ %len.0.lcssa, %.loopexit2.loopexit29 ] ; [#uses=1 type=i32]
  %k = phi i32 [ 3, %8 ], [ 2, %13 ], [ 2, %.loopexit2.loopexit ], [ 3, %.loopexit2.loopexit29 ] ; [#uses=2 type=i32]
  %a.3 = phi i32 [ %a.1, %8 ], [ %a.5, %13 ], [ 0, %.loopexit2.loopexit ], [ %a.0.lcssa, %.loopexit2.loopexit29 ] ; [#uses=4 type=i32]
  %temp2 = phi i32 [ %temp, %8 ], [ %temp.1, %13 ], [ %temp.1, %.loopexit2.loopexit ], [ %temp, %.loopexit2.loopexit29 ] ; [#uses=1 type=i32]
  %size_of_a.0.in = phi i32 [ %len.0.lcssa, %8 ], [ %tmp.22, %13 ], [ %tmp.22, %.loopexit2.loopexit ], [ %len.0.lcssa, %.loopexit2.loopexit29 ] ; [#uses=1 type=i32]
  %size_of_a = sdiv i32 %size_of_a.0.in, 2, !dbg !130 ; [#uses=1 type=i32] [debug line = 46:3]
  call void @llvm.dbg.value(metadata !{i32 %size_of_a}, i64 0, metadata !131), !dbg !130 ; [debug line = 46:3] [debug variable = size_of_a]
  %divisor = shl nsw i32 %a.3, 1, !dbg !132       ; [#uses=6 type=i32] [debug line = 68:18]
  call void @llvm.dbg.value(metadata !{i32 %divisor}, i64 0, metadata !133), !dbg !132 ; [debug line = 68:18] [debug variable = divisor]
  %tmp.53 = mul nsw i32 %a.3, %a.3, !dbg !134     ; [#uses=1 type=i32] [debug line = 69:27]
  %remainder = sub nsw i32 %temp2, %tmp.53, !dbg !134 ; [#uses=2 type=i32] [debug line = 69:27]
  call void @llvm.dbg.value(metadata !{i32 %remainder}, i64 0, metadata !135), !dbg !134 ; [debug line = 69:27] [debug variable = remainder]
  %remy.addr = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 0, !dbg !136 ; [#uses=1 type=i32*] [debug line = 70:1]
  store i32 %remainder, i32* %remy.addr, align 16, !dbg !136 ; [debug line = 70:1]
  %tmp.55 = mul nsw i32 %remainder, 10, !dbg !137 ; [#uses=1 type=i32] [debug line = 71:1]
  %tmp.56 = add nsw i32 %k, -1, !dbg !137         ; [#uses=1 type=i32] [debug line = 71:1]
  %tmp.57 = sext i32 %tmp.56 to i64, !dbg !137    ; [#uses=1 type=i64] [debug line = 71:1]
  %h.addr.8 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.57, !dbg !137 ; [#uses=1 type=i8*] [debug line = 71:1]
  %h.load.3 = load i8* %h.addr.8, align 1, !dbg !137 ; [#uses=2 type=i8] [debug line = 71:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %h.load.3) nounwind
  %tmp.58 = sext i8 %h.load.3 to i32, !dbg !137   ; [#uses=1 type=i32] [debug line = 71:1]
  %tmp.59 = add i32 %tmp.55, -48, !dbg !137       ; [#uses=1 type=i32] [debug line = 71:1]
  %temp.3 = add i32 %tmp.59, %tmp.58, !dbg !137   ; [#uses=2 type=i32] [debug line = 71:1]
  call void @llvm.dbg.value(metadata !{i32 %temp.3}, i64 0, metadata !108), !dbg !137 ; [debug line = 71:1] [debug variable = temp]
  %quotient = sdiv i32 %temp.3, %divisor, !dbg !138 ; [#uses=2 type=i32] [debug line = 72:28]
  call void @llvm.dbg.value(metadata !{i32 %quotient}, i64 0, metadata !139), !dbg !138 ; [debug line = 72:28] [debug variable = quotient]
  %tmp.62 = icmp sgt i32 %quotient, 9, !dbg !140  ; [#uses=1 type=i1] [debug line = 73:1]
  %. = select i1 %tmp.62, i32 9, i32 %quotient, !dbg !140 ; [#uses=2 type=i32] [debug line = 73:1]
  %tmp.63 = mul nsw i32 %a.3, 10, !dbg !141       ; [#uses=1 type=i32] [debug line = 75:1]
  %a.6 = add nsw i32 %., %tmp.63, !dbg !141       ; [#uses=1 type=i32] [debug line = 75:1]
  call void @llvm.dbg.value(metadata !{i32 %a.6}, i64 0, metadata !115), !dbg !141 ; [debug line = 75:1] [debug variable = a]
  %tmp.65 = mul nsw i32 %., %divisor, !dbg !142   ; [#uses=1 type=i32] [debug line = 77:1]
  %remainder.1 = sub nsw i32 %temp.3, %tmp.65, !dbg !142 ; [#uses=2 type=i32] [debug line = 77:1]
  call void @llvm.dbg.value(metadata !{i32 %remainder.1}, i64 0, metadata !135), !dbg !142 ; [debug line = 77:1] [debug variable = remainder]
  %remy.addr.1 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 1, !dbg !143 ; [#uses=1 type=i32*] [debug line = 78:1]
  store i32 %remainder.1, i32* %remy.addr.1, align 4, !dbg !143 ; [debug line = 78:1]
  %k.2 = add nsw i32 %k, 1, !dbg !144             ; [#uses=1 type=i32] [debug line = 79:1]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !145), !dbg !144 ; [debug line = 79:1] [debug variable = k]
  %tmp.68 = add nsw i32 %len., 4, !dbg !146       ; [#uses=1 type=i32] [debug line = 80:1]
  br label %.backedge, !dbg !146                  ; [debug line = 80:1]

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2
  %t = phi i32 [ 2, %.loopexit2 ], [ %t.0.be, %.backedge.backedge ] ; [#uses=6 type=i32]
  %k.1 = phi i32 [ %k.2, %.loopexit2 ], [ %k.1.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %a.4 = phi i32 [ %a.6, %.loopexit2 ], [ %a.4.be, %.backedge.backedge ] ; [#uses=5 type=i32]
  %remainder2 = phi i32 [ %remainder.1, %.loopexit2 ], [ %remainder.0.be, %.backedge.backedge ] ; [#uses=2 type=i32]
  %tmp.69 = icmp sgt i32 %k.1, %tmp.68, !dbg !146 ; [#uses=1 type=i1] [debug line = 80:1]
  br i1 %tmp.69, label %20, label %15, !dbg !146  ; [debug line = 80:1]

; <label>:15                                      ; preds = %.backedge
  %t.2 = add nsw i32 %t, -1, !dbg !147            ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp.73 = sext i32 %t.2 to i64, !dbg !147       ; [#uses=1 type=i64] [debug line = 81:49]
  %remy.addr.2 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.73, !dbg !147 ; [#uses=2 type=i32*] [debug line = 81:49]
  %remy.load = load i32* %remy.addr.2, align 4, !dbg !147 ; [#uses=2 type=i32] [debug line = 81:49]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %remy.load) nounwind
  %tmp.74 = mul nsw i32 %remy.load, 10, !dbg !147 ; [#uses=1 type=i32] [debug line = 81:49]
  %k.4 = add nsw i32 %k.1, -1, !dbg !147          ; [#uses=2 type=i32] [debug line = 81:49]
  %tmp.76 = sext i32 %k.4 to i64, !dbg !147       ; [#uses=1 type=i64] [debug line = 81:49]
  %h.addr.9 = getelementptr inbounds [100 x i8]* %h, i64 0, i64 %tmp.76, !dbg !147 ; [#uses=1 type=i8*] [debug line = 81:49]
  %h.load.4 = load i8* %h.addr.9, align 1, !dbg !147 ; [#uses=2 type=i8] [debug line = 81:49]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %h.load.4) nounwind
  %tmp.77 = sext i8 %h.load.4 to i32, !dbg !147   ; [#uses=1 type=i32] [debug line = 81:49]
  call void @llvm.dbg.value(metadata !{i32 %new_temp}, i64 0, metadata !149), !dbg !147 ; [debug line = 81:49] [debug variable = new_temp]
  %tmp.78 = sext i32 %a.4 to i64, !dbg !150       ; [#uses=1 type=i64] [debug line = 82:29]
  %tmp.79 = call fastcc i32 @dup(i64 %tmp.78), !dbg !150 ; [#uses=1 type=i32] [debug line = 82:29]
  %.neg = sub i32 0, %tmp.79                      ; [#uses=1 type=i32]
  %tmp.80 = add i32 %tmp.74, -48, !dbg !147       ; [#uses=1 type=i32] [debug line = 81:49]
  %new_temp = add i32 %tmp.80, %tmp.77, !dbg !147 ; [#uses=1 type=i32] [debug line = 81:49]
  %temp2.2 = add i32 %new_temp, %.neg, !dbg !150  ; [#uses=3 type=i32] [debug line = 82:29]
  call void @llvm.dbg.value(metadata !{i32 %temp2.2}, i64 0, metadata !151), !dbg !150 ; [debug line = 82:29] [debug variable = temp2]
  %tmp.81 = icmp slt i32 %temp2.2, 0, !dbg !152   ; [#uses=1 type=i1] [debug line = 83:6]
  br i1 %tmp.81, label %16, label %19, !dbg !152  ; [debug line = 83:6]

; <label>:16                                      ; preds = %15
  %vr1 = sdiv i32 %a.4, 10, !dbg !153             ; [#uses=1 type=i32] [debug line = 84:25]
  call void @llvm.dbg.value(metadata !{i32 %vr1}, i64 0, metadata !155), !dbg !153 ; [debug line = 84:25] [debug variable = vr1]
  %a.7 = add nsw i32 %a.4, -1, !dbg !156          ; [#uses=2 type=i32] [debug line = 85:10]
  call void @llvm.dbg.value(metadata !{i32 %a.7}, i64 0, metadata !115), !dbg !156 ; [debug line = 85:10] [debug variable = a]
  %vr2 = sdiv i32 %a.7, 10, !dbg !157             ; [#uses=2 type=i32] [debug line = 86:24]
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !158), !dbg !157 ; [debug line = 86:24] [debug variable = vr2]
  %tmp.85 = icmp eq i32 %vr1, %vr2, !dbg !159     ; [#uses=1 type=i1] [debug line = 87:10]
  br i1 %tmp.85, label %17, label %18, !dbg !159  ; [debug line = 87:10]

; <label>:17                                      ; preds = %16
  %remainder.4 = add nsw i32 %remainder2, %divisor, !dbg !160 ; [#uses=2 type=i32] [debug line = 88:15]
  call void @llvm.dbg.value(metadata !{i32 %remainder.4}, i64 0, metadata !135), !dbg !160 ; [debug line = 88:15] [debug variable = remainder]
  store i32 %remainder.4, i32* %remy.addr.2, align 4, !dbg !162 ; [debug line = 89:14]
  br label %.backedge.backedge, !dbg !163         ; [debug line = 90:5]

.backedge.backedge:                               ; preds = %19, %18, %17
  %t.0.be = phi i32 [ %t.1, %19 ], [ %t, %17 ], [ %t.2, %18 ] ; [#uses=1 type=i32]
  %k.1.be = phi i32 [ %k.3, %19 ], [ %k.1, %17 ], [ %k.4, %18 ] ; [#uses=1 type=i32]
  %a.4.be = phi i32 [ %a.8, %19 ], [ %a.7, %17 ], [ %vr2, %18 ] ; [#uses=1 type=i32]
  %remainder.0.be = phi i32 [ %remainder.3, %19 ], [ %remainder.4, %17 ], [ %remainder2, %18 ] ; [#uses=1 type=i32]
  br label %.backedge

; <label>:18                                      ; preds = %16
  call void @llvm.dbg.value(metadata !{i32 %vr2}, i64 0, metadata !115), !dbg !164 ; [debug line = 92:9] [debug variable = a]
  %tmp.98 = add nsw i32 %t, -2, !dbg !166         ; [#uses=1 type=i32] [debug line = 93:8]
  %tmp.99 = sext i32 %tmp.98 to i64, !dbg !166    ; [#uses=1 type=i64] [debug line = 93:8]
  %remy.addr.4 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.99, !dbg !166 ; [#uses=2 type=i32*] [debug line = 93:8]
  %remy.load.1 = load i32* %remy.addr.4, align 4, !dbg !166 ; [#uses=2 type=i32] [debug line = 93:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %remy.load.1) nounwind
  %tmp.100 = add nsw i32 %remy.load.1, %divisor, !dbg !166 ; [#uses=1 type=i32] [debug line = 93:8]
  store i32 %tmp.100, i32* %remy.addr.4, align 4, !dbg !166 ; [debug line = 93:8]
  call void @llvm.dbg.value(metadata !{i32 %k.4}, i64 0, metadata !145), !dbg !167 ; [debug line = 94:8] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %t.2}, i64 0, metadata !168), !dbg !169 ; [debug line = 95:5] [debug variable = t]
  br label %.backedge.backedge

; <label>:19                                      ; preds = %15
  %quotient.1 = sdiv i32 %temp2.2, %divisor, !dbg !170 ; [#uses=2 type=i32] [debug line = 99:5]
  call void @llvm.dbg.value(metadata !{i32 %quotient.1}, i64 0, metadata !139), !dbg !170 ; [debug line = 99:5] [debug variable = quotient]
  %tmp.87 = icmp sgt i32 %quotient.1, 9, !dbg !172 ; [#uses=1 type=i1] [debug line = 100:4]
  %.6 = select i1 %tmp.87, i32 9, i32 %quotient.1, !dbg !172 ; [#uses=2 type=i32] [debug line = 100:4]
  %tmp.88 = mul nsw i32 %a.4, 10, !dbg !173       ; [#uses=1 type=i32] [debug line = 102:4]
  %a.8 = add nsw i32 %.6, %tmp.88, !dbg !173      ; [#uses=1 type=i32] [debug line = 102:4]
  call void @llvm.dbg.value(metadata !{i32 %a.8}, i64 0, metadata !115), !dbg !173 ; [debug line = 102:4] [debug variable = a]
  %tmp.90 = mul nsw i32 %.6, %divisor, !dbg !174  ; [#uses=1 type=i32] [debug line = 103:4]
  %remainder.3 = sub nsw i32 %temp2.2, %tmp.90, !dbg !174 ; [#uses=2 type=i32] [debug line = 103:4]
  call void @llvm.dbg.value(metadata !{i32 %remainder.3}, i64 0, metadata !135), !dbg !174 ; [debug line = 103:4] [debug variable = remainder]
  %tmp.92 = sext i32 %t to i64, !dbg !175         ; [#uses=1 type=i64] [debug line = 104:4]
  %remy.addr.3 = getelementptr inbounds [20 x i32]* %remy, i64 0, i64 %tmp.92, !dbg !175 ; [#uses=1 type=i32*] [debug line = 104:4]
  store i32 %remainder.3, i32* %remy.addr.3, align 4, !dbg !175 ; [debug line = 104:4]
  %k.3 = add nsw i32 %k.1, 1, !dbg !176           ; [#uses=1 type=i32] [debug line = 105:4]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !145), !dbg !176 ; [debug line = 105:4] [debug variable = k]
  %t.1 = add nsw i32 %t, 1, !dbg !177             ; [#uses=1 type=i32] [debug line = 106:4]
  call void @llvm.dbg.value(metadata !{i32 %t.1}, i64 0, metadata !168), !dbg !177 ; [debug line = 106:4] [debug variable = t]
  br label %.backedge.backedge

; <label>:20                                      ; preds = %.backedge
  %a.4.lcssa = phi i32 [ %a.4, %.backedge ]       ; [#uses=1 type=i32]
  %t.0.lcssa = phi i32 [ %t, %.backedge ]         ; [#uses=1 type=i32]
  %tmp.70 = sitofp i32 %a.4.lcssa to float, !dbg !178 ; [#uses=2 type=float] [debug line = 108:1]
  store float %tmp.70, float* %ans, align 4, !dbg !178 ; [debug line = 108:1]
  %tmp.71 = sub nsw i32 %t.0.lcssa, %size_of_a, !dbg !179 ; [#uses=1 type=i32] [debug line = 109:5]
  br label %21, !dbg !179                         ; [debug line = 109:5]

; <label>:21                                      ; preds = %22, %20
  %tmp.82 = phi float [ %tmp.70, %20 ], [ %tmp.95, %22 ] ; [#uses=1 type=float]
  %i.2 = phi i32 [ 0, %20 ], [ %i.4, %22 ]        ; [#uses=2 type=i32]
  %tmp.83 = icmp slt i32 %i.2, %tmp.71, !dbg !179 ; [#uses=1 type=i1] [debug line = 109:5]
  br i1 %tmp.83, label %22, label %23, !dbg !179  ; [debug line = 109:5]

; <label>:22                                      ; preds = %21
  %tmp.95 = fdiv float %tmp.82, 1.000000e+01, !dbg !181 ; [#uses=2 type=float] [debug line = 110:1]
  store float %tmp.95, float* %ans, align 4, !dbg !181 ; [debug line = 110:1]
  %i.4 = add nsw i32 %i.2, 1, !dbg !182           ; [#uses=1 type=i32] [debug line = 109:23]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !119), !dbg !182 ; [debug line = 109:23] [debug variable = i]
  br label %21, !dbg !182                         ; [debug line = 109:23]

; <label>:23                                      ; preds = %21
  ret void, !dbg !183                             ; [debug line = 111:2]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!30, !37}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/root/root_explo/solution2/.autopilot/db/Square_Root_explo.pragma.2.c", metadata !"/root", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !19} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dup", metadata !"dup", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i64)* @dup, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
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
!30 = metadata !{i32 (i64)* @dup, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
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
!57 = metadata !{i32 8, i32 3, metadata !58, null}
!58 = metadata !{i32 786443, metadata !46, i32 7, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 9, i32 3, metadata !58, null}
!60 = metadata !{i32 786688, metadata !46, metadata !"cou1", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 10, i32 3, metadata !58, null}
!62 = metadata !{i32 11, i32 2, metadata !58, null}
!63 = metadata !{i32 14, i32 3, metadata !64, null}
!64 = metadata !{i32 786443, metadata !56, i32 13, i32 23, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786688, metadata !46, metadata !"z", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 13, i32 19, metadata !56, null}
!67 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 16, i32 2, metadata !46, null}
!69 = metadata !{i32 16, i32 18, metadata !46, null}
!70 = metadata !{i32 18, i32 2, metadata !46, null}
!71 = metadata !{i32 786689, metadata !13, metadata !"num", metadata !6, i32 16777236, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 20, i32 23, metadata !13, null}
!73 = metadata !{i32 786689, metadata !13, metadata !"ans", metadata !6, i32 33554452, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 20, i32 35, metadata !13, null}
!75 = metadata !{i32 786688, metadata !76, metadata !"remy", metadata !6, i32 27, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786443, metadata !13, i32 21, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 32, i32 0, i32 0, metadata !9, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{i32 27, i32 5, metadata !76, null}
!79 = metadata !{i32 786688, metadata !76, metadata !"h", metadata !6, i32 28, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 8, i32 0, i32 0, metadata !81, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!84 = metadata !{i32 28, i32 6, metadata !76, null}
!85 = metadata !{i32 29, i32 13, metadata !76, null}
!86 = metadata !{i32 786688, metadata !76, metadata !"n", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 30, i32 1, metadata !76, null}
!88 = metadata !{i32 786688, metadata !76, metadata !"len2", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 34, i32 15, metadata !76, null}
!90 = metadata !{i32 35, i32 1, metadata !76, null}
!91 = metadata !{i32 31, i32 2, metadata !92, null}
!92 = metadata !{i32 786443, metadata !76, i32 31, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 32, i32 1, metadata !92, null}
!94 = metadata !{i32 786688, metadata !76, metadata !"len", metadata !6, i32 24, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 33, i32 1, metadata !92, null}
!96 = metadata !{i32 36, i32 2, metadata !97, null}
!97 = metadata !{i32 786443, metadata !76, i32 36, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 37, i32 1, metadata !97, null}
!99 = metadata !{i32 38, i32 1, metadata !97, null}
!100 = metadata !{i32 39, i32 1, metadata !97, null}
!101 = metadata !{i32 40, i32 1, metadata !76, null}
!102 = metadata !{i32 41, i32 1, metadata !76, null}
!103 = metadata !{i32 42, i32 1, metadata !76, null}
!104 = metadata !{i32 43, i32 1, metadata !76, null}
!105 = metadata !{i32 44, i32 1, metadata !76, null}
!106 = metadata !{i32 47, i32 3, metadata !107, null}
!107 = metadata !{i32 786443, metadata !76, i32 45, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786688, metadata !76, metadata !"temp", metadata !6, i32 23, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 48, i32 7, metadata !110, null}
!110 = metadata !{i32 786443, metadata !107, i32 48, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 49, i32 11, metadata !112, null}
!112 = metadata !{i32 786443, metadata !110, i32 49, i32 10, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 50, i32 15, metadata !114, null}
!114 = metadata !{i32 786443, metadata !112, i32 50, i32 14, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786688, metadata !76, metadata !"a", metadata !6, i32 25, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 51, i32 14, metadata !114, null}
!117 = metadata !{i32 53, i32 14, metadata !112, null}
!118 = metadata !{i32 48, i32 16, metadata !110, null}
!119 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 59, i32 6, metadata !121, null}
!121 = metadata !{i32 786443, metadata !76, i32 58, i32 6, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 61, i32 10, metadata !123, null}
!123 = metadata !{i32 786443, metadata !121, i32 61, i32 6, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 62, i32 11, metadata !125, null}
!125 = metadata !{i32 786443, metadata !123, i32 62, i32 10, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 63, i32 15, metadata !127, null}
!127 = metadata !{i32 786443, metadata !125, i32 63, i32 14, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 64, i32 14, metadata !127, null}
!129 = metadata !{i32 61, i32 19, metadata !123, null}
!130 = metadata !{i32 46, i32 3, metadata !107, null}
!131 = metadata !{i32 786688, metadata !76, metadata !"size_of_a", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 68, i32 18, metadata !76, null}
!133 = metadata !{i32 786688, metadata !76, metadata !"divisor", metadata !6, i32 68, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 69, i32 27, metadata !76, null}
!135 = metadata !{i32 786688, metadata !76, metadata !"remainder", metadata !6, i32 69, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 70, i32 1, metadata !76, null}
!137 = metadata !{i32 71, i32 1, metadata !76, null}
!138 = metadata !{i32 72, i32 28, metadata !76, null}
!139 = metadata !{i32 786688, metadata !76, metadata !"quotient", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 73, i32 1, metadata !76, null}
!141 = metadata !{i32 75, i32 1, metadata !76, null}
!142 = metadata !{i32 77, i32 1, metadata !76, null}
!143 = metadata !{i32 78, i32 1, metadata !76, null}
!144 = metadata !{i32 79, i32 1, metadata !76, null}
!145 = metadata !{i32 786688, metadata !76, metadata !"k", metadata !6, i32 26, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 80, i32 1, metadata !76, null}
!147 = metadata !{i32 81, i32 49, metadata !148, null}
!148 = metadata !{i32 786443, metadata !76, i32 81, i32 6, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786688, metadata !148, metadata !"new_temp", metadata !6, i32 81, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 82, i32 29, metadata !148, null}
!151 = metadata !{i32 786688, metadata !148, metadata !"temp2", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 83, i32 6, metadata !148, null}
!153 = metadata !{i32 84, i32 25, metadata !154, null}
!154 = metadata !{i32 786443, metadata !148, i32 84, i32 10, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786688, metadata !154, metadata !"vr1", metadata !6, i32 84, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 85, i32 10, metadata !154, null}
!157 = metadata !{i32 86, i32 24, metadata !154, null}
!158 = metadata !{i32 786688, metadata !154, metadata !"vr2", metadata !6, i32 86, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 87, i32 10, metadata !154, null}
!160 = metadata !{i32 88, i32 15, metadata !161, null}
!161 = metadata !{i32 786443, metadata !154, i32 88, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 89, i32 14, metadata !161, null}
!163 = metadata !{i32 90, i32 5, metadata !161, null}
!164 = metadata !{i32 92, i32 9, metadata !165, null}
!165 = metadata !{i32 786443, metadata !154, i32 92, i32 8, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 93, i32 8, metadata !165, null}
!167 = metadata !{i32 94, i32 8, metadata !165, null}
!168 = metadata !{i32 786688, metadata !76, metadata !"t", metadata !6, i32 67, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 95, i32 5, metadata !165, null}
!170 = metadata !{i32 99, i32 5, metadata !171, null}
!171 = metadata !{i32 786443, metadata !148, i32 99, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 100, i32 4, metadata !171, null}
!173 = metadata !{i32 102, i32 4, metadata !171, null}
!174 = metadata !{i32 103, i32 4, metadata !171, null}
!175 = metadata !{i32 104, i32 4, metadata !171, null}
!176 = metadata !{i32 105, i32 4, metadata !171, null}
!177 = metadata !{i32 106, i32 4, metadata !171, null}
!178 = metadata !{i32 108, i32 1, metadata !76, null}
!179 = metadata !{i32 109, i32 5, metadata !180, null}
!180 = metadata !{i32 786443, metadata !76, i32 109, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 110, i32 1, metadata !180, null}
!182 = metadata !{i32 109, i32 23, metadata !180, null}
!183 = metadata !{i32 111, i32 2, metadata !76, null}
