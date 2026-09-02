Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ResourceFileWriter?download=true
inline.NumInlined: 2532
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm2rc18ResourceFileWriter25visitIconOrCursorResourceEPKNS0_10RCResourceE:bb.a

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %.081241 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.q ] ; 2 uses
  %.sroa.0175.0240 = phi ptr [ %i.bh, %.lr.ph ], [ %.sroa.0175.5, %bb.q ] ; 6 uses
  %.sroa.15.0239 = phi ptr [ %i.bh, %.lr.ph ], [ %.sroa.15.4, %bb.q ] ; 4 uses
  %.sroa.23.0238 = phi ptr [ %i.bi, %.lr.ph ], [ %.sroa.23.5, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !noalias !498
  call void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 12) #20
  %i.bz = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !498
  %.not.i128 = icmp eq ptr %i.bz, null
  br i1 %.not.i128, label %_ZN4llvm5ErrorD2Ev.exit130, label %.critedge93

_ZN4llvm5ErrorD2Ev.exit130:                       ; preds = %bb.k
  %i.ca = load ptr, ptr %6, align 8, !tbaa !487, !noalias !498 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !498
  %.not.i131 = icmp eq ptr %.sroa.15.0239, %.sroa.23.0238
  br i1 %.not.i131, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.15.0239, ptr noundef nonnull align 1 dereferenceable(12) %i.ca, i64 12, i1 false), !tbaa.struct !128
  br label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit130
  %i.cb = ptrtoint ptr %.sroa.15.0239 to i64
  %i.cc = ptrtoint ptr %.sroa.0175.0240 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.n, label %_ZNKSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #25
  unreachable

_ZNKSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cf = sdiv exact i64 %i.cd, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 768614336404564650)
  %i.cj = select i1 %i.ch, i64 768614336404564650, i64 %i.ci ; 3 uses
  %.not.i.i.i132 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i132)
  %i.ck = mul nuw nsw i64 %i.cj, 12
  %i.cl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #22 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.cm, ptr noundef nonnull align 1 dereferenceable(12) %i.ca, i64 12, i1 false), !tbaa.struct !128
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.o, label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %.sroa.0175.0240, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0175.0240, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0240, i64 noundef %i.cd) #24
  br label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.l, %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.23.5 = phi ptr [ %i.co, %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.23.0238, %bb.l ] ; 7 uses
  %.pn = phi ptr [ %i.cm, %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.15.0239, %bb.l ]
  %.sroa.0175.5 = phi ptr [ %i.cl, %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0175.0240, %bb.l ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !499
  call void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 4) #20
  %i.cp = load ptr, ptr %0, align 8, !tbaa !91
  %.not.i133 = icmp eq ptr %i.cp, null
  br i1 %.not.i133, label %bb.q, label %.critedge92

.critedge92:                                      ; preds = %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !499
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EE9push_backERKS2_.exit
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.081241
  %.sroa.15.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 3 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !487, !noalias !499
  %i.cs = load ptr, ptr %i.bp, align 8, !tbaa !508, !noalias !499 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #20, !inline_history !477
  %.0.copyload.i.i = load i32, ptr %i.cr, align 1 ; 2 uses
  %.not.i.i.i135 = icmp eq i32 %i.cw, 1
  %i.cx = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %spec.select.i.i.i = select i1 %.not.i.i.i135, i32 %.0.copyload.i.i, i32 %i.cx
  store i32 %spec.select.i.i.i, ptr %i.cq, align 4, !tbaa !120, !noalias !499
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !499
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !499
  %i.cy = add nuw nsw i64 %.081241, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.bf
  br i1 %exitcond.not, label %.lr.ph246, label %bb.k, !llvm.loop !478

.critedge93:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !498
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.critedge95:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit139
  %i.cz = add nuw nsw i64 %.078245, 1             ; 2 uses
  %exitcond260.not = icmp eq i64 %i.cz, %i.bf
  br i1 %exitcond260.not, label %.lr.ph249, label %bb.s, !llvm.loop !479

.lr.ph249:                                        ; preds = %.critedge95
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  br i1 %.not224, label %.lr.ph249.split, label %.lr.ph249.split.us

.lr.ph249.split.us:                               ; preds = %.lr.ph249, %.critedge100.us
  %.074248.us = phi i64 [ %i.dm, %.critedge100.us ], [ 0, %.lr.ph249 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0175.5, i64 %.074248.us ; 4 uses
  %i.dc = load <2 x i16>, ptr %i.db, align 1
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %.sroa.11.0.copyload.us = load i32, ptr %.sroa.11.0..sroa_idx.us, align 1, !tbaa !98
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.074248.us
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !120
  %i.df = zext i32 %i.de to i64
  store i64 %i.df, ptr %i.da, align 8, !tbaa !511
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !512
  call void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 40) #20
  %i.dg = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !512
  %.not.i141.us = icmp eq ptr %i.dg, null
  br i1 %.not.i141.us, label %_ZN4llvm5ErrorD2Ev.exit143.us, label %.split.us

_ZN4llvm5ErrorD2Ev.exit143.us:                    ; preds = %.lr.ph249.split.us
  %i.dh = load ptr, ptr %3, align 8, !tbaa !487, !noalias !512 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !512
  %.0.copyload.i.i.i144.us = load i32, ptr %i.dh, align 1
  %i.di = icmp eq i32 %.0.copyload.i.i.i144.us, 40
  br i1 %i.di, label %bb.r, label %.critedge100.us

bb.r:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit143.us
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dk = load <2 x i16>, ptr %i.dj, align 1, !tbaa !98
  br label %.critedge100.us

.critedge100.us:                                  ; preds = %bb.r, %_ZN4llvm5ErrorD2Ev.exit143.us
  %i.dl = phi <2 x i16> [ %i.dk, %bb.r ], [ <i16 1, i16 32>, %_ZN4llvm5ErrorD2Ev.exit143.us ]
  store <2 x i16> %i.dc, ptr %i.db, align 1
  store <2 x i16> %i.dl, ptr %.sroa.7.0..sroa_idx.us, align 1, !tbaa !98
  store i32 %.sroa.11.0.copyload.us, ptr %.sroa.11.0..sroa_idx.us, align 1, !tbaa !98
  %i.dm = add nuw nsw i64 %.074248.us, 1          ; 2 uses
  %exitcond262.not = icmp eq i64 %i.dm, %i.bf
  br i1 %exitcond262.not, label %.critedge105, label %.lr.ph249.split.us, !llvm.loop !482

bb.s:                                             ; preds = %.lr.ph246, %.critedge95
  %.078245 = phi i64 [ 0, %.lr.ph246 ], [ %i.cz, %.critedge95 ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.078245
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !120
  %i.dp = zext i32 %i.do to i64
  store i64 %i.dp, ptr %i.bq, align 8, !tbaa !511
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0175.5, i64 %.078245 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i.i.i137 = load i32, ptr %i.dr, align 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !513
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !noalias !513
  %i.ds = icmp eq i32 %.0.copyload.i.i.i137, 0
  br i1 %i.ds, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.t

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.s
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !513
  br label %_ZN4llvm5ErrorD2Ev.exit139

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.0.copyload.i.i.i137) #20
  %i.dt = load ptr, ptr %0, align 8, !tbaa !91
  %.not.i138 = icmp eq ptr %i.dt, null
  br i1 %.not.i138, label %_ZN4llvm5ErrorD2Ev.exit11.i, label %.critedge98

_ZN4llvm5ErrorD2Ev.exit11.i:                      ; preds = %bb.t
  %i.du = zext i32 %.0.copyload.i.i.i137 to i64
  %i.dv = load ptr, ptr %4, align 8, !tbaa !487, !noalias !513
  br label %_ZN4llvm5ErrorD2Ev.exit139

_ZN4llvm5ErrorD2Ev.exit139:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit11.i, %_ZN4llvm5ErrorD2Ev.exit.i
  %.sroa.0166.0.ph = phi ptr [ %i.dv, %_ZN4llvm5ErrorD2Ev.exit11.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit.i ]
  %.sroa.7167.0.ph = phi i64 [ %i.du, %_ZN4llvm5ErrorD2Ev.exit11.i ], [ 0, %_ZN4llvm5ErrorD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !513
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dw = load i16, ptr %i.br, align 8, !tbaa !123
  store i16 %i.dw, ptr %i.bu, align 8, !tbaa !123
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2rc24SingleIconCursorResourceE, i64 16), ptr %15, align 8, !tbaa !30
  store i32 %., ptr %i.bv, align 4, !tbaa !134
  store ptr %i.dq, ptr %i.bw, align 8, !tbaa !135
  store ptr %.sroa.0166.0.ph, ptr %i.bx, align 8, !tbaa !96
  store i64 %.sroa.7167.0.ph, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !97
  %i.dx = load i16, ptr %i.by, align 8, !tbaa !136
  %i.dy = zext i16 %i.dx to i64
  %i.dz = add nuw nsw i64 %.078245, %i.dy
  store i64 %i.dz, ptr %i.bs, align 8
  store i8 1, ptr %i.bt, align 8, !tbaa !93
  call void @_ZN4llvm2rc18ResourceFileWriter13writeResourceEPKNS0_10RCResourceEMS1_FNS_5ErrorES4_E(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef nonnull %15, i64 ptrtoint (ptr @_ZN4llvm2rc18ResourceFileWriter27writeSingleIconOrCursorBodyEPKNS0_10RCResourceE to i64), i64 0)
  %i.ea = load ptr, ptr %0, align 8, !tbaa !91
  %.not227 = icmp eq ptr %i.ea, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br i1 %.not227, label %.critedge95, label %_ZNSt6vectorIjSaIjEED2Ev.exit

.critedge98:                                      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !513
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph249.split:                                  ; preds = %.lr.ph249, %.critedge100
  %.074248 = phi i64 [ %i.es, %.critedge100 ], [ 0, %.lr.ph249 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0175.5, i64 %.074248 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !98
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !98
  %i.ed = zext i8 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !98
  %i.eg = zext i8 %i.ef to i16
  %i.eh = shl nuw nsw i16 %i.eg, 1
  %i.ei = add i32 %.sroa.11.0.copyload, 4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.074248
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !120
  %i.el = zext i32 %i.ek to i64
  store i64 %i.el, ptr %i.da, align 8, !tbaa !511
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !512
  call void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 40) #20
  %i.em = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !512
  %.not.i141 = icmp eq ptr %i.em, null
  br i1 %.not.i141, label %_ZN4llvm5ErrorD2Ev.exit143, label %.split.us

_ZN4llvm5ErrorD2Ev.exit143:                       ; preds = %.lr.ph249.split
  %i.en = load ptr, ptr %3, align 8, !tbaa !487, !noalias !512 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !512
  %.0.copyload.i.i.i144 = load i32, ptr %i.en, align 1
  %i.eo = icmp eq i32 %.0.copyload.i.i.i144, 40
  br i1 %i.eo, label %bb.u, label %.critedge100

bb.u:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit143
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.eq = load <2 x i16>, ptr %i.ep, align 1, !tbaa !98
  br label %.critedge100

.critedge100:                                     ; preds = %bb.u, %_ZN4llvm5ErrorD2Ev.exit143
  %i.er = phi <2 x i16> [ %i.eq, %bb.u ], [ <i16 1, i16 32>, %_ZN4llvm5ErrorD2Ev.exit143 ]
  store i16 %i.ed, ptr %i.eb, align 1
  store i16 %i.eh, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !98
  store <2 x i16> %i.er, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !98
  store i32 %i.ei, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !98
  %i.es = add nuw nsw i64 %.074248, 1             ; 2 uses
  %exitcond261.not = icmp eq i64 %i.es, %i.bf
  br i1 %exitcond261.not, label %.critedge105, label %.lr.ph249.split, !llvm.loop !482

.split.us:                                        ; preds = %.lr.ph249.split.us, %.lr.ph249.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !512
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.critedge105:                                     ; preds = %.critedge100.us, %.critedge100, %bb.i
  %.sroa.10.0304310324 = phi ptr [ %i.bl, %.critedge100 ], [ null, %bb.i ], [ %i.bl, %.critedge100.us ]
  %.sroa.0170.0300311323 = phi ptr [ %i.bk, %.critedge100 ], [ null, %bb.i ], [ %i.bk, %.critedge100.us ] ; 3 uses
  %.sroa.23.0.lcssa312322 = phi ptr [ %.sroa.23.5, %.critedge100 ], [ null, %bb.i ], [ %.sroa.23.5, %.critedge100.us ]
  %.sroa.15.0.lcssa313321 = phi ptr [ %.sroa.15.4, %.critedge100 ], [ null, %bb.i ], [ %.sroa.15.4, %.critedge100.us ]
  %.sroa.0175.0.lcssa314320 = phi ptr [ %.sroa.0175.5, %.critedge100 ], [ null, %bb.i ], [ %.sroa.0175.5, %.critedge100.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i16 4144, ptr %i.eu, align 8, !tbaa !123
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2rc23IconCursorGroupResourceE, i64 16), ptr %16, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %., ptr %i.ev, align 4, !tbaa !145
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ew, ptr noundef nonnull align 1 dereferenceable(6) %i.an, i64 6, i1 false), !tbaa.struct !514
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store ptr %.sroa.0175.0.lcssa314320, ptr %i.ex, align 8, !tbaa !146
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %.sroa.15.0.lcssa313321, ptr %i.ey, align 8, !tbaa !515
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  store ptr %.sroa.23.0.lcssa312322, ptr %i.ez, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.et, ptr noundef nonnull align 8 dereferenceable(17) %9, i64 17, i1 false), !tbaa.struct !126
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !123
  %i.fc = and i16 %i.fb, 64
  %.not90 = icmp eq i16 %i.fc, 0
  br i1 %.not90, label %.critedge107, label %bb.v

bb.v:                                             ; preds = %.critedge105
  store i16 4176, ptr %i.eu, align 8, !tbaa !123
  br label %.critedge107

.critedge107:                                     ; preds = %bb.v, %.critedge105
  call void @_ZN4llvm2rc18ResourceFileWriter13writeResourceEPKNS0_10RCResourceEMS1_FNS_5ErrorES4_E(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef nonnull %16, i64 ptrtoint (ptr @_ZN4llvm2rc18ResourceFileWriter26writeIconOrCursorGroupBodyEPKNS0_10RCResourceE to i64), i64 0)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2rc23IconCursorGroupResourceE, i64 16), ptr %16, align 8, !tbaa !30
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i147 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i147, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge107
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !147
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #24, !inline_history !148
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge107
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.not.i.i.i148 = icmp eq ptr %.sroa.0170.0300311323, null
  br i1 %.not.i.i.i148, label %.critedge, label %_ZNSt6vectorIjSaIjEED2Ev.exit.thread334

_ZNSt6vectorIjSaIjEED2Ev.exit.thread334:          ; preds = %bb.x
  %i.fi = ptrtoint ptr %.sroa.10.0304310324 to i64
  %i.fj = ptrtoint ptr %.sroa.0170.0300311323 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0300311323, i64 noundef %i.fk) #24
  br label %.critedge

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4llvm5ErrorD2Ev.exit139, %.critedge93, %.critedge92, %.split.us, %.critedge98
  %.sroa.0175.3221 = phi ptr [ %.sroa.0175.5, %.critedge92 ], [ %.sroa.0175.5, %.split.us ], [ %.sroa.0175.5, %.critedge98 ], [ %.sroa.0175.0240, %.critedge93 ], [ %.sroa.0175.5, %_ZN4llvm5ErrorD2Ev.exit139 ] ; 3 uses
  %.sroa.23.3219 = phi ptr [ %.sroa.23.5, %.critedge92 ], [ %.sroa.23.5, %.split.us ], [ %.sroa.23.5, %.critedge98 ], [ %.sroa.23.0238, %.critedge93 ], [ %.sroa.23.5, %_ZN4llvm5ErrorD2Ev.exit139 ]
  %.idx = shl nuw nsw i64 %i.bf, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %.idx) #24
  %.not.i.i.i149 = icmp eq ptr %.sroa.0175.3221, null
  br i1 %.not.i.i.i149, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.fl = ptrtoint ptr %.sroa.23.3219 to i64
  %i.fm = ptrtoint ptr %.sroa.0175.3221 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3221, i64 noundef %i.fn) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %_ZNSt6vectorIjSaIjEED2Ev.exit.thread334, %bb.y, %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZN4llvm18BinaryStreamReader10readObjectINS_2rc12GroupIconDirEEENS_5ErrorERPKT_.exit.thread, %_ZN4llvmplERKNS_5TwineES2_.exit126, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %11, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !149 ; 8 uses
  %.not.i.i.i.i150 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i150, label %bb.af, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fq, align 8, !tbaa !151
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !152
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20, !inline_history !11
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20, !inline_history !11
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i151 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i151, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !120
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.ft, %bb.ac ], [ %i.gd, %bb.ad ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ge, label %bb.ae, label %bb.af, !prof !153

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #20, !inline_history !154
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.pre = load ptr, ptr %10, align 8, !tbaa !155  ; 3 uses
  %.not.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.sink.split.i: ; preds = %bb.af
  %i.gf = load ptr, ptr %.pre, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %.pre) #20, !inline_history !5
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
end_hunk_0
