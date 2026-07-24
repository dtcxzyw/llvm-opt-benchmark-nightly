inline.NumInlined: 4794
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, ptr noundef nonnull align 8 dereferenceable(1) %i.fo, i64 %i.gd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154: ; preds = %bb.p
  store ptr %i.fz, ptr %i.fh, align 8, !tbaa !150, !alias.scope !205
  %i.ge = load i64, ptr %i.fo, align 8, !tbaa !149, !noalias !205
  store i64 %i.ge, ptr %i.fy, align 8, !tbaa !149, !alias.scope !205
  %.pre.i.i155 = load i64, ptr %i.fv, align 8, !tbaa !147, !noalias !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93

bb.r:                                             ; preds = %.noexc.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i81
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %i.es, align 8, !tbaa !150 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ff
  br i1 %i.gh, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.r
  %i.gi = load i64, ptr %i.ff, align 8, !tbaa !149
  br label %.body85.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154
  %i.gj = phi i64 [ %i.gb, %bb.q ], [ %.pre.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 592
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !147, !alias.scope !205
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 616
  store i8 0, ptr %i.gl, align 8, !tbaa !186, !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 624
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 640 ; 2 uses
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !145
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 632
  store i64 0, ptr %i.go, align 8, !tbaa !147
  store i8 0, ptr %i.gn, align 8, !tbaa !149
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 656
  store i8 0, ptr %i.gp, align 8, !tbaa !188
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 728
  store i8 0, ptr %i.gq, align 8, !tbaa !196
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 736 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.gs, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 31
  store i8 0, ptr %i.gu, align 1, !tbaa !149
  %i.gv = load ptr, ptr %i.av, align 8, !tbaa !132 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 112
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !163 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !208 ; 2 uses
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = icmp eq ptr %i.gz, %i.gx
  %i.he = trunc i64 %i.hc to i32
  %i.hf = add nsw i32 %i.he, 1
  %i.hg = select i1 %i.hd, i32 0, i32 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 752 ; 4 uses
  store ptr %i.hh, ptr %i.gr, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 744
  store i64 15, ptr %i.hi, align 8, !tbaa !147
  store ptr %i.gs, ptr %19, align 8, !tbaa !150
  store i64 0, ptr %i.gt, align 8, !tbaa !147
  store i8 0, ptr %i.gs, align 8, !tbaa !149
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.hl = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.hg, ptr noundef nonnull %i.hk)
          to label %.noexc164 unwind label %bb.w

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 5 uses
  store i64 %i.ho, ptr %5, align 8, !tbaa !142
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hk, ptr %i.hp, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !209
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.hq, ptr %4, align 8, !tbaa !145, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !209
  store i64 %i.ho, ptr %i.b, align 8, !tbaa !77, !noalias !209
  %i.hr = icmp ugt i64 %i.ho, 15
  br i1 %i.hr, label %.noexc.i.i.i.i.i163, label %._crit_edge.i.i.i.i.i.i160

.noexc.i.i.i.i.i163:                              ; preds = %.noexc164
  %i.hs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc165 unwind label %bb.w  ; 2 uses

.noexc165:                                        ; preds = %.noexc.i.i.i.i.i163
  store ptr %i.hs, ptr %4, align 8, !tbaa !150, !noalias !209
  %i.ht = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !209
  store i64 %i.ht, ptr %i.hq, align 8, !tbaa !149, !noalias !209
  br label %._crit_edge.i.i.i.i.i.i160

._crit_edge.i.i.i.i.i.i160:                       ; preds = %.noexc165, %.noexc164
  %i.hu = phi ptr [ %i.hs, %.noexc165 ], [ %i.hq, %.noexc164 ] ; 2 uses
  switch i64 %i.ho, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i160
  %i.hv = load i8, ptr %i.hk, align 8, !tbaa !149, !noalias !209
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !149, !noalias !209
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull align 8 %i.hk, i64 %i.ho, i1 false), !noalias !209
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i160
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !209 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !147, !noalias !209
  %i.hy = load ptr, ptr %4, align 8, !tbaa !150, !noalias !209
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hw
  store i8 0, ptr %i.hz, align 1, !tbaa !149, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !209
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 784 ; 3 uses
  store ptr %i.ia, ptr %i.hj, align 8, !tbaa !145, !alias.scope !209
  %i.ib = load ptr, ptr %4, align 8, !tbaa !150, !noalias !209 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hq
  br i1 %i.ic, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161

bb.v:                                             ; preds = %bb.u
  %i.id = load i64, ptr %i.hx, align 8, !tbaa !147, !noalias !209 ; 3 uses
  %i.ie = icmp ult i64 %i.id, 16
  call void @llvm.assume(i1 %i.ie)
  %i.if = add nuw nsw i64 %i.id, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ia, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.if, i1 false)
  br label %.noexc.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161: ; preds = %bb.u
  store ptr %i.ib, ptr %i.hj, align 8, !tbaa !150, !alias.scope !209
  %i.ig = load i64, ptr %i.hq, align 8, !tbaa !149, !noalias !209
  store i64 %i.ig, ptr %i.ia, align 8, !tbaa !149, !alias.scope !209
  %.pre.i.i162 = load i64, ptr %i.hx, align 8, !tbaa !147, !noalias !209
  br label %.noexc.i100

bb.w:                                             ; preds = %.noexc.i.i.i.i.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %i.gr, align 8, !tbaa !150 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.hh
  br i1 %i.ij, label %.body97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %bb.w
  %i.ik = load i64, ptr %i.hh, align 8, !tbaa !149
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #30
  br label %.body97

.noexc.i100:                                      ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161
  %i.im = phi i64 [ %i.id, %bb.v ], [ %.pre.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161 ]
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 776
  store i64 %i.im, ptr %i.in, align 8, !tbaa !147, !alias.scope !209
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 800
  store i8 0, ptr %i.io, align 8, !tbaa !186, !alias.scope !209
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 808
  %i.iq = getelementptr inbounds nuw i8, ptr %14, i64 824 ; 2 uses
  store ptr %i.iq, ptr %i.ip, align 8, !tbaa !145
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 816
  store i64 0, ptr %i.ir, align 8, !tbaa !147
  store i8 0, ptr %i.iq, align 8, !tbaa !149
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 840
  store i8 0, ptr %i.is, align 8, !tbaa !188
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 912
  store i8 0, ptr %i.it, align 8, !tbaa !196
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 920 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.iv, ptr %20, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 17, ptr %i.f, align 8, !tbaa !77
  %i.iw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc101 unwind label %bb.am ; 2 uses

.noexc101:                                        ; preds = %.noexc.i100
  store ptr %i.iw, ptr %20, align 8, !tbaa !150
  %i.ix = load i64, ptr %i.f, align 8, !tbaa !77  ; 3 uses
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.iw, ptr noundef nonnull align 1 dereferenceable(17) @.str.8, i64 17, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !147
  %i.iz = load ptr, ptr %20, align 8, !tbaa !150
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ix
  store i8 0, ptr %i.ja, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.jb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !212 ; 8 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !212 ; 3 uses
  %.not8.i = icmp eq ptr %i.jc, %i.je
  br i1 %.not8.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc101
  %21 = ptrtoint ptr %i.je to i64
  %22 = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %21, %22
  %i.jg = add i64 %i.jf, -32                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.jg, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader274, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.jh = lshr i64 %i.jg, 5
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ji, 3                    ; 2 uses
  %i.jj = icmp eq i64 %n.mod.vf, 0
  %i.jk = select i1 %i.jj, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ji, %i.jk               ; 2 uses
  %i.jl = shl i64 %n.vec, 5
  %i.jm = getelementptr i8, ptr %i.jc, i64 %i.jl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.ld, %vector.body ]
  %vec.phi264 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.le, %vector.body ]
  %i.jn = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.jc, i64 %i.jn ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jc, i64 %i.jn  ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jc, i64 %i.jn  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jc, i64 %i.jn  ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.js = getelementptr i8, ptr %i.jo, i64 40
  %i.jt = getelementptr i8, ptr %i.jp, i64 72
  %i.ju = getelementptr i8, ptr %i.jq, i64 104
  %i.jv = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.jw = getelementptr i8, ptr %i.jo, i64 48
  %i.jx = getelementptr i8, ptr %i.jp, i64 80
  %i.jy = getelementptr i8, ptr %i.jq, i64 112
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !214
  %i.ka = load ptr, ptr %i.jw, align 8, !tbaa !214
  %i.kb = insertelement <2 x ptr> poison, ptr %i.jz, i64 0
  %i.kc = insertelement <2 x ptr> %i.kb, ptr %i.ka, i64 1
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !214
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !214
  %i.kf = insertelement <2 x ptr> poison, ptr %i.kd, i64 0
  %i.kg = insertelement <2 x ptr> %i.kf, ptr %i.ke, i64 1
  %i.kh = load ptr, ptr %i.jr, align 8, !tbaa !217
  %i.ki = load ptr, ptr %i.js, align 8, !tbaa !217
  %i.kj = insertelement <2 x ptr> poison, ptr %i.kh, i64 0
  %i.kk = insertelement <2 x ptr> %i.kj, ptr %i.ki, i64 1
  %i.kl = load ptr, ptr %i.jt, align 8, !tbaa !217
  %i.km = load ptr, ptr %i.ju, align 8, !tbaa !217
  %i.kn = insertelement <2 x ptr> poison, ptr %i.kl, i64 0
  %i.ko = insertelement <2 x ptr> %i.kn, ptr %i.km, i64 1
  %i.kp = ptrtoint <2 x ptr> %i.kc to <2 x i64>
  %i.kq = ptrtoint <2 x ptr> %i.kg to <2 x i64>
  %i.kr = ptrtoint <2 x ptr> %i.kk to <2 x i64>
  %i.ks = ptrtoint <2 x ptr> %i.ko to <2 x i64>
  %i.kt = sub <2 x i64> %i.kp, %i.kr
  %i.ku = sub <2 x i64> %i.kq, %i.ks
  %i.kv = lshr <2 x i64> %i.kt, splat (i64 1)
  %i.kw = lshr <2 x i64> %i.ku, splat (i64 1)
  %i.kx = trunc <2 x i64> %i.kv to <2 x i32>
  %i.ky = and <2 x i32> %i.kx, splat (i32 -2)
  %i.kz = trunc <2 x i64> %i.kw to <2 x i32>
  %i.la = and <2 x i32> %i.kz, splat (i32 -2)
  %i.lb = add <2 x i32> %vec.phi, splat (i32 3)
  %i.lc = add <2 x i32> %vec.phi264, splat (i32 3)
  %i.ld = add <2 x i32> %i.lb, %i.ky              ; 2 uses
  %i.le = add <2 x i32> %i.lc, %i.la              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lf = icmp eq i64 %index.next, %n.vec
  br i1 %i.lf, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.le, %i.ld
  %i.lg = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader274

.lr.ph.i.preheader274:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.lg, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.jc, %.lr.ph.i.preheader ], [ %i.jm, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader274, %.lr.ph.i
  %.010.i = phi i32 [ %i.lq, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader274 ]
  %.sroa.05.09.i = phi ptr [ %i.lr, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader274 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !214
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !217
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %sh.diff.i = lshr i64 %i.ln, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.lo = and i32 %tr.sh.diff.i, -2
  %i.lp = add i32 %.010.i, 3
  %i.lq = add i32 %i.lp, %i.lo                    ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.lr, %i.je
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !221

_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit: ; preds = %.lr.ph.i, %.noexc101
  %.0.lcssa.i = phi i32 [ 2, %.noexc101 ], [ %i.lq, %.lr.ph.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %14, i64 936 ; 5 uses
  store ptr %i.ls, ptr %i.iu, align 8, !tbaa !145
  %i.lt = load ptr, ptr %20, align 8, !tbaa !150  ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.iv
  br i1 %i.lu, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

bb.x:                                             ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  %i.lv = load i64, ptr %i.iy, align 8, !tbaa !147 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 16
  call void @llvm.assume(i1 %i.lw)
  %i.lx = add nuw nsw i64 %i.lv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ls, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.lx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  store ptr %i.lt, ptr %i.iu, align 8, !tbaa !150
  %i.ly = load i64, ptr %i.iv, align 8, !tbaa !149
  store i64 %i.ly, ptr %i.ls, align 8, !tbaa !149
  %.pre195 = load i64, ptr %i.iy, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.x
  %i.lz = phi i64 [ %.pre195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.lv, %bb.x ]
  %i.ma = getelementptr inbounds nuw i8, ptr %14, i64 928
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !147
  store ptr %i.iv, ptr %20, align 8, !tbaa !150
  store i64 0, ptr %i.iy, align 8, !tbaa !147
  store i8 0, ptr %i.iv, align 8, !tbaa !149
  %i.mb = getelementptr inbounds nuw i8, ptr %14, i64 952 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.md = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.mc)
          to label %.noexc170 unwind label %bb.ac

.noexc170:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.me, %i.mf                    ; 5 uses
  store i64 %i.mg, ptr %3, align 8, !tbaa !142
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.mc, ptr %i.mh, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !222
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.mi, ptr %2, align 8, !tbaa !145, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !222
  store i64 %i.mg, ptr %i.a, align 8, !tbaa !77, !noalias !222
  %i.mj = icmp ugt i64 %i.mg, 15
  br i1 %i.mj, label %.noexc.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i.i166

.noexc.i.i.i.i.i169:                              ; preds = %.noexc170
  %i.mk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc171 unwind label %bb.ac ; 2 uses

.noexc171:                                        ; preds = %.noexc.i.i.i.i.i169
  store ptr %i.mk, ptr %2, align 8, !tbaa !150, !noalias !222
  %i.ml = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !222
  store i64 %i.ml, ptr %i.mi, align 8, !tbaa !149, !noalias !222
  br label %._crit_edge.i.i.i.i.i.i166

._crit_edge.i.i.i.i.i.i166:                       ; preds = %.noexc171, %.noexc170
  %i.mm = phi ptr [ %i.mk, %.noexc171 ], [ %i.mi, %.noexc170 ] ; 2 uses
  switch i64 %i.mg, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i166
  %i.mn = load i8, ptr %i.mc, align 8, !tbaa !149, !noalias !222
  store i8 %i.mn, ptr %i.mm, align 1, !tbaa !149, !noalias !222
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mm, ptr nonnull align 8 %i.mc, i64 %i.mg, i1 false), !noalias !222
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i.i166
  %i.mo = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !222 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !147, !noalias !222
  %i.mq = load ptr, ptr %2, align 8, !tbaa !150, !noalias !222
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mo
  store i8 0, ptr %i.mr, align 1, !tbaa !149, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !222
  %i.ms = getelementptr inbounds nuw i8, ptr %14, i64 968 ; 3 uses
  store ptr %i.ms, ptr %i.mb, align 8, !tbaa !145, !alias.scope !222
  %i.mt = load ptr, ptr %2, align 8, !tbaa !150, !noalias !222 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.mi
  br i1 %i.mu, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i167

bb.ab:                                            ; preds = %bb.aa
  %i.mv = load i64, ptr %i.mp, align 8, !tbaa !147, !noalias !222 ; 3 uses
  %i.mw = icmp ult i64 %i.mv, 16
  call void @llvm.assume(i1 %i.mw)
  %i.mx = add nuw nsw i64 %i.mv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ms, ptr noundef nonnull align 8 dereferenceable(1) %i.mi, i64 %i.mx, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i167: ; preds = %bb.aa
  store ptr %i.mt, ptr %i.mb, align 8, !tbaa !150, !alias.scope !222
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gn, ptr noundef nonnull align 8 dereferenceable(1) %i.gd, i64 %i.gs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320: ; preds = %bb.s
  store ptr %i.go, ptr %i.fw, align 8, !tbaa !150, !alias.scope !277
  %i.gt = load i64, ptr %i.gd, align 8, !tbaa !149, !noalias !277
  store i64 %i.gt, ptr %i.gn, align 8, !tbaa !149, !alias.scope !277
  %.pre.i.i321 = load i64, ptr %i.gk, align 8, !tbaa !147, !noalias !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136

bb.u:                                             ; preds = %.noexc.i.i.i.i.i322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load ptr, ptr %i.fh, align 8, !tbaa !150 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.fu
  br i1 %i.gw, label %.body128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %bb.u
  %i.gx = load i64, ptr %i.fu, align 8, !tbaa !149
  br label %.body128.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320
  %i.gy = phi i64 [ %i.gq, %bb.t ], [ %.pre.i.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 592
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !147, !alias.scope !277
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 616
  store i8 0, ptr %i.ha, align 8, !tbaa !186, !alias.scope !277
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 624
  %i.hc = getelementptr inbounds nuw i8, ptr %16, i64 640 ; 2 uses
  store ptr %i.hc, ptr %i.hb, align 8, !tbaa !145
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 632
  store i64 0, ptr %i.hd, align 8, !tbaa !147
  store i8 0, ptr %i.hc, align 8, !tbaa !149
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 656
  store i8 0, ptr %i.he, align 8, !tbaa !188
  %i.hf = getelementptr inbounds nuw i8, ptr %16, i64 728
  store i8 0, ptr %i.hf, align 8, !tbaa !196
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 736 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hh, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %21, i64 25
  store i8 0, ptr %i.hj, align 1, !tbaa !149
  %i.hk = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !163 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !208 ; 2 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = icmp eq ptr %i.ho, %i.hm
  %i.ht = trunc i64 %i.hr to i32
  %i.hu = add nsw i32 %i.ht, 1
  %i.hv = select i1 %i.hs, i32 0, i32 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 752 ; 4 uses
  store ptr %i.hw, ptr %i.hg, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hw, ptr noundef nonnull align 8 dereferenceable(10) %i.hh, i64 10, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 744
  store i64 9, ptr %i.hx, align 8, !tbaa !147
  store ptr %i.hh, ptr %21, align 8, !tbaa !150
  store i64 0, ptr %i.hi, align 8, !tbaa !147
  store i8 0, ptr %i.hh, align 8, !tbaa !149
  %i.hy = getelementptr inbounds nuw i8, ptr %16, i64 768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ia = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.hv, ptr noundef nonnull %i.hz)
          to label %.noexc330 unwind label %bb.z

.noexc330:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 5 uses
  store i64 %i.id, ptr %5, align 8, !tbaa !142
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hz, ptr %i.ie, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !280
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.if, ptr %4, align 8, !tbaa !145, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !280
  store i64 %i.id, ptr %i.b, align 8, !tbaa !77, !noalias !280
  %i.ig = icmp ugt i64 %i.id, 15
  br i1 %i.ig, label %.noexc.i.i.i.i.i329, label %._crit_edge.i.i.i.i.i.i326

.noexc.i.i.i.i.i329:                              ; preds = %.noexc330
  %i.ih = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc331 unwind label %bb.z  ; 2 uses

.noexc331:                                        ; preds = %.noexc.i.i.i.i.i329
  store ptr %i.ih, ptr %4, align 8, !tbaa !150, !noalias !280
  %i.ii = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !280
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !149, !noalias !280
  br label %._crit_edge.i.i.i.i.i.i326

._crit_edge.i.i.i.i.i.i326:                       ; preds = %.noexc331, %.noexc330
  %i.ij = phi ptr [ %i.ih, %.noexc331 ], [ %i.if, %.noexc330 ] ; 2 uses
  switch i64 %i.id, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i326
  %i.ik = load i8, ptr %i.hz, align 8, !tbaa !149, !noalias !280
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !149, !noalias !280
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr nonnull align 8 %i.hz, i64 %i.id, i1 false), !noalias !280
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i326
  %i.il = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !280 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.il, ptr %i.im, align 8, !tbaa !147, !noalias !280
  %i.in = load ptr, ptr %4, align 8, !tbaa !150, !noalias !280
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1, !tbaa !149, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !280
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 784 ; 3 uses
  store ptr %i.ip, ptr %i.hy, align 8, !tbaa !145, !alias.scope !280
  %i.iq = load ptr, ptr %4, align 8, !tbaa !150, !noalias !280 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.if
  br i1 %i.ir, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327

bb.y:                                             ; preds = %bb.x
  %i.is = load i64, ptr %i.im, align 8, !tbaa !147, !noalias !280 ; 3 uses
  %i.it = icmp ult i64 %i.is, 16
  call void @llvm.assume(i1 %i.it)
  %i.iu = add nuw nsw i64 %i.is, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ip, ptr noundef nonnull align 8 dereferenceable(1) %i.if, i64 %i.iu, i1 false)
  br label %.noexc.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327: ; preds = %bb.x
  store ptr %i.iq, ptr %i.hy, align 8, !tbaa !150, !alias.scope !280
  %i.iv = load i64, ptr %i.if, align 8, !tbaa !149, !noalias !280
  store i64 %i.iv, ptr %i.ip, align 8, !tbaa !149, !alias.scope !280
  %.pre.i.i328 = load i64, ptr %i.im, align 8, !tbaa !147, !noalias !280
  br label %.noexc.i143

bb.z:                                             ; preds = %.noexc.i.i.i.i.i329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %i.hg, align 8, !tbaa !150 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.hw
  br i1 %i.iy, label %.body140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %bb.z
  %i.iz = load i64, ptr %i.hw, align 8, !tbaa !149
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #30
  br label %.body140

.noexc.i143:                                      ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327
  %i.jb = phi i64 [ %i.is, %bb.y ], [ %.pre.i.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 776
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !147, !alias.scope !280
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 800
  store i8 0, ptr %i.jd, align 8, !tbaa !186, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 808
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 824 ; 2 uses
  store ptr %i.jf, ptr %i.je, align 8, !tbaa !145
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 816
  store i64 0, ptr %i.jg, align 8, !tbaa !147
  store i8 0, ptr %i.jf, align 8, !tbaa !149
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 840
  store i8 0, ptr %i.jh, align 8, !tbaa !188
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 912
  store i8 0, ptr %i.ji, align 8, !tbaa !196
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 920 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 11 uses
  store ptr %i.jk, ptr %22, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i64 29, ptr %i.i, align 8, !tbaa !77
  %i.jl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc144 unwind label %bb.ay ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.jl, ptr %22, align 8, !tbaa !150
  %i.jm = load i64, ptr %i.i, align 8, !tbaa !77  ; 3 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.jl, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !147
  %i.jo = load ptr, ptr %22, align 8, !tbaa !150
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jm
  store i8 0, ptr %i.jp, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !212 ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !212 ; 3 uses
  %.not8.i = icmp eq ptr %i.jr, %i.jt
  br i1 %.not8.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc144
  %28 = ptrtoint ptr %i.jt to i64
  %29 = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %28, %29
  %i.jv = add i64 %i.ju, -32                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.jv, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader520, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.jw = lshr i64 %i.jv, 5
  %i.jx = add nuw nsw i64 %i.jw, 1                ; 2 uses
  %n.mod.vf = and i64 %i.jx, 3                    ; 2 uses
  %i.jy = icmp eq i64 %n.mod.vf, 0
  %i.jz = select i1 %i.jy, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.jx, %i.jz               ; 2 uses
  %i.ka = shl i64 %n.vec, 5
  %i.kb = getelementptr i8, ptr %i.jr, i64 %i.ka
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.ls, %vector.body ]
  %vec.phi501 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.lt, %vector.body ]
  %i.kc = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.jr, i64 %i.kc ; 2 uses
  %i.kd = getelementptr i8, ptr %i.jr, i64 %i.kc  ; 2 uses
  %i.ke = getelementptr i8, ptr %i.jr, i64 %i.kc  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jr, i64 %i.kc  ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.kh = getelementptr i8, ptr %i.kd, i64 40
  %i.ki = getelementptr i8, ptr %i.ke, i64 72
  %i.kj = getelementptr i8, ptr %i.kf, i64 104
  %i.kk = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.kl = getelementptr i8, ptr %i.kd, i64 48
  %i.km = getelementptr i8, ptr %i.ke, i64 80
  %i.kn = getelementptr i8, ptr %i.kf, i64 112
  %i.ko = load ptr, ptr %i.kk, align 8, !tbaa !214
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !214
  %i.kq = insertelement <2 x ptr> poison, ptr %i.ko, i64 0
  %i.kr = insertelement <2 x ptr> %i.kq, ptr %i.kp, i64 1
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !214
  %i.kt = load ptr, ptr %i.kn, align 8, !tbaa !214
  %i.ku = insertelement <2 x ptr> poison, ptr %i.ks, i64 0
  %i.kv = insertelement <2 x ptr> %i.ku, ptr %i.kt, i64 1
  %i.kw = load ptr, ptr %i.kg, align 8, !tbaa !217
  %i.kx = load ptr, ptr %i.kh, align 8, !tbaa !217
  %i.ky = insertelement <2 x ptr> poison, ptr %i.kw, i64 0
  %i.kz = insertelement <2 x ptr> %i.ky, ptr %i.kx, i64 1
  %i.la = load ptr, ptr %i.ki, align 8, !tbaa !217
  %i.lb = load ptr, ptr %i.kj, align 8, !tbaa !217
  %i.lc = insertelement <2 x ptr> poison, ptr %i.la, i64 0
  %i.ld = insertelement <2 x ptr> %i.lc, ptr %i.lb, i64 1
  %i.le = ptrtoint <2 x ptr> %i.kr to <2 x i64>
  %i.lf = ptrtoint <2 x ptr> %i.kv to <2 x i64>
  %i.lg = ptrtoint <2 x ptr> %i.kz to <2 x i64>
  %i.lh = ptrtoint <2 x ptr> %i.ld to <2 x i64>
  %i.li = sub <2 x i64> %i.le, %i.lg
  %i.lj = sub <2 x i64> %i.lf, %i.lh
  %i.lk = lshr <2 x i64> %i.li, splat (i64 1)
  %i.ll = lshr <2 x i64> %i.lj, splat (i64 1)
  %i.lm = trunc <2 x i64> %i.lk to <2 x i32>
  %i.ln = and <2 x i32> %i.lm, splat (i32 -2)
  %i.lo = trunc <2 x i64> %i.ll to <2 x i32>
  %i.lp = and <2 x i32> %i.lo, splat (i32 -2)
  %i.lq = add <2 x i32> %vec.phi, splat (i32 3)
  %i.lr = add <2 x i32> %vec.phi501, splat (i32 3)
  %i.ls = add <2 x i32> %i.lq, %i.ln              ; 2 uses
  %i.lt = add <2 x i32> %i.lr, %i.lp              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.lt, %i.ls
  %i.lv = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader520

.lr.ph.i.preheader520:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.lv, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.jr, %.lr.ph.i.preheader ], [ %i.kb, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader520, %.lr.ph.i
  %.010.i = phi i32 [ %i.mf, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader520 ]
  %.sroa.05.09.i = phi ptr [ %i.mg, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader520 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !214
  %i.lz = load ptr, ptr %i.lw, align 8, !tbaa !217
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %sh.diff.i = lshr i64 %i.mc, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.md = and i32 %tr.sh.diff.i, -2
  %i.me = add i32 %.010.i, 3
  %i.mf = add i32 %i.me, %i.md                    ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.mg, %i.jt
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !284

_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit: ; preds = %.lr.ph.i, %.noexc144
  %.0.lcssa.i = phi i32 [ 2, %.noexc144 ], [ %i.mf, %.lr.ph.i ]
  %i.mh = getelementptr inbounds nuw i8, ptr %16, i64 936 ; 5 uses
  store ptr %i.mh, ptr %i.jj, align 8, !tbaa !145
  %i.mi = load ptr, ptr %22, align 8, !tbaa !150  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.jk
  br i1 %i.mj, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

bb.aa:                                            ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  %i.mk = load i64, ptr %i.jn, align 8, !tbaa !147 ; 3 uses
  %i.ml = icmp ult i64 %i.mk, 16
  call void @llvm.assume(i1 %i.ml)
  %i.mm = add nuw nsw i64 %i.mk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mh, ptr noundef nonnull align 8 dereferenceable(1) %i.jk, i64 %i.mm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  store ptr %i.mi, ptr %i.jj, align 8, !tbaa !150
  %i.mn = load i64, ptr %i.jk, align 8, !tbaa !149
  store i64 %i.mn, ptr %i.mh, align 8, !tbaa !149
  %.pre374 = load i64, ptr %i.jn, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.aa
  %i.mo = phi i64 [ %.pre374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.mk, %bb.aa ]
  %i.mp = getelementptr inbounds nuw i8, ptr %16, i64 928
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !147
  store ptr %i.jk, ptr %22, align 8, !tbaa !150
  store i64 0, ptr %i.jn, align 8, !tbaa !147
  store i8 0, ptr %i.jk, align 8, !tbaa !149
  %i.mq = getelementptr inbounds nuw i8, ptr %16, i64 952 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ms = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.mr)
          to label %.noexc336 unwind label %bb.af

.noexc336:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mr to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 5 uses
  store i64 %i.mv, ptr %3, align 8, !tbaa !142
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.mr, ptr %i.mw, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !285
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.mx, ptr %2, align 8, !tbaa !145, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !285
  store i64 %i.mv, ptr %i.a, align 8, !tbaa !77, !noalias !285
  %i.my = icmp ugt i64 %i.mv, 15
  br i1 %i.my, label %.noexc.i.i.i.i.i335, label %._crit_edge.i.i.i.i.i.i332

.noexc.i.i.i.i.i335:                              ; preds = %.noexc336
  %i.mz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc337 unwind label %bb.af ; 2 uses

.noexc337:                                        ; preds = %.noexc.i.i.i.i.i335
  store ptr %i.mz, ptr %2, align 8, !tbaa !150, !noalias !285
  %i.na = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !285
  store i64 %i.na, ptr %i.mx, align 8, !tbaa !149, !noalias !285
  br label %._crit_edge.i.i.i.i.i.i332

._crit_edge.i.i.i.i.i.i332:                       ; preds = %.noexc337, %.noexc336
  %i.nb = phi ptr [ %i.mz, %.noexc337 ], [ %i.mx, %.noexc336 ] ; 2 uses
  switch i64 %i.mv, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i332
  %i.nc = load i8, ptr %i.mr, align 8, !tbaa !149, !noalias !285
  store i8 %i.nc, ptr %i.nb, align 1, !tbaa !149, !noalias !285
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr nonnull align 8 %i.mr, i64 %i.mv, i1 false), !noalias !285
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i.i332
  %i.nd = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !285 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !147, !noalias !285
  %i.nf = load ptr, ptr %2, align 8, !tbaa !150, !noalias !285
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nd
  store i8 0, ptr %i.ng, align 1, !tbaa !149, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !285
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 968 ; 3 uses
  store ptr %i.nh, ptr %i.mq, align 8, !tbaa !145, !alias.scope !285
  %i.ni = load ptr, ptr %2, align 8, !tbaa !150, !noalias !285 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.mx
  br i1 %i.nj, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i333

bb.ae:                                            ; preds = %bb.ad
  %i.nk = load i64, ptr %i.ne, align 8, !tbaa !147, !noalias !285 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, 16
  call void @llvm.assume(i1 %i.nl)
  %i.nm = add nuw nsw i64 %i.nk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nh, ptr noundef nonnull align 8 dereferenceable(1) %i.mx, i64 %i.nm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i333: ; preds = %bb.ad
  store ptr %i.ni, ptr %i.mq, align 8, !tbaa !150, !alias.scope !285
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator20GenerateFieldEntriesEPNS0_2io7PrinterE:bb.a
  %.5 = phi i1 [ false, %.body.i137 ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139 ], [ false, %.body.i137.thread ], [ %.3, %.body159 ] ; 2 uses
  %i.vy = load ptr, ptr %17, align 8, !tbaa !150  ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.bh
  br i1 %i.vz, label %.body129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %.body148
  %i.wa = load i64, ptr %i.bh, align 8, !tbaa !149
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #30
  br label %.body129

.body129:                                         ; preds = %.body148, %.body.i, %.body.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  %.pn74.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lq, %.body.i ], [ %.pn74.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123 ], [ %i.lv, %.body.i.thread ], [ %.pn74.pn.pn.pn.pn.pn, %.body148 ]
  %.428 = phi ptr [ %15, %.body.i ], [ %.226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123 ], [ %15, %.body.i.thread ], [ %.226, %.body148 ] ; 2 uses
  %.7 = phi i1 [ false, %.body.i ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123 ], [ false, %.body.i.thread ], [ %.5, %.body148 ]
  %i.wc = load ptr, ptr %16, align 8, !tbaa !150  ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.au
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %.body129
  %i.we = load i64, ptr %i.au, align 8, !tbaa !149
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %.body129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  %i.wg = icmp eq ptr %15, %.428
  %or.cond4 = select i1 %.7, i1 true, i1 %i.wg
  br i1 %or.cond4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %.preheader
  %i.wh = phi ptr [ %i.wi, %.preheader ], [ %.428, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ]
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.wi) #31
  %i.wj = icmp eq ptr %i.wi, %15
  br i1 %i.wj, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #31
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit, %.loopexit264
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %.pn.pn.pn.pn.pn, %.loopexit264 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bp
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %i.uh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bo
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bx ], [ %i.ug, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.body

.body:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %bb.by
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.by ], [ %i.uf, %bb.bn ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ]
  call void @_ZN6google8protobuf8compiler3cpp9FormatterD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %common.resume
}

declare void @_ZN6google8protobuf8compiler3cpp9FieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal16TypeCardToStringB5cxx11Et(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !375, !range !136, !noundef !73
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !377  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !235  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !235
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !379, !range !136, !noundef !73
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit

bb.e:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !380  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !380
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator18GenerateFieldNamesERNS2_9FormatterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, -8
  %i.t = add i32 %i.s, 8                          ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %i.w = load ptr, ptr %1, align 8, !tbaa !319
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer14FormatInternalIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvNS5_4SpanIKSE_EERKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.w, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 1, ptr nonnull @.str.49)
  %i.y = icmp sgt i32 %i.t, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !319
  tail call void @_ZN6google8protobuf2io7Printer14FormatInternalIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvNS5_4SpanIKSE_EERKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.z, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 2, ptr nonnull @.str.51)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph
  %i.aa = load ptr, ptr %1, align 8, !tbaa !319
  call void @_ZN6google8protobuf2io7Printer14FormatInternalIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvNS5_4SpanIKSE_EERKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.aa, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 2, ptr nonnull @.str.51)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02534 = phi ptr [ %i.ad, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.02633 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02534, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.02534, align 1, !tbaa !149
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ag = lshr i32 %i.af, 6
  %i.ah = mul nuw nsw i32 %i.ag, 100
  %i.ai = lshr i32 %i.af, 3
  %i.aj = and i32 %i.ai, 7
  %i.ak = mul nuw nsw i32 %i.aj, 10
  %i.al = and i32 %i.af, 7
  %i.am = add nuw nsw i32 %i.ah, %i.al
  %i.an = add nuw nsw i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.b, align 4, !tbaa !3
  call void @_ZNK6google8protobuf8compiler3cpp9FormatterclIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.ao = add nuw nsw i32 %.02633, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.t
  br i1 %exitcond.not, label %.lr.ph39, label %.lr.ph, !llvm.loop !384

bb.c:                                             ; preds = %.lr.ph39, %bb.g
  %.136 = phi ptr [ %i.ad, %.lr.ph39 ], [ %i.dr, %bb.g ] ; 22 uses
  %.02735 = phi ptr [ %i.f, %.lr.ph39 ], [ %i.dq, %bb.g ] ; 3 uses
  %.13664 = ptrtoint ptr %.136 to i64             ; 2 uses
  %.13648 = ptrtoaddr ptr %.136 to i64
  %i.ap = load i8, ptr %.02735, align 1, !tbaa !149 ; 5 uses
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.aq = zext i8 %i.ap to i64                    ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.136, i64 %i.aq
  store ptr %i.ab, ptr %2, align 8, !tbaa !145
  store i64 0, ptr %i.ac, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !77
  %i.as = icmp ugt i8 %i.ap, 15
  br i1 %i.as, label %.noexc.i, label %iter.check

.noexc.i:                                         ; preds = %bb.d
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !150
  %i.au = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.au, ptr %i.ab, align 8, !tbaa !149
  br label %iter.check

iter.check:                                       ; preds = %bb.d, %.noexc.i
  %i.av = phi ptr [ %i.at, %.noexc.i ], [ %i.ab, %bb.d ] ; 19 uses
  %min.iters.check = icmp ult i8 %i.ap, 4
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = sub i64 %.13648, %i.aw
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i8 %i.ap, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 224                     ; 10 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 %n.vec
  %i.az = getelementptr i8, ptr %.136, i64 %n.vec
  %i.ba = getelementptr i8, ptr %.136, i64 16
  %wide.load = load <16 x i8>, ptr %.136, align 1, !tbaa !149
  %wide.load51 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !149
  %i.bb = getelementptr i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !149
  store <16 x i8> %wide.load51, ptr %i.bb, align 1, !tbaa !149
  %i.bc = icmp eq i64 %n.vec, 32
  br i1 %i.bc, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.av, i64 32
  %next.gep50.1 = getelementptr i8, ptr %.136, i64 32
  %i.bd = getelementptr i8, ptr %.136, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep50.1, align 1, !tbaa !149
  %wide.load51.1 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !149
  %i.be = getelementptr i8, ptr %i.av, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1, !tbaa !149
  store <16 x i8> %wide.load51.1, ptr %i.be, align 1, !tbaa !149
  %i.bf = icmp eq i64 %n.vec, 64
  br i1 %i.bf, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.av, i64 64
  %next.gep50.2 = getelementptr i8, ptr %.136, i64 64
  %i.bg = getelementptr i8, ptr %.136, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep50.2, align 1, !tbaa !149
  %wide.load51.2 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !149
  %i.bh = getelementptr i8, ptr %i.av, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1, !tbaa !149
  store <16 x i8> %wide.load51.2, ptr %i.bh, align 1, !tbaa !149
  %i.bi = icmp eq i64 %n.vec, 96
  br i1 %i.bi, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.av, i64 96
  %next.gep50.3 = getelementptr i8, ptr %.136, i64 96
  %i.bj = getelementptr i8, ptr %.136, i64 112
  %wide.load.3 = load <16 x i8>, ptr %next.gep50.3, align 1, !tbaa !149
  %wide.load51.3 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !149
  %i.bk = getelementptr i8, ptr %i.av, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1, !tbaa !149
  store <16 x i8> %wide.load51.3, ptr %i.bk, align 1, !tbaa !149
  %i.bl = icmp eq i64 %n.vec, 128
  br i1 %i.bl, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.av, i64 128
  %next.gep50.4 = getelementptr i8, ptr %.136, i64 128
  %i.bm = getelementptr i8, ptr %.136, i64 144
  %wide.load.4 = load <16 x i8>, ptr %next.gep50.4, align 1, !tbaa !149
  %wide.load51.4 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !149
  %i.bn = getelementptr i8, ptr %i.av, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1, !tbaa !149
  store <16 x i8> %wide.load51.4, ptr %i.bn, align 1, !tbaa !149
  %i.bo = icmp eq i64 %n.vec, 160
  br i1 %i.bo, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.av, i64 160
  %next.gep50.5 = getelementptr i8, ptr %.136, i64 160
  %i.bp = getelementptr i8, ptr %.136, i64 176
  %wide.load.5 = load <16 x i8>, ptr %next.gep50.5, align 1, !tbaa !149
  %wide.load51.5 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !149
  %i.bq = getelementptr i8, ptr %i.av, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1, !tbaa !149
  store <16 x i8> %wide.load51.5, ptr %i.bq, align 1, !tbaa !149
  %i.br = icmp eq i64 %n.vec, 192
  br i1 %i.br, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %i.av, i64 192
  %next.gep50.6 = getelementptr i8, ptr %.136, i64 192
  %i.bs = getelementptr i8, ptr %.136, i64 208
  %wide.load.6 = load <16 x i8>, ptr %next.gep50.6, align 1, !tbaa !149
  %wide.load51.6 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !149
  %i.bt = getelementptr i8, ptr %i.av, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1, !tbaa !149
  store <16 x i8> %wide.load51.6, ptr %i.bt, align 1, !tbaa !149
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !385

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.aq, 252                   ; 4 uses
  %i.bu = getelementptr i8, ptr %i.av, i64 %n.vec54
  %i.bv = getelementptr i8, ptr %.136, i64 %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.av, i64 %index55
  %next.gep57 = getelementptr i8, ptr %.136, i64 %index55
  %wide.load58 = load <4 x i8>, ptr %next.gep57, align 1, !tbaa !149
  store <4 x i8> %wide.load58, ptr %next.gep56, align 1, !tbaa !149
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !386

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %n.vec54, %i.aq
  br i1 %cmp.n60, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.i.i.ph = phi ptr [ %.136, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 3 uses
  %i.bx = add i64 %.13664, %i.aq
  %.068.i.i.i.ph65 = ptrtoint ptr %.068.i.i.i.ph to i64 ; 2 uses
  %i.by = sub i64 %i.bx, %.068.i.i.i.ph65
  %i.bz = add i64 %.13664, -1
  %i.ca = add i64 %i.bz, %i.aq
  %i.cb = sub i64 %i.ca, %.068.i.i.i.ph65
  %xtraiter = and i64 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cc = load i8, ptr %.068.i.i.i.prol, align 1, !tbaa !149
  store i8 %i.cc, ptr %.09.i.i.i.prol, align 1, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %.068.i.i.i.prol, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !387

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi ptr [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.cb, 7
  br i1 %i.cf, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.cg = load i8, ptr %.068.i.i.i, align 1, !tbaa !149
  store i8 %i.cg, ptr %.09.i.i.i, align 1, !tbaa !149
  %i.ch = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !149
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !149
  %i.ck = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !149
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !149
  %i.cn = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !149
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !149
  %i.cq = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !149
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !149
  %i.ct = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 5
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !149
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !149
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 6
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !149
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !149
  %i.cz = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 7
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !149
  store i8 %i.db, ptr %i.da, align 1, !tbaa !149
  %i.dc = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.dc, %i.ar
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !389

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !150
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 2 uses
  store i64 %.pre6.i.i, ptr %i.ac, align 8, !tbaa !147
  %i.de = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.pre6.i.i
  store i8 0, ptr %i.de, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZNK6google8protobuf8compiler3cpp9FormatterclIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %i.df = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ab
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.dh = load i64, ptr %i.ab, align 8, !tbaa !149
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pre = load i8, ptr %.02735, align 1, !tbaa !149
  %i.dj = zext i8 %.pre to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ab
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.f
  %i.dn = load i64, ptr %i.ab, align 8, !tbaa !149
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.dk

bb.g:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dp = phi i64 [ 0, %bb.c ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02735, i64 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.136, i64 %i.dp
  %i.ds = icmp ult ptr %i.dq, %i.v
  br i1 %i.ds, label %bb.c, label %.loopexit, !llvm.loop !390

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf8compiler3cpp9FormatterclIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.c = load i32, ptr %2, align 4, !tbaa !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !391
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.e = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.c, ptr noundef nonnull %i.d), !noalias !391
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !142, !noalias !391
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !144, !noalias !391
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !145, !alias.scope !397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !397
  store i64 %i.h, ptr %i.a, align 8, !tbaa !77, !noalias !397
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !150, !alias.scope !397
  %i.m = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !397
  store i64 %i.m, ptr %i.j, align 8, !tbaa !149, !alias.scope !397
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.d, align 8, !tbaa !149, !noalias !391
  store i8 %i.o, ptr %i.n, align 1, !tbaa !149
  br label %_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 8 %i.d, i64 %i.h, i1 false)
  br label %_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit

_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !397 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !147, !alias.scope !397
  %i.r = load ptr, ptr %4, align 8, !tbaa !150, !alias.scope !397
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !397
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !391
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  invoke void @_ZN6google8protobuf2io7Printer14FormatInternalIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvNS5_4SpanIKSE_EERKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.b, ptr nonnull %4, i64 1, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 %i.u, ptr nonnull %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !150    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !149
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.e:                                             ; preds = %_ZN6google8protobuf8compiler3cpp9Formatter8ToStringIivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_2
