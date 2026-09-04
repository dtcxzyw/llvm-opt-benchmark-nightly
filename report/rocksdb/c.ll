Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/c?download=true
inline.NumInlined: 7382
inline.NumDeleted: 2993
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@rocksdb_multi_get:bb.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #49 ; 15 uses
  %i.e = icmp eq i64 %2, 0                        ; 3 uses
  br i1 %i.e, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %2
  %i.g = add i64 %2, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check106 = icmp samesign ult i64 %i.h, 15
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2305843009213693936      ; 4 uses
  %i.k = shl i64 %n.vec, 4
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep107 = getelementptr i8, ptr %i.n, i64 64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep108 = getelementptr i8, ptr %i.o, i64 128
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep109 = getelementptr i8, ptr %i.p, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep107, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep108, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep109, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !411

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %i.r = shl i64 %n.vec110, 4
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %i.t = shl i64 %index111, 4
  %next.gep112 = getelementptr i8, ptr %i.d, i64 %i.t
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep112, align 8, !tbaa !102
  %index.next113 = add nuw i64 %index111, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1486

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.i, %n.vec110
  br i1 %cmp.n114, label %.lr.ph.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.v = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %.lr.ph.preheader, label %vec.epilog.scalar.ph, !llvm.loop !1487

.lr.ph.preheader:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check116 = icmp ult i64 %2, 8
  br i1 %min.iters.check116, label %.lr.ph.preheader130, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.preheader
  %n.vec118 = and i64 %2, -8                      ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body119 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.load = load <4 x ptr>, ptr %i.z, align 8, !tbaa !99
  %wide.load121 = load <4 x ptr>, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %wide.load122 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !87
  %wide.load123 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index120
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = ptrtoint <4 x ptr> %wide.load to <4 x i64>
  %interleaved.vec = shufflevector <4 x i64> %i.ag, <4 x i64> %wide.load122, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.ad, align 8, !tbaa !102
  %i.ah = ptrtoint <4 x ptr> %wide.load121 to <4 x i64>
  %interleaved.vec124 = shufflevector <4 x i64> %i.ah, <4 x i64> %wide.load123, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec124, ptr %i.af, align 8, !tbaa !102
  %index.next125 = add nuw i64 %index120, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.ai, label %middle.block126, label %vector.body119, !llvm.loop !1488

middle.block126:                                  ; preds = %vector.body119
  %cmp.n127 = icmp eq i64 %2, %n.vec118
  br i1 %cmp.n127, label %._crit_edge, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block126
  %.03983.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec118, %middle.block126 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block126, %bb.a
  %i.aj = load ptr, ptr %0, align 8, !tbaa !278   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.b unwind label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %.03983 = phi i64 [ %i.at, %.lr.ph ], [ %.03983.ph, %.lr.ph.preheader130 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03983
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03983
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.03983 ; 2 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.at = add nuw i64 %.03983, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1489

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  %i.au = icmp ugt i64 %2, 96076792050570581
  br i1 %i.au, label %bb.c, label %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  br i1 %i.e, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ax = mul nuw nsw i64 %2, 96
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #49
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.m ; 6 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !414
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %2
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !415
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.d
  %.014.i.i.i.i = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.bj, %bb.d ], [ %2, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str.1, ptr %.014.i.i.i.i, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.bg, align 8, !tbaa !86
  store i8 0, ptr %i.bf, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.bh, align 8, !tbaa !407
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !408
  %i.bj = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i70 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i70, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = tail call ptr @__cxa_begin_catch(ptr %i.bm) #47 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.ay, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #50
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body71 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #51
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.body71:                                          ; preds = %bb.g
  %.idx = mul nuw nsw i64 %2, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx) #48
  br label %.body

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #49
          to label %.noexc57 unwind label %bb.n   ; 5 uses

.noexc57:                                         ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.br, ptr %9, align 8, !tbaa !418
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !419
  %i.bu = add nsw i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc57, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.prol ], [ %i.br, %.noexc57 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.prol ], [ %2, %.noexc57 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc57 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.bw = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1490

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc57
  %.lcssa.unr = phi ptr [ poison, %.noexc57 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.br, %.noexc57 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %2, %.noexc57 ], [ %i.bw, %.lr.ph.i.i.i.i.i.prol ]
  %i.by = icmp ult i64 %i.bu, 7
  br i1 %i.by, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.cb, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 6, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.cd, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 6, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.cf, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 6, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.ch, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 6, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.cj, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 6, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.cl, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 6, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.cn, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 6, i1 false)
  %i.co = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cp, %.lr.ph.i.i.i.i.i ]
  %i.cq = ptrtoint ptr %i.bs to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.cr = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.cq, %.loopexit.loopexit ]
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.br, %.loopexit.loopexit ] ; 7 uses
  %.pr.i64 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.ay, %.loopexit.loopexit ] ; 7 uses
  %i.cs = phi ptr [ %i.aw, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.bb, %.loopexit.loopexit ]
  %i.ct = phi ptr [ %i.av, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.az, %.loopexit.loopexit ]
  %i.cu = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.lcssa, %.loopexit.loopexit ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !422
  %i.cw = load ptr, ptr %0, align 8, !tbaa !278
  invoke void @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.an, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef %.pr.i64, ptr noundef null, ptr noundef %.pr.i, i1 noundef zeroext false)
          to label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader unwind label %bb.o

_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader: ; preds = %.loopexit
  br i1 %i.e, label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge, label %.lr.ph85

.lr.ph85:                                         ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.p

_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge: ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.cu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #48
  br label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i:  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.da, %i.cu
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i
  %i.db = ptrtoint ptr %.pr.i to i64
  %i.dc = sub i64 %i.cr, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.dc) #48
  br label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !416 ; 2 uses
  %.not4.i.i.i60 = icmp eq ptr %.pr.i64, %i.dd
  br i1 %.not4.i.i.i60, label %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i
  %.05.i.i.i62 = phi ptr [ %i.dl, %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i ], [ %.pr.i64, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 64 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i61
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !102
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #48
  br label %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 16
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dk) #47
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 96 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.dl, %i.dd
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i61, !llvm.loop !38

_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit
  %.not.i.i1.i65 = icmp eq ptr %.pr.i64, null
  br i1 %.not.i.i1.i65, label %_ZNSt10unique_ptrIA_N7rocksdb5SliceESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !415
end_hunk_0
begin_hunk_1_@_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorINS_5SliceESaIS5_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EESI_:bb.a
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_multi_get_cf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.220", align 8   ; 11 uses
  %10 = alloca %"class.std::vector.225", align 8  ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %3, 1152921504606846975
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = select i1 %i.a, i64 -1, i64 %i.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #49 ; 17 uses
  %i.e = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.e, label %.loopexit90, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %3
  %i.g = add i64 %3, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check116 = icmp samesign ult i64 %i.h, 15
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2305843009213693936      ; 4 uses
  %i.k = shl i64 %n.vec, 4
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep117 = getelementptr i8, ptr %i.n, i64 64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep118 = getelementptr i8, ptr %i.o, i64 128
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep119 = getelementptr i8, ptr %i.p, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep117, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep118, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep119, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1503

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit90, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !411

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %i.r = shl i64 %n.vec120, 4
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 2 uses
  %i.t = shl i64 %index121, 4
  %next.gep122 = getelementptr i8, ptr %i.d, i64 %i.t
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep122, align 8, !tbaa !102
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next123, %n.vec120
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1504

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %i.i, %n.vec120
  br i1 %cmp.n124, label %.loopexit90, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.v = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %.loopexit90, label %vec.epilog.scalar.ph, !llvm.loop !1505

.loopexit90:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.z = icmp ugt i64 %3, 2305843009213693951
  %i.aa = shl nuw i64 %3, 3
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #49
          to label %.preheader unwind label %bb.i ; 8 uses

.preheader:                                       ; preds = %.loopexit90
  br i1 %i.e, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ad = add i64 %3, -1                          ; 2 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.04193.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %._crit_edge.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04193.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.04193.epil.init, %.lr.ph.epil.preheader ] ; 6 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04193.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04193.epil
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.04193.epil ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04193.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !363
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !347
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04193.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !360
  %i.ao = add nuw i64 %.04193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1506

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.ap = icmp ugt i64 %3, 96076792050570581
  br i1 %i.ap, label %bb.b, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.as = mul nuw nsw i64 %3, 96
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #49
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.l ; 6 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.at, ptr %9, align 8, !tbaa !414
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.at, i64 %3
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !415
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.c
  %.014.i.i.i.i = phi ptr [ %i.bf, %bb.c ], [ %i.at, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.be, %bb.c ], [ %3, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str.1, ptr %.014.i.i.i.i, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.bb, align 8, !tbaa !86
  store i8 0, ptr %i.ba, align 8, !tbaa !102
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.bc, align 8, !tbaa !407
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !408
  %i.be = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i76, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = tail call ptr @__cxa_begin_catch(ptr %i.bh) #47 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.at, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #50
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body77 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

.body77:                                          ; preds = %bb.f
  %.idx = mul nuw nsw i64 %3, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %.idx) #48
  br label %_ZNSt10unique_ptrIA_PN7rocksdb18ColumnFamilyHandleESt14default_deleteIS3_EED2Ev.exit72

bb.i:                                             ; preds = %.loopexit90
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7rocksdb5SliceESt14default_deleteIS2_EED2Ev.exit75

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04193 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04193
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !99
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04193
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !87
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.04193 ; 2 uses
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04193
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !363
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !347
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04193
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !360
  %i.bw = or disjoint i64 %.04193, 1              ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !87
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !363
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !347
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bw
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !360
  %i.cg = or disjoint i64 %.04193, 2              ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cg
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cg ; 2 uses
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ck, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cg
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !363
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !347
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cg
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !360
  %i.cq = or disjoint i64 %.04193, 3              ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !87
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cq ; 2 uses
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cq
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !363
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !347
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cq
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !360
  %i.da = add nuw i64 %.04193, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1507

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #49
          to label %.noexc59 unwind label %bb.m   ; 5 uses

.noexc59:                                         ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.db, ptr %10, align 8, !tbaa !418
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !419
  %xtraiter129 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc59, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.db, %.noexc59 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.noexc59 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc59 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.de, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.df = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1508

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc59
  %.lcssa.unr = phi ptr [ poison, %.noexc59 ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.db, %.noexc59 ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %3, %.noexc59 ], [ %i.df, %.lr.ph.i.i.i.i.i.prol ]
  %i.dh = icmp ult i64 %i.ad, 7
  br i1 %i.dh, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.dk, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 6, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.dm, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 6, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.do, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 6, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.dq, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 6, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.ds, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 6, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.du, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 6, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.dw, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 6, i1 false)
  %i.dx = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i.i ]
  %i.dz = ptrtoint ptr %i.dc to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.ea = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.dz, %.loopexit.loopexit ]
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.db, %.loopexit.loopexit ] ; 7 uses
  %.pr.i66 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.at, %.loopexit.loopexit ] ; 7 uses
  %i.eb = phi ptr [ %i.ar, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.aw, %.loopexit.loopexit ]
  %i.ec = phi ptr [ %i.aq, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.au, %.loopexit.loopexit ]
  %i.ed = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.lcssa, %.loopexit.loopexit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !422
  %i.ef = load ptr, ptr %0, align 8, !tbaa !278   ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !118
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 376
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %3, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef %.pr.i66, ptr noundef null, ptr noundef %.pr.i, i1 noundef zeroext false)
          to label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader unwind label %bb.n, !inline_history !40

end_hunk_1
begin_hunk_2_@rocksdb_multi_get_cf_with_ts
define void @rocksdb_multi_get_cf_with_ts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::vector.220", align 8  ; 11 uses
  %12 = alloca %"class.std::vector.154", align 8  ; 10 uses
  %13 = alloca %"class.std::vector.225", align 8  ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %3, 1152921504606846975
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = select i1 %i.a, i64 -1, i64 %i.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #49 ; 17 uses
  %i.e = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.e, label %.loopexit120, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %3
  %i.g = add i64 %3, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check155 = icmp samesign ult i64 %i.h, 15
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2305843009213693936      ; 4 uses
  %i.k = shl i64 %n.vec, 4
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep156 = getelementptr i8, ptr %i.n, i64 64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep157 = getelementptr i8, ptr %i.o, i64 128
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep158 = getelementptr i8, ptr %i.p, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep156, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep157, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep158, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit120, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !411

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec159 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %i.r = shl i64 %n.vec159, 4
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index160 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %i.t = shl i64 %index160, 4
  %next.gep161 = getelementptr i8, ptr %i.d, i64 %i.t
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep161, align 8, !tbaa !102
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next162, %n.vec159
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1511

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n163 = icmp eq i64 %i.i, %n.vec159
  br i1 %cmp.n163, label %.loopexit120, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.v = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %.loopexit120, label %vec.epilog.scalar.ph, !llvm.loop !1512

.loopexit120:                                     ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.z = icmp ugt i64 %3, 2305843009213693951
  %i.aa = shl nuw i64 %3, 3
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #49
          to label %.preheader119 unwind label %bb.i ; 8 uses

.preheader119:                                    ; preds = %.loopexit120
  br i1 %i.e, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader119
  %i.ad = add i64 %3, -1                          ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.052124.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.db, %._crit_edge.unr-lcssa ]
  %lcmp.mod168 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod168)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.052124.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.052124.epil.init, %.lr.ph.epil.preheader ] ; 6 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.052124.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.052124.epil
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.052124.epil ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.052124.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !363
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !347
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.052124.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !360
  %i.ao = add nuw i64 %.052124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1513

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  %i.ap = icmp ugt i64 %3, 96076792050570581
  br i1 %i.ap, label %bb.b, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.thread: ; preds = %.preheader119
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.at = mul nuw nsw i64 %3, 96
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #49
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.m ; 6 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.au, ptr %11, align 8, !tbaa !414
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %3
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !415
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.c
  %.014.i.i.i.i = phi ptr [ %i.bg, %bb.c ], [ %i.au, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.bf, %bb.c ], [ %3, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str.1, ptr %.014.i.i.i.i, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.bc, align 8, !tbaa !86
  store i8 0, ptr %i.bb, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.bd, align 8, !tbaa !407
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !408
  %i.bf = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i102 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i102, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #47 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.au, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #50
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body103 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

.body103:                                         ; preds = %bb.f
  %.idx = mul nuw nsw i64 %3, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %.idx) #48
  br label %_ZNSt10unique_ptrIA_PN7rocksdb18ColumnFamilyHandleESt14default_deleteIS3_EED2Ev.exit98

bb.i:                                             ; preds = %.loopexit120
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7rocksdb5SliceESt14default_deleteIS2_EED2Ev.exit101

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.052124 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.db, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.052124
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !99
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.052124
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.052124 ; 2 uses
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.052124
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !363
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !347
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.052124
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !360
  %i.bx = or disjoint i64 %.052124, 1             ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bx
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.bx ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !87
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !363
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !347
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bx
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !360
  %i.ch = or disjoint i64 %.052124, 2             ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !99
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ch
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ch ; 2 uses
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cl, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !87
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !363
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !347
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ch
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !360
  %i.cr = or disjoint i64 %.052124, 3             ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !99
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cr ; 2 uses
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.cv, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !363
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !347
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cr
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !360
  %i.db = add nuw i64 %.052124, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1514

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.c
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  %i.dc = shl nuw nsw i64 %3, 5
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #49
          to label %.noexc74 unwind label %bb.n   ; 5 uses

.noexc74:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  store ptr %i.dd, ptr %12, align 8, !tbaa !377
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.de, ptr %i.df, align 8, !tbaa !378
  %xtraiter169 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc74, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.prol ], [ %i.dd, %.noexc74 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.noexc74 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc74 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.dg, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !86
  store i8 0, ptr %i.dg, align 8, !tbaa !102
  %i.di = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter169
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1515

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc74
  %.lcssa165.unr = phi ptr [ poison, %.noexc74 ], [ %i.dj, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.dd, %.noexc74 ], [ %i.dj, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %3, %.noexc74 ], [ %i.di, %.lr.ph.i.i.i.i.i.prol ]
  %i.dk = icmp ult i64 %i.ad, 7
  br i1 %i.dk, label %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.dl, ptr %.08.i.i.i.i.i, align 8, !tbaa !100
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.dm, align 8, !tbaa !86
  store i8 0, ptr %i.dl, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.dp, align 8, !tbaa !86
  store i8 0, ptr %i.do, align 8, !tbaa !102
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ds, align 8, !tbaa !86
  store i8 0, ptr %i.dr, align 8, !tbaa !102
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !100
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.dv, align 8, !tbaa !86
  store i8 0, ptr %i.du, align 8, !tbaa !102
  %i.dw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.dy, align 8, !tbaa !86
  store i8 0, ptr %i.dx, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176 ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !100
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  store i64 0, ptr %i.eb, align 8, !tbaa !86
  store i8 0, ptr %i.ea, align 8, !tbaa !102
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %i.ee, align 8, !tbaa !86
  store i8 0, ptr %i.ed, align 8, !tbaa !102
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 224
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240 ; 2 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !100
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 232
  store i64 0, ptr %i.eh, align 8, !tbaa !86
  store i8 0, ptr %i.eg, align 8, !tbaa !102
  %i.ei = add i64 %.057.i.i.i.i.i, -8             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa165 = phi ptr [ %.lcssa165.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ej, %.lr.ph.i.i.i.i.i ]
end_hunk_2
begin_hunk_3_@rocksdb_transactiondb_multi_get:bb.a
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #49 ; 15 uses
  %i.e = icmp eq i64 %2, 0                        ; 3 uses
  br i1 %i.e, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %2
  %i.g = add i64 %2, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check106 = icmp samesign ult i64 %i.h, 15
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2305843009213693936      ; 4 uses
  %i.k = shl i64 %n.vec, 4
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep107 = getelementptr i8, ptr %i.n, i64 64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep108 = getelementptr i8, ptr %i.o, i64 128
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep109 = getelementptr i8, ptr %i.p, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep107, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep108, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep109, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !411

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %i.r = shl i64 %n.vec110, 4
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %i.t = shl i64 %index111, 4
  %next.gep112 = getelementptr i8, ptr %i.d, i64 %i.t
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep112, align 8, !tbaa !102
  %index.next113 = add nuw i64 %index111, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2294

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.i, %n.vec110
  br i1 %cmp.n114, label %.lr.ph.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.v = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %.lr.ph.preheader, label %vec.epilog.scalar.ph, !llvm.loop !2295

.lr.ph.preheader:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check116 = icmp ult i64 %2, 8
  br i1 %min.iters.check116, label %.lr.ph.preheader130, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.preheader
  %n.vec118 = and i64 %2, -8                      ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body119 ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.load = load <4 x ptr>, ptr %i.z, align 8, !tbaa !99
  %wide.load121 = load <4 x ptr>, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %wide.load122 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !87
  %wide.load123 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index120
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %index120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = ptrtoint <4 x ptr> %wide.load to <4 x i64>
  %interleaved.vec = shufflevector <4 x i64> %i.ag, <4 x i64> %wide.load122, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec, ptr %i.ad, align 8, !tbaa !102
  %i.ah = ptrtoint <4 x ptr> %wide.load121 to <4 x i64>
  %interleaved.vec124 = shufflevector <4 x i64> %i.ah, <4 x i64> %wide.load123, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %interleaved.vec124, ptr %i.af, align 8, !tbaa !102
  %index.next125 = add nuw i64 %index120, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.ai, label %middle.block126, label %vector.body119, !llvm.loop !2296

middle.block126:                                  ; preds = %vector.body119
  %cmp.n127 = icmp eq i64 %2, %n.vec118
  br i1 %cmp.n127, label %._crit_edge, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block126
  %.03983.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec118, %middle.block126 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block126, %bb.a
  %i.aj = load ptr, ptr %0, align 8, !tbaa !1316  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %bb.b unwind label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %.03983 = phi i64 [ %i.at, %.lr.ph ], [ %.03983.ph, %.lr.ph.preheader130 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03983
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03983
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.03983 ; 2 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.at = add nuw i64 %.03983, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2297

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  %i.au = icmp ugt i64 %2, 96076792050570581
  br i1 %i.au, label %bb.c, label %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  br i1 %i.e, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13PinnableSliceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ax = mul nuw nsw i64 %2, 96
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #49
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.m ; 6 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !414
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %2
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !415
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.d
  %.014.i.i.i.i = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.bj, %bb.d ], [ %2, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str.1, ptr %.014.i.i.i.i, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.bg, align 8, !tbaa !86
  store i8 0, ptr %i.bf, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.bh, align 8, !tbaa !407
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !408
  %i.bj = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i70 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i70, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = tail call ptr @__cxa_begin_catch(ptr %i.bm) #47 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.ay, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #50
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body71 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #51
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

.body71:                                          ; preds = %bb.g
  %.idx = mul nuw nsw i64 %2, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx) #48
  br label %.body

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #49
          to label %.noexc57 unwind label %bb.n   ; 5 uses

.noexc57:                                         ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.br, ptr %9, align 8, !tbaa !418
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !419
  %i.bu = add nsw i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc57, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.prol ], [ %i.br, %.noexc57 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.prol ], [ %2, %.noexc57 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc57 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.bw = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2298

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc57
  %.lcssa.unr = phi ptr [ poison, %.noexc57 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.br, %.noexc57 ], [ %i.bx, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %2, %.noexc57 ], [ %i.bw, %.lr.ph.i.i.i.i.i.prol ]
  %i.by = icmp ult i64 %i.bu, 7
  br i1 %i.by, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.cb, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 6, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.cd, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 6, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.cf, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 6, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.ch, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 6, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.cj, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 6, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.cl, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 6, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.cn, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 6, i1 false)
  %i.co = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.cp, %.lr.ph.i.i.i.i.i ]
  %i.cq = ptrtoint ptr %i.bs to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.cr = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.cq, %.loopexit.loopexit ]
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.br, %.loopexit.loopexit ] ; 7 uses
  %.pr.i64 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.ay, %.loopexit.loopexit ] ; 7 uses
  %i.cs = phi ptr [ %i.aw, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.bb, %.loopexit.loopexit ]
  %i.ct = phi ptr [ %i.av, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.az, %.loopexit.loopexit ]
  %i.cu = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.lcssa, %.loopexit.loopexit ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !422
  %i.cw = load ptr, ptr %0, align 8, !tbaa !1316
  invoke void @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.an, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef %.pr.i64, ptr noundef null, ptr noundef %.pr.i, i1 noundef zeroext false)
          to label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader unwind label %bb.o

_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader: ; preds = %.loopexit
  br i1 %i.e, label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge, label %.lr.ph85

.lr.ph85:                                         ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.p

_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge: ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.cu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #48
  br label %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i:  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.da, %i.cu
  br i1 %.not.i.i.i59, label %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb6StatusEEvPT_.exit.i.i.i, %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit._crit_edge
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i
  %i.db = ptrtoint ptr %.pr.i to i64
  %i.dc = sub i64 %i.cr, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.dc) #48
  br label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN7rocksdb6StatusES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !416 ; 2 uses
  %.not4.i.i.i60 = icmp eq ptr %.pr.i64, %i.dd
  br i1 %.not4.i.i.i60, label %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i
  %.05.i.i.i62 = phi ptr [ %i.dl, %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i ], [ %.pr.i64, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 64 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i61
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !102
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #48
  br label %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 16
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dk) #47
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 96 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.dl, %i.dd
  br i1 %.not.i.i.i63, label %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i61, !llvm.loop !38

_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EED2Ev.exit
  %.not.i.i1.i65 = icmp eq ptr %.pr.i64, null
  br i1 %.not.i.i1.i65, label %_ZNSt10unique_ptrIA_N7rocksdb5SliceESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb13PinnableSliceES1_EvT_S3_RSaIT0_E.exit.i
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !415
end_hunk_3
begin_hunk_4_@rocksdb_transactiondb_multi_get:bb.a
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @rocksdb_transactiondb_multi_get_cf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.220", align 8   ; 11 uses
  %10 = alloca %"class.std::vector.225", align 8  ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %3, 1152921504606846975
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = select i1 %i.a, i64 -1, i64 %i.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #49 ; 17 uses
  %i.e = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.e, label %.loopexit90, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %3
  %i.g = add i64 %3, 1152921504606846975
  %i.h = and i64 %i.g, 1152921504606846975        ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check116 = icmp samesign ult i64 %i.h, 15
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2305843009213693936      ; 4 uses
  %i.k = shl i64 %n.vec, 4
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep117 = getelementptr i8, ptr %i.n, i64 64
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep118 = getelementptr i8, ptr %i.o, i64 128
  %i.p = getelementptr i8, ptr %i.d, i64 %i.m
  %next.gep119 = getelementptr i8, ptr %i.p, i64 192
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep117, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep118, align 8, !tbaa !102
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep119, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit90, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !411

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %i.r = shl i64 %n.vec120, 4
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 2 uses
  %i.t = shl i64 %index121, 4
  %next.gep122 = getelementptr i8, ptr %i.d, i64 %i.t
  store <8 x i64> <i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 ptrtoint (ptr @.str.1 to i64), i64 0>, ptr %next.gep122, align 8, !tbaa !102
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next123, %n.vec120
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2301

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %i.i, %n.vec120
  br i1 %cmp.n124, label %.loopexit90, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.v = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %.loopexit90, label %vec.epilog.scalar.ph, !llvm.loop !2302

.loopexit90:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.z = icmp ugt i64 %3, 2305843009213693951
  %i.aa = shl nuw i64 %3, 3
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #49
          to label %.preheader unwind label %bb.i ; 8 uses

.preheader:                                       ; preds = %.loopexit90
  br i1 %i.e, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ad = add i64 %3, -1                          ; 2 uses
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.04193.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.da, %._crit_edge.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04193.epil = phi i64 [ %i.ao, %.lr.ph.epil ], [ %.04193.epil.init, %.lr.ph.epil.preheader ] ; 6 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04193.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04193.epil
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.04193.epil ; 2 uses
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04193.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !363
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !347
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04193.epil
  store ptr %i.am, ptr %i.an, align 8, !tbaa !360
  %i.ao = add nuw i64 %.04193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !2303

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.ap = icmp ugt i64 %3, 96076792050570581
  br i1 %i.ap, label %bb.b, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge
  %i.as = mul nuw nsw i64 %3, 96
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #49
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.l ; 6 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.at, ptr %9, align 8, !tbaa !414
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.at, i64 %3
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !415
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.c
  %.014.i.i.i.i = phi ptr [ %i.bf, %bb.c ], [ %i.at, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.be, %bb.c ], [ %3, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str.1, ptr %.014.i.i.i.i, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.bb, align 8, !tbaa !86
  store i8 0, ptr %i.ba, align 8, !tbaa !102
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.bc, align 8, !tbaa !407
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !408
  %i.be = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i76, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = tail call ptr @__cxa_begin_catch(ptr %i.bh) #47 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.at, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #50
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body77 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

.body77:                                          ; preds = %bb.f
  %.idx = mul nuw nsw i64 %3, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %.idx) #48
  br label %_ZNSt10unique_ptrIA_PN7rocksdb18ColumnFamilyHandleESt14default_deleteIS3_EED2Ev.exit72

bb.i:                                             ; preds = %.loopexit90
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N7rocksdb5SliceESt14default_deleteIS2_EED2Ev.exit75

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04193 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.da, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04193
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !99
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.04193
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !87
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.04193 ; 2 uses
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04193
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !363
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !347
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04193
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !360
  %i.bw = or disjoint i64 %.04193, 1              ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bw
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !87
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !363
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !347
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bw
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !360
  %i.cg = or disjoint i64 %.04193, 2              ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cg
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cg ; 2 uses
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ck, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cg
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !363
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !347
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cg
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !360
  %i.cq = or disjoint i64 %.04193, 3              ; 5 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !87
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cq ; 2 uses
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cq
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !363
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !347
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cq
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !360
  %i.da = add nuw i64 %.04193, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !2304

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.c
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #49
          to label %.noexc59 unwind label %bb.m   ; 5 uses

.noexc59:                                         ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.db, ptr %10, align 8, !tbaa !418
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !419
  %xtraiter129 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc59, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.db, %.noexc59 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.noexc59 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc59 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.de, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.df = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2305

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc59
  %.lcssa.unr = phi ptr [ poison, %.noexc59 ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.db, %.noexc59 ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %3, %.noexc59 ], [ %i.df, %.lr.ph.i.i.i.i.i.prol ]
  %i.dh = icmp ult i64 %i.ad, 7
  br i1 %i.dh, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.dk, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 6, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.dm, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 6, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.do, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 6, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.dq, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 6, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.ds, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 6, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.du, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 6, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.dw, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 6, i1 false)
  %i.dx = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i.i ]
  %i.dz = ptrtoint ptr %i.dc to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread
  %i.ea = phi i64 [ 0, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.dz, %.loopexit.loopexit ]
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.db, %.loopexit.loopexit ] ; 7 uses
  %.pr.i66 = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.at, %.loopexit.loopexit ] ; 7 uses
  %i.eb = phi ptr [ %i.ar, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.aw, %.loopexit.loopexit ]
  %i.ec = phi ptr [ %i.aq, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %i.au, %.loopexit.loopexit ]
  %i.ed = phi ptr [ null, %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.lcssa, %.loopexit.loopexit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !422
  %i.ef = load ptr, ptr %0, align 8, !tbaa !1316  ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !118
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 376
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %3, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef %.pr.i66, ptr noundef null, ptr noundef %.pr.i, i1 noundef zeroext false)
          to label %_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb.exit.preheader unwind label %bb.n, !inline_history !40

end_hunk_4
