Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3HudC2EP6ClientP11LocalPlayerP9Inventory:._crit_edge.i.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.h:                                             ; preds = %.noexc.i132
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.i:                                             ; preds = %.noexc133
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cn
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.i
  %i.dw = load i64, ptr %i.cn, align 8, !tbaa !23
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.h ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.dt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bk

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.k:                                             ; preds = %.noexc137
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cy
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.k
  %i.ec = load i64, ptr %i.cy, align 8, !tbaa !23
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.j
  %.pn84 = phi { ptr, i32 } [ %i.dy, %bb.j ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.dz, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bk

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %7, align 8, !tbaa !77    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dj
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.l
  %i.eh = load i64, ptr %i.dj, align 8, !tbaa !23
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.bk

._crit_edge.i.i158:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  store ptr %i.dq, ptr %i.aa, align 8, !tbaa !79
  %i.ej = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ek, ptr %8, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ek, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 15, ptr %i.el, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 31
  store i8 0, ptr %i.em, align 1, !tbaa !23
  %i.en = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %._crit_edge.i.i158
  %i.eo = extractvalue { <2 x float>, i64 } %i.en, 0
  %i.ep = extractvalue { <2 x float>, i64 } %i.en, 1 ; 2 uses
  %.sroa.5436.sroa.0.0.extract.trunc = trunc i64 %i.ep to i32
  %i.eq = bitcast i32 %.sroa.5436.sroa.0.0.extract.trunc to float
  %i.er = and i64 %i.ep, 4294967296
  %.not445 = icmp eq i64 %i.er, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not445, float 0.000000e+00, float %i.eq ; 2 uses
  %.sroa.02.0.i.sroa.speculated = select i1 %.not445, <2 x float> zeroinitializer, <2 x float> %i.eo ; 2 uses
  %i.es = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ek
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.m
  %i.eu = load i64, ptr %i.ek, align 8, !tbaa !23
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ew = fcmp nsz olt <2 x float> %.sroa.02.0.i.sroa.speculated, zeroinitializer
  %i.ex = select <2 x i1> %i.ew, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.ey = fadd nsz <2 x float> %.sroa.02.0.i.sroa.speculated, %i.ex
  %i.ez = fptosi <2 x float> %i.ey to <2 x i32>
  %i.fa = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ez, <2 x i32> zeroinitializer)
  %i.fb = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fa, <2 x i32> splat (i32 255))
  %i.fc = fcmp nsz olt float %.sroa.3.0.i.sroa.speculated, 0.000000e+00
  %.v.i168 = select i1 %i.fc, float -5.000000e-01, float 5.000000e-01
  %i.fd = fadd nsz float %.sroa.3.0.i.sroa.speculated, %.v.i168
  %i.fe = fptosi float %i.fd to i32
  %i.ff = call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %i.fg = call i32 @llvm.umin.i32(i32 %i.ff, i32 255)
  %i.fh = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fi, ptr %9, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.fi, ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 15, ptr %i.fj, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 31
  store i8 0, ptr %i.fk, align 1, !tbaa !23
  %i.fl = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.fm = call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %.0.i176 = call i32 @llvm.umin.i32(i32 %i.fm, i32 255)
  %i.fn = load ptr, ptr %9, align 8, !tbaa !77    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.n
  %i.fp = load i64, ptr %i.fi, align 8, !tbaa !23
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.fr = shl nuw i32 %.0.i176, 24
  %i.fs = shl nuw nsw <2 x i32> %i.fb, <i32 16, i32 8> ; 2 uses
  %i.ft = extractelement <2 x i32> %i.fs, i64 0
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = extractelement <2 x i32> %i.fs, i64 1
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = or disjoint i32 %i.fw, %i.fg
  store i32 %i.fx, ptr %i.j, align 4, !tbaa !78
  %i.fy = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fz, ptr %10, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  store i64 18, ptr %i.g, align 8, !tbaa !76
  %i.ga = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc182 unwind label %bb.x  ; 2 uses

.noexc182:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  store ptr %i.ga, ptr %10, align 8, !tbaa !77
  %i.gb = load i64, ptr %i.g, align 8, !tbaa !76  ; 3 uses
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ga, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, i64 18, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !22
  %i.gd = load ptr, ptr %10, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gb
  store i8 0, ptr %i.ge, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  %i.gf = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.y       ; 2 uses

bb.o:                                             ; preds = %.noexc182
  %i.gg = extractvalue { <2 x float>, i64 } %i.gf, 0
  %i.gh = extractvalue { <2 x float>, i64 } %i.gf, 1 ; 2 uses
  %.sroa.5415.sroa.0.0.extract.trunc = trunc i64 %i.gh to i32
  %i.gi = bitcast i32 %.sroa.5415.sroa.0.0.extract.trunc to float
  %i.gj = and i64 %i.gh, 4294967296
  %.not446 = icmp eq i64 %i.gj, 0                 ; 2 uses
  %.sroa.3.0.i186.sroa.speculated = select i1 %.not446, float 0.000000e+00, float %i.gi ; 2 uses
  %.sroa.02.0.i187.sroa.speculated = select i1 %.not446, <2 x float> zeroinitializer, <2 x float> %i.gg ; 2 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fz
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.o
  %i.gm = load i64, ptr %i.fz, align 8, !tbaa !23
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.go = fcmp nsz olt float %.sroa.3.0.i186.sroa.speculated, 0.000000e+00
  %.v.i199 = select i1 %i.go, float -5.000000e-01, float 5.000000e-01
  %i.gp = fadd nsz float %.sroa.3.0.i186.sroa.speculated, %.v.i199
  %i.gq = fptosi float %i.gp to i32
  %i.gr = fcmp nsz olt <2 x float> %.sroa.02.0.i187.sroa.speculated, zeroinitializer
  %i.gs = select <2 x i1> %i.gr, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %i.gt = fadd nsz <2 x float> %.sroa.02.0.i187.sroa.speculated, %i.gs
  %i.gu = insertelement <4 x i32> <i32 poison, i32 poison, i32 -2147483648, i32 poison>, i32 %i.gq, i64 3
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gw = fptosi <4 x float> %i.gv to <4 x i32>
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> %i.gu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gy = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gx, <4 x i32> <i32 0, i32 0, i32 -1, i32 0>)
  %i.gz = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gy, <4 x i32> <i32 255, i32 255, i32 -16777216, i32 255>)
  %i.ha = shl nuw nsw <4 x i32> %i.gz, <i32 16, i32 8, i32 0, i32 0>
  %i.hb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ha)
  store i32 %i.hb, ptr %i.k, align 8, !tbaa !78
  %i.hc = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.hd, ptr %11, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.hd, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.he, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 29
  store i8 0, ptr %i.hf, align 1, !tbaa !23
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !69
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = invoke noundef zeroext i1 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.hk = zext i1 %i.hj to i8
  store i8 %i.hk, ptr %i.l, align 4, !tbaa !80
  %i.hl = load ptr, ptr %11, align 8, !tbaa !77   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.hd
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.p
  %i.hn = load i64, ptr %i.hd, align 8, !tbaa !23
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.hp = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.hq, ptr %12, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store i64 20, ptr %i.f, align 8, !tbaa !76
  %i.hr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc211 unwind label %bb.aa ; 2 uses

.noexc211:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  store ptr %i.hr, ptr %12, align 8, !tbaa !77
  %i.hs = load i64, ptr %i.f, align 8, !tbaa !76  ; 3 uses
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.hr, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !22
  %i.hu = load ptr, ptr %12, align 8, !tbaa !77
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.hw = load ptr, ptr %i.hp, align 8, !tbaa !69
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef zeroext i1 %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %.noexc211
  %i.ia = zext i1 %i.hz to i8
  store i8 %i.ia, ptr %i.m, align 1, !tbaa !81
  %i.ib = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hq
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.q
  %i.id = load i64, ptr %i.hq, align 8, !tbaa !23
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.if = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.ih, %i.if
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !83
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ii = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !83
  %.not.i.i216 = icmp eq ptr %i.ik, %i.ii
  br i1 %.not.i.i216, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit218, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i217

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i217: ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !83
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit218

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit218: ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i217
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.il = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.im, ptr %14, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 17, ptr %i.e, align 8, !tbaa !76
  %i.in = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc221 unwind label %bb.ac ; 2 uses

.noexc221:                                        ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit218
  store ptr %i.in, ptr %14, align 8, !tbaa !77
  %i.io = load i64, ptr %i.e, align 8, !tbaa !76  ; 3 uses
  store i64 %i.io, ptr %i.im, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.in, ptr noundef nonnull align 1 dereferenceable(17) @.str.9, i64 17, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !22
  %i.iq = load ptr, ptr %14, align 8, !tbaa !77
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.io
  store i8 0, ptr %i.ir, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.r unwind label %bb.ad      ; 2 uses

bb.r:                                             ; preds = %.noexc221
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.it, ptr %13, align 8, !tbaa !19
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !77 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.iw, ptr %i.d, align 8, !tbaa !76
  %i.ix = icmp ugt i64 %i.iw, 15
  br i1 %i.ix, label %.noexc.i224, label %._crit_edge.i.i223

.noexc.i224:                                      ; preds = %bb.r
  %i.iy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc225 unwind label %bb.ad ; 2 uses

.noexc225:                                        ; preds = %.noexc.i224
  store ptr %i.iy, ptr %13, align 8, !tbaa !77
  %i.iz = load i64, ptr %i.d, align 8, !tbaa !76
  store i64 %i.iz, ptr %i.it, align 8, !tbaa !23
  br label %._crit_edge.i.i223

._crit_edge.i.i223:                               ; preds = %.noexc225, %bb.r
  %i.ja = phi ptr [ %i.iy, %.noexc225 ], [ %i.it, %bb.r ] ; 2 uses
  switch i64 %i.iw, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i223
  %i.jb = load i8, ptr %i.iu, align 1, !tbaa !23
  store i8 %i.jb, ptr %i.ja, align 1, !tbaa !23
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i223
  %i.jc = load i64, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !22
  %i.je = load ptr, ptr %13, align 8, !tbaa !77
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jc
  store i8 0, ptr %i.jf, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.jg = load ptr, ptr %14, align 8, !tbaa !77   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.im
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.u
  %i.ji = load i64, ptr %i.im, align 8, !tbaa !23
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.jk = load i64, ptr %i.jd, align 8, !tbaa !22
  %cond = icmp eq i64 %i.jk, 4
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread444

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.jl = load ptr, ptr %13, align 8, !tbaa !77   ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 1
  %i.jn = icmp ne i32 %i.jm, 1869373800
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248

bb.v:                                             ; preds = %._crit_edge.i.i158
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.ek
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
end_hunk_0
