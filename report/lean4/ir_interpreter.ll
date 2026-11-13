Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ir_interpreter?download=true
inline.NumInlined: 2112
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.eq = lshr i64 %i.el, 1
  %i.er = trunc i64 %i.eq to i32
  %i.es = tail call i64 @_ZN4lean2ir11interpreter9eval_exprERKNS_10object_refENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ep, i32 noundef %i.er)
  %i.et = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !148
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !19
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = add i64 %i.fa, %i.ex                    ; 2 uses
  %i.fc = add i64 %i.fb, -1                       ; 2 uses
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.fe = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %.not.i = icmp ult i64 %i.fc, %i.fi
  br i1 %.not.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.fb)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit

_ZN4lean2ir11interpreter3varERKNS_3natE.exit:     ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit, %bb.v
  %i.fj = phi ptr [ %.pre.i, %bb.v ], [ %i.fe, %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fc
  store i64 %i.es, ptr %i.fk, align 8, !tbaa !21
  %i.fl = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  br label %.thread284.backedge

bb.w:                                             ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.fn = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !149
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !19
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = lshr i64 %i.fs, 1
  %i.fu = add i64 %i.ft, %i.fp                    ; 3 uses
  %i.fv = load ptr, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !114 ; 6 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 3                 ; 4 uses
  %.not = icmp ult i64 %i.fu, %i.ga
  br i1 %.not, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gb = add i64 %i.fu, 1                        ; 4 uses
  %i.gc = icmp ugt i64 %i.gb, %i.ga
  br i1 %i.gc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gd = sub nuw i64 %i.gb, %i.ga
  tail call void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.gd)
  %.pre374 = load ptr, ptr %i.a, align 8, !tbaa !114
  %.pre375 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.z:                                             ; preds = %bb.x
  %i.ge = icmp ult i64 %i.gb, %i.ga
  br i1 %i.ge, label %bb.aa, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.aa:                                            ; preds = %bb.z
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gb ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.fv, %i.gf
  br i1 %.not.i.i120, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.aa
  store ptr %i.gf, ptr %i.e, align 8, !tbaa !146
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.aa, %bb.z, %bb.y, %bb.w
  %i.gg = phi ptr [ %i.f, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.f, %bb.aa ], [ %i.f, %bb.z ], [ %.pre375, %bb.y ], [ %i.f, %bb.w ]
  %i.gh = phi ptr [ %i.fw, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.fw, %bb.aa ], [ %i.fw, %bb.z ], [ %.pre374, %bb.y ], [ %i.fw, %bb.w ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fu
  store ptr %.sroa.0229.0, ptr %i.gi, align 8, !tbaa !165
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  br label %.thread284.backedge

bb.ab:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !148
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !19
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = lshr i64 %i.gp, 1
  %i.gr = add i64 %i.gq, %i.gn                    ; 2 uses
  %i.gs = add i64 %i.gr, -1                       ; 2 uses
  %i.gt = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.gu = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3
  %.not.i121 = icmp ult i64 %i.gs, %i.gy
  br i1 %.not.i121, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit123, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.gr)
  %.pre.i122 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre373 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit123

_ZN4lean2ir11interpreter3varERKNS_3natE.exit123:  ; preds = %bb.ab, %bb.ac
  %i.gz = phi ptr [ %.pre373, %bb.ac ], [ %i.f, %bb.ab ] ; 2 uses
  %i.ha = phi ptr [ %.pre.i122, %bb.ac ], [ %i.gu, %bb.ab ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gs
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !19
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = lshr i64 %i.hf, 1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19 ; 2 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = trunc i64 %i.hj to i1
  br i1 %i.hk, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit128, label %bb.ad

bb.ad:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit123
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !148
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !19
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = lshr i64 %i.hq, 1
  %i.hs = add i64 %i.hr, %i.ho                    ; 2 uses
  %i.ht = add i64 %i.hs, -1                       ; 2 uses
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ha to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 3
  %.not.i.i124 = icmp ult i64 %i.ht, %i.hy
  br i1 %.not.i.i124, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i126, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.hs)
  %.pre.i.i125 = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i126

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i126: ; preds = %bb.ae, %bb.ad
  %i.hz = phi ptr [ %.pre.i.i125, %bb.ae ], [ %i.ha, %bb.ad ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ht
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !21
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit128

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit128: ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit123, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i126
  %.sroa.0.0.i127 = phi i64 [ %i.ib, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i126 ], [ 1, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit123 ]
  %i.ic = inttoptr i64 %.sroa.0.0.i127 to ptr
  %i.id = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.ie = and i64 %i.hg, 4294967295
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ie
  store ptr %i.ic, ptr %i.if, align 8, !tbaa !20
  %i.ig = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  br label %.thread284.backedge

bb.af:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -16
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !148
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !19
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = lshr i64 %i.in, 1
  %i.ip = add i64 %i.io, %i.il                    ; 2 uses
  %i.iq = add i64 %i.ip, -1                       ; 2 uses
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.is = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = ashr exact i64 %i.iv, 3
  %.not.i129 = icmp ult i64 %i.iq, %i.iw
  br i1 %.not.i129, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ip)
  %.pre.i130 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre372 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit131

_ZN4lean2ir11interpreter3varERKNS_3natE.exit131:  ; preds = %bb.af, %bb.ag
  %i.ix = phi ptr [ %.pre372, %bb.ag ], [ %i.f, %bb.af ]
  %i.iy = phi ptr [ %.pre.i130, %bb.ag ], [ %i.is, %bb.af ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iq
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !21
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !19
  %i.jd = ptrtoint ptr %i.jc to i64
  %3 = trunc i64 %i.jd to i32
  %4 = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %3, 23
  %7 = and i32 %6, -16777216
  %8 = and i32 %5, 16777215
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 4
  %i.je = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  br label %.thread284.backedge

bb.ah:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !148 ; 2 uses
  %i.jk = load ptr, ptr %i.jg, align 8, !tbaa !19
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = lshr i64 %i.jl, 1
  %i.jn = add i64 %i.jm, %i.jj                    ; 2 uses
  %i.jo = add i64 %i.jn, -1                       ; 2 uses
  %i.jp = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.jq = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 3                 ; 2 uses
  %.not.i132 = icmp ult i64 %i.jo, %i.ju
  br i1 %.not.i132, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.jn)
  %.pre.i133 = load ptr, ptr %0, align 8, !tbaa !116 ; 2 uses
  %.pre366 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %.pre367 = load ptr, ptr %i.b, align 8, !tbaa !163
  %.phi.trans.insert368 = getelementptr inbounds i8, ptr %.pre367, i64 -16
  %.pre369 = load i64, ptr %.phi.trans.insert368, align 8, !tbaa !148
  %.pre370 = load ptr, ptr %i.c, align 8, !tbaa !145
  %.pre385 = ptrtoint ptr %.pre370 to i64
  %.pre386 = ptrtoint ptr %.pre.i133 to i64
  %.pre388 = sub i64 %.pre385, %.pre386
  %.pre390 = ashr exact i64 %.pre388, 3
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134

_ZN4lean2ir11interpreter3varERKNS_3natE.exit134:  ; preds = %bb.ah, %bb.ai
  %.pre-phi391 = phi i64 [ %i.ju, %bb.ah ], [ %.pre390, %bb.ai ]
  %i.jv = phi i64 [ %i.jj, %bb.ah ], [ %.pre369, %bb.ai ]
  %i.jw = phi ptr [ %i.f, %bb.ah ], [ %.pre366, %bb.ai ] ; 3 uses
  %i.jx = phi ptr [ %i.jq, %bb.ah ], [ %.pre.i133, %bb.ai ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jo
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !21
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !19
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = lshr i64 %i.kc, 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !19
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = lshr i64 %i.kg, 1
  %i.ki = add i64 %i.kh, %i.jv                    ; 2 uses
  %i.kj = add i64 %i.ki, -1                       ; 2 uses
  %.not.i135 = icmp ult i64 %i.kj, %.pre-phi391
  br i1 %.not.i135, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit137, label %bb.aj

bb.aj:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ki)
  %.pre.i136 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre371 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit137

_ZN4lean2ir11interpreter3varERKNS_3natE.exit137:  ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134, %bb.aj
  %i.kk = phi ptr [ %.pre371, %bb.aj ], [ %i.jw, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134 ]
  %i.kl = phi ptr [ %.pre.i136, %bb.aj ], [ %i.jx, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit134 ]
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kj
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !21
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kp = and i64 %i.kd, 4294967295
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kp
  store i64 %i.kn, ptr %i.kq, align 8, !tbaa !36
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  br label %.thread284.backedge

bb.ak:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !148 ; 2 uses
  %i.kw = load ptr, ptr %i.ks, align 8, !tbaa !19
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = lshr i64 %i.kx, 1
  %i.kz = add i64 %i.ky, %i.kv                    ; 2 uses
  %i.la = add i64 %i.kz, -1                       ; 2 uses
  %i.lb = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.lc = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = ashr exact i64 %i.lf, 3                 ; 2 uses
  %.not.i138 = icmp ult i64 %i.la, %i.lg
  br i1 %.not.i138, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.kz)
  %.pre.i139 = load ptr, ptr %0, align 8, !tbaa !116 ; 2 uses
  %.pre360 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  %.pre361 = load ptr, ptr %i.b, align 8, !tbaa !163
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre361, i64 -16
  %.pre362 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !148
  %.pre363 = load ptr, ptr %i.c, align 8, !tbaa !145
  %.pre392 = ptrtoint ptr %.pre363 to i64
  %.pre394 = ptrtoint ptr %.pre.i139 to i64
  %.pre396 = sub i64 %.pre392, %.pre394
  %.pre398 = ashr exact i64 %.pre396, 3
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140

_ZN4lean2ir11interpreter3varERKNS_3natE.exit140:  ; preds = %bb.ak, %bb.al
  %.pre-phi399 = phi i64 [ %i.lg, %bb.ak ], [ %.pre398, %bb.al ]
  %i.lh = phi i64 [ %i.kv, %bb.ak ], [ %.pre362, %bb.al ]
  %i.li = phi ptr [ %i.f, %bb.ak ], [ %.pre360, %bb.al ] ; 4 uses
  %i.lj = phi ptr [ %i.lc, %bb.ak ], [ %.pre.i139, %bb.al ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.la
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !21 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !19
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = shl i64 %i.lo, 2
  %i.lq = and i64 %i.lp, -8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !19
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = lshr i64 %i.lt, 1
  %i.lv = add i64 %i.lq, %i.lu                    ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !19
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = lshr i64 %i.ly, 1
  %i.ma = add i64 %i.lz, %i.lh                    ; 2 uses
  %i.mb = add i64 %i.ma, -1                       ; 2 uses
  %.not.i141 = icmp ult i64 %i.mb, %.pre-phi399
  br i1 %.not.i141, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit143, label %bb.am

bb.am:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ma)
  %.pre.i142 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre364 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit143

_ZN4lean2ir11interpreter3varERKNS_3natE.exit143:  ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140, %bb.am
  %i.mc = phi ptr [ %.pre364, %bb.am ], [ %i.li, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140 ] ; 7 uses
  %i.md = phi ptr [ %.pre.i142, %bb.am ], [ %i.lj, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit140 ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb
  %.sroa.021.0.copyload27 = load i64, ptr %i.me, align 8 ; 5 uses
  %i.mf = trunc i64 %.sroa.021.0.copyload27 to i32 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !20
  %i.mi = ptrtoint ptr %i.mh to i64               ; 2 uses
  %i.mj = trunc i64 %i.mi to i1
  br i1 %i.mj, label %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit143
  %i.mk = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.mk, ptr noundef nonnull @.str)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @__cxa_throw(ptr nonnull %i.mk, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ml = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.mk) #23
  br label %common.resume

_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit: ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit143
  %i.mm = lshr i64 %i.mi, 1
  %i.mn = trunc i64 %i.mm to i32
  switch i32 %i.mn, label %bb.ba [
    i32 0, label %bb.aq
    i32 9, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 3, label %bb.au
    i32 4, label %bb.av
    i32 5, label %bb.aw
    i32 6, label %bb.aw
    i32 13, label %bb.aw
    i32 7, label %bb.aw
    i32 12, label %bb.aw
    i32 8, label %bb.aw
    i32 10, label %bb.aw
    i32 11, label %bb.aw
  ]

bb.aq:                                            ; preds = %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.mp = and i64 %i.lv, 4294967295
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mp
  store i64 %.sroa.021.0.copyload27, ptr %i.mq, align 8, !tbaa !35
  br label %bb.ba

bb.ar:                                            ; preds = %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ms = and i64 %i.lv, 4294967295
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ms
  store i32 %i.mf, ptr %i.mt, align 4, !tbaa !38
  br label %bb.ba
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm:bb.a
  store ptr %i.as, ptr %i.a, align 8, !tbaa !145
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN4lean2ir11interpreter9eval_exprERKNS_10object_refENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.lean::ir::interpreter::symbol_cache_entry", align 8 ; 9 uses
  %4 = alloca %"class.lean::sstream", align 8     ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 25 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val.i.i, 24
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %bb.cy [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.n
    i8 3, label %bb.w
    i8 4, label %bb.y
    i8 5, label %bb.aa
    i8 6, label %bb.al
    i8 7, label %bb.ao
    i8 8, label %bb.bd
    i8 9, label %bb.bi
    i8 10, label %bb.bn
    i8 11, label %bb.bp
    i8 12, label %bb.cu
    i8 13, label %bb.cw
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = tail call noundef ptr @_ZN4lean2ir11interpreter10alloc_ctorERKNS_10object_refERKNS_9array_refIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = ptrtoint ptr %i.f to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !163
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !148
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.l                       ; 2 uses
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !145
  %i.t = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not.i139 = icmp ult i64 %i.q, %i.x
  br i1 %.not.i139, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit

_ZN4lean2ir11interpreter3varERKNS_3natE.exit:     ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.t, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.q
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 5 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !28 ; 4 uses
  %i.ab = icmp eq i32 %.val.i, 1
  br i1 %i.ab, label %.preheader, label %bb.j

.preheader:                                       ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %.not258 = icmp ult ptr %i.ae, inttoptr (i64 2 to ptr)
  br i1 %.not258, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.e

._crit_edge253:                                   ; preds = %_ZN4lean13cnstr_releaseEP11lean_objectj.exit, %.preheader
  %i.ag = ptrtoint ptr %i.aa to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.e:                                             ; preds = %.lr.ph252, %_ZN4lean13cnstr_releaseEP11lean_objectj.exit
  %.0108251 = phi i64 [ 0, %.lr.ph252 ], [ %i.ap, %_ZN4lean13cnstr_releaseEP11lean_objectj.exit ] ; 2 uses
  %i.ah = and i64 %.0108251, 4294967295
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 4 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !28 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.g, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !28
  br label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

bb.h:                                             ; preds = %bb.f
  %.not.i4.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i4.i.i, label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj)
  br label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

_ZN4lean13cnstr_releaseEP11lean_objectj.exit:     ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !tbaa !20
  %i.ap = add nuw nsw i64 %.0108251, 1            ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = lshr i64 %i.at, 1
  %i.av = icmp samesign ult i64 %i.ap, %i.au
  br i1 %i.av, label %bb.e, label %._crit_edge253, !llvm.loop !317

bb.j:                                             ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit
  %i.aw = icmp sgt i32 %.val.i, 1
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %.val.i, -1
  store i32 %i.ax, ptr %i.aa, align 4, !tbaa !28
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %_ZN4lean7dec_refEP11lean_object.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa)
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.n:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !163
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !148
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !19
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !145
  %i.bk = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %.not.i140 = icmp ult i64 %i.bh, %i.bo
  br i1 %.not.i140, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit142, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.bg)
  %.pre.i141 = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit142

_ZN4lean2ir11interpreter3varERKNS_3natE.exit142:  ; preds = %bb.n, %bb.o
  %i.bp = phi ptr [ %.pre.i141, %bb.o ], [ %i.bk, %bb.n ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bh
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21 ; 3 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bt = trunc i64 %i.bs to i1
  %i.bu = load ptr, ptr %1, align 8, !tbaa !19    ; 5 uses
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit142
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bx = tail call noundef ptr @_ZN4lean2ir11interpreter10alloc_ctorERKNS_10object_refERKNS_9array_refIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %i.by = ptrtoint ptr %i.bx to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.q:                                             ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit142
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21
  %.not230 = icmp eq i8 %i.ca, 0
  br i1 %.not230, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = ptrtoint ptr %i.ce to i64
  %5 = trunc i64 %i.cf to i32
  %6 = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %5, 23
  %9 = and i32 %8, -16777216
  %10 = and i32 %7, 16777215
  %11 = or disjoint i32 %9, %10
  store i32 %11, ptr %6, align 4
  %.pre271 = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = phi ptr [ %.pre271, %bb.r ], [ %i.bu, %bb.q ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val.i.i143247 = load i64, ptr %i.cj, align 8, !tbaa !36
  %.not257 = icmp eq i64 %.val.i.i143247, 0
  br i1 %.not257, label %_ZN4lean7dec_refEP11lean_object.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph250, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit
  %i.cl = phi ptr [ %i.ci, %.lr.ph250 ], [ %i.dp, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit ]
  %.0123248 = phi i64 [ 0, %.lr.ph250 ], [ %i.dm, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0123248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !19 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = trunc i64 %i.cp to i1
  br i1 %i.cq, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load ptr, ptr %i.az, align 8, !tbaa !163
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !148
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !19
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = add i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = add i64 %i.cy, -1                       ; 2 uses
  %i.da = load ptr, ptr %i.bi, align 8, !tbaa !145
  %i.db = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3
  %.not.i.i144 = icmp ult i64 %i.cz, %i.df
  br i1 %.not.i.i144, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.cy)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i:   ; preds = %bb.v, %bb.u
  %i.dg = phi ptr [ %.pre.i.i, %bb.v ], [ %i.db, %bb.u ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cz
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !21
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit: ; preds = %bb.t, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i
  %.sroa.0.0.i = phi i64 [ %i.di, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i ], [ 1, %bb.t ]
  %i.dj = inttoptr i64 %.sroa.0.0.i to ptr
  %i.dk = and i64 %.0123248, 4294967295
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dk
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !20
  %i.dm = add nuw i64 %.0123248, 1                ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !19 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %.val.i.i143 = load i64, ptr %i.dq, align 8, !tbaa !36
  %i.dr = icmp ult i64 %i.dm, %.val.i.i143
  br i1 %i.dr, label %bb.t, label %_ZN4lean7dec_refEP11lean_object.exit, !llvm.loop !318

bb.w:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !163
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !148
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !19
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = lshr i64 %i.dy, 1
  %i.ea = add i64 %i.dz, %i.dw                    ; 2 uses
  %i.eb = add i64 %i.ea, -1                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !145
  %i.ee = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %.not.i145 = icmp ult i64 %i.eb, %i.ei
  br i1 %.not.i145, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit147, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ea)
  %.pre.i146 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre270 = load ptr, ptr %1, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit147

_ZN4lean2ir11interpreter3varERKNS_3natE.exit147:  ; preds = %bb.w, %bb.x
  %i.ej = phi ptr [ %.pre270, %bb.x ], [ %i.a, %bb.w ]
  %i.ek = phi ptr [ %.pre.i146, %bb.x ], [ %i.ee, %bb.w ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eb
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !19
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = lshr i64 %i.ep, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.es = and i64 %i.eq, 4294967295
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20
  %i.ev = ptrtoint ptr %i.eu to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.y:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !163
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !148
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add i64 %i.fd, %i.fa                    ; 2 uses
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !145
  %i.fi = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3
  %.not.i148 = icmp ult i64 %i.ff, %i.fm
  br i1 %.not.i148, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit150, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.fe)
  %.pre.i149 = load ptr, ptr %0, align 8, !tbaa !116
  %.pre269 = load ptr, ptr %1, align 8, !tbaa !19
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit150

_ZN4lean2ir11interpreter3varERKNS_3natE.exit150:  ; preds = %bb.y, %bb.z
  %i.fn = phi ptr [ %.pre269, %bb.z ], [ %i.a, %bb.y ]
  %i.fo = phi ptr [ %.pre.i149, %bb.z ], [ %i.fi, %bb.y ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.ff
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = and i64 %i.fu, 4294967295
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !36
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.aa:                                            ; preds = %bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !19
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = shl i64 %i.gb, 2
  %i.gd = and i64 %i.gc, -8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !19
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add i64 %i.gd, %i.gh                    ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !163
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !148
  %i.go = load ptr, ptr %i.gj, align 8, !tbaa !19
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = lshr i64 %i.gp, 1
  %i.gr = add i64 %i.gq, %i.gn                    ; 2 uses
  %i.gs = add i64 %i.gr, -1                       ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !145
  %i.gv = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = ashr exact i64 %i.gy, 3
  %.not.i151 = icmp ult i64 %i.gs, %i.gz
  br i1 %.not.i151, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit153, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.gr)
  %.pre.i152 = load ptr, ptr %0, align 8, !tbaa !116
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit153

_ZN4lean2ir11interpreter3varERKNS_3natE.exit153:  ; preds = %bb.aa, %bb.ab
  %i.ha = phi ptr [ %.pre.i152, %bb.ab ], [ %i.gv, %bb.aa ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gs
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !21 ; 6 uses
  switch i32 %2, label %bb.ai [
    i32 0, label %bb.ac
    i32 9, label %bb.ad
    i32 1, label %bb.ae
end_hunk_1
