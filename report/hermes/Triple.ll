inline.NumInlined: 1218
inline.NumDeleted: 184
begin_hunk_0_@_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.aw, %bb.av, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209
  %.sink583 = phi ptr [ %i.ja, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ %i.ji, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ %i.ip, %bb.av ], [ %i.ip, %bb.aw ], [ %i.ip, %bb.ax ] ; 2 uses
  %.str.106.sink = phi ptr [ @.str.106, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ @.str.121, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ @.str.187, %bb.av ], [ @.str.188, %bb.aw ], [ @.str.56, %bb.ax ]
  %.sink = phi i64 [ 3, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ 6, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ 3, %bb.av ], [ 5, %bb.aw ], [ 4, %bb.ax ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink583, i64 48
  store ptr %.str.106.sink, ptr %i.jk, align 8, !tbaa !21
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink583, i64 56
  store i64 %.sink, ptr %.sroa.4243.0..sroa_idx, align 8, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.bd, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit
  %.pre506 = phi i32 [ %.pre506.pre, %bb.bd ], [ 4, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit ], [ 4, %.sink.split ] ; 5 uses
  %i.jl = trunc nuw i8 %.6 to i1
  %i.jm = trunc nuw i8 %.6115 to i1
  %or.cond11 = select i1 %i.jl, i1 true, i1 %i.jm
  %i.jn = icmp ne i32 %.6138, 0
  %or.cond13 = select i1 %i.ii, i1 %i.jn, i1 false
  %or.cond174 = select i1 %or.cond11, i1 true, i1 %or.cond13
  %or.cond15 = icmp ugt i32 %.6145, 1
  %or.cond175 = select i1 %or.cond174, i1 %or.cond15, i1 false
  br i1 %or.cond175, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.jo = icmp ugt i32 %.pre506, 5
  br i1 %i.jo, label %.sink.split.i226, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not396 = icmp eq i32 %.pre506, 5
  br i1 %.not396, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jp = load i32, ptr %i.e, align 4, !tbaa !11
  %i.jq = icmp ult i32 %i.jp, 5
  br i1 %i.jq, label %bb.bm, label %.lr.ph.preheader.i222

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 5, i64 noundef 16) #13
  %.pre.i227 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i221 = icmp eq i32 %.pre.i227, 5
  br i1 %.not13.i221, label %.sink.split.i226, label %.lr.ph.preheader.i222

.lr.ph.preheader.i222:                            ; preds = %bb.bl, %bb.bm
  %.pre-phi.i220.in562 = phi i32 [ %.pre.i227, %bb.bm ], [ %.pre506, %bb.bl ]
  %i.jr = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i220 = zext i32 %.pre-phi.i220.in562 to i64
  %.idx397 = shl nuw nsw i64 %.pre-phi.i220, 4    ; 2 uses
  %scevgep502 = getelementptr i8, ptr %i.jr, i64 %.idx397
  %i.js = sub nsw i64 80, %.idx397
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep502, i8 0, i64 %i.js, i1 false)
  br label %.sink.split.i226

.sink.split.i226:                                 ; preds = %.lr.ph.preheader.i222, %bb.bm, %bb.bj
  store i32 5, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229: ; preds = %bb.bk, %.sink.split.i226
  %switch.tableidx = add nsw i32 %.6145, -2       ; 2 uses
  %i.jt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE, i64 %i.jt
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ju = zext nneg i32 %switch.tableidx to i64
  %switch.gep602 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE.8, i64 %i.ju
  %switch.load603 = load ptr, ptr %switch.gep602, align 8
  %i.jv = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store ptr %switch.load603, ptr %i.jw, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store i64 %switch.load, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  br label %.thread563

.thread563:                                       ; preds = %.thread372, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229
  %.ph = phi i32 [ 5, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229 ], [ 4, %.thread372 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.jx, ptr %0, align 8, !tbaa !126
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.jy, align 8, !tbaa !19
  store i8 0, ptr %i.jx, align 8, !tbaa !46
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.jz, ptr %0, align 8, !tbaa !126
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.ka, align 8, !tbaa !19
  store i8 0, ptr %i.jz, align 8, !tbaa !46
  %.not171475 = icmp eq i32 %.pre506, 0
  br i1 %.not171475, label %._crit_edge479, label %bb.bo

bb.bo:                                            ; preds = %.thread563, %bb.bn
  %i.kb = phi ptr [ %i.jy, %.thread563 ], [ %i.ka, %bb.bn ] ; 3 uses
  %i.kc = phi ptr [ %i.jx, %.thread563 ], [ %i.jz, %bb.bn ] ; 2 uses
  %i.kd = phi i32 [ %.ph, %.thread563 ], [ %.pre506, %bb.bn ] ; 2 uses
  %.pre507 = load ptr, ptr %4, align 8, !tbaa !7  ; 2 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre507, i64 8
  %.sroa.2.0.copyload.peel.pre = load i64, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !22 ; 2 uses
  %i.ke = icmp ugt i64 %.sroa.2.0.copyload.peel.pre, 4611686018427387903
  br i1 %i.ke, label %.loopexit504, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel: ; preds = %bb.bo
  %.sroa.0.0.copyload.peel = load ptr, ptr %.pre507, align 8, !tbaa !21
  %i.kf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload.peel, i64 noundef %.sroa.2.0.copyload.peel.pre) #13 ; 0 uses
  %.not171.peel = icmp eq i32 %i.kd, 1
  br i1 %.not171.peel, label %._crit_edge479, label %.lr.ph478.peel.next

.lr.ph478.peel.next:                              ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit
  %.0117476 = phi i32 [ %i.kz, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ], [ 1, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel ] ; 2 uses
  %i.kg = load i64, ptr %i.kb, align 8, !tbaa !19 ; 4 uses
  %i.kh = add i64 %i.kg, 1                        ; 3 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.kc                ; 2 uses
  br i1 %i.kj, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.bp:                                            ; preds = %.lr.ph478.peel.next
  %i.kk = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.bp, %.lr.ph478.peel.next
  %i.kl = load i64, ptr %i.kc, align 8
  %i.km = select i1 %i.kj, i64 15, i64 %i.kl
  %i.kn = icmp ugt i64 %i.kh, %i.km
  br i1 %i.kn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kg, i64 noundef 0, ptr noundef null, i64 noundef 1) #13
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ko = phi ptr [ %.pre.i.i, %bb.bq ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  store i8 45, ptr %i.kp, align 1, !tbaa !46
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !19
  %i.kq = load ptr, ptr %0, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kh
  store i8 0, ptr %i.kr, align 1, !tbaa !46
  %i.ks = zext i32 %.0117476 to i64
  %i.kt = load ptr, ptr %4, align 8, !tbaa !7
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ks ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.kv = load i64, ptr %i.kb, align 8, !tbaa !19
  %i.kw = sub i64 4611686018427387903, %i.kv
  %i.kx = icmp ult i64 %i.kw, %.sroa.2.0.copyload
  br i1 %i.kx, label %.loopexit504, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

.loopexit504:                                     ; preds = %bb.br, %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #15
  unreachable

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %bb.br
  %.sroa.0.0.copyload = load ptr, ptr %i.ku, align 8, !tbaa !21
  %i.ky = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #13 ; 0 uses
  %i.kz = add nuw i32 %.0117476, 1                ; 2 uses
  %.not171 = icmp eq i32 %i.kz, %i.kd
  br i1 %.not171, label %._crit_edge479, label %.lr.ph478.peel.next, !llvm.loop !128

._crit_edge479:                                   ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel, %bb.bn
  %i.la = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.fv
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %._crit_edge479
  %i.lc = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %._crit_edge479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.le = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.c
  br i1 %i.lf, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  call void @free(ptr noundef %i.le) #13
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple11getArchNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
_ZNK4llvh9StringRef5splitEc.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.b, ptr %1, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.e, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !130
  %i.f = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !133 ; 2 uses
  %2 = icmp eq i64 %i.f, -1
  %.sroa.5.0.copyload = load i64, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %i.g = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.f)
  %.sroa.5.0 = select i1 %2, i64 %.sroa.5.0.copyload, i64 %i.g
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple13getVendorNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !136
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !139 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !139 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !17, !noalias !139
  %i.k = add nuw i64 %i.g, 1
  %i.l = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 %i.i, %i.l
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.56.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0, ptr %1, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.8.0, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !142
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !145 ; 2 uses
  %3 = icmp eq i64 %i.o, -1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.p = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.o)
  %.sroa.5.0 = select i1 %3, i64 %.sroa.5.0.copyload, i64 %i.p
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 9 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.d, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.g, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !148
  %i.h = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !151 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !151 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !17, !noalias !151
  %i.l = add nuw i64 %i.h, 1
  %i.m = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = sub i64 %i.j, %i.m
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.512.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %.sroa.813.0 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.512.0, ptr %1, align 8, !tbaa !21
  %.sroa.813.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %.sroa.813.0, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !154
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !157 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.r = load i64, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22, !noalias !157 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !17, !noalias !157
  %i.t = add nuw i64 %i.p, 1
  %i.u = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = sub i64 %i.r, %i.u
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.59.0 = phi ptr [ %i.v, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.8.0 = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.59.0, ptr %1, align 8, !tbaa !21
  store i64 %.sroa.8.0, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !160
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !163 ; 2 uses
  %3 = icmp eq i64 %i.x, -1
  %.sroa.5.0.copyload = load i64, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.y = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.x)
  %.sroa.5.0 = select i1 %3, i64 %.sroa.5.0.copyload, i64 %i.y
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 9 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.d, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.g, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !166
  %i.h = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !169 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !169 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !17, !noalias !169
  %i.l = add nuw i64 %i.h, 1
  %i.m = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = sub i64 %i.j, %i.m
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.514.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  %.sroa.815.0 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.514.0, ptr %1, align 8, !tbaa !21
  %.sroa.815.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %.sroa.815.0, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !172
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !175 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.r = load i64, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22, !noalias !175 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !17, !noalias !175
  %i.t = add nuw i64 %i.p, 1
  %i.u = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = sub i64 %i.r, %i.u
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.510.0 = phi ptr [ %i.v, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.811.0 = phi i64 [ %i.w, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.510.0, ptr %1, align 8, !tbaa !21
  store i64 %.sroa.811.0, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !178
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !181 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_ZNK4llvh9StringRef5splitEc.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit3
  %i.z = load i64, ptr %.sroa.815.16..sroa_idx, align 8, !tbaa !22, !noalias !181 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !17, !noalias !181
  %i.ab = add nuw i64 %i.x, 1
  %i.ac = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = sub i64 %i.z, %i.ac
  br label %_ZNK4llvh9StringRef5splitEc.exit6

_ZNK4llvh9StringRef5splitEc.exit6:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit3, %bb.d
  %.sroa.5.0 = phi ptr [ %i.ad, %bb.d ], [ null, %_ZNK4llvh9StringRef5splitEc.exit3 ]
  %.sroa.8.0 = phi i64 [ %i.ae, %bb.d ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple23getOSAndEnvironmentNameEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !184
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !187 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZNK4llvh9StringRef5splitEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !187 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !17, !noalias !187
  %i.k = add nuw i64 %i.g, 1
  %i.l = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 %i.i, %i.l
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.a, %bb.b
  %.sroa.57.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %.sroa.88.0 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0, ptr %1, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %.sroa.88.0, ptr %.sroa.88.16..sroa_idx, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !190
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !193 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_ZNK4llvh9StringRef5splitEc.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit
  %i.q = load i64, ptr %.sroa.88.16..sroa_idx, align 8, !tbaa !22, !noalias !193 ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17, !noalias !193
  %i.s = add nuw i64 %i.o, 1
  %i.t = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = sub i64 %i.q, %i.t
  br label %_ZNK4llvh9StringRef5splitEc.exit3

_ZNK4llvh9StringRef5splitEc.exit3:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.c
  %.sroa.5.0 = phi ptr [ %i.u, %bb.c ], [ null, %_ZNK4llvh9StringRef5splitEc.exit ]
  %.sroa.8.0 = phi i64 [ %i.v, %bb.c ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple21getEnvironmentVersionERjS1_S1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = tail call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.15, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8 ; 4 uses
  %.not.i = icmp ult i64 %i.c, %switch.load
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %switch.lookup
  %i.g = zext nneg i32 %i.e to i64
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.g
  %switch.load37 = load ptr, ptr %switch.gep36, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %switch.load37, i64 %switch.load)
  %i.h = icmp eq i32 %bcmp, 0
  br i1 %i.h, label %bb.a, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

bb.a:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %switch.load
  %i.j = sub i64 %i.c, %switch.load
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %switch.lookup, %bb.a, %_ZNK4llvh9StringRef10startswithES0_.exit
  %.sroa.011.0 = phi ptr [ %i.i, %bb.a ], [ %i.b, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %i.b, %switch.lookup ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.j, %bb.a ], [ %i.c, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ %i.c, %switch.lookup ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  %i.k = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.k, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.l = load i8, ptr %.sroa.011.0, align 1, !tbaa !46 ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond32.i = icmp ult i8 %i.m, -10
  br i1 %or.cond32.i, label %_ZL20parseVersionFromNameN4llvh9StringRefERjS1_S1_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.b
  %i.n = phi i8 [ %i.y, %bb.b ], [ %i.l, %.lr.ph.i ]
  %i.o = phi i64 [ %i.w, %bb.b ], [ %.sroa.7.0, %.lr.ph.i ] ; 3 uses
  %i.p = phi ptr [ %i.v, %bb.b ], [ %.sroa.011.0, %.lr.ph.i ]
  %.0.i8.i = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.i ]
  %i.q = mul i32 %.0.i8.i, 10
  %i.r = zext nneg i8 %i.n to i32
end_hunk_0
begin_hunk_1_@_ZN4llvh6Triple9setTripleERKNS_5TwineE:bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %.not21.i.i = icmp eq ptr %2, %0
  br i1 %.not21.i.i, label %_ZN4llvh6TripleaSEOS0_.exit, label %bb.c, !prof !197

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !46
  store i8 %i.j, ptr %i.a, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !12
  br label %_ZN4llvh6TripleaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !46
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !46
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !46
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !46
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.a, ptr %2, align 8, !tbaa !12
  store i64 %i.r, ptr %i.e, align 8, !tbaa !46
  br label %_ZN4llvh6TripleaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.e, ptr %2, align 8, !tbaa !12
  br label %_ZN4llvh6TripleaSEOS0_.exit

_ZN4llvh6TripleaSEOS0_.exit:                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.v = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !19
  store i8 0, ptr %i.v, align 1, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh6TripleaSEOS0_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #14
  br label %_ZN4llvh6TripleD2Ev.exit

_ZN4llvh6TripleD2Ev.exit:                         ; preds = %_ZN4llvh6TripleaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple7setArchENS0_8ArchTypeE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE, i64 %i.a
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple7setArchENS0_8ArchTypeE.11, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.load)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr readonly captures(none) %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 7 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvh::SmallString", align 8 ; 18 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 19 uses
  store i32 0, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  store i32 64, ptr %i.g, align 4, !tbaa !11
  %i.h = icmp ugt i64 %2, 64
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 1) #13
  %.pre7.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !10
  %i.i = zext i32 %.pre7.pre.i.i.i to i64
  %.pre = load ptr, ptr %7, align 8, !tbaa !7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.j = phi ptr [ %.pre, %.thread.i ], [ %i.e, %bb.b ]
  %.pre7.i.i4.i = phi i64 [ %i.i, %.thread.i ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre49.a = load i32, ptr %i.g, align 4, !tbaa !11
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ 64, %bb.b ], [ %.pre49.a, %bb.c ] ; 2 uses
  %i.m = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.n = trunc i64 %2 to i32
  %i.o = add i32 %i.m, %i.n                       ; 3 uses
  store i32 %i.o, ptr %i.f, align 8, !tbaa !10
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %.thread.i10, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12

.thread.i10:                                      ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 1
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 1) #13
  %.pre7.pre.i.i.i11 = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12: ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit, %.thread.i10
  %.pre7.i.i4.i8 = phi i32 [ %.pre7.pre.i.i.i11, %.thread.i10 ], [ %i.o, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit ]
  %i.s = load ptr, ptr %7, align 8, !tbaa !7
  %i.t = zext i32 %.pre7.i.i4.i8 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 45, ptr %i.u, align 1
  %.pre.i.i.i9 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.v = add i32 %.pre.i.i.i9, 1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.w, ptr %6, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  store i64 %i.z, ptr %i.x, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 45, ptr %i.d, align 1, !tbaa !46, !noalias !198
  %i.aa = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.d, i64 1, i64 noundef 0) #13, !noalias !201 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_ZNK4llvh6Triple13getVendorNameEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !22, !noalias !201 ; 2 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !17, !noalias !201
  %i.ae = add nuw i64 %i.aa, 1
  %i.af = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = sub i64 %i.ac, %i.af
  br label %_ZNK4llvh6Triple13getVendorNameEv.exit

_ZNK4llvh6Triple13getVendorNameEv.exit:           ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12, %bb.d
  %.sroa.56.0.i = phi ptr [ %i.ag, %bb.d ], [ null, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12 ]
  %.sroa.8.0.i = phi i64 [ %i.ah, %bb.d ], [ 0, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sroa.56.0.i, ptr %5, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !204
  %i.ai = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !207 ; 2 uses
  %9 = icmp eq i64 %i.ai, -1
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.aj = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.ai)
  %.sroa.5.0.i = select i1 %9, i64 %.sroa.5.0.copyload.i, i64 %i.aj ; 5 uses
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !11  ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = load i32, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = sub nsw i64 %i.al, %i.an
  %i.ap = icmp ugt i64 %.sroa.5.0.i, %i.ao
  br i1 %i.ap, label %.thread.i16, label %bb.e

.thread.i16:                                      ; preds = %_ZNK4llvh6Triple13getVendorNameEv.exit
  %i.aq = add i64 %.sroa.5.0.i, %i.an
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.aq, i64 noundef 1) #13
  %.pre7.pre.i.i.i17 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre51.a = zext i32 %.pre7.pre.i.i.i17 to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvh6Triple13getVendorNameEv.exit
  %.not.i.i.i.i13 = icmp samesign eq i64 %.sroa.5.0.i, 0
  br i1 %.not.i.i.i.i13, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i16
  %.pre-phi = phi i64 [ %i.an, %bb.e ], [ %.pre51.a, %.thread.i16 ]
  %i.ar = load ptr, ptr %7, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.sroa.0.0.i, i64 %.sroa.5.0.i, i1 false)
  %.pre.i.i.i15 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre50 = load i32, ptr %i.g, align 4, !tbaa !11
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18: ; preds = %bb.e, %bb.f
  %i.at = phi i32 [ %i.ak, %bb.e ], [ %.pre50, %bb.f ] ; 2 uses
  %i.au = phi i32 [ %i.am, %bb.e ], [ %.pre.i.i.i15, %bb.f ]
  %i.av = trunc i64 %.sroa.5.0.i to i32
  %i.aw = add i32 %i.au, %i.av                    ; 3 uses
  store i32 %i.aw, ptr %i.f, align 8, !tbaa !10
  %i.ax = icmp eq i32 %i.at, %i.aw
  br i1 %i.ax, label %.thread.i22, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24

.thread.i22:                                      ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18
  %i.ay = zext i32 %i.at to i64
  %i.az = add nuw nsw i64 %i.ay, 1
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.az, i64 noundef 1) #13
  %.pre7.pre.i.i.i23 = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24: ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18, %.thread.i22
  %.pre7.i.i4.i20 = phi i32 [ %.pre7.pre.i.i.i23, %.thread.i22 ], [ %i.aw, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit18 ]
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7
  %i.bb = zext i32 %.pre7.i.i4.i20 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  store i8 45, ptr %i.bc, align 1
  %.pre.i.i.i21 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.bd = add i32 %.pre.i.i.i21, 1
  store i32 %i.bd, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.be = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.be, ptr %4, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.y, align 8, !tbaa !19
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !210
  %i.bh = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !213 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_ZNK4llvh9StringRef5splitEc.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !22, !noalias !213 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !17, !noalias !213
  %i.bl = add nuw i64 %i.bh, 1
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bl) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm
  %i.bo = sub i64 %i.bj, %i.bm
  br label %_ZNK4llvh9StringRef5splitEc.exit.i

_ZNK4llvh9StringRef5splitEc.exit.i:               ; preds = %bb.g, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24
  %.sroa.57.0.i = phi ptr [ %i.bn, %bb.g ], [ null, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24 ]
  %.sroa.88.0.i = phi i64 [ %i.bo, %bb.g ], [ 0, %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.88.0.i, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !216
  %i.bp = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !219 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %.thread, label %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit

.thread:                                          ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.br = load i32, ptr %i.f, align 8, !tbaa !10
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit: ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  %i.bs = load i64, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22, !noalias !219 ; 3 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !17, !noalias !219
  %i.bu = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sub i64 %i.bs, %i.bv                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.by = load i32, ptr %i.g, align 4, !tbaa !11
  %i.bz = zext i32 %i.by to i64
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  %i.cb = zext i32 %i.ca to i64                   ; 3 uses
  %i.cc = sub nsw i64 %i.bz, %i.cb
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %.thread.i32, label %bb.h

.thread.i32:                                      ; preds = %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit
  %i.ce = add i64 %i.bx, %i.cb
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %i.ce, i64 noundef 1) #13
  %.pre7.pre.i.i.i33 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre52 = zext i32 %.pre7.pre.i.i.i33 to i64
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4llvh6Triple23getOSAndEnvironmentNameEv.exit
  %.not.i.i.i.i29.not = icmp ugt i64 %i.bs, %i.bu
  br i1 %.not.i.i.i.i29.not, label %bb.i, label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

bb.i:                                             ; preds = %bb.h, %.thread.i32
  %.pre-phi53 = phi i64 [ %i.cb, %bb.h ], [ %.pre52, %.thread.i32 ]
  %i.cf = load ptr, ptr %7, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre-phi53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  %.pre.i.i.i31 = load i32, ptr %i.f, align 8, !tbaa !10
  %i.ch = trunc i64 %i.bx to i32
  br label %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34

_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34: ; preds = %.thread, %bb.h, %bb.i
  %.sroa.8.0.i2643 = phi i32 [ 0, %bb.h ], [ %i.ch, %bb.i ], [ 0, %.thread ]
  %i.ci = phi i32 [ %i.ca, %bb.h ], [ %.pre.i.i.i31, %bb.i ], [ %i.br, %.thread ]
  %i.cj = add i32 %i.ci, %.sroa.8.0.i2643
  store i32 %i.cj, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 6, ptr %i.ck, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.cl, align 1, !tbaa !47
  store ptr %7, ptr %8, align 8, !tbaa !46
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.cm = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.e
  br i1 %i.cn, label %_ZN4llvh11SmallVectorIcLj64EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34
  call void @free(ptr noundef %i.cm) #13
  br label %_ZN4llvh11SmallVectorIcLj64EED2Ev.exit

_ZN4llvh11SmallVectorIcLj64EED2Ev.exit:           ; preds = %_ZN4llvh11SmallStringILj64EEpLENS_9StringRefE.exit34, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE, i64 %i.a
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9setVendorENS0_10VendorTypeE.12, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.load)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple13setVendorNameENS_9StringRefE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
_ZN4llvhplERKNS_5TwineES2_.exit7:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !222
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !225 ; 2 uses
  %13 = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.j = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %13, i64 %.sroa.5.0.copyload.i, i64 %i.j
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %11, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.5.0.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 5, ptr %i.l, align 8, !tbaa !42, !alias.scope !228
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.m, align 1, !tbaa !47, !alias.scope !228
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !228
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.n, align 8, !tbaa !46, !alias.scope !228
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !231
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !46, !alias.scope !231
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.p, align 8, !tbaa !42, !alias.scope !231
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.q, align 1, !tbaa !47, !alias.scope !231
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !236
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.r, align 8, !tbaa !46, !alias.scope !236
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.s, align 8, !tbaa !42, !alias.scope !236
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.t, align 1, !tbaa !47, !alias.scope !236
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.u, ptr %4, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.w, ptr %i.v, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !241
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !244 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_ZNK4llvh9StringRef5splitEc.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit7
  %i.z = load i64, ptr %i.v, align 8, !tbaa !22, !noalias !244 ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !17, !noalias !244
  %i.ab = add nuw i64 %i.x, 1
  %i.ac = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = sub i64 %i.z, %i.ac
  br label %_ZNK4llvh9StringRef5splitEc.exit.i

_ZNK4llvh9StringRef5splitEc.exit.i:               ; preds = %bb.a, %_ZN4llvhplERKNS_5TwineES2_.exit7
  %.sroa.57.0.i = phi ptr [ %i.ad, %bb.a ], [ null, %_ZN4llvhplERKNS_5TwineES2_.exit7 ]
  %.sroa.88.0.i = phi i64 [ %i.ae, %bb.a ], [ 0, %_ZN4llvhplERKNS_5TwineES2_.exit7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.57.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.88.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.88.0.i, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !247
  %i.af = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !250 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_ZN4llvhplERKNS_5TwineES2_.exit17, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i
  %i.ah = load i64, ptr %.sroa.88.16..sroa_idx.i, align 8, !tbaa !22, !noalias !250 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !17, !noalias !250
  %i.aj = add nuw i64 %i.af, 1
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %i.ah, %i.ak
  br label %_ZN4llvhplERKNS_5TwineES2_.exit17

_ZN4llvhplERKNS_5TwineES2_.exit17:                ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i, %bb.b
  %.sroa.5.0.i8 = phi ptr [ %i.al, %bb.b ], [ null, %_ZNK4llvh9StringRef5splitEc.exit.i ]
  %.sroa.8.0.i = phi i64 [ %i.am, %bb.b ], [ 0, %_ZNK4llvh9StringRef5splitEc.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.5.0.i8, ptr %12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.8.0.i, ptr %i.an, align 8
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !253
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %12, ptr %i.ao, align 8, !tbaa !46, !alias.scope !253
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.ap, align 8, !tbaa !42, !alias.scope !253
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.aq, align 1, !tbaa !47, !alias.scope !253
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE, i64 %i.a
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.b = zext nneg i32 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple5setOSENS0_6OSTypeE.13, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call void @_ZN4llvh6Triple9setOSNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load2, i64 %switch.load)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple9setOSNameENS_9StringRefE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %17 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %18 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %24 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %i.g, align 8
  %i.h = tail call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.j, ptr %8, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 45, ptr %i.f, align 1, !tbaa !46, !noalias !258
  %i.n = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %i.f, i64 1, i64 noundef 0) #13, !noalias !261 ; 2 uses
  %25 = icmp eq i64 %i.n, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !22 ; 2 uses
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.n)
  %.sroa.5.0.i = select i1 %25, i64 %.sroa.5.0.copyload.i, i64 %i.o
  %.sroa.0.0.i = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  store ptr %.sroa.0.0.i, ptr %16, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.5.0.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 5, ptr %i.q, align 8, !tbaa !42, !alias.scope !264
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 3, ptr %i.r, align 1, !tbaa !47, !alias.scope !264
  store ptr %16, ptr %15, align 8, !tbaa !46, !alias.scope !264
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.140, ptr %i.s, align 8, !tbaa !46, !alias.scope !264
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.t = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.t, ptr %7, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !19
  store i64 %i.v, ptr %i.u, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !46, !noalias !267
  %i.w = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull %i.e, i64 1, i64 noundef 0) #13, !noalias !270 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_ZN4llvhplERKNS_5TwineES2_.exit33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.u, align 8, !tbaa !22, !noalias !270 ; 2 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !17, !noalias !270
  %i.aa = add nuw i64 %i.w, 1
  %i.ab = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = sub i64 %i.y, %i.ab
  br label %_ZN4llvhplERKNS_5TwineES2_.exit33

_ZN4llvhplERKNS_5TwineES2_.exit33:                ; preds = %bb.b, %bb.c
  %.sroa.56.0.i = phi ptr [ %i.ac, %bb.c ], [ null, %bb.b ]
  %.sroa.8.0.i = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.56.0.i, ptr %6, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 45, ptr %i.d, align 1, !tbaa !46, !noalias !273
  %i.ae = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %i.d, i64 1, i64 noundef 0) #13, !noalias !276 ; 2 uses
  %26 = icmp eq i64 %i.ae, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.af = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.ae)
  %.sroa.5.0.i2 = select i1 %26, i64 %.sroa.5.0.copyload.i1, i64 %i.af
  %.sroa.0.0.i3 = load ptr, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  store ptr %.sroa.0.0.i3, ptr %17, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ag, align 8
  store ptr %15, ptr %14, align 8, !tbaa !46, !alias.scope !279
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %17, ptr %i.ah, align 8, !tbaa !46, !alias.scope !279
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 2, ptr %i.ai, align 8, !tbaa !42, !alias.scope !279
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 5, ptr %i.aj, align 1, !tbaa !47, !alias.scope !279
  store ptr %14, ptr %13, align 8, !tbaa !46, !alias.scope !284
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.140, ptr %i.ak, align 8, !tbaa !46, !alias.scope !284
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 2, ptr %i.al, align 8, !tbaa !42, !alias.scope !284
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 3, ptr %i.am, align 1, !tbaa !47, !alias.scope !284
  store ptr %13, ptr %12, align 8, !tbaa !46, !alias.scope !289
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %i.an, align 8, !tbaa !46, !alias.scope !289
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 2, ptr %i.ao, align 8, !tbaa !42, !alias.scope !289
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 5, ptr %i.ap, align 1, !tbaa !47, !alias.scope !289
  store ptr %12, ptr %11, align 8, !tbaa !46, !alias.scope !294
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.140, ptr %i.aq, align 8, !tbaa !46, !alias.scope !294
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.ar, align 8, !tbaa !42, !alias.scope !294
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 3, ptr %i.as, align 1, !tbaa !47, !alias.scope !294
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.at = call { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  store ptr %i.au, ptr %18, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aw = extractvalue { ptr, i64 } %i.at, 1
  store i64 %i.aw, ptr %i.av, align 8
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !299
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %18, ptr %i.ax, align 8, !tbaa !46, !alias.scope !299
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.ay, align 8, !tbaa !42, !alias.scope !299
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 5, ptr %i.az, align 1, !tbaa !47, !alias.scope !299
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ba = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.ba, ptr %5, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !19
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !304
  %i.be = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !307 ; 2 uses
  %27 = icmp eq i64 %i.be, -1
  %.sroa.5.0.copyload.i34 = load i64, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %i.bf = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i34, i64 %i.be)
  %.sroa.5.0.i35 = select i1 %27, i64 %.sroa.5.0.copyload.i34, i64 %i.bf
  %.sroa.0.0.i36 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i36, ptr %23, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.5.0.i35, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i8 5, ptr %i.bh, align 8, !tbaa !42, !alias.scope !310
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 3, ptr %i.bi, align 1, !tbaa !47, !alias.scope !310
  store ptr %23, ptr %22, align 8, !tbaa !46, !alias.scope !310
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @.str.140, ptr %i.bj, align 8, !tbaa !46, !alias.scope !310
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bk = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.bk, ptr %4, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bc, align 8, !tbaa !19
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !313
  %i.bn = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !316 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %_ZN4llvhplERKNS_5TwineES2_.exit68, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !22, !noalias !316 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !17, !noalias !316
  %i.br = add nuw i64 %i.bn, 1
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs
  %i.bu = sub i64 %i.bp, %i.bs
  br label %_ZN4llvhplERKNS_5TwineES2_.exit68

_ZN4llvhplERKNS_5TwineES2_.exit68:                ; preds = %bb.d, %bb.e
  %.sroa.56.0.i39 = phi ptr [ %i.bt, %bb.e ], [ null, %bb.d ]
  %.sroa.8.0.i40 = phi i64 [ %i.bu, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i39, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i40, ptr %.sroa.8.16..sroa_idx.i41, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !319
  %i.bv = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !322 ; 2 uses
  %28 = icmp eq i64 %i.bv, -1
  %.sroa.5.0.copyload.i42 = load i64, ptr %.sroa.8.16..sroa_idx.i41, align 8, !tbaa !22 ; 2 uses
  %i.bw = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i42, i64 %i.bv)
  %.sroa.5.0.i43 = select i1 %28, i64 %.sroa.5.0.copyload.i42, i64 %i.bw
  %.sroa.0.0.i44 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i44, ptr %24, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %.sroa.5.0.i43, ptr %i.bx, align 8
  store ptr %22, ptr %21, align 8, !tbaa !46, !alias.scope !325
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %24, ptr %i.by, align 8, !tbaa !46, !alias.scope !325
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i8 2, ptr %i.bz, align 8, !tbaa !42, !alias.scope !325
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 5, ptr %i.ca, align 1, !tbaa !47, !alias.scope !325
  store ptr %21, ptr %20, align 8, !tbaa !46, !alias.scope !330
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.140, ptr %i.cb, align 8, !tbaa !46, !alias.scope !330
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 2, ptr %i.cc, align 8, !tbaa !42, !alias.scope !330
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 3, ptr %i.cd, align 1, !tbaa !47, !alias.scope !330
  store ptr %20, ptr %19, align 8, !tbaa !46, !alias.scope !335
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %9, ptr %i.ce, align 8, !tbaa !46, !alias.scope !335
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 2, ptr %i.cf, align 8, !tbaa !42, !alias.scope !335
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 5, ptr %i.cg, align 1, !tbaa !47, !alias.scope !335
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit68, %_ZN4llvhplERKNS_5TwineES2_.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i32, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val2 = load i32, ptr %i.d, align 4
  %i.e = tail call fastcc noundef i32 @_ZL16getDefaultFormatRKN4llvh6TripleE(i32 %.val, i32 %.val2)
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %switch.lookup, label %switch.lookup23

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.15, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.h = zext nneg i32 %1 to i64
  %switch.gep21 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.h
  %switch.load22 = load ptr, ptr %switch.gep21, align 8
  tail call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load22, i64 %switch.load)
  br label %bb.b

switch.lookup23:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.i = zext nneg i32 %1 to i64
  %switch.gep24 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.15, i64 %i.i
  %switch.load25 = load i64, ptr %switch.gep24, align 8
  %i.j = zext nneg i32 %1 to i64
  %switch.gep26 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple14setEnvironmentENS0_15EnvironmentTypeE.16, i64 %i.j
  %switch.load27 = load ptr, ptr %switch.gep26, align 8
  store ptr %switch.load27, ptr %5, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %switch.load25, ptr %i.k, align 8
  store ptr %5, ptr %4, align 8, !tbaa !46, !alias.scope !340
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.140, ptr %i.l, align 8, !tbaa !46, !alias.scope !340
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 5, ptr %i.m, align 8, !tbaa !42, !alias.scope !340
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 3, ptr %i.n, align 1, !tbaa !47, !alias.scope !340
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.o = zext nneg i32 %i.b to i64
  %switch.gep29 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.22, i64 %i.o
  %switch.load30 = load i64, ptr %switch.gep29, align 8
  %i.p = zext nneg i32 %i.b to i64
  %switch.gep31 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.p
  %switch.load32 = load ptr, ptr %switch.gep31, align 8
  store ptr %switch.load32, ptr %6, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %switch.load30, ptr %i.q, align 8
  store ptr %4, ptr %3, align 8, !tbaa !46, !alias.scope !345
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.r, align 8, !tbaa !46, !alias.scope !345
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.s, align 8, !tbaa !42, !alias.scope !345
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 5, ptr %i.t, align 1, !tbaa !47, !alias.scope !345
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.u = load ptr, ptr %2, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.u, i64 %i.w)
  %i.x = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %switch.lookup23
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %switch.lookup23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !350
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !353 ; 2 uses
  %16 = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.j = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %16, i64 %.sroa.5.0.copyload.i, i64 %i.j
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %13, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.5.0.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 5, ptr %i.l, align 8, !tbaa !42, !alias.scope !356
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 3, ptr %i.m, align 1, !tbaa !47, !alias.scope !356
  store ptr %13, ptr %12, align 8, !tbaa !46, !alias.scope !356
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.140, ptr %i.n, align 8, !tbaa !46, !alias.scope !356
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.o = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.o, ptr %4, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.q, ptr %i.p, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !359
  %i.r = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !362 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_ZN4llvhplERKNS_5TwineES2_.exit33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !362 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !17, !noalias !362
  %i.v = add nuw i64 %i.r, 1
  %i.w = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = sub i64 %i.t, %i.w
  br label %_ZN4llvhplERKNS_5TwineES2_.exit33

_ZN4llvhplERKNS_5TwineES2_.exit33:                ; preds = %bb.a, %bb.b
  %.sroa.56.0.i = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.y, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !365
  %i.z = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !368 ; 2 uses
  %17 = icmp eq i64 %i.z, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.aa = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.z)
  %.sroa.5.0.i2 = select i1 %17, i64 %.sroa.5.0.copyload.i1, i64 %i.aa
  %.sroa.0.0.i3 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i3, ptr %14, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ab, align 8
  store ptr %12, ptr %11, align 8, !tbaa !46, !alias.scope !371
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %14, ptr %i.ac, align 8, !tbaa !46, !alias.scope !371
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 2, ptr %i.ad, align 8, !tbaa !42, !alias.scope !371
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 5, ptr %i.ae, align 1, !tbaa !47, !alias.scope !371
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !376
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.af, align 8, !tbaa !46, !alias.scope !376
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 2, ptr %i.ag, align 8, !tbaa !42, !alias.scope !376
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.ah, align 1, !tbaa !47, !alias.scope !376
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ai = call { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  store ptr %i.aj, ptr %15, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = extractvalue { ptr, i64 } %i.ai, 1
  store i64 %i.al, ptr %i.ak, align 8
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !381
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %15, ptr %i.am, align 8, !tbaa !46, !alias.scope !381
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.an, align 8, !tbaa !42, !alias.scope !381
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.ao, align 1, !tbaa !47, !alias.scope !381
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !386
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.ap, align 8, !tbaa !46, !alias.scope !386
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.aq, align 8, !tbaa !42, !alias.scope !386
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.ar, align 1, !tbaa !47, !alias.scope !386
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !391
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.as, align 8, !tbaa !46, !alias.scope !391
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.at, align 8, !tbaa !42, !alias.scope !391
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.au, align 1, !tbaa !47, !alias.scope !391
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %switch.lookup, label %switch.lookup22

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.22, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = zext nneg i32 %1 to i64
  %switch.gep20 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.e
  %switch.load21 = load ptr, ptr %switch.gep20, align 8
  tail call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull %switch.load21, i64 %switch.load)
  br label %bb.b

switch.lookup22:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %switch.tableidx = add nsw i32 %i.b, -1         ; 2 uses
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep23 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.20, i64 %i.f
  %switch.load24 = load i64, ptr %switch.gep23, align 8
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep25 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.21, i64 %i.g
  %switch.load26 = load ptr, ptr %switch.gep25, align 8
  store ptr %switch.load26, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %switch.load24, ptr %i.h, align 8
  store ptr %5, ptr %4, align 8, !tbaa !46, !alias.scope !396
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.140, ptr %i.i, align 8, !tbaa !46, !alias.scope !396
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 5, ptr %i.j, align 8, !tbaa !42, !alias.scope !396
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 3, ptr %i.k, align 1, !tbaa !47, !alias.scope !396
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.l = zext nneg i32 %1 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.22, i64 %i.l
  %switch.load29 = load i64, ptr %switch.gep28, align 8
  %i.m = zext nneg i32 %1 to i64
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple15setObjectFormatENS0_16ObjectFormatTypeE.23, i64 %i.m
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  store ptr %switch.load31, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %switch.load29, ptr %i.n, align 8
  store ptr %4, ptr %3, align 8, !tbaa !46, !alias.scope !401
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !46, !alias.scope !401
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.p, align 8, !tbaa !42, !alias.scope !401
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 5, ptr %i.q, align 1, !tbaa !47, !alias.scope !401
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18) %3) #13
  %i.r = load ptr, ptr %2, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  call void @_ZN4llvh6Triple18setEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.r, i64 %i.t)
  %i.u = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %switch.lookup22
  %i.x = load i64, ptr %i.v, align 8, !tbaa !46
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %switch.lookup22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6Triple23setOSAndEnvironmentNameENS_9StringRefE(ptr noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.e, ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 45, ptr %i.c, align 1, !tbaa !46, !noalias !406
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.c, i64 1, i64 noundef 0) #13, !noalias !409 ; 2 uses
  %13 = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.j = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.i)
  %.sroa.5.0.i = select i1 %13, i64 %.sroa.5.0.copyload.i, i64 %i.j
  %.sroa.0.0.i = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  store ptr %.sroa.0.0.i, ptr %11, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.5.0.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 5, ptr %i.l, align 8, !tbaa !42, !alias.scope !412
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 3, ptr %i.m, align 1, !tbaa !47, !alias.scope !412
  store ptr %11, ptr %10, align 8, !tbaa !46, !alias.scope !412
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.140, ptr %i.n, align 8, !tbaa !46, !alias.scope !412
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.o = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.o, ptr %4, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.q, ptr %i.p, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !46, !noalias !415
  %i.r = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.b, i64 1, i64 noundef 0) #13, !noalias !418 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_ZN4llvhplERKNS_5TwineES2_.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !418 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !17, !noalias !418
  %i.v = add nuw i64 %i.r, 1
  %i.w = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = sub i64 %i.t, %i.w
  br label %_ZN4llvhplERKNS_5TwineES2_.exit19

_ZN4llvhplERKNS_5TwineES2_.exit19:                ; preds = %bb.a, %bb.b
  %.sroa.56.0.i = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.y, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %.sroa.56.0.i, ptr %3, align 8, !tbaa !21
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.sroa.8.0.i, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !421
  %i.z = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !424 ; 2 uses
  %14 = icmp eq i64 %i.z, -1
  %.sroa.5.0.copyload.i1 = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !tbaa !22 ; 2 uses
  %i.aa = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i1, i64 %i.z)
  %.sroa.5.0.i2 = select i1 %14, i64 %.sroa.5.0.copyload.i1, i64 %i.aa
  %.sroa.0.0.i3 = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr %.sroa.0.0.i3, ptr %12, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.5.0.i2, ptr %i.ab, align 8
  store ptr %10, ptr %9, align 8, !tbaa !46, !alias.scope !427
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %12, ptr %i.ac, align 8, !tbaa !46, !alias.scope !427
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 2, ptr %i.ad, align 8, !tbaa !42, !alias.scope !427
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.ae, align 1, !tbaa !47, !alias.scope !427
  store ptr %9, ptr %8, align 8, !tbaa !46, !alias.scope !432
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.140, ptr %i.af, align 8, !tbaa !46, !alias.scope !432
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.ag, align 8, !tbaa !42, !alias.scope !432
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.ah, align 1, !tbaa !47, !alias.scope !432
  store ptr %8, ptr %7, align 8, !tbaa !46, !alias.scope !437
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.ai, align 8, !tbaa !46, !alias.scope !437
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.aj, align 8, !tbaa !42, !alias.scope !437
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 5, ptr %i.ak, align 1, !tbaa !47, !alias.scope !437
  call void @_ZN4llvh6Triple9setTripleERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch64BitEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 -832703874846312, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch32BitEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 832703874829862, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple11isArch16BitEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 16448, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  ret i1 %switch.masked
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple19get32BitArchVariantEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::Triple") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !126
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.e, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !12
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.h, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4llvh6TripleC2ERKS0_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %_ZN4llvh6TripleC2ERKS0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN4llvh6TripleC2ERKS0_.exit

_ZN4llvh6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  switch i32 %i.q, label %bb.u [
    i32 0, label %bb.e
    i32 20, label %bb.e
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 14, label %bb.e
    i32 26, label %bb.e
    i32 18, label %bb.e
    i32 50, label %bb.t
    i32 48, label %bb.s
    i32 43, label %bb.r
    i32 41, label %bb.q
    i32 39, label %bb.p
    i32 32, label %bb.o
    i32 22, label %bb.n
    i32 24, label %bb.m
    i32 17, label %bb.l
    i32 35, label %bb.k
    i32 13, label %bb.j
    i32 12, label %bb.i
    i32 37, label %bb.h
    i32 4, label %bb.g
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str, i64 7)
  br label %bb.u

bb.f:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.3, i64 3)
  br label %bb.u

bb.g:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.4, i64 5)
  br label %bb.u

bb.h:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.36, i64 4)
  br label %bb.u

bb.i:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.10, i64 4)
  br label %bb.u

bb.j:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.11, i64 6)
  br label %bb.u

bb.k:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.34, i64 5)
  br label %bb.u

bb.l:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.18, i64 7)
  br label %bb.u

bb.m:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.23, i64 5)
  br label %bb.u

bb.n:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.21, i64 7)
  br label %bb.u

bb.o:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.31, i64 4)
  br label %bb.u

bb.p:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.38, i64 5)
  br label %bb.u

bb.q:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.40, i64 5)
  br label %bb.u

bb.r:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.42, i64 4)
  br label %bb.u

bb.s:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.47, i64 6)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
end_hunk_1
begin_hunk_2_@_ZNK4llvh6Triple16isCompatibleWithERKS0_:bb.a
  %i.br = icmp eq i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp eq i32 %i.av, %i.bt
  %or.cond31 = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond31, label %bb.r, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.s, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !34
  %i.ce = icmp eq i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.t, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br label %_ZNK4llvh6TripleeqERKS0_.exit

_ZNK4llvh6TripleeqERKS0_.exit:                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.m, %bb.n, %bb.o, %bb.i, %bb.j, %bb.k, %bb.l, %bb.g, %bb.h
  %.0 = phi i1 [ %i.bm, %bb.o ], [ %i.ad, %bb.h ], [ %i.at, %bb.l ], [ %i.cj, %bb.t ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.i ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.s ], [ false, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple5mergeB5cxx11ERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 8 uses
  %i.d = alloca [3 x i32], align 4                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.j = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.k = load i32, ptr %i.h, align 4, !tbaa !3    ; 3 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.o = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult i32 %i.o, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br i1 %i.p, label %bb.f, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %.not12.i.i = icmp eq i32 %i.q, %i.k
  br i1 %.not12.i.i, label %bb.e, label %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.n, align 4, !tbaa !3
  %.not13.i.i = icmp ne i32 %i.r, %i.l
  %i.s = icmp ult i32 %i.k, %i.l
  %spec.select.i.i = and i1 %i.s, %.not13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br i1 %spec.select.i.i, label %bb.f, label %bb.j

_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit:       ; preds = %bb.d
  %i.t = icmp ult i32 %i.q, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !126
  %i.v = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.x, ptr %i.b, align 8, !tbaa !22
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !12
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  switch i64 %i.x, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !46
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !19
  %i.af = load ptr, ptr %0, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.j:                                             ; preds = %bb.e, %bb.c, %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !126
  %i.ai = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !22
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %bb.k, label %._crit_edge.i.i3

bb.k:                                             ; preds = %bb.j
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !12
  %i.an = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !46
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.k, %bb.j
  %i.ao = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  switch i64 %i.ak, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  ]

bb.l:                                             ; preds = %._crit_edge.i.i3
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !46
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

bb.m:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4: ; preds = %._crit_edge.i.i3, %bb.l, %bb.m
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = load ptr, ptr %0, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.c, ptr %3, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !46, !noalias !442
  %i.g = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !445 ; 2 uses
  %4 = icmp eq i64 %i.g, -1
  %.sroa.5.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.h = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload.i, i64 %i.g)
  %.sroa.5.0.i = select i1 %4, i64 %.sroa.5.0.copyload.i, i64 %i.h
  %.sroa.0.0.i = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.022.0 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %1, %bb.a ]
  %.sroa.7.0 = phi i64 [ %.sroa.5.0.i, %bb.b ], [ %2, %bb.a ]
  %i.i = call { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr %.sroa.022.0, i64 %.sroa.7.0) #13 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  switch i32 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread [
    i32 5, label %bb.d
    i32 12, label %bb.d
    i32 15, label %.thread35
    i32 11, label %bb.e
    i32 7, label %bb.e
    i32 28, label %bb.e
    i32 27, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  switch i64 %i.k, label %.thread [
    i64 0, label %.thread35
    i64 2, label %_ZNK4llvh9StringRef6equalsES0_.exit
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %i.n = load i16, ptr %i.j, align 1
  %i.o = icmp ne i16 %i.n, 13942
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread35, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i64 %i.k, label %.thread [
    i64 3, label %_ZNK4llvh9StringRef6equalsES0_.exit10
    i64 0, label %.thread35
  ]

_ZNK4llvh9StringRef6equalsES0_.exit10:            ; preds = %bb.e
  %i.r = load i16, ptr %i.j, align 1
  %i.s = xor i16 %i.r, 14198
  %i.t = getelementptr i8, ptr %i.j, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = xor i16 %i.v, 107
  %i.x = or i16 %i.s, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread35, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit10.thread:     ; preds = %bb.c
  %i.ab = icmp eq i64 %i.k, 0
  br i1 %i.ab, label %.thread35, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.e, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %i.ac = call { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr %i.j, i64 %i.k) #13 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 4 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  switch i64 %i.ae, label %.thread35 [
    i64 0, label %bb.f
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit11
  ]

_ZNK4llvh9StringRef6equalsES0_.exit11:            ; preds = %.thread
  %i.af = load i32, ptr %i.ad, align 1
  %i.ag = xor i32 %i.af, 1635151465
  %i.ah = getelementptr i8, ptr %i.ad, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1684630625
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread35

bb.f:                                             ; preds = %.thread, %_ZNK4llvh9StringRef6equalsES0_.exit11
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !33
  switch i32 %i.ao, label %bb.h [
    i32 12, label %bb.g
    i32 19, label %.thread35
    i32 13, label %.thread35
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !34
  %switch.tableidx = add i32 %i.aq, -4            ; 3 uses
  %i.ar = icmp ult i32 %switch.tableidx, 6
  br i1 %i.ar, label %switch.lookup, label %.thread35

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !34
  switch i32 %i.at, label %bb.i [
    i32 9, label %.thread35
    i32 5, label %.thread35
    i32 13, label %.thread35
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread35

switch.lookup:                                    ; preds = %bb.g
  %i.au = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE, i64 %i.au
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.av = zext nneg i32 %switch.tableidx to i64
  %switch.gep38 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvh6Triple16getARMCPUForArchENS_9StringRefE.24, i64 %i.av
  %switch.load39 = load ptr, ptr %switch.gep38, align 8
  br label %.thread35

.thread35:                                        ; preds = %bb.g, %switch.lookup, %bb.h, %bb.h, %bb.h, %bb.f, %bb.f, %.thread, %bb.e, %_ZNK4llvh9StringRef6equalsES0_.exit10, %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.d, %bb.i, %_ZNK4llvh9StringRef6equalsES0_.exit11, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread
  %.sroa.12.1 = phi i64 [ 9, %bb.c ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.ae, %.thread ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ 8, %bb.i ], [ 9, %bb.f ], [ 9, %bb.f ], [ %i.k, %bb.e ], [ %switch.load, %switch.lookup ], [ %i.k, %bb.d ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ 12, %bb.h ], [ 12, %bb.h ], [ 12, %bb.h ], [ 9, %bb.g ]
  %.sroa.029.1 = phi ptr [ @.str.143, %bb.c ], [ null, %_ZNK4llvh9StringRef6equalsES0_.exit10.thread ], [ %i.ad, %.thread ], [ @.str.142, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.ad, %_ZNK4llvh9StringRef6equalsES0_.exit11 ], [ @.str.150, %bb.i ], [ @.str.149, %bb.f ], [ @.str.149, %bb.f ], [ null, %bb.e ], [ %switch.load39, %switch.lookup ], [ null, %bb.d ], [ @.str.145, %_ZNK4llvh9StringRef6equalsES0_.exit10 ], [ @.str.142, %bb.h ], [ @.str.142, %bb.h ], [ @.str.142, %bb.h ], [ @.str.148, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.029.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.12.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN4llvh3ARM20getCanonicalArchNameENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZN4llvh3ARM13getDefaultCPUENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM12parseArchISAENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM15parseArchEndianENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchProfileENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM16parseArchVersionENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN4llvh3ARM9parseArchENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
end_hunk_2
