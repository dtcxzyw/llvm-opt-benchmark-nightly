Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/STLLoader?download=true
inline.NumInlined: 640
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11STLImporter14LoadBinaryFileEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.bt = load i32, ptr %i.bm, align 4            ; 4 uses
  store i32 %i.bt, ptr %i.i, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 84
  %i.bv = load i64, ptr %i.q, align 8
  %i.bw = zext i32 %i.bt to i64
  %i.bx = mul nuw nsw i64 %i.bw, 50
  %i.by = add nuw nsw i64 %i.bx, 84
  %i.bz = icmp ult i64 %i.bv, %i.by
  br i1 %i.bz, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.28)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #20
  br label %bb.ag

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cc = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull @.str.29)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cc) #20
  br label %bb.ag

bb.u:                                             ; preds = %bb.q
  %i.ce = mul i32 %i.bt, 3                        ; 2 uses
  store i32 %i.ce, ptr %i.h, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = mul nuw nsw i64 %i.cf, 12               ; 2 uses
  %i.ch = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #22 ; 3 uses
  %i.ci = add nsw i64 %i.cg, -12                  ; 2 uses
  %i.cj = urem i64 %i.ci, 12
  %i.ck = sub nuw nsw i64 %i.ci, %i.cj
  %i.cl = add nsw i64 %i.ck, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ch, i8 0, i64 %i.cl, i1 false)
  store ptr %i.ch, ptr %i.j, align 8
  %i.cm = load i32, ptr %i.h, align 4             ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = mul nuw nsw i64 %i.cn, 12               ; 2 uses
  %i.cp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #22 ; 3 uses
  %i.cq = icmp eq i32 %i.cm, 0
  br i1 %i.cq, label %.loopexit164, label %.loopexit164.loopexit

.loopexit164.loopexit:                            ; preds = %bb.u
  %i.cr = add nsw i64 %i.co, -12                  ; 2 uses
  %i.cs = urem i64 %i.cr, 12
  %i.ct = sub nuw nsw i64 %i.cr, %i.cs
  %i.cu = add nsw i64 %i.ct, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cp, i8 0, i64 %i.cu, i1 false)
  br label %.loopexit164

.loopexit164:                                     ; preds = %.loopexit164.loopexit, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cp, ptr %i.cv, align 8
  %i.cw = load i32, ptr %i.i, align 8             ; 2 uses
  %.not182 = icmp eq i32 %i.cw, 0
  br i1 %.not182, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.loopexit164
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.w

._crit_edge176:                                   ; preds = %bb.aa, %.loopexit164
  %.lcssa165 = phi i32 [ 0, %.loopexit164 ], [ %i.gc, %bb.aa ] ; 2 uses
  %i.cz = zext i32 %.lcssa165 to i64              ; 5 uses
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = or disjoint i64 %i.da, 8
  %i.dc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #22 ; 2 uses
  store i64 %i.cz, ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = icmp eq i32 %.lcssa165, 0
  br i1 %i.de, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge176
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.cz
  %i.dg = add nuw nsw i64 %i.cz, 1152921504606846975
  %i.dh = and i64 %i.dg, 1152921504606846975
  %xtraiter = and i64 %i.cz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.v, %.prol.preheader
  %i.di = phi ptr [ %i.dk, %.prol.preheader ], [ %i.dd, %bb.v ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.v ]
  store i32 0, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.v
  %.unr = phi ptr [ %i.dd, %bb.v ], [ %i.dk, %.prol.preheader ]
  %i.dl = icmp samesign ult i64 %i.dh, 7
  br i1 %i.dl, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dm = phi ptr [ %i.ec, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i32 0, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr null, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i32 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr null, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i32 0, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  store ptr null, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  store i32 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  store ptr null, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store i32 0, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store i32 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  store ptr null, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  store i32 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 120
  store ptr null, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 128 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.df
  br i1 %i.ed, label %.loopexit.i, label %.new

.loopexit.i:                                      ; preds = %.prol.loopexit, %.new, %._crit_edge176
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  store ptr %i.dd, ptr %i.ee, align 8
  %i.ef = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i, label %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.01420.i = phi i32 [ %i.eq, %.lr.ph.i ], [ 0, %.loopexit.i ] ; 4 uses
  %i.eg = load ptr, ptr %i.ee, align 8
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv.i ; 2 uses
  store i32 3, ptr %i.eh, align 8
  %i.ei = call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #22 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  store ptr %i.ei, ptr %i.ej, align 8
  store i32 %.01420.i, ptr %i.ei, align 4
  %i.ek = add i32 %.01420.i, 1
  %i.el = load ptr, ptr %i.ej, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.ek, ptr %i.em, align 4
  %i.en = add i32 %.01420.i, 2
  %i.eo = load ptr, ptr %i.ej, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %i.en, ptr %i.ep, align 4
  %i.eq = add i32 %.01420.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.er = load i32, ptr %i.i, align 8
  %i.es = zext i32 %i.er to i64
  %i.et = icmp samesign ult i64 %indvars.iv.next.i, %i.es
  br i1 %i.et, label %.lr.ph.i, label %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit, !llvm.loop !0

_ZN6Assimp14addFacesToMeshEP6aiMesh.exit:         ; preds = %.lr.ph.i, %.loopexit.i
  %i.eu = load ptr, ptr %i.a, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.ex = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22 ; 6 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ex)
          to label %bb.ab unwind label %bb.ac

bb.w:                                             ; preds = %.lr.ph175, %bb.aa
  %i.ey = phi i32 [ %i.cw, %.lr.ph175 ], [ %i.gc, %bb.aa ]
  %indvars.iv = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.0112172 = phi ptr [ %i.cp, %.lr.ph175 ], [ %7, %bb.aa ] ; 7 uses
  %.0113171 = phi ptr [ %i.ch, %.lr.ph175 ], [ %19, %bb.aa ] ; 7 uses
  %.0114170 = phi ptr [ %i.bu, %.lr.ph175 ], [ %21, %bb.aa ] ; 10 uses
  %.sroa.17.0..0114.sroa_idx = getelementptr inbounds nuw i8, ptr %.0114170, i64 8
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..0114.sroa_idx, align 4
  %2 = load <2 x float>, ptr %.0114170, align 4
  store <2 x float> %2, ptr %.0112172, align 4
  %3 = getelementptr inbounds nuw i8, ptr %.0112172, i64 8
  store float %.sroa.17.0.copyload, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %.0112172, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.0112172, i64 12, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %.0112172, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %.0112172, i64 12, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.0114170, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %.0112172, i64 36
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114170, i64 20
  %.sroa.17.0.copyload155 = load float, ptr %.sroa.17.0..sroa_idx, align 4
  %8 = load <2 x float>, ptr %6, align 4
  store <2 x float> %8, ptr %.0113171, align 4
  %9 = getelementptr inbounds nuw i8, ptr %.0113171, i64 8
  store float %.sroa.17.0.copyload155, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %.0114170, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %.0113171, i64 12
  %.sroa.17.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.0114170, i64 32
  %.sroa.17.0.copyload157 = load float, ptr %.sroa.17.0..sroa_idx156, align 4
  %12 = load <2 x float>, ptr %10, align 4
  store <2 x float> %12, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %.0113171, i64 20
  store float %.sroa.17.0.copyload157, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %.0114170, i64 36
  %15 = getelementptr inbounds nuw i8, ptr %.0113171, i64 24
  %.sroa.17.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.0114170, i64 44
  %.sroa.17.0.copyload159 = load float, ptr %.sroa.17.0..sroa_idx158, align 4
  %16 = load <2 x float>, ptr %14, align 4
  store <2 x float> %16, ptr %15, align 4
  %17 = getelementptr inbounds nuw i8, ptr %.0113171, i64 32
  store float %.sroa.17.0.copyload159, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %.0114170, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %.0113171, i64 36
  %20 = load i16, ptr %18, align 4                ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.0114170, i64 50
  %22 = zext i16 %20 to i32                       ; 4 uses
  %.not136 = icmp sgt i16 %20, -1
  br i1 %.not136, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not137 = icmp eq ptr %i.ez, null
  br i1 %.not137, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = load i32, ptr %i.h, align 4             ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 4                ; 2 uses
  %i.fd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #22 ; 3 uses
  %i.fe = icmp eq i32 %i.fa, 0
  br i1 %i.fe, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fd, i8 0, i64 %i.fc, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  store ptr %i.fd, ptr %i.cx, align 8
  %i.ff = load i32, ptr %i.h, align 4
  %.not183 = icmp eq i32 %i.ff, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre194 = load ptr, ptr %i.cx, align 8
  %i.fg = zext i32 %i.fo to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.fh = phi ptr [ %i.fd, %.loopexit ], [ %.pre194, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.loopexit ], [ %i.fg, %._crit_edge.loopexit ]
  %i.fi = sub nsw i64 0, %.lcssa
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fi
  store ptr %i.fj, ptr %i.cx, align 8
  %i.fk = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fk, ptr noundef nonnull @.str.30)
  %.pre195 = load ptr, ptr %i.cx, align 8
  br label %bb.z

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.0110169 = phi i32 [ %i.fn, %.lr.ph ], [ 0, %.loopexit ]
  %i.fl = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fm, ptr %i.cx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.fn = add nuw i32 %.0110169, 1                ; 2 uses
  %i.fo = load i32, ptr %i.h, align 4             ; 2 uses
  %i.fp = icmp ult i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

bb.z:                                             ; preds = %._crit_edge, %bb.x
  %i.fq = phi ptr [ %.pre195, %._crit_edge ], [ %i.ez, %bb.x ]
  %i.fr = mul nuw nsw i64 %indvars.iv, 3
  %i.fs = and i64 %i.fr, 4294967295
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fs ; 5 uses
  %i.fu = lshr i32 %22, 10                        ; 2 uses
  %. = select i1 %i.bf, i32 %22, i32 %i.fu
  %.204 = select i1 %i.bf, i32 %i.fu, i32 %22
  %.sink.in.in = and i32 %.204, 31
  %.sink.in = uitofp nneg i32 %.sink.in.in to float
  %.sink191.in.in.in = lshr i32 %22, 5
  %.sink191.in.in = and i32 %.sink191.in.in.in, 31
  %.sink191.in = uitofp nneg i32 %.sink191.in.in to float
  %.sink192.in.in = and i32 %., 31
  %.sink192.in = uitofp nneg i32 %.sink192.in.in to float
  %i.fv = insertelement <4 x float> poison, float %.sink192.in, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %.sink191.in, i64 1
  %i.fx = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sink.in, i64 2
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fz = fmul nnan <4 x float> %i.fy, <float f0x3D042108, float f0x3D042108, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.fz, ptr %i.ft, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ga, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gb, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false)
  %.pre196 = load i32, ptr %i.i, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.gc = phi i32 [ %.pre196, %bb.z ], [ %i.ey, %bb.w ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp samesign ult i64 %indvars.iv.next, %i.gd
  br i1 %i.ge, label %bb.w, label %._crit_edge176, !llvm.loop !13

bb.ab:                                            ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ex, i64 1096
  store ptr %i.ew, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ew, i64 1104
  store i32 1, ptr %i.gg, align 8
  %i.gh = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 1112
  store ptr %i.gh, ptr %i.gi, align 8
  store ptr %i.ex, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.a, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ex, i64 1120
  store i32 %i.gl, ptr %i.gm, align 8
  %i.gn = zext i32 %i.gl to i64
  %i.go = shl nuw nsw i64 %i.gn, 2
  %i.gp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.go) #22
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ex, i64 1128 ; 2 uses
  store ptr %i.gp, ptr %i.gq, align 8
  %i.gr = load ptr, ptr %i.a, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i32, ptr %i.gs, align 8
  %.not184 = icmp eq i32 %i.gt, 0
  br i1 %.not184, label %._crit_edge181, label %.lr.ph180

._crit_edge181:                                   ; preds = %.lr.ph180, %bb.ab
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 1144) #21
  br label %bb.ag

.lr.ph180:                                        ; preds = %bb.ab, %.lr.ph180
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph180 ], [ 0, %bb.ab ] ; 3 uses
  %i.gv = load ptr, ptr %i.gq, align 8
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv188
  %i.gx = trunc nuw i64 %indvars.iv188 to i32
  store i32 %i.gx, ptr %i.gw, align 4
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.gy = load ptr, ptr %i.a, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next189, %i.hb
  br i1 %i.hc, label %.lr.ph180, label %._crit_edge181, !llvm.loop !14

bb.ad:                                            ; preds = %._crit_edge181
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.he = load ptr, ptr %i.hd, align 8
  %.not135 = icmp eq ptr %i.he, null
  br i1 %.not135, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge181
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.0115 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ]
  ret i1 %.0115

bb.ag:                                            ; preds = %bb.p, %bb.t, %bb.ac, %bb.d
  %.pn139 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.cb, %bb.p ], [ %i.gu, %bb.ac ], [ %i.cd, %bb.t ]
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
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 27
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103, %.noexc265
  %.0456 = phi ptr [ %i.e, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.6, %.noexc265 ] ; 6 uses
  %.sroa.0363.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0363.2, %.noexc265 ] ; 15 uses
  %.sroa.21378.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.21378.3, %.noexc265 ]
  %.sroa.37.0 = phi ptr [ %i.m, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.37.2, %.noexc265 ] ; 14 uses
  %.sroa.0330.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0330.2, %.noexc265 ] ; 15 uses
  %.sroa.21343.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.21343.3, %.noexc265 ]
  %.sroa.40.0 = phi ptr [ %i.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.40.2, %.noexc265 ] ; 14 uses
  %.sroa.17.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.17.5, %.noexc265 ] ; 13 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.11.1, %.noexc265 ] ; 5 uses
  %.sroa.0429.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0429.5, %.noexc265 ] ; 23 uses
  %.sroa.19.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.19.4, %.noexc265 ] ; 10 uses
  %.sroa.12448.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.12448.1, %.noexc265 ] ; 6 uses
  %.sroa.0441.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0441.4, %.noexc265 ] ; 20 uses
  %i.ac = ptrtoint ptr %.0456 to i64
  %i.ad = sub i64 %i.p, %i.ac                     ; 3 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 84
  br i1 %i.af, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.0456, i64 80
  %.0.copyload.i.i = load i32, ptr %i.ag, align 1
  %i.ah = mul i32 %.0.copyload.i.i, 50
  %i.ai = add i32 %i.ah, 84
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i: ; preds = %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.0456, i64 %i.ae ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i
  %.0.i.i.i = phi ptr [ %.0456, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i ], [ %i.an, %bb.d ] ; 4 uses
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
  br label %bb.b, !llvm.loop !1

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
          to label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.ek ; 13 uses

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 7 uses
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 8 uses
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1312
  store ptr null, ptr %i.ay, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.av, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, i8 0, i64 36, i1 false)
  %i.az = ptrtoint ptr %.sroa.12448.0 to i64
  %i.ba = ptrtoint ptr %.sroa.0441.0 to i64       ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aw, i8 0, i64 1044, i1 false)
  %i.bd = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22
          to label %bb.g unwind label %.thread500 ; 4 uses

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = trunc i64 %i.bc to i32
  store i32 %i.be, ptr %i.bd, align 4
  %.not.i107 = icmp eq ptr %.sroa.12448.0, %.sroa.19.0
  br i1 %.not.i107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.as, ptr %.sroa.12448.0, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc109 unwind label %.thread514.loopexit.split-lp

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
          to label %.noexc110 unwind label %.thread514.loopexit ; 4 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bb ; 2 uses
  store ptr %i.as, ptr %i.bm, align 8
  %i.bn = icmp sgt i64 %i.bb, 0
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %.sroa.0441.0, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc110
  %.not.i17.i.i = icmp eq ptr %.sroa.0441.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bo = ptrtoint ptr %.sroa.19.0 to i64
  %i.bp = sub i64 %i.bo, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0441.0, i64 noundef %i.bp) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.sroa.19.4 = phi ptr [ %i.bq, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0, %bb.h ] ; 17 uses
  %.pn519 = phi ptr [ %i.bm, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12448.0, %bb.h ]
  %.sroa.0441.4 = phi ptr [ %i.bl, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0441.0, %bb.h ] ; 17 uses
  %.sroa.12448.1 = getelementptr inbounds nuw i8, ptr %.pn519, i64 8
  %i.br = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22
          to label %bb.m unwind label %.loopexit537 ; 9 uses

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.br)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1096
  store ptr %1, ptr %i.bs, align 8
  %.not.i111 = icmp eq ptr %.sroa.11.0, %.sroa.17.0
  br i1 %.not.i111, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.br, ptr %.sroa.11.0, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.bt = ptrtoint ptr %.sroa.17.0 to i64
  %i.bu = ptrtoint ptr %.sroa.0429.0 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.q, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc115 unwind label %.loopexit.split-lp538

.noexc115:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i112, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i113 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i113)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #22
          to label %.noexc116 unwind label %.loopexit537 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store ptr %i.br, ptr %i.ce, align 8
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %.noexc116
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %.sroa.0429.0, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %.noexc116
  %.not.i17.i.i114 = icmp eq ptr %.sroa.0429.0, null
  br i1 %.not.i17.i.i114, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0429.0, i64 noundef %i.bv) #21
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %.sroa.17.5 = phi ptr [ %i.cg, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0, %bb.o ] ; 14 uses
  %.pn520 = phi ptr [ %i.ce, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.o ]
  %.sroa.0429.5 = phi ptr [ %i.cd, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0429.0, %bb.o ] ; 14 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn520, i64 8
  %scevgep.i.i = getelementptr i8, ptr %.0456, i64 %i.ad
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.0.i.i = phi ptr [ %.0456, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.ci, %bb.v ] ; 4 uses
  %i.ch = load i8, ptr %.0.i.i, align 1
  switch i8 %i.ch, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %.not.i.i117 = icmp eq ptr %.0.i.i, %i.h
  br i1 %.not.i.i117, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.t, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %bb.t, %bb.u
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.t ], [ %scevgep.i.i, %bb.u ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 5 ; 3 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = sub i64 %i.p, %i.ck
  %scevgep.i.i118 = getelementptr i8, ptr %i.cj, i64 %i.cl
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i119 = phi ptr [ %i.cj, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.cn, %bb.y ] ; 4 uses
  %i.cm = load i8, ptr %.0.i.i119, align 1
  switch i8 %i.cm, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i120 = icmp eq ptr %.0.i.i119, %i.h
  br i1 %.not.i.i120, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 1
  br label %bb.w, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123:      ; preds = %bb.w, %bb.x
  %.0.lcssa.i.i122 = phi ptr [ %.0.i.i119, %bb.w ], [ %scevgep.i.i118, %bb.x ] ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123
  %.1457 = phi ptr [ %.0.lcssa.i.i122, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 ], [ %i.cp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 5 uses
  %i.co = load i8, ptr %.1457, align 1
  switch i8 %i.co, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 0, label %bb.ac
    i8 12, label %bb.ac
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %.1457, i64 1
  br label %bb.z, !llvm.loop !15

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %._crit_edge, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  %.sroa.0363.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0363.0, %._crit_edge ], [ %.sroa.0363.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.37.1 = phi ptr [ %i.m, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.37.0, %._crit_edge ], [ %.sroa.37.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0330.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0330.0, %._crit_edge ], [ %.sroa.0330.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.40.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.40.0, %._crit_edge ], [ %.sroa.40.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.17.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.17.0, %._crit_edge ], [ %.sroa.17.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0429.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0429.0, %._crit_edge ], [ %.sroa.0429.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.19.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.19.0, %._crit_edge ], [ %.sroa.19.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0441.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0441.0, %._crit_edge ], [ %.sroa.0441.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit268

.thread500:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit268

.loopexit537:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit539 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp538:                            ; preds = %bb.q
  %lpad.loopexit.split-lp540 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 1144) #21
  br label %.thread

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.ct = ptrtoint ptr %.1457 to i64
  %i.cu = ptrtoint ptr %.0.lcssa.i.i122 to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %.not = icmp eq ptr %.1457, %.0.lcssa.i.i122
  br i1 %.not, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = icmp ugt i64 %i.cv, 1023
  br i1 %i.cw, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cx = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.et unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cx) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.q, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cv, ptr %i.c, align 8
  %i.da = icmp samesign ugt i64 %i.cv, 15
  br i1 %i.da, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ai
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.ay ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.db, ptr %2, align 8
  %i.dc = load i64, ptr %i.c, align 8
  store i64 %i.dc, ptr %i.q, align 8
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.ai
  %cond = icmp eq i64 %i.cv, 1
  br i1 %cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.dd = load i8, ptr %.0.lcssa.i.i122, align 1
  store i8 %i.dd, ptr %i.q, align 8
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.de = phi ptr [ %i.db, %._crit_edge.i.i.thread ], [ %i.q, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %.0.lcssa.i.i122, i64 %i.cv, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.df = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.df, ptr %i.r, align 8
  %i.dg = load ptr, ptr %2, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.di = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.s, ptr %3, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc128 unwind label %.loopexit.split-lp543

.noexc128:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.di) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.dk, ptr %i.b, align 8
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %bb.an
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc129 unwind label %.loopexit542 ; 2 uses

.noexc129:                                        ; preds = %.noexc.i127
  store ptr %i.dm, ptr %3, align 8
  %i.dn = load i64, ptr %i.b, align 8
  store i64 %i.dn, ptr %i.s, align 8
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc129, %bb.an
  %i.do = phi ptr [ %i.dm, %.noexc129 ], [ %i.s, %bb.an ] ; 2 uses
  switch i64 %i.dk, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i126
  %i.dp = load i8, ptr %i.di, align 1
  store i8 %i.dp, ptr %i.do, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.di, i64 %i.dk, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i126
  %i.dq = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dq, ptr %i.t, align 8
  %i.dr = load ptr, ptr %3, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dt = load i64, ptr %i.t, align 8             ; 5 uses
  %i.du = icmp ugt i64 %i.dt, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.du, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = trunc nuw nsw i64 %i.dt to i32
  store i32 %i.dv, ptr %i.br, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 1 %.pre, i64 %i.dt, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dt
  store i8 0, ptr %i.dx, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aq, %bb.ar
  %i.dy = icmp eq ptr %.pre, %i.s
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dz = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.dz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ea = load i64, ptr %i.s, align 8
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.eb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ec = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.u, ptr %4, align 8
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc132 unwind label %.loopexit.split-lp548

.noexc132:                                        ; preds = %bb.as
end_hunk_0
begin_hunk_1_@_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode:_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ec) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ee, ptr %i.a, align 8
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.at
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc133 unwind label %.loopexit547 ; 2 uses

.noexc133:                                        ; preds = %.noexc.i131
  store ptr %i.eg, ptr %4, align 8
  %i.eh = load i64, ptr %i.a, align 8
  store i64 %i.eh, ptr %i.u, align 8
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc133, %bb.at
  %i.ei = phi ptr [ %i.eg, %.noexc133 ], [ %i.u, %bb.at ] ; 2 uses
  switch i64 %i.ee, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i130
  %i.ej = load i8, ptr %i.ec, align 1
  store i8 %i.ej, ptr %i.ei, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr nonnull align 1 %i.ec, i64 %i.ee, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i130
  %i.ek = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ek, ptr %i.v, align 8
  %i.el = load ptr, ptr %4, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.en = load i64, ptr %i.v, align 8             ; 5 uses
  %i.eo = icmp ugt i64 %i.en, 1023
  %.pre1741 = load ptr, ptr %4, align 8           ; 3 uses
  br i1 %i.eo, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 236
  %i.eq = trunc nuw nsw i64 %i.en to i32
  store i32 %i.eq, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.as, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.er, ptr align 1 %.pre1741, i64 %i.en, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.en
  store i8 0, ptr %i.es, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135: ; preds = %bb.aw, %bb.ax
  %i.et = icmp eq ptr %.pre1741, %i.u
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.eu = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit135
  %i.ev = load i64, ptr %i.u, align 8
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %.pre1741, i64 noundef %i.ew) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ex = load ptr, ptr %2, align 8               ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.q
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ez = load i64, ptr %i.q, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.preheader

bb.ay:                                            ; preds = %.noexc.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

.loopexit542:                                     ; preds = %.noexc.i127
  %lpad.loopexit544 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp543:                            ; preds = %bb.am
  %lpad.loopexit.split-lp545 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp543, %.loopexit542
  %lpad.phi546 = phi { ptr, i32 } [ %lpad.loopexit544, %.loopexit542 ], [ %lpad.loopexit.split-lp545, %.loopexit.split-lp543 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bb

.loopexit547:                                     ; preds = %.noexc.i131
  %lpad.loopexit549 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp548:                            ; preds = %bb.as
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp548, %.loopexit547
  %lpad.phi551 = phi { ptr, i32 } [ %lpad.loopexit549, %.loopexit547 ], [ %lpad.loopexit.split-lp550, %.loopexit.split-lp548 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %lpad.phi551, %bb.ba ], [ %lpad.phi546, %bb.az ] ; 2 uses
  %i.fc = load ptr, ptr %2, align 8               ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.q
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bb
  %i.fe = load i64, ptr %i.q, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ay ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149: ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.w, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.x, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  store i64 11, ptr %i.y, align 8
  store i8 0, ptr %i.ab, align 1
  store i32 11, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.fj, ptr noundef nonnull align 1 dereferenceable(11) %i.fk, i64 11, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 15
  store i8 0, ptr %i.fl, align 1
  %.pre1742 = load ptr, ptr %5, align 8           ; 2 uses
  %i.fm = icmp eq ptr %.pre1742, %i.x
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149
  %i.fn = load i64, ptr %i.x, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %.pre1742, i64 noundef %i.fo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
  %.2 = phi ptr [ %.5, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.1457, %.preheader ] ; 3 uses
  %.sroa.0363.2 = phi ptr [ %.sroa.0363.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.0363.0, %.preheader ] ; 29 uses
  %.sroa.21378.1 = phi ptr [ %.sroa.21378.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.21378.0, %.preheader ] ; 21 uses
  %.sroa.37.2 = phi ptr [ %.sroa.37.3, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.37.0, %.preheader ] ; 26 uses
  %.sroa.0330.2 = phi ptr [ %.sroa.0330.4, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.0330.0, %.preheader ] ; 34 uses
  %.sroa.21343.1 = phi ptr [ %.sroa.21343.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.21343.0, %.preheader ] ; 20 uses
  %.sroa.40.2 = phi ptr [ %.sroa.40.4, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ %.sroa.40.0, %.preheader ] ; 24 uses
  %.059 = phi i32 [ %.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread ], [ 3, %.preheader ] ; 9 uses
  %i.fp = ptrtoaddr ptr %.2 to i64
  %i.fq = sub i64 %i.p, %i.fp
  %scevgep.i.i153 = getelementptr i8, ptr %.2, i64 %i.fq ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.0.i.i154 = phi ptr [ %.2, %bb.bc ], [ %i.fs, %bb.bf ] ; 4 uses
  %i.fr = load i8, ptr %.0.i.i154, align 1        ; 2 uses
  switch i8 %i.fr, label %.loopexit [
    i8 32, label %bb.be
    i8 9, label %bb.be
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd
  %.not.i.i155 = icmp eq ptr %.0.i.i154, %i.h
  br i1 %.not.i.i155, label %thread-pre-split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 1
  br label %bb.bd, !llvm.loop !16

thread-pre-split:                                 ; preds = %bb.be
  %.pr460 = load i8, ptr %scevgep.i.i153, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %thread-pre-split
  %i.ft = phi i8 [ %.pr460, %thread-pre-split ], [ %i.fr, %bb.bd ]
  %.0.lcssa.i.i156 = phi ptr [ %scevgep.i.i153, %thread-pre-split ], [ %.0.i.i154, %bb.bd ] ; 11 uses
  %.not521 = icmp eq i8 %i.ft, 0
  br i1 %.not521, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.loopexit
  %i.fu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fu, ptr noundef nonnull @.str.13)
          to label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.loopexit522:                                     ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227, %bb.cw, %bb.cv, %bb.bs, %bb.br, %bb.bm, %bb.bl
  %.sroa.37.2.lcssa1231 = phi ptr [ %.sroa.21378.1, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227 ], [ %.sroa.37.2, %bb.cw ], [ %.sroa.37.2, %bb.cv ], [ %.sroa.37.2, %bb.bs ], [ %.sroa.37.2, %bb.br ], [ %.sroa.37.2, %bb.bm ], [ %.sroa.37.2, %bb.bl ]
  %lpad.loopexit525 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bg, %bb.bh, %bb.dw, %bb.dx, %bb.ef, %bb.eh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %lpad.loopexit552 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.dh
  %.sroa.37.21243 = phi ptr [ %.sroa.37.2, %.invoke ], [ %.sroa.21378.1, %bb.dh ]
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.bi:                                            ; preds = %.loopexit
  %i.fv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #24
  %.not75 = icmp eq i32 %i.fv, 0
  br i1 %.not75, label %bb.bj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157

bb.bj:                                            ; preds = %bb.bi
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 5
  %i.fx = load i8, ptr %i.fw, align 1
  switch i8 %i.fx, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157 [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
    i8 10, label %bb.bk
    i8 12, label %bb.bk
    i8 13, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj
  %.not77 = icmp eq i32 %.059, 3
  br i1 %.not77, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull @.str.15)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6 ; 3 uses
  %i.ga = ptrtoaddr ptr %i.fz to i64
  %i.gb = sub i64 %i.p, %i.ga
  %scevgep.i.i158 = getelementptr i8, ptr %i.fz, i64 %i.gb
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i159 = phi ptr [ %i.fz, %bb.bn ], [ %i.gd, %bb.bq ] ; 4 uses
  %i.gc = load i8, ptr %.0.i.i159, align 1
  switch i8 %i.gc, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163 [
    i8 32, label %bb.bp
    i8 9, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %.not.i.i160 = icmp eq ptr %.0.i.i159, %i.h
  br i1 %.not.i.i160, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 1
  br label %bb.bo, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163:      ; preds = %bb.bo, %bb.bp
  %.0.lcssa.i.i162 = phi ptr [ %.0.i.i159, %bb.bo ], [ %scevgep.i.i158, %bb.bp ] ; 4 uses
  %i.ge = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i162, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #24
  %.not78 = icmp eq i32 %i.ge, 0
  br i1 %.not78, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.gf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gf, ptr noundef nonnull @.str.17)
          to label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread unwind label %.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 6
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.gj = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.bv

.invoke:                                          ; preds = %bb.ec, %bb.dz, %bb.cz, %bb.bu
  %i.gk = phi ptr [ %i.li, %bb.dz ], [ %i.gj, %bb.bu ], [ %i.je, %bb.cz ], [ %i.ln, %bb.ec ]
  invoke void @__cxa_throw(ptr nonnull %i.gk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gj) #20
  br label %.thread

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %6, align 8
  store float 0.000000e+00, ptr %i.aa, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 7 ; 3 uses
  %i.gn = ptrtoaddr ptr %i.gm to i64
  %i.go = sub i64 %i.p, %i.gn
  %scevgep.i.i164 = getelementptr i8, ptr %i.gm, i64 %i.go
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.0.i.i165 = phi ptr [ %i.gm, %bb.bw ], [ %i.gq, %bb.bz ] ; 4 uses
  %i.gp = load i8, ptr %.0.i.i165, align 1
  switch i8 %i.gp, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 [
    i8 32, label %bb.by
    i8 9, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %.not.i.i166 = icmp eq ptr %.0.i.i165, %i.h
  br i1 %.not.i.i166, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 1
  br label %bb.bx, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169:      ; preds = %bb.bx, %bb.by
  %.0.lcssa.i.i168 = phi ptr [ %.0.i.i165, %bb.bx ], [ %scevgep.i.i164, %bb.by ]
  %i.gr = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i168, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true)
          to label %bb.ca unwind label %.loopexit528 ; 3 uses

bb.ca:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = sub i64 %i.p, %i.gs
  %scevgep.i.i170 = getelementptr i8, ptr %i.gr, i64 %i.gt
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %.0.i.i171 = phi ptr [ %i.gr, %bb.ca ], [ %i.gv, %bb.cd ] ; 4 uses
  %i.gu = load i8, ptr %.0.i.i171, align 1
  switch i8 %i.gu, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.not.i.i172 = icmp eq ptr %.0.i.i171, %i.h
  br i1 %.not.i.i172, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 1
  br label %bb.cb, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175:      ; preds = %bb.cb, %bb.cc
  %.0.lcssa.i.i174 = phi ptr [ %.0.i.i171, %bb.cb ], [ %scevgep.i.i170, %bb.cc ]
  %i.gw = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i174, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true)
          to label %bb.ce unwind label %.loopexit528 ; 3 uses

bb.ce:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175
  %i.gx = ptrtoaddr ptr %i.gw to i64
  %i.gy = sub i64 %i.p, %i.gx
  %scevgep.i.i176 = getelementptr i8, ptr %i.gw, i64 %i.gy
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i177 = phi ptr [ %i.gw, %bb.ce ], [ %i.ha, %bb.ch ] ; 4 uses
  %i.gz = load i8, ptr %.0.i.i177, align 1
  switch i8 %i.gz, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i178 = icmp eq ptr %.0.i.i177, %i.h
  br i1 %.not.i.i178, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.i177, i64 1
  br label %bb.cf, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181:      ; preds = %bb.cf, %bb.cg
  %.0.lcssa.i.i180 = phi ptr [ %.0.i.i177, %bb.cf ], [ %scevgep.i.i176, %bb.cg ]
  %i.hb = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i180, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i1 noundef zeroext true)
          to label %bb.ci unwind label %.loopexit528

bb.ci:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181
  %.not.i182 = icmp eq ptr %.sroa.21343.1, %.sroa.40.2
  br i1 %.not.i182, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21343.1, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.hc = ptrtoint ptr %.sroa.21343.1 to i64
  %i.hd = ptrtoint ptr %.sroa.0330.2 to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 4 uses
  %i.hf = icmp eq i64 %i.he, 9223372036854775800
  br i1 %i.hf, label %bb.cl, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc185 unwind label %.loopexit.split-lp529

.noexc185:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.hg = sdiv exact i64 %i.he, 12                ; 3 uses
  %.sroa.speculated.i.i.i183 = call i64 @llvm.umax.i64(i64 %i.hg, i64 1)
  %i.hh = add nsw i64 %.sroa.speculated.i.i.i183, %i.hg ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hg
  %i.hj = call i64 @llvm.umin.i64(i64 %i.hh, i64 768614336404564650)
  %i.hk = select i1 %i.hi, i64 768614336404564650, i64 %i.hj ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.hl = mul nuw nsw i64 %i.hk, 12
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #22
          to label %.noexc186 unwind label %.loopexit528 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hn, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0330.2, %.sroa.21343.1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i ], [ %i.hm, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i ], [ %.sroa.0330.2, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !41
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ho, %.sroa.21343.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hm, %.noexc186 ], [ %i.hp, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.2, i64 noundef %i.he) #21
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %i.hk
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cj
  %.sroa.0330.9 = phi ptr [ %i.hm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0330.2, %bb.cj ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21343.1, %bb.cj ] ; 3 uses
  %.sroa.40.9 = phi ptr [ %i.hq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.40.2, %bb.cj ] ; 6 uses
  %.sroa.21343.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %.not.i187 = icmp eq ptr %.sroa.21343.5, %.sroa.40.9
  br i1 %.not.i187, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21343.5, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.hs = ptrtoint ptr %.sroa.40.9 to i64
  %i.ht = ptrtoint ptr %.sroa.0330.9 to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 4 uses
  %i.hv = icmp eq i64 %i.hu, 9223372036854775800
  br i1 %i.hv, label %bb.co, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc200 unwind label %.loopexit.split-lp529

.noexc200:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.cn
  %i.hw = sdiv exact i64 %i.hu, 12                ; 3 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.hw, i64 1)
  %i.hx = add nsw i64 %.sroa.speculated.i.i.i189, %i.hw ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hw
  %i.hz = call i64 @llvm.umin.i64(i64 %i.hx, i64 768614336404564650)
  %i.ia = select i1 %i.hy, i64 768614336404564650, i64 %i.hz ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.ia, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.ib = mul nuw nsw i64 %i.ia, 12
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #22
          to label %.noexc201 unwind label %.loopexit528 ; 5 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i191 = icmp eq ptr %.sroa.0330.9, %.sroa.40.9
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.noexc201, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i192 ], [ %i.ic, %.noexc201 ] ; 2 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i192 ], [ %.sroa.0330.9, %.noexc201 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194, i64 12, i1 false), !alias.scope !42
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 12 ; 2 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %.0911.i.i.i.i.i194, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i195, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199: ; preds = %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.ic, %.noexc201 ], [ %i.if, %.lr.ph.i.i.i.i.i192 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.9, i64 noundef %i.hu) #21
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ic, i64 %i.ia
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, %bb.cm
  %.sroa.0330.10 = phi ptr [ %i.ic, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.0330.9, %bb.cm ] ; 7 uses
  %.sroa.21343.6 = phi ptr [ %i.ig, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %i.hr, %bb.cm ] ; 8 uses
  %.sroa.40.10 = phi ptr [ %i.ih, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.40.9, %bb.cm ] ; 2 uses
  %.not.i203 = icmp eq ptr %.sroa.21343.6, %.sroa.40.10
  br i1 %.not.i203, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.21343.6, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

bb.cq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  %i.ii = ptrtoint ptr %.sroa.21343.6 to i64
  %i.ij = ptrtoint ptr %.sroa.0330.10 to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 4 uses
  %i.il = icmp eq i64 %i.ik, 9223372036854775800
  br i1 %i.il, label %bb.cr, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc216 unwind label %.loopexit.split-lp529

.noexc216:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204: ; preds = %bb.cq
  %i.im = sdiv exact i64 %i.ik, 12                ; 3 uses
  %.sroa.speculated.i.i.i205 = call i64 @llvm.umax.i64(i64 %i.im, i64 1)
  %i.in = add nsw i64 %.sroa.speculated.i.i.i205, %i.im ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.im
  %i.ip = call i64 @llvm.umin.i64(i64 %i.in, i64 768614336404564650)
  %i.iq = select i1 %i.io, i64 768614336404564650, i64 %i.ip ; 3 uses
  %.not.i.i.i206 = icmp ne i64 %i.iq, 0
  call void @llvm.assume(i1 %.not.i.i.i206)
  %i.ir = mul nuw nsw i64 %i.iq, 12
  %i.is = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #22
          to label %.noexc217 unwind label %.loopexit528 ; 5 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.it, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i207 = icmp eq ptr %.sroa.0330.10, %.sroa.21343.6
  br i1 %.not10.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208

.lr.ph.i.i.i.i.i208:                              ; preds = %.noexc217, %.lr.ph.i.i.i.i.i208
  %.012.i.i.i.i.i209 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i208 ], [ %i.is, %.noexc217 ] ; 2 uses
  %.0911.i.i.i.i.i210 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i208 ], [ %.sroa.0330.10, %.noexc217 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i209, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i210, i64 12, i1 false), !alias.scope !43
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i210, i64 12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i209, i64 12 ; 2 uses
  %.not.i.i.i.i.i211 = icmp eq ptr %i.iu, %.sroa.21343.6
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215: ; preds = %.lr.ph.i.i.i.i.i208, %.noexc217
  %.0.lcssa.i.i.i.i.i213 = phi ptr [ %i.is, %.noexc217 ], [ %i.iv, %.lr.ph.i.i.i.i.i208 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.10, i64 noundef %i.ik) #21
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.is, i64 %i.iq
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, %bb.cp
  %.sroa.0330.11 = phi ptr [ %i.is, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.0330.10, %bb.cp ]
  %.0.lcssa.i.i.i.i.i213.pn = phi ptr [ %.0.lcssa.i.i.i.i.i213, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.21343.6, %bb.cp ]
  %.sroa.40.11 = phi ptr [ %i.iw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.40.10, %bb.cp ]
  %.sroa.21343.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i213.pn, i64 12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

.loopexit528:                                     ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %.sroa.0330.3.ph = phi ptr [ %.sroa.0330.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.0330.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.0330.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.0330.2, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0330.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.0330.10, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %.sroa.40.3.ph = phi ptr [ %.sroa.40.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.40.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.40.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.21343.1, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.40.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.21343.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %lpad.loopexit532 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp529:                            ; preds = %bb.cl, %bb.co, %bb.cr
  %.sroa.0330.3.ph530 = phi ptr [ %.sroa.0330.10, %bb.cr ], [ %.sroa.0330.9, %bb.co ], [ %.sroa.0330.2, %bb.cl ]
  %.sroa.40.3.ph531 = phi ptr [ %.sroa.21343.6, %bb.cr ], [ %.sroa.40.9, %bb.co ], [ %.sroa.21343.1, %bb.cl ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp529, %.loopexit528
  %.sroa.0330.3 = phi ptr [ %.sroa.0330.3.ph, %.loopexit528 ], [ %.sroa.0330.3.ph530, %.loopexit.split-lp529 ]
  %.sroa.40.3 = phi ptr [ %.sroa.40.3.ph, %.loopexit528 ], [ %.sroa.40.3.ph531, %.loopexit.split-lp529 ]
  %lpad.phi533 = phi { ptr, i32 } [ %lpad.loopexit532, %.loopexit528 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp529 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157:      ; preds = %bb.bj, %bb.bi
  %i.ix = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #24
  %.not79 = icmp eq i32 %i.ix, 0
  br i1 %.not79, label %bb.ct, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219

bb.ct:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6
  %i.iz = load i8, ptr %i.iy, align 1             ; 2 uses
  switch i8 %i.iz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 [
    i8 32, label %bb.cu
    i8 9, label %bb.cu
    i8 13, label %bb.cu
    i8 10, label %bb.cu
    i8 0, label %bb.cu
    i8 12, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  %i.ja = icmp ugt i32 %.059, 2
  br i1 %i.ja, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.jb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jb, ptr noundef nonnull @.str.20)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.cy:                                            ; preds = %bb.cu
  %i.jd = icmp eq i8 %i.iz, 0
  br i1 %i.jd, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.je = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.je) #20
  br label %.thread

bb.db:                                            ; preds = %bb.cy
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 7 ; 3 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64
  %i.ji = sub i64 %i.p, %i.jh
  %scevgep.i.i220 = getelementptr i8, ptr %i.jg, i64 %i.ji
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.db
  %.0.i.i221 = phi ptr [ %i.jg, %bb.db ], [ %i.jk, %bb.de ] ; 4 uses
  %i.jj = load i8, ptr %.0.i.i221, align 1
  switch i8 %i.jj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225 [
    i8 32, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc
  %.not.i.i222 = icmp eq ptr %.0.i.i221, %i.h
  br i1 %.not.i.i222, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i.i221, i64 1
  br label %bb.dc, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225:      ; preds = %bb.dc, %bb.dd
  %.0.lcssa.i.i224 = phi ptr [ %.0.i.i221, %bb.dc ], [ %scevgep.i.i220, %bb.dd ]
  %.not.i226 = icmp eq ptr %.sroa.21378.1, %.sroa.37.2
  br i1 %.not.i226, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  store <2 x float> zeroinitializer, ptr %.sroa.21378.1, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.21378.1, i64 8
  store float 0.000000e+00, ptr %i.jl, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.dg:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  %i.jm = ptrtoint ptr %.sroa.21378.1 to i64
  %i.jn = ptrtoint ptr %.sroa.0363.2 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.dh, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227: ; preds = %bb.dg
  %i.jq = sdiv exact i64 %i.jo, 12                ; 3 uses
  %.sroa.speculated.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i228, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 768614336404564650)
  %i.ju = select i1 %i.js, i64 768614336404564650, i64 %i.jt ; 3 uses
  %.not.i.i.i229 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i229)
  %i.jv = mul nuw nsw i64 %i.ju, 12
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #22
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jo ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store float 0.000000e+00, ptr %i.jy, align 4
  %.not10.i.i.i.i.i230 = icmp eq ptr %.sroa.0363.2, %.sroa.21378.1
  br i1 %.not10.i.i.i.i.i230, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231

.lr.ph.i.i.i.i.i231:                              ; preds = %.noexc237, %.lr.ph.i.i.i.i.i231
  %.012.i.i.i.i.i232 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i231 ], [ %i.jw, %.noexc237 ] ; 2 uses
  %.0911.i.i.i.i.i233 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i231 ], [ %.sroa.0363.2, %.noexc237 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i232, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i233, i64 12, i1 false), !alias.scope !44
  %i.jz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i233, i64 12 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i232, i64 12 ; 2 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.jz, %.sroa.21378.1
  br i1 %.not.i.i.i.i.i234, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i231, %.noexc237
  %.0.lcssa.i.i.i.i.i235 = phi ptr [ %i.jw, %.noexc237 ], [ %i.ka, %.lr.ph.i.i.i.i.i231 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0363.2, i64 noundef %i.jo) #21
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %i.ju
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.df
  %.sroa.0363.8 = phi ptr [ %i.jw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0363.2, %bb.df ] ; 2 uses
  %.0.lcssa.i.i.i.i.i235.pn = phi ptr [ %.0.lcssa.i.i.i.i.i235, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21378.1, %bb.df ] ; 4 uses
  %.sroa.37.8 = phi ptr [ %i.kb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.37.2, %bb.df ] ; 2 uses
  %.sroa.21378.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 12
  %i.kc = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i224, ptr noundef nonnull align 4 dereferenceable(4) %.0.lcssa.i.i.i.i.i235.pn, i1 noundef zeroext true)
          to label %bb.di unwind label %bb.dr     ; 3 uses

bb.di:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.kd = ptrtoaddr ptr %i.kc to i64
  %i.ke = sub i64 %i.p, %i.kd
  %scevgep.i.i238 = getelementptr i8, ptr %i.kc, i64 %i.ke
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %.0.i.i239 = phi ptr [ %i.kc, %bb.di ], [ %i.kg, %bb.dl ] ; 4 uses
  %i.kf = load i8, ptr %.0.i.i239, align 1
  switch i8 %i.kf, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243 [
    i8 32, label %bb.dk
    i8 9, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %.not.i.i240 = icmp eq ptr %.0.i.i239, %i.h
  br i1 %.not.i.i240, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 1
  br label %bb.dj, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243:      ; preds = %bb.dj, %bb.dk
  %.0.lcssa.i.i242 = phi ptr [ %.0.i.i239, %bb.dj ], [ %scevgep.i.i238, %bb.dk ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 4
  %i.ki = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i242, ptr noundef nonnull align 4 dereferenceable(4) %i.kh, i1 noundef zeroext true)
          to label %bb.dm unwind label %bb.dr     ; 3 uses

bb.dm:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243
  %i.kj = ptrtoaddr ptr %i.ki to i64
  %i.kk = sub i64 %i.p, %i.kj
  %scevgep.i.i244 = getelementptr i8, ptr %i.ki, i64 %i.kk
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.0.i.i245 = phi ptr [ %i.ki, %bb.dm ], [ %i.km, %bb.dp ] ; 4 uses
  %i.kl = load i8, ptr %.0.i.i245, align 1
  switch i8 %i.kl, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249 [
    i8 32, label %bb.do
    i8 9, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn
  %.not.i.i246 = icmp eq ptr %.0.i.i245, %i.h
  br i1 %.not.i.i246, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i245, i64 1
  br label %bb.dn, !llvm.loop !1

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249:      ; preds = %bb.dn, %bb.do
  %.0.lcssa.i.i248 = phi ptr [ %.0.i.i245, %bb.dn ], [ %scevgep.i.i244, %bb.do ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 8
  %i.ko = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i248, ptr noundef nonnull align 4 dereferenceable(4) %i.kn, i1 noundef zeroext true)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249
  %i.kp = add nuw nsw i32 %.059, 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.dr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219:      ; preds = %bb.ct, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.kr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #24
  %.not80 = icmp eq i32 %i.kr, 0
  br i1 %.not80, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.3 = phi ptr [ %i.ks, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 5 uses
  %i.kt = load i8, ptr %i.ks, align 1             ; 2 uses
  switch i8 %i.kt, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %bb.ds
    i8 10, label %bb.ds
    i8 0, label %bb.ds
    i8 12, label %bb.ds
  ], !llvm.loop !30

bb.ds:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.ku = ptrtoaddr ptr %i.ks to i64
  %i.kv = sub i64 %i.p, %i.ku
  %scevgep.i.i250 = getelementptr i8, ptr %i.ks, i64 %i.kv
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %bb.ds
  %i.kw = phi i8 [ %i.kt, %bb.ds ], [ %.pre1743, %bb.dv ]
  %.0.i.i251 = phi ptr [ %i.ks, %bb.ds ], [ %i.kx, %bb.dv ] ; 3 uses
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
  %.pre1743 = load i8, ptr %i.kx, align 1
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
  ], !llvm.loop !31

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %bb.dq, %bb.cx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218, %bb.bs
  %.5 = phi ptr [ %i.jc, %bb.cx ], [ %i.ko, %bb.dq ], [ %.0.lcssa.i.i162, %bb.bs ], [ %i.hb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.ky, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0363.3 = phi ptr [ %.sroa.0363.2, %bb.cx ], [ %.sroa.0363.8, %bb.dq ], [ %.sroa.0363.2, %bb.bs ], [ %.sroa.0363.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0363.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.21378.2 = phi ptr [ %.sroa.21378.1, %bb.cx ], [ %.sroa.21378.5, %bb.dq ], [ %.sroa.21378.1, %bb.bs ], [ %.sroa.21378.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21378.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.37.3 = phi ptr [ %.sroa.37.2, %bb.cx ], [ %.sroa.37.8, %bb.dq ], [ %.sroa.37.2, %bb.bs ], [ %.sroa.37.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0330.4 = phi ptr [ %.sroa.0330.2, %bb.cx ], [ %.sroa.0330.2, %bb.dq ], [ %.sroa.0330.2, %bb.bs ], [ %.sroa.0330.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0330.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.21343.2 = phi ptr [ %.sroa.21343.1, %bb.cx ], [ %.sroa.21343.1, %bb.dq ], [ %.sroa.21343.1, %bb.bs ], [ %.sroa.21343.7, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.21343.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.40.4 = phi ptr [ %.sroa.40.2, %bb.cx ], [ %.sroa.40.2, %bb.dq ], [ %.sroa.40.2, %bb.bs ], [ %.sroa.40.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.40.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.1 = phi i32 [ 3, %bb.cx ], [ %i.kp, %bb.dq ], [ 0, %bb.bs ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.059, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  br label %bb.bc, !llvm.loop !32

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254: ; preds = %bb.du, %bb.dt, %bb.bh
  %.6 = phi ptr [ %.0.lcssa.i.i156, %bb.bh ], [ %scevgep.i.i250, %bb.du ], [ %.0.i.i251, %bb.dt ]
  %i.la = icmp eq ptr %.sroa.0363.2, %.sroa.21378.1 ; 2 uses
  br i1 %i.la, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  store i32 0, ptr %i.au, align 8
  %i.lb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.lb, ptr noundef nonnull @.str.22)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dy:                                            ; preds = %bb.dx, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  %i.lc = ptrtoint ptr %.sroa.21378.1 to i64
  %i.ld = ptrtoint ptr %.sroa.0363.2 to i64
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
  %i.lk = ptrtoint ptr %.sroa.21343.1 to i64
  %i.ll = ptrtoint ptr %.sroa.0330.2 to i64
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
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  %i.lu = icmp eq i32 %i.lq, 0
  br i1 %i.lu, label %.loopexit524, label %.loopexit524.loopexit

.loopexit524.loopexit:                            ; preds = %bb.eg
  %i.lv = add nsw i64 %i.ls, -12                  ; 2 uses
  %i.lw = urem i64 %i.lv, 12
  %i.lx = sub nuw nsw i64 %i.lv, %i.lw
  %i.ly = add nsw i64 %i.lx, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lt, i8 0, i64 %i.ly, i1 false)
  br label %.loopexit524

.loopexit524:                                     ; preds = %.loopexit524.loopexit, %bb.eg
  store ptr %i.lt, ptr %i.av, align 8
  %i.lz = load i32, ptr %i.at, align 4
  %.not1176 = icmp eq i32 %i.lz, 0
  br i1 %.not1176, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit524, %.lr.ph
  %.0581165 = phi i64 [ %i.mo, %.lr.ph ], [ 0, %.loopexit524 ] ; 5 uses
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0363.2, i64 %.0581165 ; 3 uses
  %i.mb = load float, ptr %i.ma, align 4
  %i.mc = load ptr, ptr %i.av, align 8
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mc, i64 %.0581165
  store float %i.mb, ptr %i.md, align 4
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mf = load float, ptr %i.me, align 4
  %i.mg = load ptr, ptr %i.av, align 8
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.mg, i64 %.0581165
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store float %i.mf, ptr %i.mi, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mk = load float, ptr %i.mj, align 4
  %i.ml = load ptr, ptr %i.av, align 8
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.ml, i64 %.0581165
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store float %i.mk, ptr %i.mn, align 4
  %i.mo = add nuw nsw i64 %.0581165, 1            ; 2 uses
  %i.mp = load i32, ptr %i.at, align 4
  %i.mq = zext i32 %i.mp to i64
  %i.mr = icmp samesign ult i64 %i.mo, %i.mq
  br i1 %i.mr, label %.lr.ph, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit, !llvm.loop !33

_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit: ; preds = %.lr.ph, %.loopexit524, %bb.ee
  %.sroa.21378.3 = phi ptr [ %.sroa.21378.1, %bb.ee ], [ %.sroa.0363.2, %.loopexit524 ], [ %.sroa.0363.2, %.lr.ph ]
  %i.ms = icmp eq ptr %.sroa.0330.2, %.sroa.21343.1
  br i1 %i.ms, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit
  %i.mt = load i32, ptr %i.at, align 4            ; 2 uses
  %i.mu = zext i32 %i.mt to i64
  %i.mv = mul nuw nsw i64 %i.mu, 12               ; 2 uses
  %i.mw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.mx = icmp eq i32 %i.mt, 0
  br i1 %i.mx, label %.loopexit523, label %.loopexit523.loopexit

.loopexit523.loopexit:                            ; preds = %bb.ei
  %i.my = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.mz = urem i64 %i.my, 12
  %i.na = sub nuw nsw i64 %i.my, %i.mz
  %i.nb = add nsw i64 %i.na, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mw, i8 0, i64 %i.nb, i1 false)
  br label %.loopexit523

.loopexit523:                                     ; preds = %.loopexit523.loopexit, %bb.ei
  %i.nc = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 4 uses
  store ptr %i.mw, ptr %i.nc, align 8
  %i.nd = load i32, ptr %i.at, align 4
  %.not1177 = icmp eq i32 %i.nd, 0
  br i1 %.not1177, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, label %.lr.ph1167

.lr.ph1167:                                       ; preds = %.loopexit523, %.lr.ph1167
  %.0571166 = phi i64 [ %i.ns, %.lr.ph1167 ], [ 0, %.loopexit523 ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0330.2, i64 %.0571166 ; 3 uses
  %i.nf = load float, ptr %i.ne, align 4
  %i.ng = load ptr, ptr %i.nc, align 8
  %i.nh = getelementptr inbounds nuw [12 x i8], ptr %i.ng, i64 %.0571166
  store float %i.nf, ptr %i.nh, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nj = load float, ptr %i.ni, align 4
  %i.nk = load ptr, ptr %i.nc, align 8
  %i.nl = getelementptr inbounds nuw [12 x i8], ptr %i.nk, i64 %.0571166
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  store float %i.nj, ptr %i.nm, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.no = load float, ptr %i.nn, align 4
  %i.np = load ptr, ptr %i.nc, align 8
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %i.np, i64 %.0571166
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store float %i.no, ptr %i.nr, align 4
  %i.ns = add nuw nsw i64 %.0571166, 1            ; 2 uses
  %i.nt = load i32, ptr %i.at, align 4
  %i.nu = zext i32 %i.nt to i64
  %i.nv = icmp samesign ult i64 %i.ns, %i.nu
  br i1 %i.nv, label %.lr.ph1167, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259, !llvm.loop !34

_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259: ; preds = %.lr.ph1167, %.loopexit523, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit
  %.sroa.21343.3 = phi ptr [ %.sroa.21343.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit ], [ %.sroa.0330.2, %.loopexit523 ], [ %.sroa.0330.2, %.lr.ph1167 ]
  %i.nw = load i32, ptr %i.au, align 8            ; 2 uses
  %i.nx = zext i32 %i.nw to i64                   ; 5 uses
  %i.ny = shl nuw nsw i64 %i.nx, 4
  %i.nz = or disjoint i64 %i.ny, 8
  %i.oa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nz) #22
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc261:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit259
  store i64 %i.nx, ptr %i.oa, align 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 4 uses
  %i.oc = icmp eq i32 %i.nw, 0
  br i1 %i.oc, label %.loopexit.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc261
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %i.nx
  %i.oe = add nuw nsw i64 %i.nx, 1152921504606846975
  %i.of = and i64 %i.oe, 1152921504606846975
  %xtraiter = and i64 %i.nx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ej, %.prol.preheader
  %i.og = phi ptr [ %i.oi, %.prol.preheader ], [ %i.ob, %bb.ej ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ej ]
  store i32 0, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store ptr null, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !35

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ej
  %.unr = phi ptr [ %i.ob, %bb.ej ], [ %i.oi, %.prol.preheader ]
  %i.oj = icmp samesign ult i64 %i.of, 7
  br i1 %i.oj, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ok = phi ptr [ %i.pa, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ok, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store ptr null, ptr %i.ol, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store i32 0, ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  store ptr null, ptr %i.on, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  store i32 0, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  store ptr null, ptr %i.op, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  store i32 0, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 56
  store ptr null, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store i32 0, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 72
  store ptr null, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 80
  store i32 0, ptr %i.ou, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 88
  store ptr null, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 96
  store i32 0, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ok, i64 104
  store ptr null, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 112
  store i32 0, ptr %i.oy, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ok, i64 120
  store ptr null, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ok, i64 128 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.od
  br i1 %i.pb, label %.loopexit.i, label %.new

.loopexit.i:                                      ; preds = %.prol.loopexit, %.new, %.noexc261
  %i.pc = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 2 uses
  store ptr %i.ob, ptr %i.pc, align 8
  %i.pd = load i32, ptr %i.au, align 8
  %.not.i260 = icmp eq i32 %i.pd, 0
  br i1 %.not.i260, label %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.noexc262
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc262 ], [ 0, %.loopexit.i ] ; 2 uses
  %.01420.i = phi i32 [ %i.po, %.noexc262 ], [ 0, %.loopexit.i ] ; 4 uses
  %i.pe = load ptr, ptr %i.pc, align 8
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv.i ; 2 uses
  store i32 3, ptr %i.pf, align 8
  %i.pg = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #22
          to label %.noexc262 unwind label %.loopexit522 ; 2 uses

.noexc262:                                        ; preds = %.lr.ph.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 3 uses
  store ptr %i.pg, ptr %i.ph, align 8
  store i32 %.01420.i, ptr %i.pg, align 4
  %i.pi = add i32 %.01420.i, 1
  %i.pj = load ptr, ptr %i.ph, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i32 %i.pi, ptr %i.pk, align 4
  %i.pl = add i32 %.01420.i, 2
  %i.pm = load ptr, ptr %i.ph, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store i32 %i.pl, ptr %i.pn, align 4
  %i.po = add i32 %.01420.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.pp = load i32, ptr %i.au, align 8
  %i.pq = zext i32 %i.pp to i64
  %i.pr = icmp samesign ult i64 %indvars.iv.next.i, %i.pq
  br i1 %i.pr, label %.lr.ph.i, label %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit, !llvm.loop !0

_ZN6Assimp14addFacesToMeshEP6aiMesh.exit:         ; preds = %.noexc262, %.loopexit.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.br, i64 1120
  store i32 1, ptr %i.ps, align 8
  %i.pt = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #22
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc265:                                        ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.pu = getelementptr inbounds nuw i8, ptr %i.br, i64 1128
  store ptr %i.pt, ptr %i.pu, align 8
  %i.pv = load i32, ptr %i.bd, align 4
  store i32 %i.pv, ptr %i.pt, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 4) #21
  br label %bb.a, !llvm.loop !36

.thread514.loopexit:                              ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread514.loopexit.split-lp:                     ; preds = %bb.j
  %lpad.loopexit.split-lp535 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ek:                                            ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit268

.thread:                                          ; preds = %.thread514.loopexit, %.thread514.loopexit.split-lp, %.loopexit522, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit537, %.loopexit.split-lp538, %bb.ab, %bb.ag, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ed, %bb.ea, %bb.dr, %bb.da, %bb.cs, %bb.bv
  %.pn85.pn.pn.pn498 = phi { ptr, i32 } [ %lpad.loopexit.split-lp553, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi533, %bb.cs ], [ %i.gl, %bb.bv ], [ %i.kq, %bb.dr ], [ %i.jf, %bb.da ], [ %i.lo, %bb.ed ], [ %i.lj, %bb.ea ], [ %lpad.loopexit.split-lp540, %.loopexit.split-lp538 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.cs, %bb.ab ], [ %i.cy, %bb.ag ], [ %i.cz, %bb.ah ], [ %lpad.loopexit539, %.loopexit537 ], [ %lpad.loopexit, %.loopexit522 ], [ %lpad.loopexit525, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit552, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit534, %.thread514.loopexit ], [ %lpad.loopexit.split-lp535, %.thread514.loopexit.split-lp ]
  %.sroa.0441.2496 = phi ptr [ %.sroa.0441.4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0441.4, %bb.cs ], [ %.sroa.0441.4, %bb.bv ], [ %.sroa.0441.4, %bb.dr ], [ %.sroa.0441.4, %bb.da ], [ %.sroa.0441.4, %bb.ed ], [ %.sroa.0441.4, %bb.ea ], [ %.sroa.0441.4, %.loopexit.split-lp538 ], [ %.sroa.0441.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.0441.4, %bb.ab ], [ %.sroa.0441.4, %bb.ag ], [ %.sroa.0441.4, %bb.ah ], [ %.sroa.0441.4, %.loopexit537 ], [ %.sroa.0441.4, %.loopexit522 ], [ %.sroa.0441.4, %.loopexit.split-lp.loopexit ], [ %.sroa.0441.4, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0441.0, %.thread514.loopexit ], [ %.sroa.0441.0, %.thread514.loopexit.split-lp ]
  %.sroa.19.2494 = phi ptr [ %.sroa.19.4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.19.4, %bb.cs ], [ %.sroa.19.4, %bb.bv ], [ %.sroa.19.4, %bb.dr ], [ %.sroa.19.4, %bb.da ], [ %.sroa.19.4, %bb.ed ], [ %.sroa.19.4, %bb.ea ], [ %.sroa.19.4, %.loopexit.split-lp538 ], [ %.sroa.19.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.19.4, %bb.ab ], [ %.sroa.19.4, %bb.ag ], [ %.sroa.19.4, %bb.ah ], [ %.sroa.19.4, %.loopexit537 ], [ %.sroa.19.4, %.loopexit522 ], [ %.sroa.19.4, %.loopexit.split-lp.loopexit ], [ %.sroa.19.4, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.19.0, %.thread514.loopexit ], [ %.sroa.19.0, %.thread514.loopexit.split-lp ]
  %.sroa.0429.3492 = phi ptr [ %.sroa.0429.5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0429.5, %bb.cs ], [ %.sroa.0429.5, %bb.bv ], [ %.sroa.0429.5, %bb.dr ], [ %.sroa.0429.5, %bb.da ], [ %.sroa.0429.5, %bb.ed ], [ %.sroa.0429.5, %bb.ea ], [ %.sroa.0429.0, %.loopexit.split-lp538 ], [ %.sroa.0429.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.0429.0, %bb.ab ], [ %.sroa.0429.5, %bb.ag ], [ %.sroa.0429.5, %bb.ah ], [ %.sroa.0429.0, %.loopexit537 ], [ %.sroa.0429.5, %.loopexit522 ], [ %.sroa.0429.5, %.loopexit.split-lp.loopexit ], [ %.sroa.0429.5, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0429.0, %.thread514.loopexit ], [ %.sroa.0429.0, %.thread514.loopexit.split-lp ]
  %.sroa.17.3488 = phi ptr [ %.sroa.17.5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.17.5, %bb.cs ], [ %.sroa.17.5, %bb.bv ], [ %.sroa.17.5, %bb.dr ], [ %.sroa.17.5, %bb.da ], [ %.sroa.17.5, %bb.ed ], [ %.sroa.17.5, %bb.ea ], [ %.sroa.17.0, %.loopexit.split-lp538 ], [ %.sroa.17.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.17.0, %bb.ab ], [ %.sroa.17.5, %bb.ag ], [ %.sroa.17.5, %bb.ah ], [ %.sroa.17.0, %.loopexit537 ], [ %.sroa.17.5, %.loopexit522 ], [ %.sroa.17.5, %.loopexit.split-lp.loopexit ], [ %.sroa.17.5, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.17.0, %.thread514.loopexit ], [ %.sroa.17.0, %.thread514.loopexit.split-lp ]
  %.sroa.40.6486 = phi ptr [ %.sroa.40.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.40.3, %bb.cs ], [ %.sroa.40.2, %bb.bv ], [ %.sroa.40.2, %bb.dr ], [ %.sroa.40.2, %bb.da ], [ %.sroa.40.2, %bb.ed ], [ %.sroa.40.2, %bb.ea ], [ %.sroa.40.0, %.loopexit.split-lp538 ], [ %.sroa.40.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.40.0, %bb.ab ], [ %.sroa.40.0, %bb.ag ], [ %.sroa.40.0, %bb.ah ], [ %.sroa.40.0, %.loopexit537 ], [ %.sroa.40.2, %.loopexit522 ], [ %.sroa.40.2, %.loopexit.split-lp.loopexit ], [ %.sroa.40.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.40.0, %.thread514.loopexit ], [ %.sroa.40.0, %.thread514.loopexit.split-lp ]
  %.sroa.0330.6484 = phi ptr [ %.sroa.0330.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0330.3, %bb.cs ], [ %.sroa.0330.2, %bb.bv ], [ %.sroa.0330.2, %bb.dr ], [ %.sroa.0330.2, %bb.da ], [ %.sroa.0330.2, %bb.ed ], [ %.sroa.0330.2, %bb.ea ], [ %.sroa.0330.0, %.loopexit.split-lp538 ], [ %.sroa.0330.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.0330.0, %bb.ab ], [ %.sroa.0330.0, %bb.ag ], [ %.sroa.0330.0, %bb.ah ], [ %.sroa.0330.0, %.loopexit537 ], [ %.sroa.0330.2, %.loopexit522 ], [ %.sroa.0330.2, %.loopexit.split-lp.loopexit ], [ %.sroa.0330.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0330.0, %.thread514.loopexit ], [ %.sroa.0330.0, %.thread514.loopexit.split-lp ]
  %.sroa.37.5482 = phi ptr [ %.sroa.37.21243, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.37.2, %bb.cs ], [ %.sroa.37.2, %bb.bv ], [ %.sroa.37.8, %bb.dr ], [ %.sroa.37.2, %bb.da ], [ %.sroa.37.2, %bb.ed ], [ %.sroa.37.2, %bb.ea ], [ %.sroa.37.0, %.loopexit.split-lp538 ], [ %.sroa.37.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.37.0, %bb.ab ], [ %.sroa.37.0, %bb.ag ], [ %.sroa.37.0, %bb.ah ], [ %.sroa.37.0, %.loopexit537 ], [ %.sroa.37.2, %.loopexit522 ], [ %.sroa.37.2.lcssa1231, %.loopexit.split-lp.loopexit ], [ %.sroa.37.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.37.0, %.thread514.loopexit ], [ %.sroa.37.0, %.thread514.loopexit.split-lp ]
  %.sroa.0363.5480 = phi ptr [ %.sroa.0363.2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0363.2, %bb.cs ], [ %.sroa.0363.2, %bb.bv ], [ %.sroa.0363.8, %bb.dr ], [ %.sroa.0363.2, %bb.da ], [ %.sroa.0363.2, %bb.ed ], [ %.sroa.0363.2, %bb.ea ], [ %.sroa.0363.0, %.loopexit.split-lp538 ], [ %.sroa.0363.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.sroa.0363.0, %bb.ab ], [ %.sroa.0363.0, %bb.ag ], [ %.sroa.0363.0, %bb.ah ], [ %.sroa.0363.0, %.loopexit537 ], [ %.sroa.0363.2, %.loopexit522 ], [ %.sroa.0363.2, %.loopexit.split-lp.loopexit ], [ %.sroa.0363.2, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0363.0, %.thread514.loopexit ], [ %.sroa.0363.0, %.thread514.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 4) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit268

_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread: ; preds = %bb.e, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit
  %i.pw = ptrtoint ptr %.sroa.12448.0 to i64
  %i.px = ptrtoint ptr %.sroa.0441.0 to i64       ; 2 uses
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 3                 ; 4 uses
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = load ptr, ptr %i.w, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store i32 %i.qa, ptr %i.qc, align 8
  %i.qd = load ptr, ptr %i.w, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load i32, ptr %i.qe, align 8
  %i.qg = zext i32 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 3
  %i.qi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qh) #22
          to label %bb.el unwind label %bb.aa

bb.el:                                            ; preds = %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  %i.qj = load ptr, ptr %i.w, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store ptr %i.qi, ptr %i.qk, align 8
  %.not1174 = icmp eq ptr %.sroa.12448.0, %.sroa.0441.0
  br i1 %.not1174, label %._crit_edge, label %.lr.ph1169.preheader

.lr.ph1169.preheader:                             ; preds = %bb.el
  %xtraiter3455 = and i64 %i.pz, 3                ; 3 uses
  %i.ql = icmp ult i64 %i.pz, 4
  br i1 %i.ql, label %.lr.ph1169.epil.preheader, label %.lr.ph1169.preheader.new

.lr.ph1169.preheader.new:                         ; preds = %.lr.ph1169.preheader
  %unroll_iter = and i64 %i.pz, -4
  br label %.lr.ph1169

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1169
  %lcmp.mod3456.not = icmp eq i64 %xtraiter3455, 0
  br i1 %lcmp.mod3456.not, label %._crit_edge, label %.lr.ph1169.epil.preheader

.lr.ph1169.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1169.preheader
  %.0561168.epil.init = phi i64 [ 0, %.lr.ph1169.preheader ], [ %i.sc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod3457 = icmp ne i64 %xtraiter3455, 0
  call void @llvm.assume(i1 %lcmp.mod3457)
  br label %.lr.ph1169.epil

.lr.ph1169.epil:                                  ; preds = %.lr.ph1169.epil, %.lr.ph1169.epil.preheader
  %.0561168.epil = phi i64 [ %i.qs, %.lr.ph1169.epil ], [ %.0561168.epil.init, %.lr.ph1169.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1169.epil ], [ 0, %.lr.ph1169.epil.preheader ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0441.0, i64 %.0561168.epil
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = load ptr, ptr %i.w, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %.0561168.epil
  store ptr %i.qn, ptr %i.qr, align 8
  %i.qs = add nuw i64 %.0561168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3455
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph1169.epil, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1169.epil, %bb.el
  %i.qt = ptrtoint ptr %.sroa.11.0 to i64
  %i.qu = ptrtoint ptr %.sroa.0429.0 to i64       ; 2 uses
  %i.qv = sub i64 %i.qt, %i.qu                    ; 2 uses
  %i.qw = ashr exact i64 %i.qv, 3                 ; 4 uses
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 1104
  store i32 %i.qx, ptr %i.qy, align 8
  %i.qz = and i64 %i.qv, 34359738360
  %i.ra = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qz) #22
          to label %bb.em unwind label %bb.aa

.lr.ph1169:                                       ; preds = %.lr.ph1169, %.lr.ph1169.preheader.new
  %.0561168 = phi i64 [ 0, %.lr.ph1169.preheader.new ], [ %i.sc, %.lr.ph1169 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1169.preheader.new ], [ %niter.next.3, %.lr.ph1169 ]
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0441.0, i64 %.0561168
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = load ptr, ptr %i.w, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %.0561168
  store ptr %i.rc, ptr %i.rg, align 8
  %i.rh = or disjoint i64 %.0561168, 1            ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0441.0, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = load ptr, ptr %i.w, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rh
  store ptr %i.rj, ptr %i.rn, align 8
  %i.ro = or disjoint i64 %.0561168, 2            ; 2 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0441.0, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = load ptr, ptr %i.w, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.ro
  store ptr %i.rq, ptr %i.ru, align 8
  %i.rv = or disjoint i64 %.0561168, 3            ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0441.0, i64 %i.rv
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = load ptr, ptr %i.w, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.rv
  store ptr %i.rx, ptr %i.sb, align 8
  %i.sc = add nuw i64 %.0561168, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1169, !llvm.loop !38

bb.em:                                            ; preds = %._crit_edge
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 6 uses
  store ptr %i.ra, ptr %i.sd, align 8
  %.not1175 = icmp eq ptr %.sroa.11.0, %.sroa.0429.0
  br i1 %.not1175, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271, label %.lr.ph1172.preheader

.lr.ph1172.preheader:                             ; preds = %bb.em
  %xtraiter3458 = and i64 %i.qw, 3                ; 3 uses
  %i.se = icmp ult i64 %i.qw, 4
  br i1 %i.se, label %.lr.ph1172.epil.preheader, label %.lr.ph1172.preheader.new

.lr.ph1172.preheader.new:                         ; preds = %.lr.ph1172.preheader
  %unroll_iter3462 = and i64 %i.qw, -4
  br label %.lr.ph1172

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271.loopexit.unr-lcssa: ; preds = %.lr.ph1172
  %lcmp.mod3460.not = icmp eq i64 %xtraiter3458, 0
  br i1 %lcmp.mod3460.not, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271, label %.lr.ph1172.epil.preheader

.lr.ph1172.epil.preheader:                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271.loopexit.unr-lcssa, %.lr.ph1172.preheader
  %.01170.epil.init = phi i64 [ 0, %.lr.ph1172.preheader ], [ %i.tn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271.loopexit.unr-lcssa ]
  %lcmp.mod3461 = icmp ne i64 %xtraiter3458, 0
  call void @llvm.assume(i1 %lcmp.mod3461)
  br label %.lr.ph1172.epil

.lr.ph1172.epil:                                  ; preds = %.lr.ph1172.epil, %.lr.ph1172.epil.preheader
  %.01170.epil = phi i64 [ %i.sj, %.lr.ph1172.epil ], [ %.01170.epil.init, %.lr.ph1172.epil.preheader ] ; 3 uses
  %epil.iter3459 = phi i64 [ %epil.iter3459.next, %.lr.ph1172.epil ], [ 0, %.lr.ph1172.epil.preheader ]
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0429.0, i64 %.01170.epil
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = load ptr, ptr %i.sd, align 8
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %.01170.epil
  store ptr %i.sg, ptr %i.si, align 8
  %i.sj = add nuw i64 %.01170.epil, 1
  %epil.iter3459.next = add i64 %epil.iter3459, 1 ; 2 uses
  %epil.iter3459.cmp.not = icmp eq i64 %epil.iter3459.next, %xtraiter3458
  br i1 %epil.iter3459.cmp.not, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271, label %.lr.ph1172.epil, !llvm.loop !39

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271.loopexit.unr-lcssa, %.lr.ph1172.epil, %bb.em
  %i.sk = ptrtoint ptr %.sroa.40.0 to i64
  %i.sl = ptrtoint ptr %.sroa.0330.0 to i64
  %i.sm = sub i64 %i.sk, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.0, i64 noundef %i.sm) #21
  %i.sn = ptrtoint ptr %.sroa.37.0 to i64
  %i.so = ptrtoint ptr %.sroa.0363.0 to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0363.0, i64 noundef %i.sp) #21
  %.not.i.i.i272 = icmp eq ptr %.sroa.0429.0, null
  br i1 %.not.i.i.i272, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271
  %i.sq = ptrtoint ptr %.sroa.17.0 to i64
  %i.sr = sub i64 %i.sq, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0429.0, i64 noundef %i.sr) #21
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271, %bb.en
  %.not.i.i.i273 = icmp eq ptr %.sroa.0441.0, null
  br i1 %.not.i.i.i273, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.ss = ptrtoint ptr %.sroa.19.0 to i64
  %i.st = sub i64 %i.ss, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0441.0, i64 noundef %i.st) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %bb.eo
  ret void

.lr.ph1172:                                       ; preds = %.lr.ph1172, %.lr.ph1172.preheader.new
  %.01170 = phi i64 [ 0, %.lr.ph1172.preheader.new ], [ %i.tn, %.lr.ph1172 ] ; 6 uses
  %niter3463 = phi i64 [ 0, %.lr.ph1172.preheader.new ], [ %niter3463.next.3, %.lr.ph1172 ]
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0429.0, i64 %.01170
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = load ptr, ptr %i.sd, align 8
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %.01170
  store ptr %i.sv, ptr %i.sx, align 8
  %i.sy = or disjoint i64 %.01170, 1              ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0429.0, i64 %i.sy
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = load ptr, ptr %i.sd, align 8
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.sy
  store ptr %i.ta, ptr %i.tc, align 8
  %i.td = or disjoint i64 %.01170, 2              ; 2 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0429.0, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = load ptr, ptr %i.sd, align 8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.td
  store ptr %i.tf, ptr %i.th, align 8
  %i.ti = or disjoint i64 %.01170, 3              ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0429.0, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = load ptr, ptr %i.sd, align 8
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.ti
  store ptr %i.tk, ptr %i.tm, align 8
  %i.tn = add nuw i64 %.01170, 4                  ; 2 uses
  %niter3463.next.3 = add i64 %niter3463, 4       ; 2 uses
  %niter3463.ncmp.3 = icmp eq i64 %niter3463.next.3, %unroll_iter3462
  br i1 %niter3463.ncmp.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit271.loopexit.unr-lcssa, label %.lr.ph1172, !llvm.loop !40

_ZNSt6vectorIjSaIjEED2Ev.exit268:                 ; preds = %.thread, %.thread500, %bb.ek, %bb.aa
  %.sroa.0363.6 = phi ptr [ %.sroa.0363.1, %bb.aa ], [ %.sroa.0363.0, %bb.ek ], [ %.sroa.0363.5480, %.thread ], [ %.sroa.0363.0, %.thread500 ] ; 3 uses
  %.sroa.37.6 = phi ptr [ %.sroa.37.1, %bb.aa ], [ %.sroa.37.0, %bb.ek ], [ %.sroa.37.5482, %.thread ], [ %.sroa.37.0, %.thread500 ]
  %.sroa.0330.7 = phi ptr [ %.sroa.0330.1, %bb.aa ], [ %.sroa.0330.0, %bb.ek ], [ %.sroa.0330.6484, %.thread ], [ %.sroa.0330.0, %.thread500 ] ; 3 uses
  %.sroa.40.7 = phi ptr [ %.sroa.40.1, %bb.aa ], [ %.sroa.40.0, %bb.ek ], [ %.sroa.40.6486, %.thread ], [ %.sroa.40.0, %.thread500 ]
  %.sroa.17.4 = phi ptr [ %.sroa.17.1, %bb.aa ], [ %.sroa.17.0, %bb.ek ], [ %.sroa.17.3488, %.thread ], [ %.sroa.17.0, %.thread500 ]
  %.sroa.0429.4 = phi ptr [ %.sroa.0429.1, %bb.aa ], [ %.sroa.0429.0, %bb.ek ], [ %.sroa.0429.3492, %.thread ], [ %.sroa.0429.0, %.thread500 ] ; 3 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.1, %bb.aa ], [ %.sroa.19.0, %bb.ek ], [ %.sroa.19.2494, %.thread ], [ %.sroa.19.0, %.thread500 ]
  %.sroa.0441.3 = phi ptr [ %.sroa.0441.1, %bb.aa ], [ %.sroa.0441.0, %bb.ek ], [ %.sroa.0441.2496, %.thread ], [ %.sroa.0441.0, %.thread500 ] ; 3 uses
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %lpad.thr_comm.split-lp, %bb.ek ], [ %.pn85.pn.pn.pn498, %.thread ], [ %i.cr, %.thread500 ]
  %.not.i.i.i274 = icmp eq ptr %.sroa.0330.7, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit275, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit268
  %i.to = ptrtoint ptr %.sroa.40.7 to i64
  %i.tp = ptrtoint ptr %.sroa.0330.7 to i64
  %i.tq = sub i64 %i.to, %i.tp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0330.7, i64 noundef %i.tq) #21
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit275

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit275: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit268, %bb.ep
  %.not.i.i.i276 = icmp eq ptr %.sroa.0363.6, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit277, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit275
  %i.tr = ptrtoint ptr %.sroa.37.6 to i64
  %i.ts = ptrtoint ptr %.sroa.0363.6 to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0363.6, i64 noundef %i.tt) #21
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit277

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit277: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit275, %bb.eq
  %.not.i.i.i278 = icmp eq ptr %.sroa.0429.4, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit279, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit277
  %i.tu = ptrtoint ptr %.sroa.17.4 to i64
  %i.tv = ptrtoint ptr %.sroa.0429.4 to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0429.4, i64 noundef %i.tw) #21
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit279

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit279:        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit277, %bb.er
  %.not.i.i.i280 = icmp eq ptr %.sroa.0441.3, null
  br i1 %.not.i.i.i280, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit281, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit279
  %i.tx = ptrtoint ptr %.sroa.19.3 to i64
  %i.ty = ptrtoint ptr %.sroa.0441.3 to i64
  %i.tz = sub i64 %i.tx, %i.ty
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0441.3, i64 noundef %i.tz) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit281

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit281:        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit279, %bb.es
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn

bb.et:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA52_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.o
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load i8, ptr %0, align 1                 ; 3 uses
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %.pre = load i8, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 8 uses
  %i.g = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]   ; 10 uses
  switch i8 %i.f, label %bb.j [
    i8 78, label %bb.d
    i8 110, label %bb.d
    i8 73, label %bb.g
    i8 105, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
end_hunk_1
begin_hunk_2_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.025 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.025, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.025, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.x) #20
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56 = phi { ptr, i32 } [ %.pn57, %bb.p ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn56

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %.not = icmp eq i8 %i.f, 46
  %.not43 = icmp eq i8 %i.f, 44
  %or.cond47 = and i1 %2, %.not43
  %or.cond51 = or i1 %.not, %or.cond47
  br i1 %or.cond51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ah = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef null)
  %i.ai = uitofp i64 %i.ah to float
  %.pre59 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.pre60 = load i8, ptr %.pre59, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.aj = phi i8 [ %.pre60, %bb.r ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.ak = phi ptr [ %.pre59, %bb.r ], [ %i.g, %._crit_edge ] ; 3 uses
  %.028 = phi float [ %i.ai, %bb.r ], [ 0.000000e+00, %._crit_edge ] ; 4 uses
  %i.al = icmp eq i8 %i.aj, 46                    ; 2 uses
  %i.am = icmp eq i8 %i.aj, 44
  %or.cond48 = and i1 %2, %i.am
  %or.cond52 = or i1 %i.al, %or.cond48
  br i1 %or.cond52, label %bb.t, label %.thread58

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond49 = icmp ult i8 %i.ap, 10
  br i1 %or.cond49, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.an, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 15, ptr %i.b, align 4
  %i.aq = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ar = uitofp i64 %i.aq to double
  %i.as = load i32, ptr %i.b, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN6AssimpL15fast_atof_tableE, i64 %i.at
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fmul double %i.av, %i.ar
  %i.ax = fptrunc double %i.aw to float
  %i.ay = fadd float %.028, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.pre61 = load ptr, ptr %i.a, align 8
  br label %.thread58

bb.v:                                             ; preds = %bb.t
  br i1 %i.al, label %bb.w, label %.thread58

bb.w:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.a, align 8
  br label %.thread58

.thread58:                                        ; preds = %bb.s, %bb.v, %bb.w, %bb.u
  %i.az = phi ptr [ %.pre61, %bb.u ], [ %i.an, %bb.w ], [ %i.ak, %bb.v ], [ %i.ak, %bb.s ] ; 4 uses
  %.129 = phi float [ %i.ay, %bb.u ], [ %.028, %bb.w ], [ %.028, %bb.v ], [ %.028, %bb.s ] ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  switch i8 %i.ba, label %bb.aa [
    i8 101, label %bb.x
    i8 69, label %bb.x
  ]

bb.x:                                             ; preds = %.thread58, %.thread58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 45
  switch i8 %i.bc, label %bb.z [
    i8 45, label %bb.y
    i8 43, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bf = phi ptr [ %i.bb, %bb.x ], [ %i.be, %bb.y ]
  %i.bg = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef null)
  %i.bh = uitofp i64 %i.bg to float               ; 2 uses
  %i.bi = fneg float %i.bh
  %.0 = select i1 %i.bd, float %i.bi, float %i.bh
  %i.bj = call noundef float @powf(float noundef 1.000000e+01, float noundef %.0) #20
  %i.bk = fmul float %.129, %i.bj
  %.pre62 = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread58, %bb.z
  %i.bl = phi ptr [ %.pre62, %bb.z ], [ %i.az, %.thread58 ]
  %.2 = phi float [ %i.bk, %bb.z ], [ %.129, %.thread58 ] ; 2 uses
  %i.bm = fneg float %.2
  %.3 = select i1 %i.d, float %i.bm, float %.2
  store float %.3, ptr %1, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %bb.h, %bb.aa, %bb.e
  %.024 = phi ptr [ %i.j, %bb.e ], [ %i.bl, %bb.aa ], [ %i.m, %bb.h ], [ %spec.select, %bb.i ]
  ret ptr %.024

bb.ac:                                            ; preds = %bb.n
  unreachable
}

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11STLImporter16pushMeshesToNodeERSt6vectorIjSaIjEEP6aiNode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = load ptr, ptr %1, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -1)
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.u = icmp eq ptr %i.ab, %i.ac
  br i1 %i.u, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.ac, ptr %i.b, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.v = phi ptr [ %i.ac, %.lr.ph ], [ %i.t, %bb.b ]
  %.013 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.013
  %i.x = load i32, ptr %i.w, align 4
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.013
  store i32 %i.x, ptr %i.z, align 4
  %i.aa = add nuw i64 %.013, 1                    ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ac = load ptr, ptr %1, align 8               ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = icmp ult i64 %i.aa, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !45

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp12BaseImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !55
  store i8 0, ptr %i.a, align 8, !alias.scope !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !55 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !55 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !55 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !55 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA52_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(52) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = zext nneg i32 %2 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.e, ptr %i.b, align 8
  %i.g = icmp samesign ugt i32 %2, 15
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.f, align 8
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.h, %._crit_edge.i.i.thread ], [ %i.f, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !59
  %i.q = load ptr, ptr %4, align 8, !noalias !59  ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !noalias !59 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !59
  store i64 %i.r, ptr %i.a, align 8, !noalias !59
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %0, align 8, !alias.scope !59
  %i.u = load i64, ptr %i.a, align 8, !noalias !59
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc26 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !noalias !59 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !59
  %i.z = load ptr, ptr %0, align 8, !alias.scope !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !59
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !59 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !59 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not7.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not7.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.04.09.i.i, align 1  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @isprint(i32 noundef %i.af) #24
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i.i.i, i8 %3, i8 %i.ae
  store i8 %i.ah, ptr %.sroa.04.09.i.i, align 1
  %i.ai = getelementptr i8, ptr %.sroa.04.09.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !58

_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %narrow.us134 = add nsw i8 %i.b, -48
  %i.d = zext nneg i8 %narrow.us134 to i64
  br label %bb.b

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.e = mul i64 %i.i, 10
  %narrow.us = add nsw i8 %i.m, -48
  %i.f = zext nneg i8 %narrow.us to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.i
  br i1 %i.h, label %.split.us, label %bb.b, !llvm.loop !60

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.i = phi i64 [ %i.d, %.lr.ph.split.us.preheader ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.j = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.k, %.lr.ph.split.us ]
  %.02663.us135 = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.l, %.lr.ph.split.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = add i32 %.02663.us135, 1                 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond42.us = icmp ult i8 %i.n, -10
  br i1 %or.cond42.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %2, align 4
  %narrow132 = add nsw i8 %i.b, -48
  %i.p = zext nneg i8 %narrow132 to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.45)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %.pn47, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn46

bb.i:                                             ; preds = %bb.l
  %i.aa = mul i64 %i.af, 10
  %narrow = add nsw i8 %i.aq, -48
  %i.ab = zext nneg i8 %narrow to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.af
  br i1 %i.ad, label %.split.us, label %bb.j, !llvm.loop !60

.split.us:                                        ; preds = %bb.i, %.lr.ph.split.us
  %.lcssa108.sink = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.ah, %bb.i ]
  store ptr %.lcssa108.sink, ptr %i.a, align 8
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(24) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.47)
  br label %.thread

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.af = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ac, %bb.i ] ; 5 uses
  %i.ag = phi ptr [ %0, %.lr.ph.split ], [ %i.ah, %bb.i ]
  %.02663133 = phi i32 [ 0, %.lr.ph.split ], [ %i.ai, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.ai = add i32 %.02663133, 1                   ; 3 uses
  %i.aj = icmp eq i32 %i.o, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ah, ptr %i.a, align 8
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = add i8 %i.ak, -48
  %or.cond4370 = icmp ult i8 %i.al, 10
  br i1 %or.cond4370, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %i.am = phi ptr [ %i.an, %.lr.ph71 ], [ %i.ah, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond43 = icmp ult i8 %i.ap, 10
  br i1 %or.cond43, label %.lr.ph71, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %.lr.ph71, %.preheader
  %.lcssa = phi ptr [ %i.ah, %.preheader ], [ %i.an, %.lr.ph71 ]
  store ptr %.lcssa, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond42 = icmp ult i8 %i.ar, -10
  br i1 %or.cond42, label %._crit_edge, label %bb.i, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %.lcssa110.sink = phi ptr [ %i.k, %bb.b ], [ %i.ah, %bb.l ] ; 2 uses
  %.026.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.l ]
  %.024.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 2 uses
  store ptr %.lcssa110.sink, ptr %i.a, align 8
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store ptr %.lcssa110.sink, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.026.lcssa, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.k, %.split.us, %bb.n, %bb.o
  %.2 = phi i64 [ %.024.lcssa, %bb.n ], [ %.024.lcssa, %bb.o ], [ %i.af, %.critedge ], [ %i.af, %bb.k ], [ 0, %.split.us ]
  ret i64 %.2

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA13_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
end_hunk_2
begin_hunk_3_@_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA13_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_:bb.a
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA36_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(36) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(36) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(36) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(37) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !74
  store i8 0, ptr %i.c, align 8, !alias.scope !74
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !74 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !74 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !74 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !74 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !74
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #20
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !5}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!18 = distinct !{!18, !17, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = distinct !{!19, !17, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!22 = distinct !{!22, !21, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!23 = distinct !{!23, !21, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !6}
!41 = !{!19, !18}
!42 = !{!23, !22}
!43 = !{!26, !25}
!44 = !{!29, !28}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!47 = distinct !{!47, !46, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!48 = distinct !{!48, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!49 = distinct !{!49, !48, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!50 = distinct !{!50, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!51 = distinct !{!51, !50, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!52 = !{!47}
!53 = !{!49}
!54 = !{!51}
!55 = !{!51, !49, !47}
!56 = distinct !{!56, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!57 = distinct !{!57, !56, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!58 = distinct !{!58, !6}
!59 = !{!57}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!63 = distinct !{!63, !62, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!64 = distinct !{!64, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!65 = distinct !{!65, !64, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!66 = distinct !{!66, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!67 = distinct !{!67, !66, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!68 = distinct !{!68, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!69 = distinct !{!69, !68, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!70 = !{!63}
!71 = !{!65}
!72 = !{!67}
!73 = !{!69}
!74 = !{!69, !67, !65, !63}
end_hunk_3
