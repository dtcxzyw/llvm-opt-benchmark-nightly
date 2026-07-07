inline.NumInlined: 640
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11STLImporter14LoadBinaryFileEv:bb.a
.prol.preheader:                                  ; preds = %bb.u, %.prol.preheader
  %i.da = phi ptr [ %i.dc, %.prol.preheader ], [ %i.cu, %bb.u ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.u ]
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.u
  %.unr = phi ptr [ %i.cu, %bb.u ], [ %i.dc, %.prol.preheader ]
  %i.dd = icmp samesign ult i64 %i.cz, 7
  br i1 %i.dd, label %.lr.ph.preheader.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.de = phi ptr [ %i.du, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr null, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr null, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store i32 0, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store ptr null, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store i32 0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store i32 0, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  store ptr null, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  store i32 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store ptr null, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  store i32 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  store ptr null, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 128 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cx
  br i1 %i.dv, label %.lr.ph.preheader.i, label %.new

.lr.ph.preheader.i:                               ; preds = %.new, %.prol.loopexit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  store ptr %i.cu, ptr %i.dw, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.01519.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.eh, %.lr.ph.i ] ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %indvars.iv.i ; 2 uses
  store i32 3, ptr %i.dy, align 8
  %i.dz = call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #22 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  store ptr %i.dz, ptr %i.ea, align 8
  store i32 %.01519.i, ptr %i.dz, align 4
  %i.eb = add i32 %.01519.i, 1
  %i.ec = load ptr, ptr %i.ea, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4
  %i.ee = add i32 %.01519.i, 2
  %i.ef = load ptr, ptr %i.ea, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %i.ee, ptr %i.eg, align 4
  %i.eh = add i32 %.01519.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ei = load i32, ptr %i.i, align 8
  %i.ej = zext i32 %i.ei to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i, %i.ej
  br i1 %i.ek, label %.lr.ph.i, label %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit, !llvm.loop !5

_ZN6Assimp14addFacesToMeshEP6aiMesh.exit:         ; preds = %.lr.ph.i, %.loopexit.thread.i
  %i.el = load ptr, ptr %i.a, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %i.eo = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22 ; 6 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.eo)
          to label %bb.aa unwind label %bb.ab

bb.v:                                             ; preds = %.lr.ph174, %bb.z
  %i.ep = phi i32 [ %i.bt, %.lr.ph174 ], [ %i.gm, %bb.z ]
  %indvars.iv = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %.0119171 = phi ptr [ %i.bu, %.lr.ph174 ], [ %i.fj, %bb.z ] ; 10 uses
  %.0120170 = phi ptr [ %i.cm, %.lr.ph174 ], [ %i.ev, %bb.z ] ; 7 uses
  %.0121169 = phi ptr [ %i.ch, %.lr.ph174 ], [ %i.fh, %bb.z ] ; 7 uses
  %.sroa.17.0..0119.sroa_idx = getelementptr inbounds nuw i8, ptr %.0119171, i64 8
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..0119.sroa_idx, align 4
  %i.eq = load <2 x float>, ptr %.0119171, align 4
  store <2 x float> %i.eq, ptr %.0120170, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %.0120170, i64 8
  store float %.sroa.17.0.copyload, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.0120170, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.es, ptr noundef nonnull align 4 dereferenceable(12) %.0120170, i64 12, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.0120170, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.et, ptr noundef nonnull align 4 dereferenceable(12) %.0120170, i64 12, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0119171, i64 12
  %i.ev = getelementptr inbounds nuw i8, ptr %.0120170, i64 36
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0119171, i64 20
  %.sroa.17.0.copyload155 = load float, ptr %.sroa.17.0..sroa_idx, align 4
  %i.ew = load <2 x float>, ptr %i.eu, align 4
  store <2 x float> %i.ew, ptr %.0121169, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.0121169, i64 8
  store float %.sroa.17.0.copyload155, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.0119171, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %.0121169, i64 12
  %.sroa.17.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.0119171, i64 32
  %.sroa.17.0.copyload157 = load float, ptr %.sroa.17.0..sroa_idx156, align 4
  %i.fa = load <2 x float>, ptr %i.ey, align 4
  store <2 x float> %i.fa, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.0121169, i64 20
  store float %.sroa.17.0.copyload157, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.0119171, i64 36
  %i.fd = getelementptr inbounds nuw i8, ptr %.0121169, i64 24
  %.sroa.17.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.0119171, i64 44
  %.sroa.17.0.copyload159 = load float, ptr %.sroa.17.0..sroa_idx158, align 4
  %i.fe = load <2 x float>, ptr %i.fc, align 4
  store <2 x float> %i.fe, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.0121169, i64 32
  store float %.sroa.17.0.copyload159, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.0119171, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %.0121169, i64 36
  %i.fi = load i16, ptr %i.fg, align 4            ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0119171, i64 50
  %i.fk = zext i16 %i.fi to i32                   ; 4 uses
  %.not136 = icmp sgt i16 %i.fi, -1
  br i1 %.not136, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not137 = icmp eq ptr %i.fl, null
  br i1 %.not137, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fm = load i32, ptr %i.h, align 4             ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 4                ; 2 uses
  %i.fp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #22 ; 4 uses
  %i.fq = icmp eq i32 %i.fm, 0
  br i1 %i.fq, label %.loopexit.thread, label %.lr.ph.preheader

.loopexit.thread:                                 ; preds = %bb.x
  store ptr %i.fp, ptr %i.co, align 8
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fp, i8 0, i64 %i.fo, i1 false)
  store ptr %i.fp, ptr %i.co, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre193 = load ptr, ptr %i.co, align 8
  %i.fr = zext i32 %i.fz to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit.thread, %._crit_edge.loopexit
  %i.fs = phi ptr [ %i.fp, %.loopexit.thread ], [ %.pre193, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.loopexit.thread ], [ %i.fr, %._crit_edge.loopexit ]
  %i.ft = sub nsw i64 0, %.lcssa
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.ft
  store ptr %i.fu, ptr %i.co, align 8
  %i.fv = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, ptr noundef nonnull @.str.30)
  %.pre194 = load ptr, ptr %i.co, align 8
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0115168 = phi i32 [ %i.fy, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fw = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr %i.fx, ptr %i.co, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.fy = add nuw i32 %.0115168, 1                ; 2 uses
  %i.fz = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ga = icmp ult i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

bb.y:                                             ; preds = %._crit_edge, %bb.w
  %i.gb = phi ptr [ %.pre194, %._crit_edge ], [ %i.fl, %bb.w ]
  %i.gc = mul nuw nsw i64 %indvars.iv, 3
  %i.gd = and i64 %i.gc, 4294967295
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.gd ; 5 uses
  %i.gf = lshr i32 %i.fk, 10                      ; 2 uses
  %. = select i1 %i.bf, i32 %i.fk, i32 %i.gf
  %.202 = select i1 %i.bf, i32 %i.gf, i32 %i.fk
  %.sink.in.in = and i32 %.202, 31
  %.sink.in = uitofp nneg i32 %.sink.in.in to float
  %.sink190.in.in.in = lshr i32 %i.fk, 5
  %.sink190.in.in = and i32 %.sink190.in.in.in, 31
  %.sink190.in = uitofp nneg i32 %.sink190.in.in to float
  %.sink191.in.in = and i32 %., 31
  %.sink191.in = uitofp nneg i32 %.sink191.in.in to float
  %i.gg = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sink191.in, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %.sink190.in, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %.sink.in, i64 2
  %i.gj = fmul nnan <4 x float> %i.gi, <float f0x3D042108, float f0x3D042108, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.gj, ptr %i.ge, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gk, ptr noundef nonnull align 4 dereferenceable(16) %i.ge, i64 16, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gl, ptr noundef nonnull align 4 dereferenceable(16) %i.ge, i64 16, i1 false)
  %.pre195 = load i32, ptr %i.i, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.gm = phi i32 [ %.pre195, %bb.y ], [ %i.ep, %bb.v ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %indvars.iv.next, %i.gn
  br i1 %i.go, label %bb.v, label %._crit_edge175, !llvm.loop !13

bb.aa:                                            ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 1096
  store ptr %i.en, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.en, i64 1104
  store i32 1, ptr %i.gq, align 8
  %i.gr = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.en, i64 1112
  store ptr %i.gr, ptr %i.gs, align 8
  store ptr %i.eo, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.a, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eo, i64 1120
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gx = zext i32 %i.gv to i64
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gy) #22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eo, i64 1128 ; 2 uses
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = load i32, ptr %i.gu, align 8
  %.not183 = icmp eq i32 %i.hb, 0
  br i1 %.not183, label %._crit_edge180, label %.lr.ph179

._crit_edge180:                                   ; preds = %.lr.ph179, %bb.aa
  br i1 %i.bf, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 1144) #21
  br label %bb.af

.lr.ph179:                                        ; preds = %bb.aa, %.lr.ph179
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph179 ], [ 0, %bb.aa ] ; 3 uses
  %i.hd = load ptr, ptr %i.ha, align 8
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv187
  %i.hf = trunc nuw i64 %indvars.iv187 to i32
  store i32 %i.hf, ptr %i.he, align 4
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = zext i32 %i.hi to i64
  %i.hk = icmp samesign ult i64 %indvars.iv.next188, %i.hj
  br i1 %i.hk, label %.lr.ph179, label %._crit_edge180, !llvm.loop !14

bb.ac:                                            ; preds = %._crit_edge180
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8
  %.not135 = icmp eq ptr %i.hm, null
  br i1 %.not135, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge180
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.0110 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ]
  ret i1 %.0110

bb.af:                                            ; preds = %bb.p, %bb.t, %bb.ab, %bb.d
  %.pn139 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.cb, %bb.p ], [ %i.hc, %bb.ab ], [ %i.cd, %bb.t ]
  resume { ptr, i32 } %.pn139
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %class.aiVector3t, align 8          ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 12 uses
  %i.i = udiv i64 %i.g, 160
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 2 uses
  %i.j = mul nuw nsw i64 %.sroa.speculated, 3     ; 2 uses
  %i.k = mul nuw nsw i64 %.sroa.speculated, 36    ; 2 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 unwind label %bb.aa ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 unwind label %bb.aa ; 3 uses

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.j
  %i.p = ptrtoint ptr %i.h to i64                 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 27
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103, %.noexc264
  %.sroa.35.0 = phi ptr [ %i.m, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.35.2, %.noexc264 ] ; 14 uses
  %.sroa.0328.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0328.2, %.noexc264 ] ; 15 uses
  %.sroa.20.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.20.3, %.noexc264 ]
  %.sroa.38.0 = phi ptr [ %i.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.38.2, %.noexc264 ] ; 14 uses
  %.sroa.20368.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.20368.3, %.noexc264 ]
  %.sroa.0354.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0354.2, %.noexc264 ] ; 15 uses
  %.0441 = phi ptr [ %i.e, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.6, %.noexc264 ] ; 6 uses
  %.sroa.17.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.17.5, %.noexc264 ] ; 13 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.11.1, %.noexc264 ] ; 5 uses
  %.sroa.0416.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0416.5, %.noexc264 ] ; 23 uses
  %.sroa.19.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.19.4, %.noexc264 ] ; 9 uses
  %.sroa.12434.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.12434.1, %.noexc264 ] ; 6 uses
  %.sroa.0427.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0427.4, %.noexc264 ] ; 20 uses
  %i.ac = ptrtoint ptr %.0441 to i64
  %i.ad = sub i64 %i.p, %i.ac                     ; 3 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 84
  br i1 %i.af, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.0441, i64 80
  %.0.copyload.i.i = load i32, ptr %i.ag, align 1
  %i.ah = mul i32 %.0.copyload.i.i, 50
  %i.ai = add i32 %i.ah, 84
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i: ; preds = %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.0441, i64 %i.ae ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i
  %.0.i.i.i = phi ptr [ %.0441, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i ], [ %i.an, %bb.d ] ; 4 uses
  %i.am = load i8, ptr %.0.i.i.i, align 1         ; 2 uses
  switch i8 %i.am, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.al
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !8

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.c
  %.pr.i = load i8, ptr %i.al, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.b, %.critedge.i.ithread-pre-split.i
  %i.ao = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.am, %bb.b ]
  %.0.lcssa.i.i.i = phi ptr [ %i.al, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.b ] ; 2 uses
  switch i8 %i.ao, label %bb.e [
    i8 13, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 10, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 0, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 12, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  ]

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 5
  %.not.i = icmp ult ptr %i.ap, %i.al
  br i1 %.not.i, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread

_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit:   ; preds = %bb.e
  %i.aq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.1, i64 noundef 5) #24
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread

bb.f:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit
  %i.as = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22
          to label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.ek ; 15 uses
end_hunk_0
