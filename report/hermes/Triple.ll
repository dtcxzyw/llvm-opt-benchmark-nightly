inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE:bb.a
  switch i32 %.6145, label %default.unreachable [
    i32 4, label %bb.ax
    i32 3, label %bb.aw
    i32 2, label %.sink.split
  ]

bb.aw:                                            ; preds = %bb.av
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  br label %.sink.split

default.unreachable:                              ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %.thread370
  %i.it = trunc nuw i8 %.6 to i1
  br i1 %i.it, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.iu = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.iv = icmp ugt i32 %i.iu, 4
  br i1 %i.iv, label %.sink.split.i206, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not390 = icmp eq i32 %i.iu, 4
  br i1 %.not390, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = load i32, ptr %i.e, align 4, !tbaa !11
  %i.ix = icmp ult i32 %i.iw, 4
  br i1 %i.ix, label %bb.bc, label %.lr.ph.preheader.i202

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 16) #13
  %.pre.i207 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i201 = icmp eq i32 %.pre.i207, 4
  br i1 %.not13.i201, label %.sink.split.i206, label %.lr.ph.preheader.i202

.lr.ph.preheader.i202:                            ; preds = %bb.bb, %bb.bc
  %.pre-phi.i200.in556 = phi i32 [ %.pre.i207, %bb.bc ], [ %i.iu, %bb.bb ]
  %i.iy = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i200 = zext i32 %.pre-phi.i200.in556 to i64
  %.idx391 = shl nuw nsw i64 %.pre-phi.i200, 4    ; 2 uses
  %scevgep500 = getelementptr i8, ptr %i.iy, i64 %.idx391
  %i.iz = sub nsw i64 64, %.idx391
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep500, i8 0, i64 %i.iz, i1 false)
  br label %.sink.split.i206

.sink.split.i206:                                 ; preds = %.lr.ph.preheader.i202, %bb.bc, %bb.az
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209: ; preds = %bb.ba, %.sink.split.i206
  %i.ja = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store ptr @.str.88, ptr %i.jb, align 8, !tbaa !21
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store i64 7, ptr %.sroa.4245.0..sroa_idx, align 8, !tbaa !22
  br label %.sink.split

bb.bd:                                            ; preds = %bb.ay
  %i.jc = trunc nuw i8 %.6115 to i1
  %.pre506.pre = load i32, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  br i1 %i.jc, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.jd = icmp ugt i32 %.pre506.pre, 4
  br i1 %i.jd, label %.sink.split.i216, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not388 = icmp eq i32 %.pre506.pre, 4
  br i1 %.not388, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.je = load i32, ptr %i.e, align 4, !tbaa !11
  %i.jf = icmp ult i32 %i.je, 4
  br i1 %i.jf, label %bb.bh, label %.lr.ph.preheader.i212

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 16) #13
  %.pre.i217 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i211 = icmp eq i32 %.pre.i217, 4
  br i1 %.not13.i211, label %.sink.split.i216, label %.lr.ph.preheader.i212

.lr.ph.preheader.i212:                            ; preds = %bb.bg, %bb.bh
  %.pre-phi.i210.in560 = phi i32 [ %.pre.i217, %bb.bh ], [ %.pre506.pre, %bb.bg ]
  %i.jg = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i210 = zext i32 %.pre-phi.i210.in560 to i64
  %.idx = shl nuw nsw i64 %.pre-phi.i210, 4       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jg, i64 %.idx
  %i.jh = sub nsw i64 64, %.idx
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.jh, i1 false)
  br label %.sink.split.i216

.sink.split.i216:                                 ; preds = %.lr.ph.preheader.i212, %bb.bh, %bb.be
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219: ; preds = %bb.bf, %.sink.split.i216
  %i.ji = load ptr, ptr %4, align 8, !tbaa !7     ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store ptr @.str.88, ptr %i.jj, align 8, !tbaa !21
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  store i64 7, ptr %.sroa.4241.0..sroa_idx, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.aw, %bb.av, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209
  %.sink585 = phi ptr [ %i.ja, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ %i.ji, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ %i.ip, %bb.av ], [ %i.ip, %bb.aw ], [ %i.ip, %bb.ax ] ; 2 uses
  %.str.106.sink = phi ptr [ @.str.106, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ @.str.121, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ @.str.187, %bb.av ], [ @.str.188, %bb.aw ], [ @.str.56, %bb.ax ]
  %.sink = phi i64 [ 3, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit209 ], [ 6, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit219 ], [ 3, %bb.av ], [ 5, %bb.aw ], [ 4, %bb.ax ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink585, i64 48
  store ptr %.str.106.sink, ptr %i.jk, align 8, !tbaa !21
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink585, i64 56
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
  %.pre-phi.i220.in564 = phi i32 [ %.pre.i227, %bb.bm ], [ %.pre506, %bb.bl ]
  %i.jr = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i220 = zext i32 %.pre-phi.i220.in564 to i64
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
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE, i64 %i.jt
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ju = zext nneg i32 %switch.tableidx to i64
  %switch.gep604 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE.9, i64 %i.ju
  %switch.load605 = load ptr, ptr %switch.gep604, align 8
  %i.jv = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store ptr %switch.load605, ptr %i.jw, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store i64 %switch.ext, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  br label %.thread565

.thread565:                                       ; preds = %.thread372, %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit229
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

bb.bo:                                            ; preds = %.thread565, %bb.bn
  %i.kb = phi ptr [ %i.jy, %.thread565 ], [ %i.ka, %bb.bn ] ; 3 uses
  %i.kc = phi ptr [ %i.jx, %.thread565 ], [ %i.jz, %bb.bn ] ; 2 uses
  %i.kd = phi i32 [ %.ph, %.thread565 ], [ %.pre506, %bb.bn ] ; 2 uses
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
  %.0117476 = phi i32 [ %10, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ], [ 1, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel ] ; 2 uses
  %i.kg = load i64, ptr %i.kb, align 8, !tbaa !19 ; 4 uses
  %i.kh = add i64 %i.kg, 1                        ; 3 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.kc
  br i1 %i.kj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.lr.ph478.peel.next
  %i.kk = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph478.peel.next
  %i.kl = load i64, ptr %i.kc, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.km = phi i64 [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.kn = icmp ugt i64 %i.kh, %i.km
  br i1 %i.kn, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kg, i64 noundef 0, ptr noundef null, i64 noundef 1) #13
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ko = phi ptr [ %.pre.i.i, %bb.bp ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  store i8 45, ptr %i.kp, align 1, !tbaa !46
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !19
  %i.kq = load ptr, ptr %0, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kh
  store i8 0, ptr %i.kr, align 1, !tbaa !46
  %9 = zext i32 %.0117476 to i64
  %i.ks = load ptr, ptr %4, align 8, !tbaa !7
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %9 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.ku = load i64, ptr %i.kb, align 8, !tbaa !19
  %i.kv = sub i64 4611686018427387903, %i.ku
  %i.kw = icmp ult i64 %i.kv, %.sroa.2.0.copyload
  br i1 %i.kw, label %.loopexit504, label %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

.loopexit504:                                     ; preds = %bb.bq, %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #15
  unreachable

_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %bb.bq
  %.sroa.0.0.copyload = load ptr, ptr %i.kt, align 8, !tbaa !21
  %i.kx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #13 ; 0 uses
  %10 = add nuw i32 %.0117476, 1                  ; 2 uses
  %.not171 = icmp eq i32 %10, %i.kd
  br i1 %.not171, label %._crit_edge479, label %.lr.ph478.peel.next, !llvm.loop !128

._crit_edge479:                                   ; preds = %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvhpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit.peel, %bb.bn
  %i.ky = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.fv
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %._crit_edge479
  %i.la = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %._crit_edge479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.lc = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.c
  br i1 %i.ld, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  call void @free(ptr noundef %i.lc) #13
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple11getArchNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
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
  %i.f = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !133
  %.sroa.5.0.copyload = load i64, ptr %i.c, align 8, !tbaa !22
  %i.g = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.f)
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.g, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple13getVendorNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
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
  %i.o = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !145
  %.sroa.5.0.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !tbaa !22
  %i.p = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.o)
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.p, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple9getOSNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
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
  %i.x = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.a, i64 1, i64 noundef 0) #13, !noalias !163
  %.sroa.5.0.copyload = load i64, ptr %.sroa.813.16..sroa_idx, align 8, !tbaa !22
  %i.y = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.x)
  %.sroa.0.0 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.y, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh6Triple18getEnvironmentNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
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

end_hunk_0
