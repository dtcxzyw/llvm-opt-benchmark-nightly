inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2v88internal4wasm19IsCrossInstanceCallENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateE
define hidden noundef zeroext i1 @_ZN2v88internal4wasm19IsCrossInstanceCallENS0_6TaggedINS0_6ObjectEEEPNS0_7IsolateE(i64 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %0, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.v8::internal::wasm::FeedbackMaker", align 8 ; 18 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 247
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97: ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = add i16 %i.z, -205
  %i.ab = icmp ult i16 %i.aa, 13
  br i1 %i.ab, label %bb.b, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 %1, ptr %i.a, align 4
  %i.ad = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i64 %i.aj, 32                      ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i32              ; 3 uses
  %i.am = shl i64 %i.ah, 1
  %i.an = icmp sgt i64 %i.aj, -1
  %i.ao = icmp eq i64 %i.am, %i.ak
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.c, !prof !104

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.sroa.074.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %i.as = lshr i32 %i.al, 1                       ; 2 uses
  store ptr %i.ar, ptr %2, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.sroa.074.0.copyload, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.av = zext nneg i32 %i.as to i64              ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.aw = icmp eq i32 %i.as, 0
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !123
  br label %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit

bb.f:                                             ; preds = %bb.d
  %i.ax = shl nuw nsw i64 %i.av, 4                ; 2 uses
  %i.ay = or disjoint i64 %i.ax, 8
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #31, !noalias !126 ; 2 uses
  store i64 %i.av, ptr %i.az, align 16, !noalias !126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.av
  %i.bc = add nsw i64 %i.ax, -16                  ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %i.bf = phi ptr [ %i.bj, %.prol.preheader ], [ %i.ba, %bb.f ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.f ]
  store i32 -1, ptr %i.bf, align 8, !noalias !126
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 0, ptr %i.bg, align 4, !noalias !126
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 0, ptr %i.bh, align 1, !noalias !126
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bi, align 8, !noalias !126
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.unr = phi ptr [ %i.ba, %bb.f ], [ %i.bj, %.prol.preheader ]
  %i.bk = icmp ult i64 %i.bc, 48
  br i1 %i.bk, label %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bl = phi ptr [ %i.cb, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 -1, ptr %i.bl, align 8, !noalias !126
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i8 0, ptr %i.bm, align 4, !noalias !126
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  store i8 0, ptr %i.bn, align 1, !noalias !126
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bo, align 8, !noalias !126
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 -1, ptr %i.bp, align 8, !noalias !126
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i8 0, ptr %i.bq, align 4, !noalias !126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 21
  store i8 0, ptr %i.br, align 1, !noalias !126
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 0, ptr %i.bs, align 8, !noalias !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -1, ptr %i.bt, align 8, !noalias !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store i8 0, ptr %i.bu, align 4, !noalias !126
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 37
  store i8 0, ptr %i.bv, align 1, !noalias !126
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i64 0, ptr %i.bw, align 8, !noalias !126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i32 -1, ptr %i.bx, align 8, !noalias !126
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store i8 0, ptr %i.by, align 4, !noalias !126
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 53
  store i8 0, ptr %i.bz, align 1, !noalias !126
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 0, ptr %i.ca, align 8, !noalias !126
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bb
  br i1 %i.cc, label %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i, label %.new

_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %.new, %.prol.loopexit
  %i.cd = ptrtoint ptr %i.ba to i64
  store i64 %i.cd, ptr %i.au, align 8, !alias.scope !123
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.av, ptr %i.ce, align 8, !alias.scope !123
  br label %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit

_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.cf = phi i64 [ 0, %bb.e ], [ %i.av, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.cg = phi ptr [ null, %bb.e ], [ %i.ba, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.cj = add i64 %.sroa.074.0.copyload, 263
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 7
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 216
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 84
  %i.cw = load i32, ptr %i.cv, align 4
  store i32 %i.cw, ptr %i.ci, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %1, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 9 uses
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 11 uses
  store i8 0, ptr %i.da, align 1
  %i.db = icmp sgt i32 %i.al, 0
  br i1 %i.db, label %.lr.ph234, label %._crit_edge

.lr.ph234:                                        ; preds = %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 32 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 32 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.au, align 8, !noalias !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre274 = load i64, ptr %.phi.trans.insert, align 8, !noalias !131
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dg = phi i64 [ %.pre274, %._crit_edge.loopexit ], [ %i.cf, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  %i.dh = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cg, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor14EnqueueCalleesENS_4base6VectorINS1_16CallSiteFeedbackEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.dh, i64 %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 %1, ptr %i.c, align 4
  %i.dk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  store ptr %i.dh, ptr %i.dk, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i = shl i64 %i.dn, 4            ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.g
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.dq = phi ptr [ %i.dr, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i ], [ %i.dp, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.ds, -1
  br i1 %i.dt, label %bb.h, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = inttoptr i64 %i.dv to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #30
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %.preheader.i.i.i.i.i.i
  %i.dy = icmp eq ptr %i.dr, %i.dl
  br i1 %i.dy, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, %bb.g
  %i.dz = or disjoint i64 %.idx.i.i.i.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dz) #30
  br label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit

_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dg, ptr %i.ea, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.eb = load ptr, ptr %i.au, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %.idx.i.i.i.i = shl i64 %i.ed, 4                ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.j
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.eg = phi ptr [ %i.eh, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i ], [ %i.ef, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp slt i32 %i.ei, -1
  br i1 %i.ej, label %bb.k, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.en = inttoptr i64 %i.el to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.en) #30
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %.preheader.i.i.i.i
  %i.eo = icmp eq ptr %i.eh, %i.eb
  br i1 %i.eo, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, %bb.j
  %i.ep = or disjoint i64 %.idx.i.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ep) #30
  br label %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit

_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit:     ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit, %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

bb.m:                                             ; preds = %.lr.ph234, %.critedge
  %indvars.iv271 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next272, %.critedge ] ; 3 uses
  %i.eq = lshr exact i64 %indvars.iv271, 1        ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4            ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv271 ; 2 uses
  %i.eu = load atomic volatile i64, ptr %i.et monotonic, align 8 ; 10 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8 ; 3 uses
  %or.cond = icmp ult i32 %i.es, -2
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ex = lshr i64 %i.eu, 32
  %i.ey = trunc nuw i64 %i.ex to i32              ; 2 uses
  %i.ez = load i32, ptr %i.cy, align 4            ; 6 uses
  %i.fa = icmp eq i32 %i.ez, 4
  %i.fb = load i8, ptr %i.da, align 1, !range !76
  %i.fc = trunc nuw i8 %i.fb to i1
  %or.cond.i = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond.i, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.fd = icmp sgt i32 %i.ez, 0
  br i1 %i.fd, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ez to i64 ; 7 uses
  br label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 9 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ff = load i32, ptr %i.fe, align 4
  %.not.i = icmp slt i32 %i.ff, %i.ey
  br i1 %.not.i, label %.critedge.i, label %3

3:                                                ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit237, label %.lr.ph.i, !llvm.loop !135

.critedge.i:                                      ; preds = %.lr.ph.i
  %4 = trunc nuw nsw i64 %indvars.iv.i to i32
  %.not16.not22.i = icmp sgt i32 %i.ez, %4
  br i1 %.not16.not22.i, label %.lr.ph24.i.preheader, label %._crit_edge.i

.lr.ph24.i.preheader:                             ; preds = %.critedge.i
  %5 = sub nsw i64 %wide.trip.count.i, %indvars.iv.i
  %xtraiter346 = and i64 %5, 1
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader
  %indvars.iv.next27.i.prol = add nsw i64 %wide.trip.count.i, -1 ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.prol
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.prol
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i
  store i32 %10, ptr %11, align 4
  br label %.lr.ph24.i.prol.loopexit

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph24.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph24.i.prol ]
  %i.fg = add nsw i64 %wide.trip.count.i, -1
  %i.fh = icmp eq i64 %indvars.iv.i, %i.fg
  br i1 %i.fh, label %._crit_edge.i, label %.lr.ph24.i

._crit_edge.i.loopexit237:                        ; preds = %3
  %i.fi = zext nneg i32 %i.ez to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %._crit_edge.i.loopexit237, %.critedge.i, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.i, %.critedge.i ], [ %i.fi, %._crit_edge.i.loopexit237 ], [ %indvars.iv.i, %.lr.ph24.i ], [ %indvars.iv.i, %.lr.ph24.i.prol.loopexit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i
  store i32 %i.es, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i
  store i32 %i.ey, ptr %i.fk, align 4
  %i.fl = add nsw i32 %i.ez, 1
  store i32 %i.fl, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph24.i ], [ %indvars.iv26.i.unr, %.lr.ph24.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i
  store i32 %16, ptr %17, align 4
  %indvars.iv.next27.i.1 = add nsw i64 %indvars.iv26.i, -2 ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.1
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i
  store i32 %i.fn, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.1
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i
  store i32 %i.fq, ptr %i.fr, align 4
  %.not16.not.i.1 = icmp sgt i64 %indvars.iv.next27.i.1, %indvars.iv.i
  br i1 %.not16.not.i.1, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

bb.p:                                             ; preds = %bb.m
  %i.fs = and i64 %i.ew, -4294967295
  %or.cond210 = icmp eq i64 %i.fs, 0
  br i1 %or.cond210, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ft = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.r, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.r:                                             ; preds = %bb.q
  %i.fv = trunc nuw i64 %i.eq to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %i.fv) #29
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.s:                                             ; preds = %bb.p
  %i.fw = trunc i64 %i.eu to i1                   ; 2 uses
  br i1 %i.fw, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.s
  %i.fx = add nsw i64 %i.eu, -1
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = load atomic volatile i64, ptr %i.fy monotonic, align 8
  %i.ga = add i64 %i.fz, 11
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load atomic volatile i16, ptr %i.gb monotonic, align 2
  %i.gd = icmp eq i16 %i.gc, 293
  br i1 %i.gd, label %bb.t, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.t:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ge = lshr i64 %i.ew, 32
  %i.gf = trunc nuw i64 %i.ge to i32              ; 2 uses
  %i.gg = add i64 %i.eu, 7
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load atomic volatile i64, ptr %i.gh acquire, align 8 ; 2 uses
  %i.gj = add i64 %i.gi, 7
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = load i64, ptr %i.gk, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8
  %.not.i102 = icmp eq i64 %i.gl, %.sroa.0.0.copyload.i
  br i1 %.not.i102, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.v:                                             ; preds = %bb.t
  %i.gm = add i64 %i.gi, 23
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = lshr i64 %i.go, 32
  %i.gq = trunc nuw i64 %i.gp to i32              ; 2 uses
  %i.gr = load i32, ptr %i.ci, align 4
  %i.gs = icmp sgt i32 %i.gr, %i.gq
  br i1 %i.gs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.x:                                             ; preds = %bb.v
  %i.gt = load i32, ptr %i.cy, align 4            ; 5 uses
  %i.gu = icmp eq i32 %i.gt, 4
  %i.gv = load i8, ptr %i.da, align 1, !range !76
  %i.gw = trunc nuw i8 %i.gv to i1
  %or.cond.i.i = select i1 %i.gu, i1 true, i1 %i.gw
  br i1 %or.cond.i.i, label %bb.y, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x
  %i.gx = icmp sgt i32 %i.gt, 0
  br i1 %i.gx, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.gt to i64 ; 8 uses
  br label %.lr.ph.i.i

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i.i:                                       ; preds = %18, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %18 ] ; 9 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i
  %i.gz = load i32, ptr %i.gy, align 4
  %.not.i.i103 = icmp slt i32 %i.gz, %i.gf
  br i1 %.not.i.i103, label %.critedge.i.i, label %18

18:                                               ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !135

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %19 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.not16.not22.i.i = icmp sgt i32 %i.gt, %19
  br i1 %.not16.not22.i.i, label %.lr.ph24.i.i.preheader, label %._crit_edge.i.i

.lr.ph24.i.i.preheader:                           ; preds = %.critedge.i.i
  %20 = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i
  %xtraiter341 = and i64 %20, 1
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.lr.ph24.i.i.prol.loopexit, label %.lr.ph24.i.i.prol

.lr.ph24.i.i.prol:                                ; preds = %.lr.ph24.i.i.preheader
  %indvars.iv.next27.i.i.prol = add nsw i64 %wide.trip.count.i.i, -1 ; 3 uses
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i.prol
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i.i
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i.prol
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i.i
  store i32 %25, ptr %26, align 4
  br label %.lr.ph24.i.i.prol.loopexit

.lr.ph24.i.i.prol.loopexit:                       ; preds = %.lr.ph24.i.i.prol, %.lr.ph24.i.i.preheader
  %indvars.iv26.i.i.unr = phi i64 [ %wide.trip.count.i.i, %.lr.ph24.i.i.preheader ], [ %indvars.iv.next27.i.i.prol, %.lr.ph24.i.i.prol ]
  %i.ha = add nsw i64 %wide.trip.count.i.i, -1
  %i.hb = icmp eq i64 %indvars.iv.i.i, %i.ha
  br i1 %i.hb, label %._crit_edge.i.i, label %.lr.ph24.i.i

._crit_edge.i.i:                                  ; preds = %18, %.lr.ph24.i.i.prol.loopexit, %.lr.ph24.i.i, %.critedge.i.i, %.preheader.i.i
  %.015.lcssa31.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.lr.ph24.i.i.prol.loopexit ], [ %indvars.iv.i.i, %.lr.ph24.i.i ], [ %wide.trip.count.i.i, %18 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i
  store i32 %i.gq, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i
  store i32 %i.gf, ptr %i.hd, align 4
  %i.he = add nsw i32 %i.gt, 1
  store i32 %i.he, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i.i:                                     ; preds = %.lr.ph24.i.i.prol.loopexit, %.lr.ph24.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i.1, %.lr.ph24.i.i ], [ %indvars.iv26.i.i.unr, %.lr.ph24.i.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i.i = add nsw i64 %indvars.iv26.i.i, -1 ; 4 uses
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i
  store i32 %31, ptr %32, align 4
  %indvars.iv.next27.i.i.1 = add nsw i64 %indvars.iv26.i.i, -2 ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i.1
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i
  store i32 %i.hg, ptr %i.hh, align 4
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i.1
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i
  store i32 %i.hj, ptr %i.hk, align 4
  %.not16.not.i.i.1 = icmp sgt i64 %indvars.iv.next27.i.i.1, %indvars.iv.i.i
  br i1 %.not16.not.i.i.1, label %.lr.ph24.i.i, label %._crit_edge.i.i, !llvm.loop !136

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.s, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.hl = and i64 %i.eu, 1
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hn = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8112
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = icmp eq i64 %i.eu, %i.hp
  br i1 %i.hq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.hr = lshr i64 %i.ew, 32
  %i.hs = trunc nuw i64 %i.hr to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.eu, i32 noundef %i.hs)
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.fw, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ab
  %i.ht = add nsw i64 %i.eu, -1
  %i.hu = inttoptr i64 %i.ht to ptr               ; 4 uses
  %i.hv = load atomic volatile i64, ptr %i.hu monotonic, align 8
  %i.hw = add i64 %i.hv, 11
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load atomic volatile i16, ptr %i.hx monotonic, align 2
  %i.hz = add i16 %i.hy, -205
  %i.ia = icmp ult i16 %i.hz, 13
  br i1 %i.ia, label %bb.ac, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.ac:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = lshr i64 %i.ic, 32
  %i.ie = trunc nuw i64 %i.id to i32              ; 4 uses
  %i.if = icmp slt i32 %i.ie, 9
  br i1 %i.if, label %bb.ae, label %bb.ad, !prof !104

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #32
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ig = icmp eq i32 %i.es, -1
  %i.ih = icmp sgt i32 %i.ie, 0                   ; 2 uses
  br i1 %i.ig, label %.preheader, label %.preheader216

.preheader216:                                    ; preds = %bb.ae
  br i1 %i.ih, label %.lr.ph, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph:                                           ; preds = %.preheader216
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  br label %bb.al

.preheader:                                       ; preds = %bb.ae
  br i1 %i.ih, label %.lr.ph224, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph224:                                        ; preds = %.preheader
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph224, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125
  %indvars.iv253 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next254, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv253 ; 2 uses
  %i.il = load atomic volatile i64, ptr %i.ik monotonic, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load atomic volatile i64, ptr %i.im monotonic, align 8
  %i.io = lshr i64 %i.in, 32
  %i.ip = trunc nuw i64 %i.io to i32              ; 2 uses
  %i.iq = add i64 %i.il, 7
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load atomic volatile i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = add i64 %i.is, 7
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = load i64, ptr %i.iu, align 8
  %.sroa.0.0.copyload.i105 = load i64, ptr %i.at, align 8
  %.not.i106 = icmp eq i64 %i.iv, %.sroa.0.0.copyload.i105
  br i1 %.not.i106, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

bb.ah:                                            ; preds = %bb.af
  %i.iw = add i64 %i.is, 23
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = lshr i64 %i.iy, 32
  %i.ja = trunc nuw i64 %i.iz to i32              ; 2 uses
  %i.jb = load i32, ptr %i.ci, align 4
  %i.jc = icmp sgt i32 %i.jb, %i.ja
  br i1 %i.jc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

bb.aj:                                            ; preds = %bb.ah
  %i.jd = load i32, ptr %i.cy, align 4            ; 5 uses
  %i.je = icmp eq i32 %i.jd, 4
  %i.jf = load i8, ptr %i.da, align 1, !range !76
  %i.jg = trunc nuw i8 %i.jf to i1
  %or.cond.i.i107 = select i1 %i.je, i1 true, i1 %i.jg
  br i1 %or.cond.i.i107, label %bb.ak, label %.preheader.i.i108

.preheader.i.i108:                                ; preds = %bb.aj
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %.lr.ph.preheader.i.i111, label %._crit_edge.i.i109

.lr.ph.preheader.i.i111:                          ; preds = %.preheader.i.i108
  %wide.trip.count.i.i112 = zext nneg i32 %i.jd to i64 ; 8 uses
  br label %.lr.ph.i.i113

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

.lr.ph.i.i113:                                    ; preds = %33, %.lr.ph.preheader.i.i111
  %indvars.iv.i.i114 = phi i64 [ 0, %.lr.ph.preheader.i.i111 ], [ %indvars.iv.next.i.i116, %33 ] ; 9 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i114
  %i.jj = load i32, ptr %i.ji, align 4
  %.not.i.i115 = icmp slt i32 %i.jj, %i.ip
  br i1 %.not.i.i115, label %.critedge.i.i119, label %33

33:                                               ; preds = %.lr.ph.i.i113
  %indvars.iv.next.i.i116 = add nuw nsw i64 %indvars.iv.i.i114, 1 ; 2 uses
  %exitcond.not.i.i117 = icmp eq i64 %indvars.iv.next.i.i116, %wide.trip.count.i.i112
  br i1 %exitcond.not.i.i117, label %._crit_edge.i.i109, label %.lr.ph.i.i113, !llvm.loop !135

.critedge.i.i119:                                 ; preds = %.lr.ph.i.i113
  %34 = trunc nuw nsw i64 %indvars.iv.i.i114 to i32
  %.not16.not22.i.i120 = icmp sgt i32 %i.jd, %34
  br i1 %.not16.not22.i.i120, label %.lr.ph24.i.i121.preheader, label %._crit_edge.i.i109

.lr.ph24.i.i121.preheader:                        ; preds = %.critedge.i.i119
  %35 = sub nsw i64 %wide.trip.count.i.i112, %indvars.iv.i.i114
  %xtraiter336 = and i64 %35, 1
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph24.i.i121.prol.loopexit, label %.lr.ph24.i.i121.prol

.lr.ph24.i.i121.prol:                             ; preds = %.lr.ph24.i.i121.preheader
  %indvars.iv.next27.i.i123.prol = add nsw i64 %wide.trip.count.i.i112, -1 ; 3 uses
  %36 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123.prol
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i.i112
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123.prol
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i.i112
  store i32 %40, ptr %41, align 4
  br label %.lr.ph24.i.i121.prol.loopexit

.lr.ph24.i.i121.prol.loopexit:                    ; preds = %.lr.ph24.i.i121.prol, %.lr.ph24.i.i121.preheader
  %indvars.iv26.i.i122.unr = phi i64 [ %wide.trip.count.i.i112, %.lr.ph24.i.i121.preheader ], [ %indvars.iv.next27.i.i123.prol, %.lr.ph24.i.i121.prol ]
  %i.jk = add nsw i64 %wide.trip.count.i.i112, -1
  %i.jl = icmp eq i64 %indvars.iv.i.i114, %i.jk
  br i1 %i.jl, label %._crit_edge.i.i109, label %.lr.ph24.i.i121

._crit_edge.i.i109:                               ; preds = %33, %.lr.ph24.i.i121.prol.loopexit, %.lr.ph24.i.i121, %.critedge.i.i119, %.preheader.i.i108
  %.015.lcssa31.i.i110 = phi i64 [ 0, %.preheader.i.i108 ], [ %indvars.iv.i.i114, %.critedge.i.i119 ], [ %indvars.iv.i.i114, %.lr.ph24.i.i121.prol.loopexit ], [ %indvars.iv.i.i114, %.lr.ph24.i.i121 ], [ %wide.trip.count.i.i112, %33 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i110
  store i32 %i.ja, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i110
  store i32 %i.ip, ptr %i.jn, align 4
  %i.jo = add nsw i32 %i.jd, 1
  store i32 %i.jo, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

.lr.ph24.i.i121:                                  ; preds = %.lr.ph24.i.i121.prol.loopexit, %.lr.ph24.i.i121
  %indvars.iv26.i.i122 = phi i64 [ %indvars.iv.next27.i.i123.1, %.lr.ph24.i.i121 ], [ %indvars.iv26.i.i122.unr, %.lr.ph24.i.i121.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i.i123 = add nsw i64 %indvars.iv26.i.i122, -1 ; 4 uses
  %42 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i122
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i122
  store i32 %46, ptr %47, align 4
  %indvars.iv.next27.i.i123.1 = add nsw i64 %indvars.iv26.i.i122, -2 ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123.1
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123
  store i32 %i.jq, ptr %i.jr, align 4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123.1
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123
  store i32 %i.jt, ptr %i.ju, align 4
  %.not16.not.i.i124.1 = icmp sgt i64 %indvars.iv.next27.i.i123.1, %indvars.iv.i.i114
  br i1 %.not16.not.i.i124.1, label %.lr.ph24.i.i121, label %._crit_edge.i.i109, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125: ; preds = %bb.ag, %bb.ai, %bb.ak, %._crit_edge.i.i109
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %i.jv = trunc nuw i64 %indvars.iv.next254 to i32
  %i.jw = icmp slt i32 %i.jv, %i.ie
  br i1 %i.jw, label %bb.af, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !137

bb.al:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv ; 2 uses
  %i.jy = load atomic volatile i64, ptr %i.jx monotonic, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.ka = load atomic volatile i64, ptr %i.jz monotonic, align 8
  %i.kb = lshr i64 %i.ka, 32
  %i.kc = trunc nuw i64 %i.kb to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.jy, i32 noundef %i.kc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.kd = trunc nuw i64 %indvars.iv.next to i32
  %i.ke = icmp slt i32 %i.kd, %i.ie
  br i1 %i.ke, label %bb.al, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !138

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ab, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hn, i64 7872
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = icmp eq i64 %i.eu, %i.kg
  br i1 %i.kh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.an:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7) #32
  unreachable

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %bb.al, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125, %.preheader216, %.preheader, %._crit_edge.i.i, %bb.y, %bb.w, %bb.u, %._crit_edge.i, %bb.o, %bb.r, %bb.q, %bb.aa, %bb.am
  %i.ki = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !76, !noundef !77
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit
  %i.kk = load ptr, ptr %i.aq, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 7872
  %i.km = load i64, ptr %i.kl, align 8
  %.not = icmp eq i64 %i.eu, %i.km
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kn = load ptr, ptr %i.df, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 %1, ptr %i.b, align 4
  %i.ko = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.kn, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = icmp ugt i64 %i.kq, %i.eq
  br i1 %i.kr, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.ks = load ptr, ptr %i.ko, align 8
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.eq ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i8, ptr %i.ku, align 4, !range !76, !noundef !77
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 1, ptr %i.cz, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 5 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !range !76, !noundef !77
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.da, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145, %bb.au
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145 ], [ 0, %bb.au ] ; 3 uses
  %i.lb = load i32, ptr %i.kt, align 8            ; 4 uses
  %i.lc = icmp sgt i32 %i.lb, -1                  ; 2 uses
  br i1 %i.lc, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ld = icmp ne i32 %i.lb, -1
  %i.le = load i8, ptr %i.kx, align 1, !range !76
  %i.lf = trunc nuw i8 %i.le to i1                ; 2 uses
  %.not1.i = select i1 %i.ld, i1 true, i1 %i.lf
  br i1 %.not1.i, label %bb.ax, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

bb.ax:                                            ; preds = %bb.aw
  %i.lg = sub nsw i32 0, %i.lb
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = select i1 %i.lf, i64 0, i64 %i.lh
  br label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit: ; preds = %bb.av, %bb.aw, %bb.ax
  %.0.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.av ], [ %i.li, %bb.ax ]
  %i.lj = icmp slt i64 %indvars.iv268, %.0.i
  br i1 %i.lj, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit
  %i.lk = load i64, ptr %i.la, align 8            ; 2 uses
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv268 ; 2 uses
  %i.ln = icmp slt i32 %i.lb, 0
  %.0.in.i = select i1 %i.ln, ptr %i.lm, ptr %i.kt
  %.0.i126.a = load i32, ptr %.0.in.i, align 4    ; 8 uses
  %i.lo = load i32, ptr %i.cy, align 4            ; 7 uses
  %i.lp = sext i32 %i.lo to i64                   ; 4 uses
  %.idx6.i = shl nsw i64 %i.lp, 2                 ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.dd, i64 %.idx6.i
  %i.lr = ashr i64 %i.lp, 2                       ; 2 uses
  %i.ls = icmp sgt i64 %i.lr, 0
  br i1 %i.ls, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay
  %i.lt = and i64 %.idx6.i, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dd, i64 %i.lt
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.lr, %.lr.ph.i.i.i.i ], [ %i.mg, %bb.bd ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.mf, %bb.bd ] ; 9 uses
  %i.lu = load i32, ptr %.02946.i.i.i.i, align 4
  %i.lv = icmp eq i32 %i.lu, %.0.i126.a
  br i1 %i.lv, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = icmp eq i32 %i.lx, %.0.i126.a
  br i1 %i.ly, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = icmp eq i32 %i.ma, %.0.i126.a
  br i1 %i.mb, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = icmp eq i32 %i.md, %.0.i126.a
  br i1 %i.me, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.mg = add nsw i64 %.047.i.i.i.i, -1
  %i.mh = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.mh, label %bb.az, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !139

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bd
  %i.mi = and i64 %i.lp, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.ay
  %.pre-phi56.i.i.i.i = phi i64 [ %i.mi, %._crit_edge.loopexit.i.i.i.i ], [ %i.lp, %bb.ay ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dd, %bb.ay ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread [
    i64 3, label %bb.be
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mj = load i32, ptr %.029.lcssa.i.i.i.i, align 4
  %i.mk = icmp eq i32 %i.mj, %.0.i126.a
  br i1 %i.mk, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ml = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.bf, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ml, %bb.bf ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.mm = load i32, ptr %.1.i.i.i.i, align 4
  %i.mn = icmp eq i32 %i.mm, %.0.i126.a
  br i1 %i.mn, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.bg, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.mo, %bb.bg ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.mp = load i32, ptr %.2.i.i.i.i, align 4
  %i.mq = icmp eq i32 %i.mp, %.0.i126.a
  br i1 %i.mq, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit: ; preds = %bb.ba
  %i.mr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304: ; preds = %bb.bb
  %i.ms = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306: ; preds = %bb.bc
  %i.mt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit: ; preds = %bb.az, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306, %bb.be, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.be ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.mt, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306 ], [ %i.ms, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304 ], [ %i.mr, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.az ]
  %.not211 = icmp eq ptr %.028.i.i.i.i, %i.lq
  br i1 %.not211, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  br i1 %i.lc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.mu = trunc i64 %i.lk to i32
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

bb.bi:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.mw = load i32, ptr %i.mv, align 4
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit: ; preds = %bb.bh, %bb.bi
  %.0.i127 = phi i32 [ %i.mu, %bb.bh ], [ %i.mw, %bb.bi ] ; 2 uses
  %i.mx = icmp eq i32 %i.lo, 4
  %i.my = load i8, ptr %i.da, align 1, !range !76
  %i.mz = trunc nuw i8 %i.my to i1
  %or.cond.i128 = select i1 %i.mx, i1 true, i1 %i.mz
  br i1 %or.cond.i128, label %bb.bj, label %.preheader.i129

.preheader.i129:                                  ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  %i.na = icmp sgt i32 %i.lo, 0
  br i1 %i.na, label %.lr.ph.preheader.i132, label %._crit_edge.i130

.lr.ph.preheader.i132:                            ; preds = %.preheader.i129
  %wide.trip.count.i133 = zext nneg i32 %i.lo to i64 ; 7 uses
  br label %.lr.ph.i134

bb.bj:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

.lr.ph.i134:                                      ; preds = %48, %.lr.ph.preheader.i132
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %indvars.iv.next.i137, %48 ] ; 9 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i135
  %i.nc = load i32, ptr %i.nb, align 4
  %.not.i136 = icmp slt i32 %i.nc, %.0.i127
  br i1 %.not.i136, label %.critedge.i139, label %48

48:                                               ; preds = %.lr.ph.i134
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next.i137, %wide.trip.count.i133
  br i1 %exitcond.not.i138, label %._crit_edge.i130.loopexit235, label %.lr.ph.i134, !llvm.loop !135

.critedge.i139:                                   ; preds = %.lr.ph.i134
  %49 = trunc nuw nsw i64 %indvars.iv.i135 to i32
  %.not16.not22.i140 = icmp sgt i32 %i.lo, %49
  br i1 %.not16.not22.i140, label %.lr.ph24.i141.preheader, label %._crit_edge.i130

.lr.ph24.i141.preheader:                          ; preds = %.critedge.i139
  %50 = sub nsw i64 %wide.trip.count.i133, %indvars.iv.i135
  %xtraiter351 = and i64 %50, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph24.i141.prol.loopexit, label %.lr.ph24.i141.prol

.lr.ph24.i141.prol:                               ; preds = %.lr.ph24.i141.preheader
  %indvars.iv.next27.i143.prol = add nsw i64 %wide.trip.count.i133, -1 ; 3 uses
  %51 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143.prol
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i133
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143.prol
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i133
  store i32 %55, ptr %56, align 4
  br label %.lr.ph24.i141.prol.loopexit

.lr.ph24.i141.prol.loopexit:                      ; preds = %.lr.ph24.i141.prol, %.lr.ph24.i141.preheader
  %indvars.iv26.i142.unr = phi i64 [ %wide.trip.count.i133, %.lr.ph24.i141.preheader ], [ %indvars.iv.next27.i143.prol, %.lr.ph24.i141.prol ]
  %i.nd = add nsw i64 %wide.trip.count.i133, -1
  %i.ne = icmp eq i64 %indvars.iv.i135, %i.nd
  br i1 %i.ne, label %._crit_edge.i130, label %.lr.ph24.i141

._crit_edge.i130.loopexit235:                     ; preds = %48
  %i.nf = zext nneg i32 %i.lo to i64
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %.lr.ph24.i141.prol.loopexit, %.lr.ph24.i141, %._crit_edge.i130.loopexit235, %.critedge.i139, %.preheader.i129
  %.015.lcssa31.i131 = phi i64 [ 0, %.preheader.i129 ], [ %indvars.iv.i135, %.critedge.i139 ], [ %i.nf, %._crit_edge.i130.loopexit235 ], [ %indvars.iv.i135, %.lr.ph24.i141 ], [ %indvars.iv.i135, %.lr.ph24.i141.prol.loopexit ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i131
  store i32 %.0.i126.a, ptr %i.ng, align 4
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i131
  store i32 %.0.i127, ptr %i.nh, align 4
  %i.ni = add nsw i32 %i.lo, 1
  store i32 %i.ni, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

.lr.ph24.i141:                                    ; preds = %.lr.ph24.i141.prol.loopexit, %.lr.ph24.i141
  %indvars.iv26.i142 = phi i64 [ %indvars.iv.next27.i143.1, %.lr.ph24.i141 ], [ %indvars.iv26.i142.unr, %.lr.ph24.i141.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i143 = add nsw i64 %indvars.iv26.i142, -1 ; 4 uses
  %57 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i142
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i142
  store i32 %61, ptr %62, align 4
  %indvars.iv.next27.i143.1 = add nsw i64 %indvars.iv26.i142, -2 ; 4 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143.1
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143
  store i32 %i.nk, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143.1
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143
  store i32 %i.nn, ptr %i.no, align 4
  %.not16.not.i144.1 = icmp sgt i64 %indvars.iv.next27.i143.1, %indvars.iv.i135
  br i1 %.not16.not.i144.1, label %.lr.ph24.i141, label %._crit_edge.i130, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145: ; preds = %._crit_edge.i130, %bb.bj, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1
  br label %bb.av, !llvm.loop !140

.critedge:                                        ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, %bb.ap, %bb.ao
  call void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %2)
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %i.np = trunc nuw i64 %indvars.iv.next272 to i32
  %i.nq = icmp slt i32 %i.np, %i.al
  br i1 %i.nq, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !141

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread: ; preds = %bb.a, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97, %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8112
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 32
  %i.g = tail call noundef ptr @_ZN2v88internal4wasm34GetProcessWideWasmCodePointerTableEv() #29
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load atomic i64, ptr %i.i monotonic, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #29
  %i.l = tail call noundef ptr @_ZNK2v88internal4wasm15WasmCodeManager10LookupCodeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef null, i64 noundef %i.j) #29 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 263
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %.not12 = icmp eq ptr %i.m, %i.y
  br i1 %.not12, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.ac, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ag = icmp eq i32 %i.ae, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !range !76
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.al = icmp sgt i32 %i.ae, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ae to i64 ; 7 uses
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ah, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 9 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4
  %.not.i = icmp slt i32 %i.an, %2
  br i1 %.not.i, label %.critedge.i, label %3

3:                                                ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit19, label %.lr.ph.i, !llvm.loop !135

.critedge.i:                                      ; preds = %.lr.ph.i
  %4 = trunc nuw nsw i64 %indvars.iv.i to i32
  %.not16.not22.i = icmp sgt i32 %i.ae, %4
  br i1 %.not16.not22.i, label %.lr.ph24.i.preheader, label %._crit_edge.i

.lr.ph24.i.preheader:                             ; preds = %.critedge.i
  %5 = sub nsw i64 %wide.trip.count.i, %indvars.iv.i
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader
  %indvars.iv.next27.i.prol = add nsw i64 %wide.trip.count.i, -1 ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i.prol
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %wide.trip.count.i
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i.prol
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %wide.trip.count.i
  store i32 %10, ptr %11, align 4
  br label %.lr.ph24.i.prol.loopexit

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph24.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph24.i.prol ]
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  %i.ap = icmp eq i64 %indvars.iv.i, %i.ao
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph24.i

._crit_edge.i.loopexit19:                         ; preds = %3
  %i.aq = zext nneg i32 %i.ae to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %._crit_edge.i.loopexit19, %.critedge.i, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.i, %.critedge.i ], [ %i.aq, %._crit_edge.i.loopexit19 ], [ %indvars.iv.i, %.lr.ph24.i ], [ %indvars.iv.i, %.lr.ph24.i.prol.loopexit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.015.lcssa31.i
  store i32 %i.aa, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.015.lcssa31.i
  store i32 %2, ptr %i.as, align 4
  %i.at = add nsw i32 %i.ae, 1
  store i32 %i.at, ptr %i.ad, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph24.i ], [ %indvars.iv26.i.unr, %.lr.ph24.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv26.i
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv26.i
  store i32 %16, ptr %17, align 4
  %indvars.iv.next27.i.1 = add nsw i64 %indvars.iv26.i, -2 ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i.1
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i.1
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i
  store i32 %i.ay, ptr %i.az, align 4
  %.not16.not.i.1 = icmp sgt i64 %indvars.iv.next27.i.1, %indvars.iv.i
  br i1 %.not16.not.i.1, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %.critedge, %bb.g, %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.82, i32 noundef %i.g, i32 noundef %i.i) #29
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit:  ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 1, ptr %i.r, align 1
  %i.s = load i32, ptr %i.k, align 8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.k, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  switch i32 %i.v, label %bb.i [
    i32 0, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21
    i32 1, label %bb.e
  ]

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 4 uses
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 0, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.x, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.x, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.83, i32 noundef %i.ak, i32 noundef %i.am) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av ; 7 uses
  store i32 %i.ao, ptr %i.ax, align 8
  %i.ay = icmp slt i32 %i.ao, -1
  br i1 %i.ay, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24, label %_ZN2v88internal4wasm13FeedbackMaker9AddResultENS1_16CallSiteFeedbackE.exit31

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24: ; preds = %bb.g
  %i.az = sub nsw i32 0, %i.ao                    ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 6 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 3 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #31 ; 10 uses
  %i.bd = inttoptr i64 %i.ar to ptr               ; 10 uses
  %min.iters.check = icmp ult i32 %i.az, 6
  br i1 %min.iters.check, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep77 = getelementptr i8, ptr %i.bd, i64 %i.bb
  %bound0 = icmp ult ptr %i.bc, %scevgep77
  %bound1 = icmp ugt ptr %scevgep, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.be = or disjoint i64 %index, 2               ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %wide.vec = load <4 x i32>, ptr %i.bf, align 4, !alias.scope !142
  %wide.vec79 = load <4 x i32>, ptr %i.bg, align 4, !alias.scope !142
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store <4 x i32> %wide.vec, ptr %i.bh, align 4, !alias.scope !145, !noalias !142
  store <4 x i32> %wide.vec79, ptr %i.bi, align 4, !alias.scope !145, !noalias !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %.loopexit118, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader: ; preds = %vector.memcheck, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24, %middle.block
  %indvars.iv.i.i26.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol
  %indvars.iv.i.i26.prol = phi i64 [ %indvars.iv.next.i.i28.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ], [ %indvars.iv.i.i26.ph, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ], [ 0, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i26.prol ; 2 uses
  %.0.i19.i.i27.prol = load i32, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i26.prol ; 2 uses
  store i32 %.0.i19.i.i27.prol, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bn, ptr %i.bo, align 4
  %indvars.iv.next.i.i28.prol = add nuw nsw i64 %indvars.iv.i.i26.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol, !llvm.loop !148

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader
  %indvars.iv.i.i26.unr = phi i64 [ %indvars.iv.i.i26.ph, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ], [ %indvars.iv.next.i.i28.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ]
  %i.bp = sub nsw i64 %indvars.iv.i.i26.ph, %i.ba
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.loopexit118, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25
  %indvars.iv.i.i26 = phi i64 [ %indvars.iv.next.i.i28.3, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25 ], [ %indvars.iv.i.i26.unr, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i26 ; 2 uses
  %.0.i19.i.i27 = load i32, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i26 ; 2 uses
  store i32 %.0.i19.i.i27, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.bu, ptr %i.bv, align 4
  %indvars.iv.next.i.i28 = add nuw nsw i64 %indvars.iv.i.i26, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i28 ; 2 uses
  %.0.i19.i.i27.1 = load i32, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i28 ; 2 uses
  store i32 %.0.i19.i.i27.1, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next.i.i28.1 = add nuw nsw i64 %indvars.iv.i.i26, 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i28.1 ; 2 uses
  %.0.i19.i.i27.2 = load i32, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i28.1 ; 2 uses
  store i32 %.0.i19.i.i27.2, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.ce, ptr %i.cf, align 4
end_hunk_0
