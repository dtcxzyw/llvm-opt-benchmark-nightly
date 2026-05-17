inline.NumInlined: 640
inline.NumDeleted: 317
begin_hunk_0_@_ZN6Assimp11STLImporter14LoadBinaryFileEv:bb.a
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
define hidden void @_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %class.aiVector3t, align 16         ; 13 uses
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
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
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

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 5 uses
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1312
  store ptr null, ptr %i.ay, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.av, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, i8 0, i64 36, i1 false)
  %i.az = ptrtoint ptr %.sroa.12434.0 to i64
  %i.ba = ptrtoint ptr %.sroa.0427.0 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aw, i8 0, i64 1044, i1 false)
  %i.bd = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22
          to label %bb.g unwind label %.thread484 ; 4 uses

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = trunc i64 %i.bc to i32
  store i32 %i.be, ptr %i.bd, align 4
  %.not.i107 = icmp eq ptr %.sroa.12434.0, %.sroa.19.0
  br i1 %.not.i107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.as, ptr %.sroa.12434.0, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc109 unwind label %.thread498.loopexit.split-lp

.noexc109:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bc
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i108 = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i108)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #22
          to label %.noexc110 unwind label %.thread498.loopexit ; 4 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bb ; 2 uses
  store ptr %i.as, ptr %i.bm, align 8
  %i.bn = icmp sgt i64 %i.bb, 0
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %.sroa.0427.0, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc110
  %.not.i17.i.i = icmp eq ptr %.sroa.0427.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0427.0, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.sroa.19.4 = phi ptr [ %i.bo, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0, %bb.h ] ; 17 uses
  %.pn503 = phi ptr [ %i.bm, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12434.0, %bb.h ]
  %.sroa.0427.4 = phi ptr [ %i.bl, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0427.0, %bb.h ] ; 17 uses
  %.sroa.12434.1 = getelementptr inbounds nuw i8, ptr %.pn503, i64 8
  %i.bp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22
          to label %bb.m unwind label %.loopexit521 ; 9 uses

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bp)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1096
  store ptr %1, ptr %i.bq, align 8
  %.not.i111 = icmp eq ptr %.sroa.11.0, %.sroa.17.0
  br i1 %.not.i111, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bp, ptr %.sroa.11.0, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.br = ptrtoint ptr %.sroa.17.0 to i64
  %i.bs = ptrtoint ptr %.sroa.0416.0 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.q, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc115 unwind label %.loopexit.split-lp522

.noexc115:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i112, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i113 = icmp ne i64 %i.bz, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode:_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.dx = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dy = load i64, ptr %i.s, align 8
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ea = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.u, ptr %4, align 8
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc132 unwind label %.loopexit.split-lp532

.noexc132:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ea) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ec, ptr %i.a, align 8
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.at
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %.loopexit531 ; 2 uses

.noexc133:                                        ; preds = %.noexc.i131
  store ptr %i.ee, ptr %4, align 8
  %i.ef = load i64, ptr %i.a, align 8
  store i64 %i.ef, ptr %i.u, align 8
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc133, %bb.at
  %i.eg = phi ptr [ %i.ee, %.noexc133 ], [ %i.u, %bb.at ] ; 2 uses
  switch i64 %i.ec, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i130
  %i.eh = load i8, ptr %i.ea, align 1
  store i8 %i.eh, ptr %i.eg, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr nonnull align 1 %i.ea, i64 %i.ec, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i130
  %i.ei = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ei, ptr %i.v, align 8
  %i.ej = load ptr, ptr %4, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 0, ptr %i.ek, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.el = load i64, ptr %i.v, align 8             ; 5 uses
  %i.em = icmp ugt i64 %i.el, 1023
  %.pre1725 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.em, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = getelementptr inbounds nuw i8, ptr %i.as, i64 236
  %i.eo = trunc nuw nsw i64 %i.el to i32
  store i32 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 1 %.pre1725, i64 %i.el, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.el
  store i8 0, ptr %i.eq, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135: ; preds = %bb.aw, %bb.ax
  %i.er = icmp eq ptr %.pre1725, %i.u
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.es = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.es)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.et = load i64, ptr %i.u, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %.pre1725, i64 noundef %i.eu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ev = load ptr, ptr %2, align 8               ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.q
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ex = load i64, ptr %i.q, align 8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.preheader

bb.ay:                                            ; preds = %.noexc.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.loopexit526:                                     ; preds = %.noexc.i127
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp527:                            ; preds = %bb.am
  %lpad.loopexit.split-lp529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp527, %.loopexit526
  %lpad.phi530 = phi { ptr, i32 } [ %lpad.loopexit528, %.loopexit526 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp527 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bb

.loopexit531:                                     ; preds = %.noexc.i131
  %lpad.loopexit533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp532:                            ; preds = %bb.as
  %lpad.loopexit.split-lp534 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp532, %.loopexit531
  %lpad.phi535 = phi { ptr, i32 } [ %lpad.loopexit533, %.loopexit531 ], [ %lpad.loopexit.split-lp534, %.loopexit.split-lp532 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %lpad.phi535, %bb.ba ], [ %lpad.phi530, %bb.az ] ; 2 uses
  %i.fa = load ptr, ptr %2, align 8               ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.q
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bb
  %i.fc = load i64, ptr %i.q, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.ay ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149: ; preds = %bb.ac
  %i.fe = load ptr, ptr %i.w, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.x, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  store i64 11, ptr %i.y, align 8
  store i8 0, ptr %i.ab, align 1
  store i32 11, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.fh, ptr noundef nonnull align 1 dereferenceable(11) %i.fi, i64 11, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 15
  store i8 0, ptr %i.fj, align 1
  %.pre1726 = load ptr, ptr %5, align 8           ; 2 uses
  %i.fk = icmp eq ptr %.pre1726, %i.x
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149
  %i.fl = load i64, ptr %i.x, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %.pre1726, i64 noundef %i.fm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
  %.sroa.35.2 = phi ptr [ %.sroa.35.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.35.0, %.preheader ] ; 24 uses
  %.sroa.0328.2 = phi ptr [ %.sroa.0328.4, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.0328.0, %.preheader ] ; 34 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.20.0, %.preheader ] ; 20 uses
  %.sroa.38.2 = phi ptr [ %.sroa.38.4, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.38.0, %.preheader ] ; 24 uses
  %.sroa.20368.1 = phi ptr [ %.sroa.20368.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.20368.0, %.preheader ] ; 15 uses
  %.sroa.0354.2 = phi ptr [ %.sroa.0354.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.0354.0, %.preheader ] ; 29 uses
  %.2 = phi ptr [ %.5, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.1, %.preheader ] ; 3 uses
  %.060 = phi i32 [ %.161, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ 3, %.preheader ] ; 9 uses
  %i.fn = ptrtoint ptr %.2 to i64
  %i.fo = sub i64 %i.p, %i.fn
  %scevgep.i.i153 = getelementptr i8, ptr %.2, i64 %i.fo ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.0.i.i154 = phi ptr [ %.2, %bb.bc ], [ %i.fq, %bb.bf ] ; 4 uses
  %i.fp = load i8, ptr %.0.i.i154, align 1        ; 2 uses
  switch i8 %i.fp, label %.loopexit [
    i8 32, label %bb.be
    i8 9, label %bb.be
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd
  %.not.i.i155 = icmp eq ptr %.0.i.i154, %i.h
  br i1 %.not.i.i155, label %thread-pre-split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 1
  br label %bb.bd, !llvm.loop !16

thread-pre-split:                                 ; preds = %bb.be
  %.pr444 = load i8, ptr %scevgep.i.i153, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %thread-pre-split
  %i.fr = phi i8 [ %.pr444, %thread-pre-split ], [ %i.fp, %bb.bd ]
  %.0.lcssa.i.i156 = phi ptr [ %scevgep.i.i153, %thread-pre-split ], [ %.0.i.i154, %bb.bd ] ; 11 uses
  %.not505 = icmp eq i8 %i.fr, 0
  br i1 %.not505, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.fs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fs, ptr noundef nonnull @.str.13)
          to label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit506:                                     ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227, %bb.cw, %bb.cv, %bb.bs, %bb.br, %bb.bm, %bb.bl
  %lpad.loopexit509 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bg, %bb.bh, %bb.dw, %bb.dx, %bb.ef, %bb.eh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %lpad.loopexit536 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.dh
  %lpad.loopexit.split-lp537 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bi:                                            ; preds = %.loopexit
  %i.ft = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #24
  %.not75 = icmp eq i32 %i.ft, 0
  br i1 %.not75, label %bb.bj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157

bb.bj:                                            ; preds = %bb.bi
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 5
  %i.fv = load i8, ptr %i.fu, align 1
  switch i8 %i.fv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157 [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
    i8 10, label %bb.bk
    i8 12, label %bb.bk
    i8 13, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj
  %.not77 = icmp eq i32 %.060, 3
  br i1 %.not77, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fw, ptr noundef nonnull @.str.15)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6 ; 3 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.p, %i.fy
  %scevgep.i.i158 = getelementptr i8, ptr %i.fx, i64 %i.fz
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i159 = phi ptr [ %i.fx, %bb.bn ], [ %i.gb, %bb.bq ] ; 4 uses
  %i.ga = load i8, ptr %.0.i.i159, align 1
  switch i8 %i.ga, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163 [
    i8 32, label %bb.bp
    i8 9, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %.not.i.i160 = icmp eq ptr %.0.i.i159, %i.h
  br i1 %.not.i.i160, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 1
  br label %bb.bo, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163:      ; preds = %bb.bo, %bb.bp
  %.0.lcssa.i.i162 = phi ptr [ %.0.i.i159, %bb.bo ], [ %scevgep.i.i158, %bb.bp ] ; 4 uses
  %i.gc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i162, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #24
  %.not78 = icmp eq i32 %i.gc, 0
  br i1 %.not78, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.gd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gd, ptr noundef nonnull @.str.17)
          to label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread unwind label %.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 6
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.gh = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.bv

.invoke:                                          ; preds = %bb.ec, %bb.dz, %bb.cz, %bb.bu
  %i.gi = phi ptr [ %i.lq, %bb.dz ], [ %i.gh, %bb.bu ], [ %i.jo, %bb.cz ], [ %i.lv, %bb.ec ]
  invoke void @__cxa_throw(ptr nonnull %i.gi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gh) #20
  br label %.thread

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <3 x float> zeroinitializer, ptr %6, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 7 ; 3 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.p, %i.gl
  %scevgep.i.i164 = getelementptr i8, ptr %i.gk, i64 %i.gm
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.0.i.i165 = phi ptr [ %i.gk, %bb.bw ], [ %i.go, %bb.bz ] ; 4 uses
  %i.gn = load i8, ptr %.0.i.i165, align 1
  switch i8 %i.gn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 [
    i8 32, label %bb.by
    i8 9, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %.not.i.i166 = icmp eq ptr %.0.i.i165, %i.h
  br i1 %.not.i.i166, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 1
  br label %bb.bx, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169:      ; preds = %bb.bx, %bb.by
  %.0.lcssa.i.i168 = phi ptr [ %.0.i.i165, %bb.bx ], [ %scevgep.i.i164, %bb.by ]
  %i.gp = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i168, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true)
          to label %bb.ca unwind label %.loopexit512 ; 3 uses

bb.ca:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.p, %i.gq
  %scevgep.i.i170 = getelementptr i8, ptr %i.gp, i64 %i.gr
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %.0.i.i171 = phi ptr [ %i.gp, %bb.ca ], [ %i.gt, %bb.cd ] ; 4 uses
  %i.gs = load i8, ptr %.0.i.i171, align 1
  switch i8 %i.gs, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.not.i.i172 = icmp eq ptr %.0.i.i171, %i.h
  br i1 %.not.i.i172, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 1
  br label %bb.cb, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175:      ; preds = %bb.cb, %bb.cc
  %.0.lcssa.i.i174 = phi ptr [ %.0.i.i171, %bb.cb ], [ %scevgep.i.i170, %bb.cc ]
  %i.gu = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i174, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true)
          to label %bb.ce unwind label %.loopexit512 ; 3 uses

bb.ce:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.p, %i.gv
  %scevgep.i.i176 = getelementptr i8, ptr %i.gu, i64 %i.gw
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i177 = phi ptr [ %i.gu, %bb.ce ], [ %i.gy, %bb.ch ] ; 4 uses
  %i.gx = load i8, ptr %.0.i.i177, align 1
  switch i8 %i.gx, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i178 = icmp eq ptr %.0.i.i177, %i.h
  br i1 %.not.i.i178, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i.i177, i64 1
  br label %bb.cf, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181:      ; preds = %bb.cf, %bb.cg
  %.0.lcssa.i.i180 = phi ptr [ %.0.i.i177, %bb.cf ], [ %scevgep.i.i176, %bb.cg ]
  %i.gz = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i180, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i1 noundef zeroext true)
          to label %bb.ci unwind label %.loopexit512

bb.ci:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181
  %.not.i182 = icmp eq ptr %.sroa.20.1, %.sroa.38.2
  br i1 %.not.i182, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.1, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.ha = ptrtoint ptr %.sroa.20.1 to i64
  %i.hb = ptrtoint ptr %.sroa.0328.2 to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 4 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.cl, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc185 unwind label %.loopexit.split-lp513

.noexc185:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.he = sdiv exact i64 %i.hc, 12                ; 3 uses
  %.sroa.speculated.i.i.i183 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i183, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 768614336404564650)
  %i.hi = select i1 %i.hg, i64 768614336404564650, i64 %i.hh ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.hj = mul nuw nsw i64 %i.hi, 12
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #22
          to label %.noexc186 unwind label %.loopexit512 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hl, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0328.2, %.sroa.20.1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i ], [ %i.hk, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i ], [ %.sroa.0328.2, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hm, %.sroa.20.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hk, %.noexc186 ], [ %i.hn, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.2, i64 noundef %i.hc) #21
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hi
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cj
  %.sroa.0328.9 = phi ptr [ %i.hk, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0328.2, %bb.cj ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.1, %bb.cj ] ; 4 uses
  %.sroa.38.9 = phi ptr [ %i.ho, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.2, %bb.cj ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn3442 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.20.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %.not.i187 = icmp eq ptr %.sroa.20.5, %.sroa.38.9
  br i1 %.not.i187, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.5, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.hq = ptrtoint ptr %.sroa.38.9 to i64
  %i.hr = ptrtoint ptr %.sroa.0328.9 to i64       ; 2 uses
  %i.hs = sub i64 %i.hq, %i.hr                    ; 4 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775800
  br i1 %i.ht, label %bb.co, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc200 unwind label %.loopexit.split-lp513

.noexc200:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.cn
  %i.hu = sdiv exact i64 %i.hs, 12                ; 3 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i189, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 768614336404564650)
  %i.hy = select i1 %i.hw, i64 768614336404564650, i64 %i.hx ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.hz = mul nuw nsw i64 %i.hy, 12
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #22
          to label %.noexc201 unwind label %.loopexit512 ; 6 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i191 = icmp eq ptr %.sroa.0328.9, %.sroa.38.9
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192.preheader

.lr.ph.i.i.i.i.i192.preheader:                    ; preds = %.noexc201
  %i.ic = sub i64 %.0.lcssa.i.i.i.i.i.pn3442, %i.hr ; 2 uses
  %i.id = udiv i64 %i.ic, 12
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter = and i64 %i.ie, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol

.lr.ph.i.i.i.i.i192.prol:                         ; preds = %.lr.ph.i.i.i.i.i192.preheader, %.lr.ph.i.i.i.i.i192.prol
  %.012.i.i.i.i.i193.prol = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i192.prol ], [ %i.ia, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %.0911.i.i.i.i.i194.prol = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i192.prol ], [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i192.prol ], [ 0, %.lr.ph.i.i.i.i.i192.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193.prol, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194.prol, i64 12, i1 false), !alias.scope !22
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194.prol, i64 12 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol, !llvm.loop !26

.lr.ph.i.i.i.i.i192.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i192.prol, %.lr.ph.i.i.i.i.i192.preheader
  %.lcssa2878.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i192.prol ]
  %.012.i.i.i.i.i193.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.ig, %.lr.ph.i.i.i.i.i192.prol ]
  %.0911.i.i.i.i.i194.unr = phi ptr [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.if, %.lr.ph.i.i.i.i.i192.prol ]
  %i.ih = icmp ult i64 %i.ic, 36
  br i1 %i.ih, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i192 ], [ %.012.i.i.i.i.i193.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i192 ], [ %.0911.i.i.i.i.i194.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194, i64 12, i1 false), !alias.scope !22
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 12
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ij, ptr noundef nonnull align 4 dereferenceable(12) %i.ii, i64 12, i1 false), !alias.scope !22
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 4 dereferenceable(12) %i.ik, i64 12, i1 false), !alias.scope !22
  %i.im = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 36 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.in, ptr noundef nonnull align 4 dereferenceable(12) %i.im, i64 12, i1 false), !alias.scope !22
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 48 ; 2 uses
  %.not.i.i.i.i.i195.3 = icmp eq ptr %i.im, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i195.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199: ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.ia, %.noexc201 ], [ %.lcssa2878.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ], [ %i.ip, %.lr.ph.i.i.i.i.i192 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.9, i64 noundef %i.hs) #21
  %i.ir = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %i.hy
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, %bb.cm
  %.sroa.0328.10 = phi ptr [ %i.ia, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.0328.9, %bb.cm ] ; 7 uses
  %.sroa.20.6 = phi ptr [ %i.iq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %i.hp, %bb.cm ] ; 8 uses
  %.sroa.38.10 = phi ptr [ %i.ir, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.38.9, %bb.cm ] ; 2 uses
  %.not.i203 = icmp eq ptr %.sroa.20.6, %.sroa.38.10
  br i1 %.not.i203, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.6, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

bb.cq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  %i.is = ptrtoint ptr %.sroa.20.6 to i64
  %i.it = ptrtoint ptr %.sroa.0328.10 to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 4 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.cr, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc216 unwind label %.loopexit.split-lp513

.noexc216:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204: ; preds = %bb.cq
  %i.iw = sdiv exact i64 %i.iu, 12                ; 3 uses
  %.sroa.speculated.i.i.i205 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i.i205, %i.iw ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 768614336404564650)
  %i.ja = select i1 %i.iy, i64 768614336404564650, i64 %i.iz ; 3 uses
  %.not.i.i.i206 = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i.i206)
  %i.jb = mul nuw nsw i64 %i.ja, 12
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #22
          to label %.noexc217 unwind label %.loopexit512 ; 5 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jd, ptr noundef nonnull align 16 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i207 = icmp eq ptr %.sroa.0328.10, %.sroa.20.6
  br i1 %.not10.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208

.lr.ph.i.i.i.i.i208:                              ; preds = %.noexc217, %.lr.ph.i.i.i.i.i208
  %.012.i.i.i.i.i209 = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i208 ], [ %i.jc, %.noexc217 ] ; 2 uses
  %.0911.i.i.i.i.i210 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i208 ], [ %.sroa.0328.10, %.noexc217 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i209, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i210, i64 12, i1 false), !alias.scope !27
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i210, i64 12 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i209, i64 12 ; 2 uses
  %.not.i.i.i.i.i211 = icmp eq ptr %i.je, %.sroa.20.6
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215: ; preds = %.lr.ph.i.i.i.i.i208, %.noexc217
  %.0.lcssa.i.i.i.i.i213 = phi ptr [ %i.jc, %.noexc217 ], [ %i.jf, %.lr.ph.i.i.i.i.i208 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.10, i64 noundef %i.iu) #21
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.jc, i64 %i.ja
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, %bb.cp
  %.sroa.0328.11 = phi ptr [ %i.jc, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.0328.10, %bb.cp ]
  %.0.lcssa.i.i.i.i.i213.pn = phi ptr [ %.0.lcssa.i.i.i.i.i213, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.20.6, %bb.cp ]
  %.sroa.38.11 = phi ptr [ %i.jg, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.38.10, %bb.cp ]
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i213.pn, i64 12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

.loopexit512:                                     ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %.sroa.0328.3.ph = phi ptr [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.0328.2, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0328.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.0328.10, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %.sroa.38.3.ph = phi ptr [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.20.1, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.38.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.20.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp513:                            ; preds = %bb.cl, %bb.co, %bb.cr
  %.sroa.0328.3.ph514 = phi ptr [ %.sroa.0328.10, %bb.cr ], [ %.sroa.0328.9, %bb.co ], [ %.sroa.0328.2, %bb.cl ]
  %.sroa.38.3.ph515 = phi ptr [ %.sroa.20.6, %bb.cr ], [ %.sroa.38.9, %bb.co ], [ %.sroa.20.1, %bb.cl ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp513, %.loopexit512
  %.sroa.0328.3 = phi ptr [ %.sroa.0328.3.ph, %.loopexit512 ], [ %.sroa.0328.3.ph514, %.loopexit.split-lp513 ]
  %.sroa.38.3 = phi ptr [ %.sroa.38.3.ph, %.loopexit512 ], [ %.sroa.38.3.ph515, %.loopexit.split-lp513 ]
  %lpad.phi517 = phi { ptr, i32 } [ %lpad.loopexit516, %.loopexit512 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp513 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157:      ; preds = %bb.bj, %bb.bi
  %i.jh = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #24
  %.not79 = icmp eq i32 %i.jh, 0
  br i1 %.not79, label %bb.ct, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219

bb.ct:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6
  %i.jj = load i8, ptr %i.ji, align 1             ; 2 uses
  switch i8 %i.jj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 [
    i8 32, label %bb.cu
    i8 9, label %bb.cu
    i8 13, label %bb.cu
    i8 10, label %bb.cu
    i8 0, label %bb.cu
    i8 12, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  %i.jk = icmp ugt i32 %.060, 2
  br i1 %i.jk, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.jl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jl, ptr noundef nonnull @.str.20)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.cy:                                            ; preds = %bb.cu
  %i.jn = icmp eq i8 %i.jj, 0
  br i1 %i.jn, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.jo = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jo) #20
  br label %.thread

bb.db:                                            ; preds = %bb.cy
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 7 ; 3 uses
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.p, %i.jr
  %scevgep.i.i220 = getelementptr i8, ptr %i.jq, i64 %i.js
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.db
  %.0.i.i221 = phi ptr [ %i.jq, %bb.db ], [ %i.ju, %bb.de ] ; 4 uses
  %i.jt = load i8, ptr %.0.i.i221, align 1
  switch i8 %i.jt, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225 [
    i8 32, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc
  %.not.i.i222 = icmp eq ptr %.0.i.i221, %i.h
  br i1 %.not.i.i222, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i.i221, i64 1
  br label %bb.dc, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225:      ; preds = %bb.dc, %bb.dd
  %.0.lcssa.i.i224 = phi ptr [ %.0.i.i221, %bb.dc ], [ %scevgep.i.i220, %bb.dd ]
  %.not.i226 = icmp eq ptr %.sroa.20368.1, %.sroa.35.2
  br i1 %.not.i226, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  store <3 x float> zeroinitializer, ptr %.sroa.20368.1, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.dg:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  %i.jv = ptrtoint ptr %.sroa.35.2 to i64
  %i.jw = ptrtoint ptr %.sroa.0354.2 to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 4 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775800
  br i1 %i.jy, label %bb.dh, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227: ; preds = %bb.dg
  %i.jz = sdiv exact i64 %i.jx, 12                ; 3 uses
  %.sroa.speculated.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i228, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = call i64 @llvm.umin.i64(i64 %i.ka, i64 768614336404564650)
  %i.kd = select i1 %i.kb, i64 768614336404564650, i64 %i.kc ; 3 uses
  %.not.i.i.i229 = icmp ne i64 %i.kd, 0
  call void @llvm.assume(i1 %.not.i.i.i229)
  %i.ke = mul nuw nsw i64 %i.kd, 12
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #22
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.jx
  store <3 x float> zeroinitializer, ptr %i.kg, align 4
  %.not10.i.i.i.i.i230 = icmp eq ptr %.sroa.0354.2, %.sroa.35.2
  br i1 %.not10.i.i.i.i.i230, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231

.lr.ph.i.i.i.i.i231:                              ; preds = %.noexc237, %.lr.ph.i.i.i.i.i231
  %.012.i.i.i.i.i232 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i231 ], [ %i.kf, %.noexc237 ] ; 2 uses
  %.0911.i.i.i.i.i233 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i231 ], [ %.sroa.0354.2, %.noexc237 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i232, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i233, i64 12, i1 false), !alias.scope !31
  %i.kh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i233, i64 12 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i232, i64 12 ; 2 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.kh, %.sroa.35.2
  br i1 %.not.i.i.i.i.i234, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i231, %.noexc237
  %.0.lcssa.i.i.i.i.i235 = phi ptr [ %i.kf, %.noexc237 ], [ %i.ki, %.lr.ph.i.i.i.i.i231 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0354.2, i64 noundef %i.jx) #21
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.kf, i64 %i.kd
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.df
  %.sroa.35.8 = phi ptr [ %i.kj, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.35.2, %bb.df ] ; 2 uses
  %.0.lcssa.i.i.i.i.i235.pn = phi ptr [ %.0.lcssa.i.i.i.i.i235, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20368.1, %bb.df ] ; 4 uses
  %.sroa.0354.8 = phi ptr [ %i.kf, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0354.2, %bb.df ] ; 2 uses
  %.sroa.20368.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 12
  %i.kk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i224, ptr noundef nonnull align 4 dereferenceable(4) %.0.lcssa.i.i.i.i.i235.pn, i1 noundef zeroext true)
          to label %bb.di unwind label %bb.dr     ; 3 uses

bb.di:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.p, %i.kl
  %scevgep.i.i238 = getelementptr i8, ptr %i.kk, i64 %i.km
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %.0.i.i239 = phi ptr [ %i.kk, %bb.di ], [ %i.ko, %bb.dl ] ; 4 uses
  %i.kn = load i8, ptr %.0.i.i239, align 1
  switch i8 %i.kn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243 [
    i8 32, label %bb.dk
    i8 9, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %.not.i.i240 = icmp eq ptr %.0.i.i239, %i.h
  br i1 %.not.i.i240, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 1
  br label %bb.dj, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243:      ; preds = %bb.dj, %bb.dk
  %.0.lcssa.i.i242 = phi ptr [ %.0.i.i239, %bb.dj ], [ %scevgep.i.i238, %bb.dk ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 4
  %i.kq = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i242, ptr noundef nonnull align 4 dereferenceable(4) %i.kp, i1 noundef zeroext true)
          to label %bb.dm unwind label %bb.dr     ; 3 uses

bb.dm:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.p, %i.kr
  %scevgep.i.i244 = getelementptr i8, ptr %i.kq, i64 %i.ks
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.0.i.i245 = phi ptr [ %i.kq, %bb.dm ], [ %i.ku, %bb.dp ] ; 4 uses
  %i.kt = load i8, ptr %.0.i.i245, align 1
  switch i8 %i.kt, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249 [
    i8 32, label %bb.do
    i8 9, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn
  %.not.i.i246 = icmp eq ptr %.0.i.i245, %i.h
  br i1 %.not.i.i246, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i245, i64 1
  br label %bb.dn, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249:      ; preds = %bb.dn, %bb.do
  %.0.lcssa.i.i248 = phi ptr [ %.0.i.i245, %bb.dn ], [ %scevgep.i.i244, %bb.do ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 8
  %i.kw = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i248, ptr noundef nonnull align 4 dereferenceable(4) %i.kv, i1 noundef zeroext true)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249
  %i.kx = add nuw nsw i32 %.060, 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.dr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219:      ; preds = %bb.ct, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.kz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #24
  %.not80 = icmp eq i32 %i.kz, 0
  br i1 %.not80, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.3 = phi ptr [ %i.la, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.la = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 5 uses
  %i.lb = load i8, ptr %i.la, align 1             ; 2 uses
  switch i8 %i.lb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %bb.ds
    i8 10, label %bb.ds
    i8 0, label %bb.ds
    i8 12, label %bb.ds
  ], !llvm.loop !35

bb.ds:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.p, %i.lc
  %scevgep.i.i250 = getelementptr i8, ptr %i.la, i64 %i.ld
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %bb.ds
  %i.le = phi i8 [ %i.lb, %bb.ds ], [ %.pre1727, %bb.dv ]
  %.0.i.i251 = phi ptr [ %i.la, %bb.ds ], [ %i.lf, %bb.dv ] ; 3 uses
  switch i8 %i.le, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254 [
    i8 32, label %bb.du
    i8 9, label %bb.du
    i8 13, label %bb.du
    i8 10, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt
  %.not.i.i252 = icmp eq ptr %.0.i.i251, %i.h
  br i1 %.not.i.i252, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i.i251, i64 1 ; 2 uses
  %.pre1727 = load i8, ptr %i.lf, align 1
  br label %bb.dt, !llvm.loop !16

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255:      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255
  %.4 = phi ptr [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 8 uses
  %i.lh = load i8, ptr %i.lg, align 1
  switch i8 %i.lh, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 [
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 13, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 10, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 0, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 12, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
  ], !llvm.loop !36

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %bb.dq, %bb.cx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218, %bb.bs
  %.sroa.35.3 = phi ptr [ %.sroa.35.2, %bb.cx ], [ %.sroa.35.8, %bb.dq ], [ %.sroa.35.2, %bb.bs ], [ %.sroa.35.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0328.4 = phi ptr [ %.sroa.0328.2, %bb.cx ], [ %.sroa.0328.2, %bb.dq ], [ %.sroa.0328.2, %bb.bs ], [ %.sroa.0328.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.cx ], [ %.sroa.20.1, %bb.dq ], [ %.sroa.20.1, %bb.bs ], [ %.sroa.20.7, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.38.4 = phi ptr [ %.sroa.38.2, %bb.cx ], [ %.sroa.38.2, %bb.dq ], [ %.sroa.38.2, %bb.bs ], [ %.sroa.38.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.20368.2 = phi ptr [ %.sroa.20368.1, %bb.cx ], [ %.sroa.20368.5, %bb.dq ], [ %.sroa.20368.1, %bb.bs ], [ %.sroa.20368.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0354.3 = phi ptr [ %.sroa.0354.2, %bb.cx ], [ %.sroa.0354.8, %bb.dq ], [ %.sroa.0354.2, %bb.bs ], [ %.sroa.0354.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.5 = phi ptr [ %i.jm, %bb.cx ], [ %i.kw, %bb.dq ], [ %.0.lcssa.i.i162, %bb.bs ], [ %i.gz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.lg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.161 = phi i32 [ 3, %bb.cx ], [ %i.kx, %bb.dq ], [ 0, %bb.bs ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  br label %bb.bc, !llvm.loop !37

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254: ; preds = %bb.du, %bb.dt, %bb.bh
  %.6 = phi ptr [ %.0.lcssa.i.i156, %bb.bh ], [ %scevgep.i.i250, %bb.du ], [ %.0.i.i251, %bb.dt ]
  %i.li = icmp eq ptr %.sroa.0354.2, %.sroa.20368.1 ; 2 uses
  br i1 %i.li, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  store i32 0, ptr %i.au, align 8
  %i.lj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.lj, ptr noundef nonnull @.str.22)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dy:                                            ; preds = %bb.dx, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  %i.lk = ptrtoint ptr %.sroa.20368.1 to i64
  %i.ll = ptrtoint ptr %.sroa.0354.2 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = sdiv exact i64 %i.lm, 12                ; 4 uses
  %i.lo = urem i64 %i.ln, 3
  %i.lp = udiv i64 %i.ln, 3
  %.not81 = icmp eq i64 %i.lo, 0
  br i1 %.not81, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.au, align 8
  %i.lq = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lq) #20
  br label %.thread

bb.eb:                                            ; preds = %bb.dy
  %i.ls = ptrtoint ptr %.sroa.20.1 to i64
  %i.lt = ptrtoint ptr %.sroa.0328.2 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %.not82 = icmp eq i64 %i.lu, %i.lm
  br i1 %.not82, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
end_hunk_1
