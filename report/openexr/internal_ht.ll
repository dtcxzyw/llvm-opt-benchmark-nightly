Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_ht?download=true
inline.NumInlined: 73
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@internal_exr_undo_ht:bb.a
  %i.mv = trunc i32 %i.mu to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %.0162297.i, i64 2
  store i16 %i.mv, ptr %.0162297.i, align 2, !tbaa !54
  %i.mx = load ptr, ptr %i.mp, align 8, !tbaa !53
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv345.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !21
  %i.nb = trunc i32 %i.na to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %.0162297.i, i64 4
  store i16 %i.nb, ptr %i.mw, align 2, !tbaa !54
  %i.nd = load ptr, ptr %i.mp, align 8, !tbaa !53
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv345.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !21
  %i.nh = trunc i32 %i.ng to i16
  %i.ni = getelementptr inbounds nuw i8, ptr %.0162297.i, i64 6
  store i16 %i.nh, ptr %i.nc, align 2, !tbaa !54
  %i.nj = load ptr, ptr %i.mp, align 8, !tbaa !53
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv345.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !21
  %i.nn = trunc i32 %i.nm to i16
  %i.no = getelementptr inbounds nuw i8, ptr %.0162297.i, i64 8 ; 2 uses
  store i16 %i.nn, ptr %i.ni, align 2, !tbaa !54
  %indvars.iv.next346.i.3 = add nuw nsw i64 %indvars.iv345.i, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %.loopexit269.i.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !61

bb.bq:                                            ; preds = %bb.bm
  br i1 %i.mj, label %.lr.ph296.i, label %.loopexit269.i

.lr.ph296.i:                                      ; preds = %bb.bq
  %i.np = load ptr, ptr %5, align 8, !tbaa !16
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.np, i64 %indvars.iv350.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !37
  %i.nt = getelementptr inbounds nuw i8, ptr %.0165304.i, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph296.i
  %indvars.iv342.i = phi i64 [ 0, %.lr.ph296.i ], [ %indvars.iv.next343.i, %bb.br ] ; 2 uses
  %.0160293.i = phi ptr [ %i.nt, %.lr.ph296.i ], [ %i.ny, %bb.br ] ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !53
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv342.i
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !21
  %i.ny = getelementptr inbounds nuw i8, ptr %.0160293.i, i64 4
  store i32 %i.nx, ptr %.0160293.i, align 4, !tbaa !21
  %indvars.iv.next343.i = add nuw nsw i64 %indvars.iv342.i, 1 ; 2 uses
  %i.nz = load i32, ptr %i.mh, align 4, !tbaa !31
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next343.i, %i.oa
  br i1 %i.ob, label %bb.br, label %.loopexit269.i, !llvm.loop !62

.loopexit269.i.loopexit.unr-lcssa:                ; preds = %bb.bp
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %.loopexit269.i, label %.epil.preheader112

.epil.preheader112:                               ; preds = %.loopexit269.i.loopexit.unr-lcssa, %.lr.ph300.i
  %indvars.iv345.i.epil.init = phi i64 [ 0, %.lr.ph300.i ], [ %indvars.iv.next346.i.3, %.loopexit269.i.loopexit.unr-lcssa ]
  %.0162297.i.epil.init = phi ptr [ %i.mo, %.lr.ph300.i ], [ %i.no, %.loopexit269.i.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader112
  %indvars.iv345.i.epil = phi i64 [ %indvars.iv345.i.epil.init, %.epil.preheader112 ], [ %indvars.iv.next346.i.epil, %bb.bs ] ; 2 uses
  %.0162297.i.epil = phi ptr [ %.0162297.i.epil.init, %.epil.preheader112 ], [ %i.og, %bb.bs ] ; 2 uses
  %epil.iter114 = phi i64 [ 0, %.epil.preheader112 ], [ %epil.iter114.next, %bb.bs ]
  %i.oc = load ptr, ptr %i.mp, align 8, !tbaa !53
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv345.i.epil
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !21
  %i.of = trunc i32 %i.oe to i16
  %i.og = getelementptr inbounds nuw i8, ptr %.0162297.i.epil, i64 2
  store i16 %i.of, ptr %.0162297.i.epil, align 2, !tbaa !54
  %indvars.iv.next346.i.epil = add nuw nsw i64 %indvars.iv345.i.epil, 1
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %.loopexit269.i, label %bb.bs, !llvm.loop !63

.loopexit269.i:                                   ; preds = %bb.br, %.loopexit269.i.loopexit.unr-lcssa, %bb.bs, %bb.bq, %bb.bn
  %indvars.iv.next351.i = add nuw nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %i.oh = load i16, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.oi = sext i16 %i.oh to i64
  %i.oj = icmp slt i64 %indvars.iv.next351.i, %i.oi
  br i1 %i.oj, label %.lr.ph302.i, label %._crit_edge303.i, !llvm.loop !64

.loopexit268.i:                                   ; preds = %._crit_edge303.i, %.loopexit266.i, %.preheader267.i, %.preheader271.lr.ph.i, %.preheader272.i
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge.i

bb.bt:                                            ; preds = %bb.bo, %bb.bh, %bb.bb
  %.pn240.i = phi { ptr, i32 } [ %i.jl, %bb.bh ], [ %i.mr, %bb.bo ], [ %i.hc, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bu

.critedge.i:                                      ; preds = %.critedge257.i, %bb.al, %bb.aj, %bb.ah, %.loopexit268.i, %.critedge258._crit_edge.i, %bb.u, %bb.s, %bb.r
  %.8213.i = phi i32 [ 23, %.critedge258._crit_edge.i ], [ 23, %bb.r ], [ 23, %bb.u ], [ 23, %bb.s ], [ 0, %.loopexit268.i ], [ 23, %bb.ah ], [ 23, %bb.aj ], [ 23, %bb.al ], [ 23, %.critedge257.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN4ojph10codestreamD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.critedge253.i

bb.bu:                                            ; preds = %bb.bt, %bb.ba, %bb.ap, %bb.ao, %bb.an, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.pn240.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dk, %bb.z ], [ %i.dl, %bb.aa ], [ %i.dm, %bb.ab ], [ %i.ex, %bb.ao ], [ %i.dn, %bb.ac ], [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ], [ %i.ew, %bb.an ], [ %i.ey, %bb.ap ], [ %.pn240.i, %bb.bt ], [ %i.hb, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.y
  %.pn240.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.i, %bb.bu ], [ %i.dj, %bb.y ]
  call void @_ZN4ojph10codestreamD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.x
  %.pn240.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.i, %bb.bv ], [ %i.di, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.w, %bb.v
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dg, %bb.v ], [ %.pn240.pn.pn.pn.pn.pn.pn.i, %bb.bw ], [ %i.dh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bz

.critedge253.i:                                   ; preds = %bb.h, %.critedge.i, %bb.g, %bb.f, %bb.d, %bb.c
  %.10215.i = phi i32 [ 23, %bb.d ], [ 23, %bb.c ], [ 23, %bb.g ], [ 23, %bb.f ], [ %.8213.i, %.critedge.i ], [ 23, %bb.h ]
  %i.ol = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i, label %_ZL12ht_undo_implP20_exr_decode_pipelinePKvmPvm.exit, label %bb.by

bb.by:                                            ; preds = %.critedge253.i
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !19
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.oq) #15
  br label %_ZL12ht_undo_implP20_exr_decode_pipelinePKvmPvm.exit

bb.bz:                                            ; preds = %bb.bx, %bb.e
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bx ], [ %i.ac, %bb.e ]
  %i.or = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i261.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i261.i, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EED2Ev.exit262.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !19
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.or to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ow) #15
  br label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EED2Ev.exit262.i

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EED2Ev.exit262.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.body

_ZL12ht_undo_implP20_exr_decode_pipelinePKvmPvm.exit: ; preds = %.critedge253.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc259.i, %.noexc.i
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EED2Ev.exit262.i, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.ox, %bb.cb ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EED2Ev.exit262.i ]
  %i.oy = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.oz = call ptr @__cxa_begin_catch(ptr %i.oy) #12 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %_ZL12ht_undo_implP20_exr_decode_pipelinePKvmPvm.exit, %.body
  %.0 = phi i32 [ 23, %.body ], [ %.10215.i, %_ZL12ht_undo_implP20_exr_decode_pipelinePKvmPvm.exit ]
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden range(i32 0, 27) i32 @internal_exr_apply_ht(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 16 uses
  %2 = alloca %"class.ojph::codestream", align 8  ; 16 uses
  %3 = alloca %"class.ojph::param_siz", align 8   ; 8 uses
  %4 = alloca %"class.ojph::param_nlt", align 8   ; 5 uses
  %5 = alloca %"struct.ojph::point", align 8      ; 5 uses
  %6 = alloca %"class.ojph::param_cod", align 8   ; 8 uses
  %7 = alloca %class.staticmem_outfile, align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !65   ; 4 uses
  %i.d = sext i16 %i.c to i64                     ; 5 uses
  %i.e = icmp slt i16 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc unwind label %bb.bn

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EEC2EmRKS1_.exit.thread.i.i, label %.noexc187.i

_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EEC2EmRKS1_.exit.thread.i.i: ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.loopexit204.i

.noexc187.i:                                      ; preds = %_ZNSt6vectorI21CodestreamChannelInfoSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.f = shl nuw nsw i64 %i.d, 4
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
          to label %.noexc2 unwind label %bb.bn   ; 9 uses

.noexc2:                                          ; preds = %.noexc187.i
  store ptr %i.g, ptr %1, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.k = add nsw i64 %i.d, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit204.i, label %bb.b

bb.b:                                             ; preds = %.noexc2
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i.i.i ; 3 uses
  %i.n = add nuw nsw i64 %i.d, 1152921504606846974
  %i.o = and i64 %i.n, 1152921504606846975
  %i.p = add nuw nsw i64 %i.d, 3
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.j, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !67

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.j, %bb.b ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp samesign ult i64 %i.o, 3
  br i1 %i.r, label %.loopexit204.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.v, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit204.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !25

.loopexit204.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc2, %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EEC2EmRKS1_.exit.thread.i.i
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI21CodestreamChannelInfoSaIS0_EEC2EmRKS1_.exit.thread.i.i ], [ %i.j, %.noexc2 ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !27
  %8 = zext nneg i16 %i.c to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.z = invoke noundef zeroext i1 @_Z16make_channel_mapiP25exr_coding_channel_info_tRSt6vectorI21CodestreamChannelInfoSaIS2_EE(i32 noundef %8, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.loopexit204.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %.fr16 = freeze i32 %i.ab                       ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  invoke void @_ZN4ojph10codestreamC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ae = invoke ptr @_ZN4ojph10codestream10access_sizEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.af = invoke ptr @_ZN4ojph10codestream10access_nltEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr %i.af, ptr %4, align 8
  %i.ag = load i16, ptr %i.b, align 8, !tbaa !65
  %i.ah = sext i16 %i.ag to i32
  invoke void @_ZN4ojph9param_siz18set_num_componentsEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ah)
          to label %.preheader203.i unwind label %bb.k

.preheader203.i:                                  ; preds = %bb.f
  %i.ai = load i16, ptr %i.b, align 8, !tbaa !65
  %i.aj = icmp sgt i16 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader203.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !68
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.t
  %i.ak = icmp sgt i64 %i.bz, 2147483647
  br i1 %i.ak, label %bb.bg, label %._crit_edge.thread.i

bb.g:                                             ; preds = %.loopexit204.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bl

bb.h:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bk

bb.i:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bi

bb.k:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bi

bb.l:                                             ; preds = %bb.t, %.lr.ph.i
  %i.aq = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.bj, %bb.t ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.ar = phi i32 [ 0, %.lr.ph.i ], [ %i.ca, %bb.t ] ; 2 uses
  %.0147214.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bz, %bb.t ]
  %.0148213.i = phi i1 [ false, %.lr.ph.i ], [ %.1149.i, %bb.t ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 8, !tbaa !28
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds [48 x i8], ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 26
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !52
  %.not177.i = icmp eq i16 %i.ay, 0
  br i1 %.not177.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4ojph9param_nlt23set_nonlinear_transformEjh(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ar, i8 noundef zeroext 3)
          to label %._crit_edge283.i unwind label %bb.n

._crit_edge283.i:                                 ; preds = %bb.m
  %.pre284.i = load ptr, ptr %i.x, align 8, !tbaa !68
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bi

bb.o:                                             ; preds = %._crit_edge283.i, %bb.l
  %i.ba = phi ptr [ %.pre284.i, %._crit_edge283.i ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bb = getelementptr inbounds [48 x i8], ptr %i.ba, i64 %i.av ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !21
  store <2 x i32> %i.bd, ptr %5, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 26
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !52 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 1
  %i.bh = select i1 %i.bg, i32 16, i32 32
  %i.bi = icmp ne i16 %i.bf, 0
  invoke void @_ZN4ojph9param_siz13set_componentEjRKNS_5pointEjb(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.bh, i1 noundef zeroext %i.bi)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.bk = getelementptr inbounds [48 x i8], ptr %i.bj, i64 %i.av ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !46
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bi

bb.t:                                             ; preds = %bb.r, %bb.q
  %.1149.i = phi i1 [ true, %bb.r ], [ %.0148213.i, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34
  %i.bu = sext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  %i.bx = mul nsw i32 %i.bw, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = add nsw i64 %.0147214.i, %i.by          ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.cb = load i16, ptr %i.b, align 8, !tbaa !65
  %i.cc = sext i16 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next.i, %i.cc
  br i1 %i.cd, label %bb.l, label %._crit_edge.i, !llvm.loop !71

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader203.i
  %.0147.lcssa312.i = phi i64 [ %i.bz, %._crit_edge.i ], [ 0, %.preheader203.i ]
  %.0148.lcssa311.i = phi i1 [ %.1149.i, %._crit_edge.i ], [ false, %.preheader203.i ] ; 2 uses
  invoke void @_ZN4ojph10codestream10set_planarEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %.0148.lcssa311.i)
          to label %bb.u unwind label %bb.am

bb.u:                                             ; preds = %._crit_edge.thread.i
  invoke void @_ZN4ojph9param_siz16set_image_offsetENS_5pointE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 0)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %bb.u
  %.sroa.2.0.insert.ext.i = zext i32 %.fr16 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN4ojph9param_siz16set_image_extentENS_5pointE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.0.0.insert.insert.i)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ce = invoke ptr @_ZN4ojph10codestream10access_codEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  store ptr %i.ce, ptr %6, align 8
  %i.cf = xor i1 %.0148.lcssa311.i, true
  %i.cg = and i1 %i.z, %i.cf
  invoke void @_ZN4ojph9param_cod19set_color_transformEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext %i.cg)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4ojph9param_cod14set_reversibleEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4ojph9param_cod14set_block_dimsEjj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 128, i32 noundef 32)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4ojph9param_cod21set_num_decompositionEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 5)
          to label %bb.ab unwind label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !73
end_hunk_0
