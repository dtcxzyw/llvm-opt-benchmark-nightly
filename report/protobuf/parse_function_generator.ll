inline.NumInlined: 4794
inline.NumDeleted: 2084
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154: ; preds = %bb.p
  store ptr %i.fy, ptr %i.fg, align 8, !tbaa !150, !alias.scope !205
  %i.gd = load i64, ptr %i.fn, align 8, !tbaa !149, !noalias !205
  store i64 %i.gd, ptr %i.fx, align 8, !tbaa !149, !alias.scope !205
  %.pre.i.i155 = load i64, ptr %i.fu, align 8, !tbaa !147, !noalias !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93

bb.r:                                             ; preds = %.noexc.i.i.i.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i81
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %i.er, align 8, !tbaa !150 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fe
  br i1 %i.gg, label %.body85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.r
  %i.gh = load i64, ptr %i.fe, align 8, !tbaa !149
  br label %.body85.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154
  %i.gi = phi i64 [ %i.ga, %bb.q ], [ %.pre.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i154 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 592
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !147, !alias.scope !205
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 616
  store i8 0, ptr %i.gk, align 8, !tbaa !186, !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 624
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 640 ; 2 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !145
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 632
  store i64 0, ptr %i.gn, align 8, !tbaa !147
  store i8 0, ptr %i.gm, align 8, !tbaa !149
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 656
  store i8 0, ptr %i.go, align 8, !tbaa !188
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 728
  store i8 0, ptr %i.gp, align 8, !tbaa !196
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 736 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.gr, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 31
  store i8 0, ptr %i.gt, align 1, !tbaa !149
  %i.gu = load ptr, ptr %i.av, align 8, !tbaa !132 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 112
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !163 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 120
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !208 ; 2 uses
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp eq ptr %i.gy, %i.gw
  %i.hd = trunc i64 %i.hb to i32
  %i.he = add nsw i32 %i.hd, 1
  %i.hf = select i1 %i.hc, i32 0, i32 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 752 ; 4 uses
  store ptr %i.hg, ptr %i.gq, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 744
  store i64 15, ptr %i.hh, align 8, !tbaa !147
  store ptr %i.gr, ptr %19, align 8, !tbaa !150
  store i64 0, ptr %i.gs, align 8, !tbaa !147
  store i8 0, ptr %i.gr, align 8, !tbaa !149
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.hk = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.hf, ptr noundef nonnull %i.hj)
          to label %.noexc164 unwind label %bb.w

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 5 uses
  store i64 %i.hn, ptr %5, align 8, !tbaa !142
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hj, ptr %i.ho, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !209
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.hp, ptr %4, align 8, !tbaa !145, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !209
  store i64 %i.hn, ptr %i.b, align 8, !tbaa !77, !noalias !209
  %i.hq = icmp ugt i64 %i.hn, 15
  br i1 %i.hq, label %.noexc.i.i.i.i.i163, label %._crit_edge.i.i.i.i.i.i160

.noexc.i.i.i.i.i163:                              ; preds = %.noexc164
  %i.hr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc165 unwind label %bb.w  ; 2 uses

.noexc165:                                        ; preds = %.noexc.i.i.i.i.i163
  store ptr %i.hr, ptr %4, align 8, !tbaa !150, !noalias !209
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !209
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !149, !noalias !209
  br label %._crit_edge.i.i.i.i.i.i160

._crit_edge.i.i.i.i.i.i160:                       ; preds = %.noexc165, %.noexc164
  %i.ht = phi ptr [ %i.hr, %.noexc165 ], [ %i.hp, %.noexc164 ] ; 2 uses
  switch i64 %i.hn, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i160
  %i.hu = load i8, ptr %i.hj, align 8, !tbaa !149, !noalias !209
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !149, !noalias !209
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr nonnull align 8 %i.hj, i64 %i.hn, i1 false), !noalias !209
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i160
  %i.hv = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !209 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !147, !noalias !209
  %i.hx = load ptr, ptr %4, align 8, !tbaa !150, !noalias !209
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hv
  store i8 0, ptr %i.hy, align 1, !tbaa !149, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !209
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 784 ; 3 uses
  store ptr %i.hz, ptr %i.hi, align 8, !tbaa !145, !alias.scope !209
  %i.ia = load ptr, ptr %4, align 8, !tbaa !150, !noalias !209 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hp
  br i1 %i.ib, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161

bb.v:                                             ; preds = %bb.u
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !147, !noalias !209 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.hp, i64 %i.ie, i1 false)
  br label %.noexc.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161: ; preds = %bb.u
  store ptr %i.ia, ptr %i.hi, align 8, !tbaa !150, !alias.scope !209
  %i.if = load i64, ptr %i.hp, align 8, !tbaa !149, !noalias !209
  store i64 %i.if, ptr %i.hz, align 8, !tbaa !149, !alias.scope !209
  %.pre.i.i162 = load i64, ptr %i.hw, align 8, !tbaa !147, !noalias !209
  br label %.noexc.i100

bb.w:                                             ; preds = %.noexc.i.i.i.i.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i93
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %i.gq, align 8, !tbaa !150 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hg
  br i1 %i.ii, label %.body97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %bb.w
  %i.ij = load i64, ptr %i.hg, align 8, !tbaa !149
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #30
  br label %.body97

.noexc.i100:                                      ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161
  %i.il = phi i64 [ %i.ic, %bb.v ], [ %.pre.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i161 ]
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 776
  store i64 %i.il, ptr %i.im, align 8, !tbaa !147, !alias.scope !209
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 800
  store i8 0, ptr %i.in, align 8, !tbaa !186, !alias.scope !209
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 808
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 824 ; 2 uses
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !145
  %i.iq = getelementptr inbounds nuw i8, ptr %14, i64 816
  store i64 0, ptr %i.iq, align 8, !tbaa !147
  store i8 0, ptr %i.ip, align 8, !tbaa !149
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 840
  store i8 0, ptr %i.ir, align 8, !tbaa !188
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 912
  store i8 0, ptr %i.is, align 8, !tbaa !196
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 920 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.iu, ptr %20, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 17, ptr %i.f, align 8, !tbaa !77
  %i.iv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc101 unwind label %bb.am ; 2 uses

.noexc101:                                        ; preds = %.noexc.i100
  store ptr %i.iv, ptr %20, align 8, !tbaa !150
  %i.iw = load i64, ptr %i.f, align 8, !tbaa !77  ; 3 uses
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.iv, ptr noundef nonnull align 1 dereferenceable(17) @.str.8, i64 17, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !147
  %i.iy = load ptr, ptr %20, align 8, !tbaa !150
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iw
  store i8 0, ptr %i.iz, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.ja = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !212 ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !212 ; 3 uses
  %.not8.i = icmp eq ptr %i.jb, %i.jd
  br i1 %.not8.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc101
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %21 = sub i64 %i.je, %i.jf
  %22 = add i64 %21, -32                          ; 2 uses
  %min.iters.check = icmp ult i64 %22, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader275, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.jg = lshr i64 %22, 5
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %n.mod.vf = and i64 %i.jh, 3                    ; 2 uses
  %i.ji = icmp eq i64 %n.mod.vf, 0
  %i.jj = select i1 %i.ji, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.jh, %i.jj               ; 2 uses
  %i.jk = shl i64 %n.vec, 5
  %i.jl = getelementptr i8, ptr %i.jb, i64 %i.jk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.lc, %vector.body ]
  %vec.phi265 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ld, %vector.body ]
  %i.jm = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.jb, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jb, i64 %i.jm  ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jb, i64 %i.jm  ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jb, i64 %i.jm  ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.jr = getelementptr i8, ptr %i.jn, i64 40
  %i.js = getelementptr i8, ptr %i.jo, i64 72
  %i.jt = getelementptr i8, ptr %i.jp, i64 104
  %i.ju = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.jv = getelementptr i8, ptr %i.jn, i64 48
  %i.jw = getelementptr i8, ptr %i.jo, i64 80
  %i.jx = getelementptr i8, ptr %i.jp, i64 112
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !214
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !214
  %i.ka = insertelement <2 x ptr> poison, ptr %i.jy, i64 0
  %i.kb = insertelement <2 x ptr> %i.ka, ptr %i.jz, i64 1
  %i.kc = load ptr, ptr %i.jw, align 8, !tbaa !214
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !214
  %i.ke = insertelement <2 x ptr> poison, ptr %i.kc, i64 0
  %i.kf = insertelement <2 x ptr> %i.ke, ptr %i.kd, i64 1
  %i.kg = load ptr, ptr %i.jq, align 8, !tbaa !217
  %i.kh = load ptr, ptr %i.jr, align 8, !tbaa !217
  %i.ki = insertelement <2 x ptr> poison, ptr %i.kg, i64 0
  %i.kj = insertelement <2 x ptr> %i.ki, ptr %i.kh, i64 1
  %i.kk = load ptr, ptr %i.js, align 8, !tbaa !217
  %i.kl = load ptr, ptr %i.jt, align 8, !tbaa !217
  %i.km = insertelement <2 x ptr> poison, ptr %i.kk, i64 0
  %i.kn = insertelement <2 x ptr> %i.km, ptr %i.kl, i64 1
  %i.ko = ptrtoint <2 x ptr> %i.kb to <2 x i64>
  %i.kp = ptrtoint <2 x ptr> %i.kf to <2 x i64>
  %i.kq = ptrtoint <2 x ptr> %i.kj to <2 x i64>
  %i.kr = ptrtoint <2 x ptr> %i.kn to <2 x i64>
  %i.ks = sub <2 x i64> %i.ko, %i.kq
  %i.kt = sub <2 x i64> %i.kp, %i.kr
  %i.ku = lshr <2 x i64> %i.ks, splat (i64 1)
  %i.kv = lshr <2 x i64> %i.kt, splat (i64 1)
  %i.kw = trunc <2 x i64> %i.ku to <2 x i32>
  %i.kx = and <2 x i32> %i.kw, splat (i32 -2)
  %i.ky = trunc <2 x i64> %i.kv to <2 x i32>
  %i.kz = and <2 x i32> %i.ky, splat (i32 -2)
  %i.la = add <2 x i32> %vec.phi, splat (i32 3)
  %i.lb = add <2 x i32> %vec.phi265, splat (i32 3)
  %i.lc = add <2 x i32> %i.la, %i.kx              ; 2 uses
  %i.ld = add <2 x i32> %i.lb, %i.kz              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.le = icmp eq i64 %index.next, %n.vec
  br i1 %i.le, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ld, %i.lc
  %i.lf = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader275

.lr.ph.i.preheader275:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.lf, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.jb, %.lr.ph.i.preheader ], [ %i.jl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader275, %.lr.ph.i
  %.010.i = phi i32 [ %i.lp, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader275 ]
  %.sroa.05.09.i = phi ptr [ %i.lq, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader275 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !214
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !217
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %sh.diff.i = lshr i64 %i.lm, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ln = and i32 %tr.sh.diff.i, -2
  %i.lo = add i32 %.010.i, 3
  %i.lp = add i32 %i.lo, %i.ln                    ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.lq, %i.jd
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !221

_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit: ; preds = %.lr.ph.i, %.noexc101
  %.0.lcssa.i = phi i32 [ 2, %.noexc101 ], [ %i.lp, %.lr.ph.i ]
  %i.lr = getelementptr inbounds nuw i8, ptr %14, i64 936 ; 5 uses
  store ptr %i.lr, ptr %i.it, align 8, !tbaa !145
  %i.ls = load ptr, ptr %20, align 8, !tbaa !150  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.iu
  br i1 %i.lt, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

bb.x:                                             ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  %i.lu = load i64, ptr %i.ix, align 8, !tbaa !147 ; 3 uses
  %i.lv = icmp ult i64 %i.lu, 16
  call void @llvm.assume(i1 %i.lv)
  %i.lw = add nuw nsw i64 %i.lu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lr, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.lw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  store ptr %i.ls, ptr %i.it, align 8, !tbaa !150
  %i.lx = load i64, ptr %i.iu, align 8, !tbaa !149
  store i64 %i.lx, ptr %i.lr, align 8, !tbaa !149
  %.pre196 = load i64, ptr %i.ix, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.x
  %i.ly = phi i64 [ %.pre196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.lu, %bb.x ]
  %i.lz = getelementptr inbounds nuw i8, ptr %14, i64 928
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !147
  store ptr %i.iu, ptr %20, align 8, !tbaa !150
  store i64 0, ptr %i.ix, align 8, !tbaa !147
  store i8 0, ptr %i.iu, align 8, !tbaa !149
  %i.ma = getelementptr inbounds nuw i8, ptr %14, i64 952 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.mc = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.mb)
          to label %.noexc170 unwind label %bb.ac

.noexc170:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i104
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 5 uses
  store i64 %i.mf, ptr %3, align 8, !tbaa !142
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.mb, ptr %i.mg, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !222
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.mh, ptr %2, align 8, !tbaa !145, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !222
  store i64 %i.mf, ptr %i.a, align 8, !tbaa !77, !noalias !222
  %i.mi = icmp ugt i64 %i.mf, 15
  br i1 %i.mi, label %.noexc.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i.i166

.noexc.i.i.i.i.i169:                              ; preds = %.noexc170
  %i.mj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc171 unwind label %bb.ac ; 2 uses

.noexc171:                                        ; preds = %.noexc.i.i.i.i.i169
  store ptr %i.mj, ptr %2, align 8, !tbaa !150, !noalias !222
  %i.mk = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !222
  store i64 %i.mk, ptr %i.mh, align 8, !tbaa !149, !noalias !222
  br label %._crit_edge.i.i.i.i.i.i166

._crit_edge.i.i.i.i.i.i166:                       ; preds = %.noexc171, %.noexc170
  %i.ml = phi ptr [ %i.mj, %.noexc171 ], [ %i.mh, %.noexc170 ] ; 2 uses
  switch i64 %i.mf, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i166
  %i.mm = load i8, ptr %i.mb, align 8, !tbaa !149, !noalias !222
  store i8 %i.mm, ptr %i.ml, align 1, !tbaa !149, !noalias !222
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ml, ptr nonnull align 8 %i.mb, i64 %i.mf, i1 false), !noalias !222
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i.i166
  %i.mn = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !222 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !147, !noalias !222
  %i.mp = load ptr, ptr %2, align 8, !tbaa !150, !noalias !222
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mn
  store i8 0, ptr %i.mq, align 1, !tbaa !149, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !222
  %i.mr = getelementptr inbounds nuw i8, ptr %14, i64 968 ; 3 uses
  store ptr %i.mr, ptr %i.ma, align 8, !tbaa !145, !alias.scope !222
  %i.ms = load ptr, ptr %2, align 8, !tbaa !150, !noalias !222 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mh
  br i1 %i.mt, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i167

bb.ab:                                            ; preds = %bb.aa
  %i.mu = load i64, ptr %i.mo, align 8, !tbaa !147, !noalias !222 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, 16
  call void @llvm.assume(i1 %i.mv)
  %i.mw = add nuw nsw i64 %i.mu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mr, ptr noundef nonnull align 8 dereferenceable(1) %i.mh, i64 %i.mw, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i167: ; preds = %bb.aa
  store ptr %i.ms, ptr %i.ma, align 8, !tbaa !150, !alias.scope !222
  %i.mx = load i64, ptr %i.mh, align 8, !tbaa !149, !noalias !222
  store i64 %i.mx, ptr %i.mr, align 8, !tbaa !149, !alias.scope !222
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320: ; preds = %bb.s
  store ptr %i.gn, ptr %i.fv, align 8, !tbaa !150, !alias.scope !277
  %i.gs = load i64, ptr %i.gc, align 8, !tbaa !149, !noalias !277
  store i64 %i.gs, ptr %i.gm, align 8, !tbaa !149, !alias.scope !277
  %.pre.i.i321 = load i64, ptr %i.gj, align 8, !tbaa !147, !noalias !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136

bb.u:                                             ; preds = %.noexc.i.i.i.i.i322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i124
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %i.fg, align 8, !tbaa !150 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ft
  br i1 %i.gv, label %.body128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %bb.u
  %i.gw = load i64, ptr %i.ft, align 8, !tbaa !149
  br label %.body128.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320
  %i.gx = phi i64 [ %i.gp, %bb.t ], [ %.pre.i.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i320 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 592
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !147, !alias.scope !277
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 616
  store i8 0, ptr %i.gz, align 8, !tbaa !186, !alias.scope !277
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 624
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 640 ; 2 uses
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !145
  %i.hc = getelementptr inbounds nuw i8, ptr %16, i64 632
  store i64 0, ptr %i.hc, align 8, !tbaa !147
  store i8 0, ptr %i.hb, align 8, !tbaa !149
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 656
  store i8 0, ptr %i.hd, align 8, !tbaa !188
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 728
  store i8 0, ptr %i.he, align 8, !tbaa !196
  %i.hf = getelementptr inbounds nuw i8, ptr %16, i64 736 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hg, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %21, i64 25
  store i8 0, ptr %i.hi, align 1, !tbaa !149
  %i.hj = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 112
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !163 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !208 ; 2 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = icmp eq ptr %i.hn, %i.hl
  %i.hs = trunc i64 %i.hq to i32
  %i.ht = add nsw i32 %i.hs, 1
  %i.hu = select i1 %i.hr, i32 0, i32 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 752 ; 4 uses
  store ptr %i.hv, ptr %i.hf, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hv, ptr noundef nonnull align 8 dereferenceable(10) %i.hg, i64 10, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 744
  store i64 9, ptr %i.hw, align 8, !tbaa !147
  store ptr %i.hg, ptr %21, align 8, !tbaa !150
  store i64 0, ptr %i.hh, align 8, !tbaa !147
  store i8 0, ptr %i.hg, align 8, !tbaa !149
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.hz = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.hu, ptr noundef nonnull %i.hy)
          to label %.noexc330 unwind label %bb.z

.noexc330:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 5 uses
  store i64 %i.ic, ptr %5, align 8, !tbaa !142
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hy, ptr %i.id, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !280
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ie, ptr %4, align 8, !tbaa !145, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !280
  store i64 %i.ic, ptr %i.b, align 8, !tbaa !77, !noalias !280
  %i.if = icmp ugt i64 %i.ic, 15
  br i1 %i.if, label %.noexc.i.i.i.i.i329, label %._crit_edge.i.i.i.i.i.i326

.noexc.i.i.i.i.i329:                              ; preds = %.noexc330
  %i.ig = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc331 unwind label %bb.z  ; 2 uses

.noexc331:                                        ; preds = %.noexc.i.i.i.i.i329
  store ptr %i.ig, ptr %4, align 8, !tbaa !150, !noalias !280
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !280
  store i64 %i.ih, ptr %i.ie, align 8, !tbaa !149, !noalias !280
  br label %._crit_edge.i.i.i.i.i.i326

._crit_edge.i.i.i.i.i.i326:                       ; preds = %.noexc331, %.noexc330
  %i.ii = phi ptr [ %i.ig, %.noexc331 ], [ %i.ie, %.noexc330 ] ; 2 uses
  switch i64 %i.ic, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i326
  %i.ij = load i8, ptr %i.hy, align 8, !tbaa !149, !noalias !280
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !149, !noalias !280
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ii, ptr nonnull align 8 %i.hy, i64 %i.ic, i1 false), !noalias !280
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i326
  %i.ik = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !280 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !147, !noalias !280
  %i.im = load ptr, ptr %4, align 8, !tbaa !150, !noalias !280
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ik
  store i8 0, ptr %i.in, align 1, !tbaa !149, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !280
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 784 ; 3 uses
  store ptr %i.io, ptr %i.hx, align 8, !tbaa !145, !alias.scope !280
  %i.ip = load ptr, ptr %4, align 8, !tbaa !150, !noalias !280 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ie
  br i1 %i.iq, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327

bb.y:                                             ; preds = %bb.x
  %i.ir = load i64, ptr %i.il, align 8, !tbaa !147, !noalias !280 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  %i.it = add nuw nsw i64 %i.ir, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %i.ie, i64 %i.it, i1 false)
  br label %.noexc.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327: ; preds = %bb.x
  store ptr %i.ip, ptr %i.hx, align 8, !tbaa !150, !alias.scope !280
  %i.iu = load i64, ptr %i.ie, align 8, !tbaa !149, !noalias !280
  store i64 %i.iu, ptr %i.io, align 8, !tbaa !149, !alias.scope !280
  %.pre.i.i328 = load i64, ptr %i.il, align 8, !tbaa !147, !noalias !280
  br label %.noexc.i143

bb.z:                                             ; preds = %.noexc.i.i.i.i.i329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i136
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %i.hf, align 8, !tbaa !150 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.hv
  br i1 %i.ix, label %.body140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %bb.z
  %i.iy = load i64, ptr %i.hv, align 8, !tbaa !149
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #30
  br label %.body140

.noexc.i143:                                      ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327
  %i.ja = phi i64 [ %i.ir, %bb.y ], [ %.pre.i.i328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i327 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 776
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !147, !alias.scope !280
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 800
  store i8 0, ptr %i.jc, align 8, !tbaa !186, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 808
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 824 ; 2 uses
  store ptr %i.je, ptr %i.jd, align 8, !tbaa !145
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 816
  store i64 0, ptr %i.jf, align 8, !tbaa !147
  store i8 0, ptr %i.je, align 8, !tbaa !149
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 840
  store i8 0, ptr %i.jg, align 8, !tbaa !188
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 912
  store i8 0, ptr %i.jh, align 8, !tbaa !196
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 920 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 11 uses
  store ptr %i.jj, ptr %22, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i64 29, ptr %i.i, align 8, !tbaa !77
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc144 unwind label %bb.ay ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.jk, ptr %22, align 8, !tbaa !150
  %i.jl = load i64, ptr %i.i, align 8, !tbaa !77  ; 3 uses
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.jk, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !147
  %i.jn = load ptr, ptr %22, align 8, !tbaa !150
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  store i8 0, ptr %i.jo, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !212 ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !212 ; 3 uses
  %.not8.i = icmp eq ptr %i.jq, %i.js
  br i1 %.not8.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc144
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %28 = sub i64 %i.jt, %i.ju
  %29 = add i64 %28, -32                          ; 2 uses
  %min.iters.check = icmp ult i64 %29, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader521, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.jv = lshr i64 %29, 5
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 2 uses
  %n.mod.vf = and i64 %i.jw, 3                    ; 2 uses
  %i.jx = icmp eq i64 %n.mod.vf, 0
  %i.jy = select i1 %i.jx, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.jw, %i.jy               ; 2 uses
  %i.jz = shl i64 %n.vec, 5
  %i.ka = getelementptr i8, ptr %i.jq, i64 %i.jz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.lr, %vector.body ]
  %vec.phi502 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ls, %vector.body ]
  %i.kb = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.jq, i64 %i.kb ; 2 uses
  %i.kc = getelementptr i8, ptr %i.jq, i64 %i.kb  ; 2 uses
  %i.kd = getelementptr i8, ptr %i.jq, i64 %i.kb  ; 2 uses
  %i.ke = getelementptr i8, ptr %i.jq, i64 %i.kb  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.kg = getelementptr i8, ptr %i.kc, i64 40
  %i.kh = getelementptr i8, ptr %i.kd, i64 72
  %i.ki = getelementptr i8, ptr %i.ke, i64 104
  %i.kj = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.kk = getelementptr i8, ptr %i.kc, i64 48
  %i.kl = getelementptr i8, ptr %i.kd, i64 80
  %i.km = getelementptr i8, ptr %i.ke, i64 112
  %i.kn = load ptr, ptr %i.kj, align 8, !tbaa !214
  %i.ko = load ptr, ptr %i.kk, align 8, !tbaa !214
  %i.kp = insertelement <2 x ptr> poison, ptr %i.kn, i64 0
  %i.kq = insertelement <2 x ptr> %i.kp, ptr %i.ko, i64 1
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !214
  %i.ks = load ptr, ptr %i.km, align 8, !tbaa !214
  %i.kt = insertelement <2 x ptr> poison, ptr %i.kr, i64 0
  %i.ku = insertelement <2 x ptr> %i.kt, ptr %i.ks, i64 1
  %i.kv = load ptr, ptr %i.kf, align 8, !tbaa !217
  %i.kw = load ptr, ptr %i.kg, align 8, !tbaa !217
  %i.kx = insertelement <2 x ptr> poison, ptr %i.kv, i64 0
  %i.ky = insertelement <2 x ptr> %i.kx, ptr %i.kw, i64 1
  %i.kz = load ptr, ptr %i.kh, align 8, !tbaa !217
  %i.la = load ptr, ptr %i.ki, align 8, !tbaa !217
  %i.lb = insertelement <2 x ptr> poison, ptr %i.kz, i64 0
  %i.lc = insertelement <2 x ptr> %i.lb, ptr %i.la, i64 1
  %i.ld = ptrtoint <2 x ptr> %i.kq to <2 x i64>
  %i.le = ptrtoint <2 x ptr> %i.ku to <2 x i64>
  %i.lf = ptrtoint <2 x ptr> %i.ky to <2 x i64>
  %i.lg = ptrtoint <2 x ptr> %i.lc to <2 x i64>
  %i.lh = sub <2 x i64> %i.ld, %i.lf
  %i.li = sub <2 x i64> %i.le, %i.lg
  %i.lj = lshr <2 x i64> %i.lh, splat (i64 1)
  %i.lk = lshr <2 x i64> %i.li, splat (i64 1)
  %i.ll = trunc <2 x i64> %i.lj to <2 x i32>
  %i.lm = and <2 x i32> %i.ll, splat (i32 -2)
  %i.ln = trunc <2 x i64> %i.lk to <2 x i32>
  %i.lo = and <2 x i32> %i.ln, splat (i32 -2)
  %i.lp = add <2 x i32> %vec.phi, splat (i32 3)
  %i.lq = add <2 x i32> %vec.phi502, splat (i32 3)
  %i.lr = add <2 x i32> %i.lp, %i.lm              ; 2 uses
  %i.ls = add <2 x i32> %i.lq, %i.lo              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ls, %i.lr
  %i.lu = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader521

.lr.ph.i.preheader521:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.lu, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.jq, %.lr.ph.i.preheader ], [ %i.ka, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader521, %.lr.ph.i
  %.010.i = phi i32 [ %i.me, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader521 ]
  %.sroa.05.09.i = phi ptr [ %i.mf, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader521 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !214
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !217
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %sh.diff.i = lshr i64 %i.mb, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.mc = and i32 %tr.sh.diff.i, -2
  %i.md = add i32 %.010.i, 3
  %i.me = add i32 %i.md, %i.mc                    ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.mf, %i.js
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !284

_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit: ; preds = %.lr.ph.i, %.noexc144
  %.0.lcssa.i = phi i32 [ 2, %.noexc144 ], [ %i.me, %.lr.ph.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %16, i64 936 ; 5 uses
  store ptr %i.mg, ptr %i.ji, align 8, !tbaa !145
  %i.mh = load ptr, ptr %22, align 8, !tbaa !150  ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.jj
  br i1 %i.mi, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

bb.aa:                                            ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  %i.mj = load i64, ptr %i.jm, align 8, !tbaa !147 ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 16
  call void @llvm.assume(i1 %i.mk)
  %i.ml = add nuw nsw i64 %i.mj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mg, ptr noundef nonnull align 8 dereferenceable(1) %i.jj, i64 %i.ml, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit
  store ptr %i.mh, ptr %i.ji, align 8, !tbaa !150
  %i.mm = load i64, ptr %i.jj, align 8, !tbaa !149
  store i64 %i.mm, ptr %i.mg, align 8, !tbaa !149
  %.pre375 = load i64, ptr %i.jm, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.aa
  %i.mn = phi i64 [ %.pre375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.mj, %bb.aa ]
  %i.mo = getelementptr inbounds nuw i8, ptr %16, i64 928
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !147
  store ptr %i.jj, ptr %22, align 8, !tbaa !150
  store i64 0, ptr %i.jm, align 8, !tbaa !147
  store i8 0, ptr %i.jj, align 8, !tbaa !149
  %i.mp = getelementptr inbounds nuw i8, ptr %16, i64 952 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.mr = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.mq)
          to label %.noexc336 unwind label %bb.af

.noexc336:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i147
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mq to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 5 uses
  store i64 %i.mu, ptr %3, align 8, !tbaa !142
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.mq, ptr %i.mv, align 8, !tbaa !144
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !285
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.mw, ptr %2, align 8, !tbaa !145, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !285
  store i64 %i.mu, ptr %i.a, align 8, !tbaa !77, !noalias !285
  %i.mx = icmp ugt i64 %i.mu, 15
  br i1 %i.mx, label %.noexc.i.i.i.i.i335, label %._crit_edge.i.i.i.i.i.i332

.noexc.i.i.i.i.i335:                              ; preds = %.noexc336
  %i.my = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc337 unwind label %bb.af ; 2 uses

.noexc337:                                        ; preds = %.noexc.i.i.i.i.i335
  store ptr %i.my, ptr %2, align 8, !tbaa !150, !noalias !285
  %i.mz = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !285
  store i64 %i.mz, ptr %i.mw, align 8, !tbaa !149, !noalias !285
  br label %._crit_edge.i.i.i.i.i.i332

._crit_edge.i.i.i.i.i.i332:                       ; preds = %.noexc337, %.noexc336
  %i.na = phi ptr [ %i.my, %.noexc337 ], [ %i.mw, %.noexc336 ] ; 2 uses
  switch i64 %i.mu, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i332
  %i.nb = load i8, ptr %i.mq, align 8, !tbaa !149, !noalias !285
  store i8 %i.nb, ptr %i.na, align 1, !tbaa !149, !noalias !285
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.na, ptr nonnull align 8 %i.mq, i64 %i.mu, i1 false), !noalias !285
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i.i332
  %i.nc = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !285 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !147, !noalias !285
  %i.ne = load ptr, ptr %2, align 8, !tbaa !150, !noalias !285
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nc
  store i8 0, ptr %i.nf, align 1, !tbaa !149, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !285
  %i.ng = getelementptr inbounds nuw i8, ptr %16, i64 968 ; 3 uses
  store ptr %i.ng, ptr %i.mp, align 8, !tbaa !145, !alias.scope !285
  %i.nh = load ptr, ptr %2, align 8, !tbaa !150, !noalias !285 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.mw
  br i1 %i.ni, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i333

bb.ae:                                            ; preds = %bb.ad
  %i.nj = load i64, ptr %i.nd, align 8, !tbaa !147, !noalias !285 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, 16
  call void @llvm.assume(i1 %i.nk)
  %i.nl = add nuw nsw i64 %i.nj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ng, ptr noundef nonnull align 8 dereferenceable(1) %i.mw, i64 %i.nl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i333: ; preds = %bb.ad
  store ptr %i.nh, ptr %i.mp, align 8, !tbaa !150, !alias.scope !285
  %i.nm = load i64, ptr %i.mw, align 8, !tbaa !149, !noalias !285
  store i64 %i.nm, ptr %i.ng, align 8, !tbaa !149, !alias.scope !285
end_hunk_1
