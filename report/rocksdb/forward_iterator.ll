Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/forward_iterator?download=true
inline.NumInlined: 1910
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb20ForwardLevelIterator5ResetEv:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cu = load <4 x i8>, ptr %3, align 8, !tbaa !28
  store <4 x i8> %i.cu, ptr %i.ct, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %3, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !392, !range !297, !noundef !298
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.cw, ptr %i.cx, align 4, !tbaa !393
  store i8 0, ptr %i.cv, align 4, !tbaa !393
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !394
  store i8 0, ptr %i.cy, align 1, !tbaa !394
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !184
  store ptr null, ptr %i.db, align 8, !tbaa !184
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !184 ; 2 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.de) #26
  %.pr = load ptr, ptr %i.db, align 8, !tbaa !184 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.u

bb.r:                                             ; preds = %bb.o, %_ZN7rocksdb22ReadRangeDelAggregatorC2EPKNS_21InternalKeyComparatorEm.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.w

bb.u:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.p
  call void @_ZN7rocksdb18RangeDelAggregator9StripeRepD2Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %i.az) #28
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb18RangeDelAggregatorE, i64 16), ptr %1, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load ptr, ptr %i.av, align 8, !tbaa !202
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef %i.dj)
          to label %_ZN7rocksdb22ReadRangeDelAggregatorD2Ev.exit unwind label %bb.v, !inline_history !396

bb.v:                                             ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #27, !inline_history !396
  unreachable

_ZN7rocksdb22ReadRangeDelAggregatorD2Ev.exit:     ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.w:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.t ], [ %i.df, %bb.r ], [ %i.dg, %bb.s ]
  call void @_ZN7rocksdb22ReadRangeDelAggregatorD2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb15ForwardIterator22TEST_CheckDeletedItersEPiS1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(2960) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2776
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !372  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !375  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !376  ; 2 uses
  %.not56 = icmp eq ptr %i.h, %i.i
  br i1 %.not56, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187  ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi66 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi68 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi73 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi74 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi75 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi76 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %wide.load = load <4 x ptr>, ptr %i.p, align 8, !tbaa !383
  %wide.load77 = load <4 x ptr>, ptr %i.q, align 8, !tbaa !383
  %wide.load78 = load <4 x ptr>, ptr %i.r, align 8, !tbaa !383
  %wide.load79 = load <4 x ptr>, ptr %i.s, align 8, !tbaa !383
  %i.t = icmp eq <4 x ptr> %wide.load, splat (ptr null) ; 3 uses
  %i.u = icmp eq <4 x ptr> %wide.load77, splat (ptr null) ; 3 uses
  %i.v = icmp eq <4 x ptr> %wide.load78, splat (ptr null) ; 3 uses
  %i.w = icmp eq <4 x ptr> %wide.load79, splat (ptr null) ; 3 uses
  %i.x = or <4 x i1> %vec.phi73, %i.t             ; 2 uses
  %i.y = or <4 x i1> %vec.phi74, %i.u             ; 2 uses
  %i.z = or <4 x i1> %vec.phi75, %i.v             ; 2 uses
  %i.aa = or <4 x i1> %vec.phi76, %i.w            ; 2 uses
  %i.ab = zext <4 x i1> %i.t to <4 x i32>
  %i.ac = zext <4 x i1> %i.u to <4 x i32>
  %i.ad = zext <4 x i1> %i.v to <4 x i32>
  %i.ae = zext <4 x i1> %i.w to <4 x i32>
  %i.af = add <4 x i32> %vec.phi69, %i.ab         ; 2 uses
  %i.ag = add <4 x i32> %vec.phi70, %i.ac         ; 2 uses
  %i.ah = add <4 x i32> %vec.phi71, %i.ad         ; 2 uses
  %i.ai = add <4 x i32> %vec.phi72, %i.ae         ; 2 uses
  %i.aj = xor <4 x i1> %i.t, splat (i1 true)
  %i.ak = xor <4 x i1> %i.u, splat (i1 true)
  %i.al = xor <4 x i1> %i.v, splat (i1 true)
  %i.am = xor <4 x i1> %i.w, splat (i1 true)
  %i.an = zext <4 x i1> %i.aj to <4 x i32>
  %i.ao = zext <4 x i1> %i.ak to <4 x i32>
  %i.ap = zext <4 x i1> %i.al to <4 x i32>
  %i.aq = zext <4 x i1> %i.am to <4 x i32>
  %i.ar = add <4 x i32> %vec.phi, %i.an           ; 2 uses
  %i.as = add <4 x i32> %vec.phi66, %i.ao         ; 2 uses
  %i.at = add <4 x i32> %vec.phi67, %i.ap         ; 2 uses
  %i.au = add <4 x i32> %vec.phi68, %i.aq         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.as, %i.ar
  %bin.rdx80 = add <4 x i32> %i.at, %bin.rdx
  %bin.rdx81 = add <4 x i32> %i.au, %bin.rdx80
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx81) ; 3 uses
  %bin.rdx82 = add <4 x i32> %i.ag, %i.af
  %bin.rdx83 = add <4 x i32> %i.ah, %bin.rdx82
  %bin.rdx84 = add <4 x i32> %i.ai, %bin.rdx83
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx84) ; 3 uses
  %bin.rdx85 = or <4 x i1> %i.y, %i.x
  %bin.rdx86 = or <4 x i1> %i.z, %bin.rdx85
  %bin.rdx87 = or <4 x i1> %i.aa, %bin.rdx86
  %bin.rdx87.fr = freeze <4 x i1> %bin.rdx87
  %i.ay = bitcast <4 x i1> %bin.rdx87.fr to i4
  %i.az = icmp ne i4 %i.ay, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ba = and i64 %i.l, 96
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !454

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aw, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx88 = phi i32 [ %i.ax, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx89 = phi i1 [ %i.az, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.m, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx89, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %3 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %4 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx88, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi92 = phi <4 x i32> [ %3, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %vec.phi93 = phi <4 x i32> [ %4, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %vec.phi94 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index91
  %wide.load95 = load <4 x ptr>, ptr %i.bb, align 8, !tbaa !383
  %wide.load95.fr = freeze <4 x ptr> %wide.load95
  %i.bc = icmp eq <4 x ptr> %wide.load95.fr, splat (ptr null) ; 3 uses
  %i.bd = or <4 x i1> %vec.phi94, %i.bc           ; 2 uses
  %i.be = zext <4 x i1> %i.bc to <4 x i32>
  %i.bf = add <4 x i32> %vec.phi93, %i.be         ; 2 uses
  %i.bg = xor <4 x i1> %i.bc, splat (i1 true)
  %i.bh = zext <4 x i1> %i.bg to <4 x i32>
  %i.bi = add <4 x i32> %vec.phi92, %i.bh         ; 2 uses
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !711

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi) ; 2 uses
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.bm = bitcast <4 x i1> %i.bd to i4
  %i.bn = icmp ne i4 %i.bm, 0                     ; 2 uses
  %cmp.n97 = icmp eq i64 %i.m, %n.vec90
  br i1 %cmp.n97, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02745.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec90, %vec.epilog.middle.block ]
  %.02844.ph = phi i32 [ 0, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.02943.ph = phi i32 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.03342.ph = phi i1 [ false, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.033.lcssa = phi i1 [ false, %bb.a ], [ %i.bn, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %.134, %vec.epilog.scalar.ph ] ; 3 uses
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %i.bl, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %.130, %vec.epilog.scalar.ph ] ; 3 uses
  %.028.lcssa = phi i32 [ 0, %bb.a ], [ %i.bk, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %.1, %vec.epilog.scalar.ph ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !499 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !185 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64
  %i.bt = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.bt, 1
  %i.bu = icmp eq i32 %i.bp, 2
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph52.new

.lr.ph52.new:                                     ; preds = %.lr.ph52
  %unroll_iter = and i64 %i.bt, -2
  br label %bb.e

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02745 = phi i64 [ %i.bz, %vec.epilog.scalar.ph ], [ %.02745.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02844 = phi i32 [ %.1, %vec.epilog.scalar.ph ], [ %.02844.ph, %vec.epilog.scalar.ph.preheader ]
  %.02943 = phi i32 [ %.130, %vec.epilog.scalar.ph ], [ %.02943.ph, %vec.epilog.scalar.ph.preheader ]
  %.03342 = phi i1 [ %.134, %vec.epilog.scalar.ph ], [ %.03342.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02745
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !383
  %.not41 = icmp eq ptr %i.bw, null               ; 3 uses
  %.134 = select i1 %.not41, i1 true, i1 %.03342  ; 2 uses
  %i.bx = zext i1 %.not41 to i32
  %.130 = add nuw nsw i32 %.02943, %i.bx          ; 2 uses
  %not..not41 = xor i1 %.not41, true
  %i.by = zext i1 %not..not41 to i32
  %.1 = add nuw nsw i32 %.02844, %i.by            ; 2 uses
  %i.bz = add nuw i64 %.02745, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.m
  br i1 %exitcond.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !712

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph52
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.250.epil.init = phi i32 [ %.028.lcssa, %.lr.ph52 ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.23149.epil.init = phi i32 [ %.029.lcssa, %.lr.ph52 ], [ %.332.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.23548.epil.init = phi i1 [ %.033.lcssa, %.lr.ph52 ], [ %.336.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod119 = trunc i64 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.ca = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !390
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !378 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !378 ; 2 uses
  br i1 %i.cd, label %bb.b, label %._crit_edge58.epil

._crit_edge58.epil:                               ; preds = %.epil.preheader
  %i.ci = icmp ne ptr %i.cf, %i.ch
  %i.cj = zext i1 %i.ci to i32
  br label %bb.d

bb.b:                                             ; preds = %.epil.preheader
  %i.ck = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ck, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = add nsw i32 %.23149.epil.init, 1
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b, %._crit_edge58.epil
  %i.cm = phi i32 [ %i.cj, %._crit_edge58.epil ], [ 0, %bb.b ]
  %spec.select.epil = add nsw i32 %.250.epil.init, %i.cm
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c, %.preheader
  %.235.lcssa = phi i1 [ %.033.lcssa, %.preheader ], [ %.336.1, %._crit_edge.loopexit.unr-lcssa ], [ %.23548.epil.init, %bb.d ], [ true, %bb.c ]
  %.231.lcssa = phi i32 [ %.029.lcssa, %.preheader ], [ %.332.1, %._crit_edge.loopexit.unr-lcssa ], [ %.23149.epil.init, %bb.d ], [ %i.cl, %bb.c ]
  %.2.lcssa = phi i32 [ %.028.lcssa, %.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.d ], [ %.250.epil.init, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.n

bb.e:                                             ; preds = %bb.m, %.lr.ph52.new
  %indvars.iv = phi i64 [ 1, %.lr.ph52.new ], [ %indvars.iv.next.1, %bb.m ] ; 4 uses
  %.250 = phi i32 [ %.028.lcssa, %.lr.ph52.new ], [ %.3.1, %bb.m ] ; 2 uses
  %.23149 = phi i32 [ %.029.lcssa, %.lr.ph52.new ], [ %.332.1, %bb.m ] ; 2 uses
  %.23548 = phi i1 [ %.033.lcssa, %.lr.ph52.new ], [ %.336.1, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph52.new ], [ %niter.next.1, %bb.m ]
  %i.cn = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !390
  %i.cq = icmp eq ptr %i.cp, null
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !378 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !378 ; 2 uses
  br i1 %i.cq, label %bb.f, label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.e
  %i.cv = icmp ne ptr %i.cs, %i.cu
  %i.cw = zext i1 %i.cv to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cx = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = add nsw i32 %.23149, 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge58, %bb.f
  %i.cz = phi i32 [ %i.cw, %._crit_edge58 ], [ 0, %bb.f ]
  %spec.select = add nsw i32 %.250, %i.cz
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.336 = phi i1 [ %.23548, %bb.h ], [ true, %bb.g ]
  %.332 = phi i32 [ %.23149, %bb.h ], [ %i.cy, %bb.g ] ; 2 uses
  %.3 = phi i32 [ %spec.select, %bb.h ], [ %.250, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !390
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !378 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !378 ; 2 uses
  br i1 %i.dd, label %bb.j, label %._crit_edge58.1

._crit_edge58.1:                                  ; preds = %bb.i
  %i.di = icmp ne ptr %i.df, %i.dh
  %i.dj = zext i1 %i.di to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dk = icmp eq ptr %i.df, %i.dh
  br i1 %i.dk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = add nsw i32 %.332, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %._crit_edge58.1
  %i.dm = phi i32 [ %i.dj, %._crit_edge58.1 ], [ 0, %bb.j ]
  %spec.select.1 = add nsw i32 %.3, %i.dm
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.336.1 = phi i1 [ %.336, %bb.l ], [ true, %bb.k ] ; 3 uses
  %.332.1 = phi i32 [ %.332, %bb.l ], [ %i.dl, %bb.k ] ; 3 uses
  %.3.1 = phi i32 [ %spec.select.1, %bb.l ], [ %.3, %bb.k ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !713

bb.n:                                             ; preds = %._crit_edge
  store i32 %.231.lcssa, ptr %1, align 4, !tbaa !515
end_hunk_0
