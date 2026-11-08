Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CB3DMeshFileLoader?download=true
inline.NumInlined: 1646
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5scene18CB3DMeshFileLoader13readChunkTEXSEv:bb.a
pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.gd = extractelement <8 x i1> %i.fv, i64 7
  br i1 %i.gd, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 47, ptr %next.gep176, align 1, !tbaa !72
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %index.next194 = add nuw i64 %index168, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next194, %n.vec167
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %pred.store.continue193
  %cmp.n195 = icmp eq i64 %i.cu, %n.vec167
  br i1 %cmp.n195, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.ph = phi ptr [ %i.cs, %iter.check ], [ %i.cx, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.v
  %.sroa.02.07.i = phi ptr [ %i.gh, %bb.v ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.gf = load i8, ptr %.sroa.02.07.i, align 1, !tbaa !72
  %i.gg = icmp eq i8 %i.gf, 92
  br i1 %i.gg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.sroa.02.07.i, align 1, !tbaa !72
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 2 uses
  %.not.i16 = icmp eq ptr %i.gh, %i.cv
  br i1 %.not.i16, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i, !llvm.loop !201

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit: ; preds = %bb.v, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gi = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.at, i64 -32
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !14
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i64 %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull %i.gj, i64 noundef 4) ; 0 uses
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.at, i64 -28
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !14
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = call noundef i64 %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull %i.go, i64 noundef 4) ; 0 uses
  %i.gs = getelementptr inbounds i8, ptr %i.at, i64 -24
  %i.gt = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !14
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull %i.gs, i64 noundef 4), !inline_history !109 ; 0 uses
  %i.gx = getelementptr inbounds i8, ptr %i.at, i64 -20
  %i.gy = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !14
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call noundef i64 %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull %i.gx, i64 noundef 4), !inline_history !109 ; 0 uses
  %i.hc = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.hd = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !14
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call noundef i64 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull %i.hc, i64 noundef 4), !inline_history !109 ; 0 uses
  %i.hh = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.hi = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !14
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef i64 %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull %i.hh, i64 noundef 4), !inline_history !109 ; 0 uses
  %i.hm = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.hn = load ptr, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !14
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call noundef i64 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull %i.hm, i64 noundef 4), !inline_history !109 ; 0 uses
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %._crit_edge, label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit13, !llvm.loop !202

bb.w:                                             ; preds = %bb.e
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.i
  br i1 %i.hw, label %_ZN5scene11SB3dTextureD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.w
  %i.hx = load i64, ptr %i.i, align 8, !tbaa !72
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #26
  br label %_ZN5scene11SB3dTextureD2Ev.exit21

_ZN5scene11SB3dTextureD2Ev.exit21:                ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %common.resume

bb.x:                                             ; preds = %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit13
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64               ; 2 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = lshr exact i64 %i.id, 4
  %i.if = add nuw nsw i64 %i.ie, 4294967295
  %i.ig = and i64 %i.if, 4294967295               ; 2 uses
  %i.ih = ashr exact i64 %i.id, 4
  %i.ii = icmp ugt i64 %i.ih, %i.ig
  br i1 %i.ii, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5scene9SB3dChunkESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 363, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj) #28
  unreachable

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5scene9SB3dChunkESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.x
  %.idx = shl nuw nsw i64 %i.ig, 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 4 uses
  %.not.i.i.i22 = icmp eq ptr %i.ik, %i.hz
  br i1 %.not.i.i.i22, label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5scene9SB3dChunkESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.ib, %i.il                    ; 3 uses
  %i.in = icmp sgt i64 %i.im, 16
  br i1 %i.in, label %bb.aa, label %bb.ab, !prof !97

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ij, ptr nonnull align 8 %i.ik, i64 %i.im, i1 false)
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

bb.ab:                                            ; preds = %bb.z
  %i.io = icmp eq i64 %i.im, 16
  br i1 %i.io, label %bb.ac, label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !tbaa.struct !91
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit:  ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5scene9SB3dChunkESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.aa, %bb.ab, %bb.ac
  %i.ip = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -16
  store ptr %i.iq, ptr %i.c, align 8, !tbaa !88
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene18CB3DMeshFileLoader13readChunkBRUSEv(ptr noundef nonnull align 8 dereferenceable(247) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"struct.scene::SB3dMaterial", align 8 ; 27 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !89   ; 4 uses
  %i.k = call i32 @llvm.umin.i32(i32 %i.j, i32 4) ; 7 uses
  %i.l = call i32 @llvm.usub.sat.i32(i32 %i.j, i32 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge155, label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96.lr.ph

_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96.lr.ph: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not156 = icmp eq i32 %i.j, 0                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.not157.not = icmp ugt i32 %i.j, 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 2 uses
  %i.au = add nsw i32 %i.k, -1                    ; 7 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  %i.av = add nsw i32 %i.k, -1                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, %i.au
  %3 = zext i32 %i.av to i64
  %.not84 = icmp eq i32 %i.av, 0
  %i.ax = add nsw i32 %i.k, -2                    ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %i.au
  %4 = zext i32 %i.ax to i64                      ; 2 uses
  %.not84.1 = icmp eq i32 %i.ax, 0
  %i.az = add nsw i32 %i.k, -3                    ; 3 uses
  %i.ba = icmp ult i32 %i.az, %i.au
  %5 = zext i32 %i.az to i64
  %.not84.2 = icmp eq i32 %i.az, 0
  %i.bb = add nsw i32 %i.k, -4                    ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %i.au
  %6 = zext i32 %i.bb to i64                      ; 2 uses
  %indvars.iv.next163.prol.3 = add nuw nsw i64 %6, 1 ; 2 uses
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96

._crit_edge155:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv) #28
  unreachable

_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96: ; preds = %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = phi ptr [ %i.p, %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96.lr.ph ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !95
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !96
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add nsw i64 %i.bf, %i.bi
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bp = icmp sgt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.b, label %bb.bv

bb.b:                                             ; preds = %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  store ptr %i.r, ptr %1, align 8, !tbaa !68, !alias.scope !213
  store i64 0, ptr %i.s, align 8, !tbaa !71, !alias.scope !213
  store i8 0, ptr %i.r, align 8, !tbaa !72, !alias.scope !213
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !213
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !74, !noalias !213 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !213
  %i.bw = load ptr, ptr %1, align 8, !tbaa !73, !alias.scope !213 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.r
  br i1 %i.bx, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.by = load i64, ptr %i.r, align 8, !tbaa !72, !alias.scope !213
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #26
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  %i.ca = load i8, ptr %i.a, align 1, !tbaa !72, !noalias !213 ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !71, !alias.scope !213 ; 4 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = load ptr, ptr %1, align 8, !tbaa !73, !alias.scope !213 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.r
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i: ; preds = %bb.g
  %i.cg = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.g
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !72, !alias.scope !213
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i
  %i.ci = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i ]
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc9.i unwind label %bb.e

.noexc9.i:                                        ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !73, !alias.scope !213
  br label %bb.i

bb.i:                                             ; preds = %.noexc9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ck = phi ptr [ %.pre.i.i, %.noexc9.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store i8 %i.ca, ptr %i.cl, align 1, !tbaa !72
  store i64 %i.cd, ptr %i.s, align 8, !tbaa !71, !alias.scope !213
  %i.cm = load ptr, ptr %1, align 8, !tbaa !73, !alias.scope !213
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cd
  store i8 0, ptr %i.cn, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !213
  br label %bb.c

common.resume:                                    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %common.resume.op = phi { ptr, i32 } [ %.pn92.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bv, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !115
  %i.co = load i16, ptr %i.u, align 8
  %i.cp = and i16 %i.co, -4096
  store i16 %i.cp, ptr %i.u, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.v, align 2, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.cq = load i16, ptr %i.x, align 8
  %i.cr = and i16 %i.cq, -4096
  store i16 %i.cr, ptr %i.x, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.y, align 2, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.cs = load i16, ptr %i.aa, align 8
  %i.ct = and i16 %i.cs, -4096
  store i16 %i.ct, ptr %i.aa, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ab, align 2, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.cu = load i16, ptr %i.ad, align 8
  %i.cv = and i16 %i.cu, -4096
  store i16 %i.cv, ptr %i.ad, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ae, align 2, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ag, align 4, !tbaa !116
  store i16 3857, ptr %i.ah, align 4
  store i8 -108, ptr %i.ai, align 2
  store <4 x float> splat (float 1.000000e+00), ptr %i.aj, align 8, !tbaa !116
  store float 0.000000e+00, ptr %i.ak, align 8, !tbaa !214
  store i32 1, ptr %i.al, align 4, !tbaa !215
  store i32 0, ptr %i.am, align 8, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i8 0, i64 32, i1 false), !tbaa !107
  %i.cw = load ptr, ptr %i.ao, align 8, !tbaa !126 ; 4 uses
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !103
  %.not.i.i.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5video9SMaterialC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.cw, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  %i.cz = load ptr, ptr %i.ao, align 8, !tbaa !126
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  store ptr %i.da, ptr %i.ao, align 8, !tbaa !126
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIN5scene12SB3dMaterialESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %i.t, ptr %i.cw, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %.noexc, %bb.l
  store i8 0, ptr %i.aq, align 8, !tbaa !30
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i98, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 64) #26
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i:           ; preds = %bb.n, %bb.m
  %i.dc = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
  %.not.i.1.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.1.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 64) #26
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i:         ; preds = %bb.o, %_ZN5video14SMaterialLayerD2Ev.exit.i.i
  %i.dd = load ptr, ptr %i.z, align 8, !tbaa !127 ; 2 uses
  %.not.i.2.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.2.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 64) #26
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i:         ; preds = %bb.p, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i
  %i.de = load ptr, ptr %i.w, align 8, !tbaa !127 ; 2 uses
  %.not.i.3.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.3.i.i, label %_ZN5scene12SB3dMaterialD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 64) #26
  br label %_ZN5scene12SB3dMaterialD2Ev.exit

_ZN5scene12SB3dMaterialD2Ev.exit:                 ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !102
  %i.dg = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 24 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
end_hunk_0
begin_hunk_1_@_ZN5scene18CB3DMeshFileLoader13readChunkBRUSEv:bb.a
_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit: ; preds = %_ZN4core5arrayIN5scene12SB3dMaterialEE7getLastEv.exit
  %i.dn = getelementptr inbounds i8, ptr %i.dg, i64 -60
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !14
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef i64 %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %i.dn, i64 noundef 4)
          to label %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit101 unwind label %bb.y, !inline_history !109 ; 0 uses

_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit101: ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit
  %i.ds = getelementptr inbounds i8, ptr %i.dg, i64 -56
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !14
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i64 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %i.ds, i64 noundef 4)
          to label %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit103 unwind label %bb.y, !inline_history !109 ; 0 uses

_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit103: ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit101
  %i.dx = getelementptr inbounds i8, ptr %i.dg, i64 -52 ; 3 uses
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !14
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.dx, i64 noundef 4)
          to label %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105 unwind label %bb.y, !inline_history !109 ; 0 uses

_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105: ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit103
  %i.ec = getelementptr inbounds i8, ptr %i.dg, i64 -48
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.ec, i64 noundef 4)
          to label %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107 unwind label %bb.y, !inline_history !109 ; 0 uses

_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107: ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.dg, i64 -44
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !14
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke noundef i64 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull %i.ei, i64 noundef 4)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107
  %i.em = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.dg, i64 -40 ; 2 uses
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !14
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef i64 %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull %i.en, i64 noundef 4)
          to label %.preheader112 unwind label %bb.y ; 0 uses

.preheader112:                                    ; preds = %bb.s
  br i1 %.not156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader112
  %i.er = getelementptr inbounds i8, ptr %i.dg, i64 -32
  br label %bb.t

.preheader:                                       ; preds = %bb.aa
  br i1 %.not157.not, label %.lr.ph146, label %._crit_edge

bb.t:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 -1, ptr %i.c, align 4, !tbaa !89
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !14
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef i64 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.u unwind label %bb.z       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ew = load i32, ptr %i.c, align 4, !tbaa !89  ; 2 uses
  %i.ex = load ptr, ptr %i.as, align 8, !tbaa !105
  %i.ey = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 2 uses
  %i.fc = lshr exact i64 %i.fb, 6
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp ult i32 %i.ew, %i.fd
  br i1 %i.fe, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ff = zext i32 %i.ew to i64                   ; 2 uses
  %i.fg = ashr exact i64 %i.fb, 6
  %i.fh = icmp ugt i64 %i.fg, %i.ff
  br i1 %i.fh, label %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene11SB3dTextureEEixEj) #28
  unreachable

_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit:   ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw [64 x i8], ptr %i.ey, i64 %i.ff
  br label %bb.aa

bb.x:                                             ; preds = %bb.l, %bb.k
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene12SB3dMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bu

bb.y:                                             ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit103, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit101, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit, %_ZN4core5arrayIN5scene12SB3dMaterialEE7getLastEv.exit, %bb.s, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.z:                                             ; preds = %bb.t
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.bu

bb.aa:                                            ; preds = %bb.u, %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit
  %.sink = phi ptr [ %i.fi, %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit ], [ null, %bb.u ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv
  store ptr %.sink, ptr %i.fm, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.t, !llvm.loop !209

.lr.ph146:                                        ; preds = %.preheader, %bb.ag
  %.1145 = phi i32 [ %i.gd, %bb.ag ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 -1, ptr %i.d, align 4, !tbaa !89
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !14
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke noundef i64 %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.ab unwind label %bb.af     ; 0 uses

bb.ab:                                            ; preds = %.lr.ph146
  %i.fr = load i8, ptr %i.at, align 2, !tbaa !63, !range !128, !noundef !129
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = load i32, ptr %i.d, align 4
  %i.fu = icmp ne i32 %i.ft, -1
  %or.cond = select i1 %i.fs, i1 %i.fu, i1 false
  %i.fv = load i32, ptr %i.b, align 4
  %i.fw = icmp ugt i32 %i.fv, 4
  %or.cond3 = select i1 %or.cond, i1 %i.fw, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i32 noundef 2)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.at, align 2, !tbaa !63
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph146
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bu

bb.ag:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.gd = add nuw i32 %.1145, 1                   ; 2 uses
  %exitcond159.not = icmp eq i32 %i.gd, %i.l
  br i1 %exitcond159.not, label %._crit_edge, label %.lr.ph146, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.ag, %.preheader112, %.preheader
  %i.ge = getelementptr inbounds i8, ptr %i.dg, i64 -32 ; 19 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !107 ; 3 uses
  %.not = icmp eq ptr %i.gf, null
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !218
  %i.gi = and i32 %i.gh, 65536
  %.not83 = icmp eq i32 %i.gi, 0
  br i1 %.not83, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr inbounds i8, ptr %i.dg, i64 -24 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !107
  store ptr %i.gf, ptr %i.gj, align 8, !tbaa !107
  store ptr %i.gk, ptr %i.ge, align 8, !tbaa !107
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge
  br i1 %.not156, label %._crit_edge154, label %.lr.ph153

.loopexit:                                        ; preds = %bb.bc, %.lr.ph153
  br i1 %.not84, label %._crit_edge154, label %.lr.ph153.1

.lr.ph153.1:                                      ; preds = %.loopexit
  br i1 %i.ay, label %.lr.ph149.prol.1, label %.loopexit.1

.lr.ph149.prol.1:                                 ; preds = %.lr.ph153.1
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %4
  %7 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %.not91.prol.1 = icmp eq ptr %i.gm, null
  br i1 %.not91.prol.1, label %.loopexit.1, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph149.prol.1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %4 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !107
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.al, label %.loopexit.1

bb.al:                                            ; preds = %bb.ak
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !107
  store ptr null, ptr %7, align 8, !tbaa !107
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph149.prol.1, %bb.ak, %bb.al, %.lr.ph153.1
  br i1 %.not84.1, label %._crit_edge154, label %.lr.ph153.2

.lr.ph153.2:                                      ; preds = %.loopexit.1
  br i1 %i.ba, label %.lr.ph149.2, label %.loopexit.2

.lr.ph149.2:                                      ; preds = %.lr.ph153.2, %bb.aq
  %indvars.iv162.2 = phi i64 [ %indvars.iv.next163.1.2, %bb.aq ], [ %5, %.lr.ph153.2 ] ; 3 uses
  %indvars.iv.next163.2 = add nuw nsw i64 %indvars.iv162.2, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.2 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !107 ; 2 uses
  %.not91.2 = icmp eq ptr %i.gr, null
  br i1 %.not91.2, label %.lr.ph149.1.2, label %bb.am

bb.am:                                            ; preds = %.lr.ph149.2
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv162.2 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !107
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.an, label %.lr.ph149.1.2

bb.an:                                            ; preds = %bb.am
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !107
  store ptr null, ptr %i.gq, align 8, !tbaa !107
  br label %.lr.ph149.1.2

.lr.ph149.1.2:                                    ; preds = %bb.an, %bb.am, %.lr.ph149.2
  %indvars.iv.next163.1.2 = add nuw nsw i64 %indvars.iv162.2, 2 ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.1.2 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !107 ; 2 uses
  %.not91.1.2 = icmp eq ptr %i.gw, null
  br i1 %.not91.1.2, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph149.1.2
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.2 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !107
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !107
  store ptr null, ptr %i.gv, align 8, !tbaa !107
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.lr.ph149.1.2
  %lftr.wideiv.1.2 = trunc i64 %indvars.iv.next163.1.2 to i32
  %exitcond165.not.1.2 = icmp eq i32 %i.au, %lftr.wideiv.1.2
  br i1 %exitcond165.not.1.2, label %.loopexit.2, label %.lr.ph149.2, !llvm.loop !211

.loopexit.2:                                      ; preds = %bb.aq, %.lr.ph153.2
  %.not195 = xor i1 %i.bc, true
  %brmerge = select i1 %.not84.2, i1 true, i1 %.not195
  br i1 %brmerge, label %._crit_edge154, label %.lr.ph149.prol.3

.lr.ph149.prol.3:                                 ; preds = %.loopexit.2
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.prol.3 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !107 ; 2 uses
  %.not91.prol.3 = icmp eq ptr %i.hb, null
  br i1 %.not91.prol.3, label %.lr.ph149.preheader.new.3, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph149.prol.3
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %6 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !107
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.as, label %.lr.ph149.preheader.new.3

bb.as:                                            ; preds = %bb.ar
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !107
  store ptr null, ptr %i.ha, align 8, !tbaa !107
  br label %.lr.ph149.preheader.new.3

.lr.ph149.preheader.new.3:                        ; preds = %bb.as, %bb.ar, %.lr.ph149.prol.3
  br label %.lr.ph149.3

.lr.ph149.3:                                      ; preds = %bb.ax, %.lr.ph149.preheader.new.3
  %indvars.iv162.3 = phi i64 [ %indvars.iv.next163.prol.3, %.lr.ph149.preheader.new.3 ], [ %indvars.iv.next163.1.3, %bb.ax ] ; 3 uses
  %indvars.iv.next163.3 = add nuw nsw i64 %indvars.iv162.3, 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.3 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !107 ; 2 uses
  %.not91.3 = icmp eq ptr %i.hg, null
  br i1 %.not91.3, label %.lr.ph149.1.3, label %bb.at

bb.at:                                            ; preds = %.lr.ph149.3
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv162.3 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !107
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.au, label %.lr.ph149.1.3

bb.au:                                            ; preds = %bb.at
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !107
  store ptr null, ptr %i.hf, align 8, !tbaa !107
  br label %.lr.ph149.1.3

.lr.ph149.1.3:                                    ; preds = %bb.au, %bb.at, %.lr.ph149.3
  %indvars.iv.next163.1.3 = add nuw nsw i64 %indvars.iv162.3, 2 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.1.3 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !107 ; 2 uses
  %.not91.1.3 = icmp eq ptr %i.hl, null
  br i1 %.not91.1.3, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.lr.ph149.1.3
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.3 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !107
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !107
  store ptr null, ptr %i.hk, align 8, !tbaa !107
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.lr.ph149.1.3
  %lftr.wideiv.1.3 = trunc i64 %indvars.iv.next163.1.3 to i32
  %exitcond165.not.1.3 = icmp eq i32 %i.au, %lftr.wideiv.1.3
  br i1 %exitcond165.not.1.3, label %._crit_edge154, label %.lr.ph149.3, !llvm.loop !211

.lr.ph153:                                        ; preds = %bb.aj
  br i1 %i.aw, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.lr.ph153, %bb.bc
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %bb.bc ], [ %3, %.lr.ph153 ] ; 3 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !107 ; 2 uses
  %.not91 = icmp eq ptr %i.hq, null
  br i1 %.not91, label %.lr.ph149.1, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph149
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv162 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !107
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.az, label %.lr.ph149.1

bb.az:                                            ; preds = %bb.ay
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !107
  store ptr null, ptr %i.hp, align 8, !tbaa !107
  br label %.lr.ph149.1

.lr.ph149.1:                                      ; preds = %.lr.ph149, %bb.ay, %bb.az
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163.1 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !107 ; 2 uses
  %.not91.1 = icmp eq ptr %i.hv, null
  br i1 %.not91.1, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph149.1
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next163 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !107
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !107
  store ptr null, ptr %i.hu, align 8, !tbaa !107
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph149.1
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next163.1 to i32
  %exitcond165.not.1 = icmp eq i32 %i.au, %lftr.wideiv.1
  br i1 %exitcond165.not.1, label %.loopexit, label %.lr.ph149, !llvm.loop !211

._crit_edge154:                                   ; preds = %.loopexit.2, %.loopexit, %.loopexit.1, %bb.ax, %bb.aj
  %i.hz = getelementptr inbounds i8, ptr %i.dg, i64 -24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !107
  %.not85 = icmp eq ptr %i.ia, null
  br i1 %.not85, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge154
  %i.ib = getelementptr inbounds i8, ptr %i.dg, i64 -96
  store i32 3, ptr %i.ib, align 8, !tbaa !219
  %i.ic = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 2
  %i.ie = and i8 %i.id, -13
  store i8 %i.ie, ptr %i.ic, align 2
  br label %bb.bp

bb.be:                                            ; preds = %._crit_edge154
  %i.if = load ptr, ptr %i.ge, align 8, !tbaa !107 ; 2 uses
  %.not86 = icmp eq ptr %i.if, null
  br i1 %.not86, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !218 ; 2 uses
  %i.ii = and i32 %i.ih, 2
  %.not87 = icmp eq i32 %i.ii, 0
  br i1 %.not87, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ij = getelementptr inbounds i8, ptr %i.dg, i64 -96
  store i32 1, ptr %i.ij, align 8, !tbaa !219
  %i.ik = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 2
  %i.im = and i8 %i.il, -13
  store i8 %i.im, ptr %i.ik, align 2
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bf
  %i.in = and i32 %i.ih, 4
  %.not88 = icmp eq i32 %i.in, 0
  br i1 %.not88, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.io = getelementptr inbounds i8, ptr %i.dg, i64 -96
  store i32 2, ptr %i.io, align 8, !tbaa !219
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  %i.ip = load float, ptr %i.dx, align 4, !tbaa !130
  %i.iq = fcmp oeq float %i.ip, 1.000000e+00
  %i.ir = getelementptr inbounds i8, ptr %i.dg, i64 -96 ; 2 uses
  br i1 %i.iq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.ir, align 8, !tbaa !219
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  store i32 3, ptr %i.ir, align 8, !tbaa !219
  %i.is = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.it = load i8, ptr %i.is, align 2
  %i.iu = and i8 %i.it, -13
  store i8 %i.iu, ptr %i.is, align 2
  br label %bb.bp

bb.bm:                                            ; preds = %bb.be
  %i.iv = load float, ptr %i.dx, align 4, !tbaa !130
  %i.iw = fcmp oeq float %i.iv, 1.000000e+00
  %i.ix = getelementptr inbounds i8, ptr %i.dg, i64 -96 ; 2 uses
  br i1 %i.iw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ix, align 8, !tbaa !219
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  store i32 3, ptr %i.ix, align 8, !tbaa !219
  %i.iy = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 2
  %i.ja = and i8 %i.iz, -13
  store i8 %i.ja, ptr %i.iy, align 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bi, %bb.bl, %bb.bk, %bb.bg, %bb.bo, %bb.bn, %bb.bd
  %i.jb = load i32, ptr %i.en, align 8, !tbaa !216 ; 2 uses
  %i.jc = and i32 %i.jb, 16
  %.not89 = icmp eq i32 %i.jc, 0
  br i1 %.not89, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 2
  %i.jf = and i8 %i.je, -17
  store i8 %i.jf, ptr %i.jd, align 2
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jg = and i32 %i.jb, 32
  %.not90 = icmp eq i32 %i.jg, 0
  br i1 %.not90, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jh = getelementptr inbounds i8, ptr %i.dg, i64 -96
  store i32 3, ptr %i.jh, align 8, !tbaa !219
  %i.ji = getelementptr inbounds i8, ptr %i.dg, i64 -66 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 2
  %i.jk = and i8 %i.jj, -13
  store i8 %i.jk, ptr %i.ji, align 2
end_hunk_1
