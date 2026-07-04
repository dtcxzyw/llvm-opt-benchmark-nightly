inline.NumInlined: 640
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11STLImporter14LoadBinaryFileEv:bb.a
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
  call void @llvm.assume(i1 %.not.i.i.i113)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc116 unwind label %.loopexit521 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store ptr %i.bp, ptr %i.cc, align 8
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.r, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %.noexc116
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %.sroa.0416.0, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %.noexc116
  %.not.i17.i.i114 = icmp eq ptr %.sroa.0416.0, null
  br i1 %.not.i17.i.i114, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0416.0, i64 noundef %i.bt) #21
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %.sroa.17.5 = phi ptr [ %i.ce, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0, %bb.o ] ; 14 uses
  %.pn504 = phi ptr [ %i.cc, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.o ]
  %.sroa.0416.5 = phi ptr [ %i.cb, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0416.0, %bb.o ] ; 14 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn504, i64 8
  %scevgep.i.i = getelementptr i8, ptr %.0441, i64 %i.ad
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.0.i.i = phi ptr [ %.0441, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.cg, %bb.v ] ; 4 uses
  %i.cf = load i8, ptr %.0.i.i, align 1
  switch i8 %i.cf, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %.not.i.i117 = icmp eq ptr %.0.i.i, %i.h
  br i1 %.not.i.i117, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.t, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %bb.t, %bb.u
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.t ], [ %scevgep.i.i, %bb.u ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 5 ; 3 uses
  %7 = ptrtoint ptr %i.ch to i64
  %i.ci = sub i64 %i.p, %7
  %scevgep.i.i118 = getelementptr i8, ptr %i.ch, i64 %i.ci
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i119 = phi ptr [ %i.ch, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.ck, %bb.y ] ; 4 uses
  %i.cj = load i8, ptr %.0.i.i119, align 1
  switch i8 %i.cj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i120 = icmp eq ptr %.0.i.i119, %i.h
  br i1 %.not.i.i120, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 1
  br label %bb.w, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123:      ; preds = %bb.w, %bb.x
  %.0.lcssa.i.i122 = phi ptr [ %.0.i.i119, %bb.w ], [ %scevgep.i.i118, %bb.x ] ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123
  %.1 = phi ptr [ %.0.lcssa.i.i122, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 ], [ %i.cm, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 5 uses
  %i.cl = load i8, ptr %.1, align 1
  switch i8 %i.cl, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 0, label %bb.ac
    i8 12, label %bb.ac
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.z, !llvm.loop !15

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %._crit_edge, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  %.sroa.35.1 = phi ptr [ %i.m, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.35.0, %._crit_edge ], [ %.sroa.35.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0328.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0328.0, %._crit_edge ], [ %.sroa.0328.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.38.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.38.0, %._crit_edge ], [ %.sroa.38.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0354.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0354.0, %._crit_edge ], [ %.sroa.0354.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.17.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.17.0, %._crit_edge ], [ %.sroa.17.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0416.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0416.0, %._crit_edge ], [ %.sroa.0416.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.19.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.19.0, %._crit_edge ], [ %.sroa.19.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0427.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0427.0, %._crit_edge ], [ %.sroa.0427.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.thread484:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.loopexit521:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit523 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp522:                            ; preds = %bb.q
  %lpad.loopexit.split-lp524 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 1144) #21
  br label %.thread

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.cq = ptrtoint ptr %.1 to i64
  %i.cr = ptrtoint ptr %.0.lcssa.i.i122 to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %.not = icmp eq ptr %.1, %.0.lcssa.i.i122
  br i1 %.not, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = icmp ugt i64 %i.cs, 1023
  br i1 %i.ct, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cu = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull @.str.11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.et unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cu) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.q, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cs, ptr %i.c, align 8
  %i.cx = icmp samesign ugt i64 %i.cs, 15
  br i1 %i.cx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ai
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.ay ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.cy, ptr %2, align 8
  %i.cz = load i64, ptr %i.c, align 8
  store i64 %i.cz, ptr %i.q, align 8
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.ai
  %cond = icmp eq i64 %i.cs, 1
  br i1 %cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.da = load i8, ptr %.0.lcssa.i.i122, align 1
  store i8 %i.da, ptr %i.q, align 8
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.db = phi ptr [ %i.cy, %._crit_edge.i.i.thread ], [ %i.q, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %.0.lcssa.i.i122, i64 %i.cs, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dc = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.dc, ptr %i.r, align 8
  %i.dd = load ptr, ptr %2, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.df = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.s, ptr %3, align 8
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc128 unwind label %.loopexit.split-lp527

.noexc128:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.dh, ptr %i.b, align 8
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %bb.an
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc129 unwind label %.loopexit526 ; 2 uses

.noexc129:                                        ; preds = %.noexc.i127
  store ptr %i.dj, ptr %3, align 8
  %i.dk = load i64, ptr %i.b, align 8
  store i64 %i.dk, ptr %i.s, align 8
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc129, %bb.an
  %i.dl = phi ptr [ %i.dj, %.noexc129 ], [ %i.s, %bb.an ] ; 2 uses
  switch i64 %i.dh, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i126
  %i.dm = load i8, ptr %i.df, align 1
  store i8 %i.dm, ptr %i.dl, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %i.df, i64 %i.dh, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i126
  %i.dn = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dn, ptr %i.t, align 8
  %i.do = load ptr, ptr %3, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dq = load i64, ptr %i.t, align 8             ; 5 uses
  %i.dr = icmp ugt i64 %i.dq, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.dr, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ar
end_hunk_0
begin_hunk_1_@_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode:_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dx = load i64, ptr %i.s, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.dz = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.u, ptr %4, align 8
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc132 unwind label %.loopexit.split-lp532

.noexc132:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dz) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.eb, ptr %i.a, align 8
  %i.ec = icmp ugt i64 %i.eb, 15
  br i1 %i.ec, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.at
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %.loopexit531 ; 2 uses

.noexc133:                                        ; preds = %.noexc.i131
  store ptr %i.ed, ptr %4, align 8
  %i.ee = load i64, ptr %i.a, align 8
  store i64 %i.ee, ptr %i.u, align 8
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc133, %bb.at
  %i.ef = phi ptr [ %i.ed, %.noexc133 ], [ %i.u, %bb.at ] ; 2 uses
  switch i64 %i.eb, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i130
  %i.eg = load i8, ptr %i.dz, align 1
  store i8 %i.eg, ptr %i.ef, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr nonnull align 1 %i.dz, i64 %i.eb, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i130
  %i.eh = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.eh, ptr %i.v, align 8
  %i.ei = load ptr, ptr %4, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store i8 0, ptr %i.ej, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ek = load i64, ptr %i.v, align 8             ; 5 uses
  %i.el = icmp ugt i64 %i.ek, 1023
  %.pre1725 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.el, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = getelementptr inbounds nuw i8, ptr %i.as, i64 236
  %i.en = trunc nuw nsw i64 %i.ek to i32
  store i32 %i.en, ptr %i.em, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.as, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr align 1 %.pre1725, i64 %i.ek, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ek
  store i8 0, ptr %i.ep, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135: ; preds = %bb.aw, %bb.ax
  %i.eq = icmp eq ptr %.pre1725, %i.u
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.er = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.er)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.es = load i64, ptr %i.u, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.pre1725, i64 noundef %i.et) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.eu = load ptr, ptr %2, align 8               ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.q
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ew = load i64, ptr %i.q, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.preheader

bb.ay:                                            ; preds = %.noexc.i
  %i.ey = landingpad { ptr, i32 }
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
  %i.ez = load ptr, ptr %2, align 8               ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.q
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bb
  %i.fb = load i64, ptr %i.q, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.ay ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149: ; preds = %bb.ac
  %i.fd = load ptr, ptr %i.w, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.x, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  store i64 11, ptr %i.y, align 8
  store i8 0, ptr %i.ab, align 1
  store i32 11, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.fg, ptr noundef nonnull align 1 dereferenceable(11) %i.fh, i64 11, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 15
  store i8 0, ptr %i.fi, align 1
  %.pre1726 = load ptr, ptr %5, align 8           ; 2 uses
  %i.fj = icmp eq ptr %.pre1726, %i.x
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149
  %i.fk = load i64, ptr %i.x, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %.pre1726, i64 noundef %i.fl) #21
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
  %.sroa.20368.1 = phi ptr [ %.sroa.20368.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.20368.0, %.preheader ] ; 16 uses
  %.sroa.0354.2 = phi ptr [ %.sroa.0354.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.0354.0, %.preheader ] ; 29 uses
  %.2 = phi ptr [ %.5, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.1, %.preheader ] ; 3 uses
  %.060 = phi i32 [ %.161, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ 3, %.preheader ] ; 9 uses
  %8 = ptrtoint ptr %.2 to i64
  %i.fm = sub i64 %i.p, %8
  %scevgep.i.i153 = getelementptr i8, ptr %.2, i64 %i.fm ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.0.i.i154 = phi ptr [ %.2, %bb.bc ], [ %i.fo, %bb.bf ] ; 4 uses
  %i.fn = load i8, ptr %.0.i.i154, align 1        ; 2 uses
  switch i8 %i.fn, label %.loopexit [
    i8 32, label %bb.be
    i8 9, label %bb.be
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd
  %.not.i.i155 = icmp eq ptr %.0.i.i154, %i.h
  br i1 %.not.i.i155, label %thread-pre-split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 1
  br label %bb.bd, !llvm.loop !16

thread-pre-split:                                 ; preds = %bb.be
  %.pr444 = load i8, ptr %scevgep.i.i153, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %thread-pre-split
  %i.fp = phi i8 [ %.pr444, %thread-pre-split ], [ %i.fn, %bb.bd ]
  %.0.lcssa.i.i156 = phi ptr [ %scevgep.i.i153, %thread-pre-split ], [ %.0.i.i154, %bb.bd ] ; 11 uses
  %.not505 = icmp eq i8 %i.fp, 0
  br i1 %.not505, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.fq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fq, ptr noundef nonnull @.str.13)
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
  %i.fr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #24
  %.not75 = icmp eq i32 %i.fr, 0
  br i1 %.not75, label %bb.bj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157

bb.bj:                                            ; preds = %bb.bi
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 5
  %i.ft = load i8, ptr %i.fs, align 1
  switch i8 %i.ft, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157 [
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
  %i.fu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fu, ptr noundef nonnull @.str.15)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6 ; 3 uses
  %9 = ptrtoint ptr %i.fv to i64
  %i.fw = sub i64 %i.p, %9
  %scevgep.i.i158 = getelementptr i8, ptr %i.fv, i64 %i.fw
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i159 = phi ptr [ %i.fv, %bb.bn ], [ %i.fy, %bb.bq ] ; 4 uses
  %i.fx = load i8, ptr %.0.i.i159, align 1
  switch i8 %i.fx, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163 [
    i8 32, label %bb.bp
    i8 9, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %.not.i.i160 = icmp eq ptr %.0.i.i159, %i.h
  br i1 %.not.i.i160, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 1
  br label %bb.bo, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163:      ; preds = %bb.bo, %bb.bp
  %.0.lcssa.i.i162 = phi ptr [ %.0.i.i159, %bb.bo ], [ %scevgep.i.i158, %bb.bp ] ; 4 uses
  %i.fz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i162, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #24
  %.not78 = icmp eq i32 %i.fz, 0
  br i1 %.not78, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.ga = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, ptr noundef nonnull @.str.17)
          to label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread unwind label %.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 6
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ge = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.bv

.invoke:                                          ; preds = %bb.ec, %bb.dz, %bb.cz, %bb.bu
  %i.gf = phi ptr [ %i.li, %bb.dz ], [ %i.ge, %bb.bu ], [ %i.ji, %bb.cz ], [ %i.ln, %bb.ec ]
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ge) #20
  br label %.thread

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %6, align 8
  store float 0.000000e+00, ptr %i.aa, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 7 ; 3 uses
  %10 = ptrtoint ptr %i.gh to i64
  %i.gi = sub i64 %i.p, %10
  %scevgep.i.i164 = getelementptr i8, ptr %i.gh, i64 %i.gi
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.0.i.i165 = phi ptr [ %i.gh, %bb.bw ], [ %i.gk, %bb.bz ] ; 4 uses
  %i.gj = load i8, ptr %.0.i.i165, align 1
  switch i8 %i.gj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 [
    i8 32, label %bb.by
    i8 9, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %.not.i.i166 = icmp eq ptr %.0.i.i165, %i.h
  br i1 %.not.i.i166, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 1
  br label %bb.bx, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169:      ; preds = %bb.bx, %bb.by
  %.0.lcssa.i.i168 = phi ptr [ %.0.i.i165, %bb.bx ], [ %scevgep.i.i164, %bb.by ]
  %i.gl = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i168, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true)
          to label %bb.ca unwind label %.loopexit512 ; 3 uses

bb.ca:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169
  %11 = ptrtoint ptr %i.gl to i64
  %i.gm = sub i64 %i.p, %11
  %scevgep.i.i170 = getelementptr i8, ptr %i.gl, i64 %i.gm
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %.0.i.i171 = phi ptr [ %i.gl, %bb.ca ], [ %i.go, %bb.cd ] ; 4 uses
  %i.gn = load i8, ptr %.0.i.i171, align 1
  switch i8 %i.gn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.not.i.i172 = icmp eq ptr %.0.i.i171, %i.h
  br i1 %.not.i.i172, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 1
  br label %bb.cb, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175:      ; preds = %bb.cb, %bb.cc
  %.0.lcssa.i.i174 = phi ptr [ %.0.i.i171, %bb.cb ], [ %scevgep.i.i170, %bb.cc ]
  %i.gp = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i174, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true)
          to label %bb.ce unwind label %.loopexit512 ; 3 uses

bb.ce:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175
  %12 = ptrtoint ptr %i.gp to i64
  %i.gq = sub i64 %i.p, %12
  %scevgep.i.i176 = getelementptr i8, ptr %i.gp, i64 %i.gq
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i177 = phi ptr [ %i.gp, %bb.ce ], [ %i.gs, %bb.ch ] ; 4 uses
  %i.gr = load i8, ptr %.0.i.i177, align 1
  switch i8 %i.gr, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i178 = icmp eq ptr %.0.i.i177, %i.h
  br i1 %.not.i.i178, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i177, i64 1
  br label %bb.cf, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181:      ; preds = %bb.cf, %bb.cg
  %.0.lcssa.i.i180 = phi ptr [ %.0.i.i177, %bb.cf ], [ %scevgep.i.i176, %bb.cg ]
  %i.gt = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i180, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i1 noundef zeroext true)
          to label %bb.ci unwind label %.loopexit512

bb.ci:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181
  %.not.i182 = icmp eq ptr %.sroa.20.1, %.sroa.38.2
  br i1 %.not.i182, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.1, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.gu = ptrtoint ptr %.sroa.20.1 to i64
  %i.gv = ptrtoint ptr %.sroa.0328.2 to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775800
  br i1 %i.gx, label %bb.cl, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc185 unwind label %.loopexit.split-lp513

.noexc185:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.gy = sdiv exact i64 %i.gw, 12                ; 3 uses
  %.sroa.speculated.i.i.i183 = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i183, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 768614336404564650)
  %i.hc = select i1 %i.ha, i64 768614336404564650, i64 %i.hb ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.hd = mul nuw nsw i64 %i.hc, 12
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #22
          to label %.noexc186 unwind label %.loopexit512 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0328.2, %.sroa.20.1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i ], [ %i.he, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0328.2, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !17
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, %.sroa.20.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.he, %.noexc186 ], [ %i.hh, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.2, i64 noundef %i.gw) #21
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.hc
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cj
  %.sroa.0328.9 = phi ptr [ %i.he, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0328.2, %bb.cj ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.1, %bb.cj ] ; 4 uses
  %.sroa.38.9 = phi ptr [ %i.hi, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.2, %bb.cj ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn3442 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.20.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %.not.i187 = icmp eq ptr %.sroa.20.5, %.sroa.38.9
  br i1 %.not.i187, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.5, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.hk = ptrtoint ptr %.sroa.38.9 to i64
  %i.hl = ptrtoint ptr %.sroa.0328.9 to i64       ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775800
  br i1 %i.hn, label %bb.co, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc200 unwind label %.loopexit.split-lp513

.noexc200:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.cn
  %i.ho = sdiv exact i64 %i.hm, 12                ; 3 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i189, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 768614336404564650)
  %i.hs = select i1 %i.hq, i64 768614336404564650, i64 %i.hr ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.ht = mul nuw nsw i64 %i.hs, 12
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #22
          to label %.noexc201 unwind label %.loopexit512 ; 6 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hv, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i191 = icmp eq ptr %.sroa.0328.9, %.sroa.38.9
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192.preheader

.lr.ph.i.i.i.i.i192.preheader:                    ; preds = %.noexc201
  %i.hw = sub i64 %.0.lcssa.i.i.i.i.i.pn3442, %i.hl ; 2 uses
  %i.hx = udiv i64 %i.hw, 12
  %i.hy = add nuw nsw i64 %i.hx, 1
  %xtraiter = and i64 %i.hy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol

.lr.ph.i.i.i.i.i192.prol:                         ; preds = %.lr.ph.i.i.i.i.i192.preheader, %.lr.ph.i.i.i.i.i192.prol
  %.012.i.i.i.i.i193.prol = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i192.prol ], [ %i.hu, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %.0911.i.i.i.i.i194.prol = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i192.prol ], [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i192.prol ], [ 0, %.lr.ph.i.i.i.i.i192.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193.prol, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194.prol, i64 12, i1 false), !alias.scope !22
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194.prol, i64 12 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol, !llvm.loop !26

.lr.ph.i.i.i.i.i192.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i192.prol, %.lr.ph.i.i.i.i.i192.preheader
  %.lcssa2878.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.ia, %.lr.ph.i.i.i.i.i192.prol ]
  %.012.i.i.i.i.i193.unr = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.ia, %.lr.ph.i.i.i.i.i192.prol ]
  %.0911.i.i.i.i.i194.unr = phi ptr [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.hz, %.lr.ph.i.i.i.i.i192.prol ]
  %i.ib = icmp ult i64 %i.hw, 36
  br i1 %i.ib, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i192 ], [ %.012.i.i.i.i.i193.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i192 ], [ %.0911.i.i.i.i.i194.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194, i64 12, i1 false), !alias.scope !22
  %i.ic = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 4 dereferenceable(12) %i.ic, i64 12, i1 false), !alias.scope !22
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.if, ptr noundef nonnull align 4 dereferenceable(12) %i.ie, i64 12, i1 false), !alias.scope !22
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 36 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ih, ptr noundef nonnull align 4 dereferenceable(12) %i.ig, i64 12, i1 false), !alias.scope !22
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 48 ; 2 uses
  %.not.i.i.i.i.i195.3 = icmp eq ptr %i.ig, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i195.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199: ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.hu, %.noexc201 ], [ %.lcssa2878.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ], [ %i.ij, %.lr.ph.i.i.i.i.i192 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.9, i64 noundef %i.hm) #21
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %i.hu, i64 %i.hs
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, %bb.cm
  %.sroa.0328.10 = phi ptr [ %i.hu, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.0328.9, %bb.cm ] ; 7 uses
  %.sroa.20.6 = phi ptr [ %i.ik, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %i.hj, %bb.cm ] ; 8 uses
  %.sroa.38.10 = phi ptr [ %i.il, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.38.9, %bb.cm ] ; 2 uses
  %.not.i203 = icmp eq ptr %.sroa.20.6, %.sroa.38.10
  br i1 %.not.i203, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.6, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

bb.cq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  %i.im = ptrtoint ptr %.sroa.20.6 to i64
  %i.in = ptrtoint ptr %.sroa.0328.10 to i64
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.cr, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc216 unwind label %.loopexit.split-lp513

.noexc216:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204: ; preds = %bb.cq
  %i.iq = sdiv exact i64 %i.io, 12                ; 3 uses
  %.sroa.speculated.i.i.i205 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i205, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 768614336404564650)
  %i.iu = select i1 %i.is, i64 768614336404564650, i64 %i.it ; 3 uses
  %.not.i.i.i206 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i206)
  %i.iv = mul nuw nsw i64 %i.iu, 12
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #22
          to label %.noexc217 unwind label %.loopexit512 ; 5 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ix, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i207 = icmp eq ptr %.sroa.0328.10, %.sroa.20.6
  br i1 %.not10.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208

.lr.ph.i.i.i.i.i208:                              ; preds = %.noexc217, %.lr.ph.i.i.i.i.i208
  %.012.i.i.i.i.i209 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i208 ], [ %i.iw, %.noexc217 ] ; 2 uses
  %.0911.i.i.i.i.i210 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i208 ], [ %.sroa.0328.10, %.noexc217 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i209, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i210, i64 12, i1 false), !alias.scope !27
  %i.iy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i210, i64 12 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i209, i64 12 ; 2 uses
  %.not.i.i.i.i.i211 = icmp eq ptr %i.iy, %.sroa.20.6
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215: ; preds = %.lr.ph.i.i.i.i.i208, %.noexc217
  %.0.lcssa.i.i.i.i.i213 = phi ptr [ %i.iw, %.noexc217 ], [ %i.iz, %.lr.ph.i.i.i.i.i208 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.10, i64 noundef %i.io) #21
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %i.iw, i64 %i.iu
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, %bb.cp
  %.sroa.0328.11 = phi ptr [ %i.iw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.0328.10, %bb.cp ]
  %.0.lcssa.i.i.i.i.i213.pn = phi ptr [ %.0.lcssa.i.i.i.i.i213, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.20.6, %bb.cp ]
  %.sroa.38.11 = phi ptr [ %i.ja, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.38.10, %bb.cp ]
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
  %i.jb = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #24
  %.not79 = icmp eq i32 %i.jb, 0
  br i1 %.not79, label %bb.ct, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219

bb.ct:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6
  %i.jd = load i8, ptr %i.jc, align 1             ; 2 uses
  switch i8 %i.jd, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 [
    i8 32, label %bb.cu
    i8 9, label %bb.cu
    i8 13, label %bb.cu
    i8 10, label %bb.cu
    i8 0, label %bb.cu
    i8 12, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  %i.je = icmp ugt i32 %.060, 2
  br i1 %i.je, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.jf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jf, ptr noundef nonnull @.str.20)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.cy:                                            ; preds = %bb.cu
  %i.jh = icmp eq i8 %i.jd, 0
  br i1 %i.jh, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ji = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ji) #20
  br label %.thread

bb.db:                                            ; preds = %bb.cy
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 7 ; 3 uses
  %13 = ptrtoint ptr %i.jk to i64
  %i.jl = sub i64 %i.p, %13
  %scevgep.i.i220 = getelementptr i8, ptr %i.jk, i64 %i.jl
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.db
  %.0.i.i221 = phi ptr [ %i.jk, %bb.db ], [ %i.jn, %bb.de ] ; 4 uses
  %i.jm = load i8, ptr %.0.i.i221, align 1
  switch i8 %i.jm, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225 [
    i8 32, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc
  %.not.i.i222 = icmp eq ptr %.0.i.i221, %i.h
  br i1 %.not.i.i222, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i.i221, i64 1
  br label %bb.dc, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225:      ; preds = %bb.dc, %bb.dd
  %.0.lcssa.i.i224 = phi ptr [ %.0.i.i221, %bb.dc ], [ %scevgep.i.i220, %bb.dd ]
  %.not.i226 = icmp eq ptr %.sroa.20368.1, %.sroa.35.2
  br i1 %.not.i226, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  store <2 x float> zeroinitializer, ptr %.sroa.20368.1, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.20368.1, i64 8
  store float 0.000000e+00, ptr %i.jo, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.dg:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  %i.jp = ptrtoint ptr %.sroa.35.2 to i64
  %i.jq = ptrtoint ptr %.sroa.0354.2 to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 4 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %bb.dh, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227: ; preds = %bb.dg
  %i.jt = sdiv exact i64 %i.jr, 12                ; 3 uses
  %.sroa.speculated.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i228, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 768614336404564650)
  %i.jx = select i1 %i.jv, i64 768614336404564650, i64 %i.jw ; 3 uses
  %.not.i.i.i229 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i.i229)
  %i.jy = mul nuw nsw i64 %i.jx, 12
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #22
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ka, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store float 0.000000e+00, ptr %i.kb, align 4
  %.not10.i.i.i.i.i230 = icmp eq ptr %.sroa.0354.2, %.sroa.35.2
  br i1 %.not10.i.i.i.i.i230, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231

.lr.ph.i.i.i.i.i231:                              ; preds = %.noexc237, %.lr.ph.i.i.i.i.i231
  %.012.i.i.i.i.i232 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i231 ], [ %i.jz, %.noexc237 ] ; 2 uses
  %.0911.i.i.i.i.i233 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i231 ], [ %.sroa.0354.2, %.noexc237 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i232, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i233, i64 12, i1 false), !alias.scope !31
  %i.kc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i233, i64 12 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i232, i64 12 ; 2 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.kc, %.sroa.35.2
  br i1 %.not.i.i.i.i.i234, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i231, %.noexc237
  %.0.lcssa.i.i.i.i.i235 = phi ptr [ %i.jz, %.noexc237 ], [ %i.kd, %.lr.ph.i.i.i.i.i231 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0354.2, i64 noundef %i.jr) #21
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %i.jz, i64 %i.jx
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.df
  %.sroa.35.8 = phi ptr [ %i.ke, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.35.2, %bb.df ] ; 2 uses
  %.0.lcssa.i.i.i.i.i235.pn = phi ptr [ %.0.lcssa.i.i.i.i.i235, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20368.1, %bb.df ] ; 4 uses
  %.sroa.0354.8 = phi ptr [ %i.jz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0354.2, %bb.df ] ; 2 uses
  %.sroa.20368.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 12
  %i.kf = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i224, ptr noundef nonnull align 4 dereferenceable(4) %.0.lcssa.i.i.i.i.i235.pn, i1 noundef zeroext true)
          to label %bb.di unwind label %bb.dr     ; 3 uses

bb.di:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %14 = ptrtoint ptr %i.kf to i64
  %i.kg = sub i64 %i.p, %14
  %scevgep.i.i238 = getelementptr i8, ptr %i.kf, i64 %i.kg
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %.0.i.i239 = phi ptr [ %i.kf, %bb.di ], [ %i.ki, %bb.dl ] ; 4 uses
  %i.kh = load i8, ptr %.0.i.i239, align 1
  switch i8 %i.kh, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243 [
    i8 32, label %bb.dk
    i8 9, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %.not.i.i240 = icmp eq ptr %.0.i.i239, %i.h
  br i1 %.not.i.i240, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 1
  br label %bb.dj, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243:      ; preds = %bb.dj, %bb.dk
  %.0.lcssa.i.i242 = phi ptr [ %.0.i.i239, %bb.dj ], [ %scevgep.i.i238, %bb.dk ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 4
  %i.kk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i242, ptr noundef nonnull align 4 dereferenceable(4) %i.kj, i1 noundef zeroext true)
          to label %bb.dm unwind label %bb.dr     ; 3 uses

bb.dm:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243
  %15 = ptrtoint ptr %i.kk to i64
  %i.kl = sub i64 %i.p, %15
  %scevgep.i.i244 = getelementptr i8, ptr %i.kk, i64 %i.kl
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.0.i.i245 = phi ptr [ %i.kk, %bb.dm ], [ %i.kn, %bb.dp ] ; 4 uses
  %i.km = load i8, ptr %.0.i.i245, align 1
  switch i8 %i.km, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249 [
    i8 32, label %bb.do
    i8 9, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn
  %.not.i.i246 = icmp eq ptr %.0.i.i245, %i.h
  br i1 %.not.i.i246, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i.i245, i64 1
  br label %bb.dn, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249:      ; preds = %bb.dn, %bb.do
  %.0.lcssa.i.i248 = phi ptr [ %.0.i.i245, %bb.dn ], [ %scevgep.i.i244, %bb.do ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 8
  %i.kp = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i248, ptr noundef nonnull align 4 dereferenceable(4) %i.ko, i1 noundef zeroext true)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249
  %i.kq = add nuw nsw i32 %.060, 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.dr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219:      ; preds = %bb.ct, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.ks = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #24
  %.not80 = icmp eq i32 %i.ks, 0
  br i1 %.not80, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.3 = phi ptr [ %i.kt, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 5 uses
  %i.ku = load i8, ptr %i.kt, align 1             ; 2 uses
  switch i8 %i.ku, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %bb.ds
    i8 10, label %bb.ds
    i8 0, label %bb.ds
    i8 12, label %bb.ds
  ], !llvm.loop !35

bb.ds:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %16 = ptrtoint ptr %i.kt to i64
  %i.kv = sub i64 %i.p, %16
  %scevgep.i.i250 = getelementptr i8, ptr %i.kt, i64 %i.kv
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %bb.ds
  %i.kw = phi i8 [ %i.ku, %bb.ds ], [ %.pre1727, %bb.dv ]
  %.0.i.i251 = phi ptr [ %i.kt, %bb.ds ], [ %i.kx, %bb.dv ] ; 3 uses
  switch i8 %i.kw, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254 [
    i8 32, label %bb.du
    i8 9, label %bb.du
    i8 13, label %bb.du
    i8 10, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt
  %.not.i.i252 = icmp eq ptr %.0.i.i251, %i.h
  br i1 %.not.i.i252, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i251, i64 1 ; 2 uses
  %.pre1727 = load i8, ptr %i.kx, align 1
  br label %bb.dt, !llvm.loop !16

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255:      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255
  %.4 = phi ptr [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 8 uses
  %i.kz = load i8, ptr %i.ky, align 1
  switch i8 %i.kz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 [
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
  %.5 = phi ptr [ %i.jg, %bb.cx ], [ %i.kp, %bb.dq ], [ %.0.lcssa.i.i162, %bb.bs ], [ %i.gt, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.161 = phi i32 [ 3, %bb.cx ], [ %i.kq, %bb.dq ], [ 0, %bb.bs ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  br label %bb.bc, !llvm.loop !37

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254: ; preds = %bb.du, %bb.dt, %bb.bh
  %.6 = phi ptr [ %.0.lcssa.i.i156, %bb.bh ], [ %scevgep.i.i250, %bb.du ], [ %.0.i.i251, %bb.dt ]
  %i.la = icmp eq ptr %.sroa.0354.2, %.sroa.20368.1 ; 2 uses
  br i1 %i.la, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  store i32 0, ptr %i.au, align 8
  %i.lb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.lb, ptr noundef nonnull @.str.22)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dy:                                            ; preds = %bb.dx, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  %i.lc = ptrtoint ptr %.sroa.20368.1 to i64
  %i.ld = ptrtoint ptr %.sroa.0354.2 to i64
  %i.le = sub i64 %i.lc, %i.ld                    ; 2 uses
  %i.lf = sdiv exact i64 %i.le, 12                ; 4 uses
  %i.lg = urem i64 %i.lf, 3
  %i.lh = udiv i64 %i.lf, 3
  %.not81 = icmp eq i64 %i.lg, 0
  br i1 %.not81, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.au, align 8
  %i.li = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.li, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.li) #20
  br label %.thread

bb.eb:                                            ; preds = %bb.dy
  %i.lk = ptrtoint ptr %.sroa.20.1 to i64
  %i.ll = ptrtoint ptr %.sroa.0328.2 to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %.not82 = icmp eq i64 %i.lm, %i.le
  br i1 %.not82, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.au, align 8
  %i.ln = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, ptr noundef nonnull @.str.24)
          to label %.invoke unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ln) #20
  br label %.thread

bb.ee:                                            ; preds = %bb.eb
  br i1 %i.la, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lp = trunc i64 %i.lh to i32
  store i32 %i.lp, ptr %i.au, align 8
  %i.lq = trunc i64 %i.lf to i32                  ; 2 uses
  store i32 %i.lq, ptr %i.at, align 4
  %i.lr = and i64 %i.lf, 4294967295
  %i.ls = mul nuw nsw i64 %i.lr, 12               ; 2 uses
  %i.lt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ls) #22
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

bb.eg:                                            ; preds = %bb.ef
  %i.lu = icmp eq i32 %i.lq, 0
  br i1 %i.lu, label %.loopexit508.thread, label %.lr.ph.preheader

.loopexit508.thread:                              ; preds = %bb.eg
  store ptr %i.lt, ptr %i.av, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit

.lr.ph.preheader:                                 ; preds = %bb.eg
  %i.lv = add nsw i64 %i.ls, -12                  ; 2 uses
  %i.lw = urem i64 %i.lv, 12
  %i.lx = sub nuw nsw i64 %i.lv, %i.lw
  %i.ly = add nsw i64 %i.lx, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lt, i8 0, i64 %i.ly, i1 false)
  store ptr %i.lt, ptr %i.av, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0581149 = phi i64 [ %i.mn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0354.2, i64 %.0581149 ; 3 uses
  %i.ma = load float, ptr %i.lz, align 4
  %i.mb = load ptr, ptr %i.av, align 8
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %.0581149
  store float %i.ma, ptr %i.mc, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.me = load float, ptr %i.md, align 4
  %i.mf = load ptr, ptr %i.av, align 8
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.mf, i64 %.0581149
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store float %i.me, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mj = load float, ptr %i.mi, align 4
  %i.mk = load ptr, ptr %i.av, align 8
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %.0581149
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store float %i.mj, ptr %i.mm, align 4
  %i.mn = add nuw nsw i64 %.0581149, 1            ; 2 uses
  %i.mo = load i32, ptr %i.at, align 4
  %i.mp = zext i32 %i.mo to i64
  %i.mq = icmp samesign ult i64 %i.mn, %i.mp
  br i1 %i.mq, label %.lr.ph, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit, !llvm.loop !38

_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit: ; preds = %.lr.ph, %.loopexit508.thread, %bb.ee
  %.sroa.20368.3 = phi ptr [ %.sroa.20368.1, %bb.ee ], [ %.sroa.0354.2, %.loopexit508.thread ], [ %.sroa.0354.2, %.lr.ph ]
  %i.mr = icmp eq ptr %.sroa.0328.2, %.sroa.20.1
  br i1 %i.mr, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit
  %i.ms = load i32, ptr %i.at, align 4            ; 2 uses
  %i.mt = zext i32 %i.ms to i64
  %i.mu = mul nuw nsw i64 %i.mt, 12               ; 2 uses
  %i.mv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mu) #22
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

bb.ei:                                            ; preds = %bb.eh
  %i.mw = icmp eq i32 %i.ms, 0
  br i1 %i.mw, label %.loopexit507.thread, label %.lr.ph1151.preheader

.loopexit507.thread:                              ; preds = %bb.ei
  %i.mx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.mv, ptr %i.mx, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259

.lr.ph1151.preheader:                             ; preds = %bb.ei
  %i.my = add nsw i64 %i.mu, -12                  ; 2 uses
  %i.mz = urem i64 %i.my, 12
  %i.na = sub nuw nsw i64 %i.my, %i.mz
  %i.nb = add nsw i64 %i.na, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mv, i8 0, i64 %i.nb, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 4 uses
  store ptr %i.mv, ptr %i.nc, align 8
  br label %.lr.ph1151

.lr.ph1151:                                       ; preds = %.lr.ph1151.preheader, %.lr.ph1151
  %.0571150 = phi i64 [ %i.nr, %.lr.ph1151 ], [ 0, %.lr.ph1151.preheader ] ; 5 uses
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0328.2, i64 %.0571150 ; 3 uses
  %i.ne = load float, ptr %i.nd, align 4
  %i.nf = load ptr, ptr %i.nc, align 8
  %i.ng = getelementptr inbounds nuw [12 x i8], ptr %i.nf, i64 %.0571150
  store float %i.ne, ptr %i.ng, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.ni = load float, ptr %i.nh, align 4
  %i.nj = load ptr, ptr %i.nc, align 8
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %i.nj, i64 %.0571150
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  store float %i.ni, ptr %i.nl, align 4
end_hunk_1
