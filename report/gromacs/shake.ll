Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/shake?download=true
inline.NumInlined: 618
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx24make_shake_sblock_serialEPNS_9shakedataEP22InteractionDefinitionsi:bb.a
  %i.k = load ptr, ptr @debug, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = load ptr, ptr %3, align 8, !tbaa !13
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = add nsw i64 %i.r, -1
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, i32 noundef %i.j, i32 noundef 0, i64 noundef %i.s) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_Z13make_invblockRKN3gmx11ListOfListsIiEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !13   ; 27 uses
  %i.v = sext i32 %i.j to i64                     ; 9 uses
  %i.w = icmp slt i32 %i.i, -2
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.d
  %i.x = icmp sgt i32 %i.i, 2                     ; 3 uses
  br i1 %i.x, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.v, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #19
          to label %.noexc62 unwind label %bb.i   ; 16 uses

.noexc62:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ac = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.preheader116.lr.ph, label %bb.g

bb.g:                                             ; preds = %.noexc62
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.v, 1152921504606846974
  %i.ag = and i64 %i.af, 1152921504606846975
  %i.ah = add nuw nsw i64 %i.v, 7
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ab, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !44

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.g
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ab, %bb.g ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aj = icmp samesign ult i64 %i.ag, 7
  br i1 %i.aj, label %.preheader116.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !55
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.preheader116.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !45

.preheader116.lr.ph:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc62
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc62 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !13    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter191 = and i64 %wide.trip.count, 1
  %.off = add nsw i32 %i.i, -3
  %i.at = icmp ult i32 %.off, 3
  br i1 %i.at, label %.preheader116.epil.preheader, label %.preheader116.lr.ph.new

.preheader116.lr.ph.new:                          ; preds = %.preheader116.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1073741822
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116, %.preheader116.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader116.lr.ph.new ], [ %indvars.iv.next.1, %.preheader116 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader116.lr.ph.new ], [ %niter.next.1, %.preheader116 ]
  %i.au = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !17
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !17
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bm = mul nuw nsw i64 %indvars.iv.next, 3     ; 3 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.next ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader116, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader116
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %._crit_edge.loopexit, label %.preheader116.epil.preheader

.preheader116.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader116.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader116.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.ce = mul nuw nsw i64 %indvars.iv.epil.init, 3 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.epil.init ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !17
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !21
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader116.epil.preheader
  %i.cw = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cx = ptrtoint ptr %i.aa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.i.i.i.i.i182 = phi i64 [ 0, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.cw, %._crit_edge.loopexit ]
  %.sroa.095.0178 = phi ptr [ null, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %._crit_edge.loopexit ] ; 17 uses
  %.sroa.21.0175 = phi i64 [ 0, %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.cx, %._crit_edge.loopexit ] ; 2 uses
  %i.cy = load ptr, ptr @debug, align 8, !tbaa !15 ; 3 uses
  %.not56 = icmp eq ptr %i.cy, null
  %.pre141 = ptrtoint ptr %.sroa.095.0178 to i64  ; 3 uses
  %.pre143 = sub i64 %.0.i.i.i.i.i182, %.pre141   ; 2 uses
  br i1 %.not56, label %._crit_edge._crit_edge, label %bb.j

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre145 = ashr exact i64 %.pre143, 4
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11t_sortblockESaIS1_EED2Ev.exit86

bb.j:                                             ; preds = %._crit_edge
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.dc = ashr exact i64 %.pre143, 4              ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.012.i = phi i64 [ %i.dn, %.lr.ph.i ], [ 0, %bb.j ] ; 3 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %.012.i ; 4 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !21
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.6, i64 noundef %.012.i, i32 noundef %i.df, i32 noundef %i.dh, i32 noundef %i.dj, i32 noundef %i.dl) #17 ; 0 uses
  %i.dn = add nuw nsw i64 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dn, %i.dc
  br i1 %exitcond.not.i, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit, label %.lr.ph.i, !llvm.loop !47

_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit: ; preds = %.lr.ph.i, %bb.j
  %i.do = load ptr, ptr @debug, align 8, !tbaa !15
  %i.dp = call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %i.do) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.aa, %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.l:                                             ; preds = %._crit_edge._crit_edge, %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit
  %.pre-phi146 = phi i64 [ %.pre145, %._crit_edge._crit_edge ], [ %i.dc, %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit ] ; 3 uses
  invoke void @qsort(ptr noundef %.sroa.095.0178, i64 noundef %.pre-phi146, i64 noundef 16, ptr noundef nonnull @_ZN3gmxL5pcompEPKvS1_)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr @debug, align 8, !tbaa !15 ; 3 uses
  %.not57 = icmp eq ptr %i.dr, null
  br i1 %.not57, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dr, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #17 ; 0 uses
  %i.dt = icmp sgt i64 %.pre-phi146, 0
  br i1 %i.dt, label %.lr.ph.i63, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66

.lr.ph.i63:                                       ; preds = %bb.n, %.lr.ph.i63
  %.012.i64 = phi i64 [ %i.ed, %.lr.ph.i63 ], [ 0, %bb.n ] ; 3 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %.012.i64 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dr, ptr noundef nonnull @.str.6, i64 noundef %.012.i64, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb) #17 ; 0 uses
  %i.ed = add nuw nsw i64 %.012.i64, 1            ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.ed, %.pre-phi146
  br i1 %exitcond.not.i65, label %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66, label %.lr.ph.i63, !llvm.loop !47

_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66: ; preds = %.lr.ph.i63, %bb.n, %bb.m
  br i1 %i.x, label %.preheader.preheader, label %._crit_edge121

.preheader.preheader:                             ; preds = %_ZN3gmxL12pr_sortblockEP8_IO_FILEPKcNS_8ArrayRefIKNS_11t_sortblockEEE.exit66
  %wide.trip.count134 = zext nneg i32 %i.j to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.i, 27
  br i1 %min.iters.check, label %.preheader.preheader190, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.ee = mul nuw nsw i64 %wide.trip.count134, 12
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ee
  %i.ef = shl nuw nsw i64 %wide.trip.count134, 4
  %i.eg = getelementptr i8, ptr %.sroa.095.0178, i64 %i.ef
  %scevgep186 = getelementptr i8, ptr %i.eg, i64 -4
  %bound0 = icmp ult ptr %i.u, %scevgep186
  %bound1 = icmp ult ptr %.sroa.095.0178, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader190, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eh = and i64 %wide.trip.count134, 7          ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  %i.ej = select i1 %i.ei, i64 8, i64 %i.eh
  %n.vec = sub nsw i64 %wide.trip.count134, %i.ej ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %index
  %wide.vec = load <32 x i32>, ptr %i.ek, align 4, !tbaa !17, !alias.scope !56
  %.idx = mul nuw nsw i64 %index, 12
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %interleaved.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 16, i32 17, i32 18, i32 20, i32 21, i32 22, i32 24, i32 25, i32 26, i32 28, i32 29, i32 30>
  store <24 x i32> %interleaved.vec, ptr %i.el, align 4, !tbaa !17, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %.preheader.preheader190, label %vector.body, !llvm.loop !51

.preheader.preheader190:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %indvars.iv131.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.en = sub nsw i64 %wide.trip.count134, %indvars.iv131.ph
  %xtraiter194 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader190, %.preheader.prol
  %indvars.iv131.prol = phi i64 [ %indvars.iv.next132.prol, %.preheader.prol ], [ %indvars.iv131.ph, %.preheader.preheader190 ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.preheader.prol ], [ 0, %.preheader.preheader190 ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv131.prol ; 3 uses
  %i.ep = mul nuw nsw i64 %indvars.iv131.prol, 3  ; 3 uses
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ep
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !17
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !17
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ep
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !17
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.prol, 1 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !52

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader190
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %.preheader.preheader190 ], [ %indvars.iv.next132.prol, %.preheader.prol ]
  %i.fa = sub nsw i64 %indvars.iv131.ph, %wide.trip.count134
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge121, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %.preheader ], [ %indvars.iv131.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv131 ; 3 uses
  %i.fd = mul nuw nsw i64 %indvars.iv131, 3       ; 3 uses
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !17
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fd
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !17
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fd
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !17
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fd
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !17
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv.next132 ; 3 uses
  %i.fp = mul nuw nsw i64 %indvars.iv.next132, 3  ; 3 uses
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !17
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fp
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !17
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !17
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fp
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !17
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv.next132.1 ; 3 uses
  %i.gb = mul nuw nsw i64 %indvars.iv.next132.1, 3 ; 3 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !17
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gb
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !17
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !17
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gb
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !17
  %indvars.iv.next132.2 = add nuw nsw i64 %indvars.iv131, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.095.0178, i64 %indvars.iv.next132.2 ; 3 uses
  %i.gn = mul nuw nsw i64 %indvars.iv.next132.2, 3 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !17
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gn
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !17
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !17
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !17
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131, 4 ; 2 uses
  %exitcond135.not.3 = icmp eq i64 %indvars.iv.next132.3, %wide.trip.count134
  br i1 %exitcond135.not.3, label %._crit_edge121, label %.preheader, !llvm.loop !53
end_hunk_0
begin_hunk_1_@_ZN3gmx6cshakeEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEEPK5t_pbcNS3_IKS7_EES5_fS5_S5_NS3_IfEES2_:bb.a
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !28 ; 2 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.br ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28
  %i.ca = call float @llvm.fmuladd.f32(float %i.bq, float %i.bt, float %i.bz)
  store float %i.ca, ptr %i.by, align 4, !tbaa !28
  %i.cb = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.bu ; 3 uses
  %i.cc = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.s, %i.cd            ; 2 uses
  %i.cf = load <2 x float>, ptr %i.bx, align 4, !tbaa !28
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ch, <2 x float> %i.cf)
  store <2 x float> %i.ci, ptr %i.bx, align 4, !tbaa !28
  %i.cj = load <2 x float>, ptr %i.cb, align 4, !tbaa !28
  %i.ck = fneg <2 x float> %i.ce
  %i.cl = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.cj)
  store <2 x float> %i.cn, ptr %i.cb, align 4, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !28
  %i.cq = fneg float %i.bq
  %i.cr = call float @llvm.fmuladd.f32(float %i.cq, float %i.bw, float %i.cp)
  store float %i.cr, ptr %i.co, align 4, !tbaa !28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.276.us = phi i32 [ %.17583.us, %bb.e ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ] ; 2 uses
  %.3.us = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ %i.ct, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %indvars.iv.next, %i.q
  %i.cv = icmp eq i32 %.3.us, 0                   ; 2 uses
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %bb.b, label %._crit_edge.us, !llvm.loop !63

._crit_edge.us:                                   ; preds = %bb.i
  %i.cx = add nuw nsw i32 %.07785.us, 1           ; 3 uses
  %i.cy = icmp slt i32 %i.cx, %3
  %i.cz = icmp ne i32 %.276.us, 0
  %or.cond.us = select i1 %i.cy, i1 %i.cz, i1 false
  %or.cond3.us = and i1 %or.cond.us, %i.cv
  br i1 %or.cond3.us, label %.preheader.us, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %.077.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.preheader.lr.ph ], [ %i.cx, %._crit_edge.us ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader.lr.ph ], [ %.3.us, %._crit_edge.us ]
  store i32 %.077.lcssa, ptr %2, align 4, !tbaa !17
  store i32 %.0.lcssa, ptr %14, align 4, !tbaa !17
  ret void
}

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gmx15constrain_shakeEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EESH_PK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr %2, ptr %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2760) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.35") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %8, ptr noundef %9, ptr nofree noundef captures(none) %10, float noundef %11, ptr nofree noundef captures(none) %12, float noundef %13, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %14, i1 noundef zeroext %15, ptr nofree noundef captures(none) %16, i1 noundef zeroext %17, i32 noundef %18) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 17179869180
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %18, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.n = load ptr, ptr %6, align 8, !tbaa !31
  %i.o = load ptr, ptr %7, align 8, !tbaa !33     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = load ptr, ptr %14, align 8, !tbaa !33    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = tail call fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr noundef %0, ptr noundef nonnull %1, ptr %2, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(2760) %4, ptr noundef nonnull align 8 dereferenceable(888) %5, ptr %i.n, ptr %i.o, ptr %i.u, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, float noundef %13, ptr %i.v, ptr %i.ab, i1 noundef zeroext %15, ptr noundef %16, i1 noundef zeroext %17, i32 noundef 0)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %3 to i64
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load ptr, ptr %6, align 8, !tbaa !31
  %i.ai = load ptr, ptr %8, align 8, !tbaa !33    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr noundef %0, ptr noundef nonnull %1, ptr %2, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(2760) %4, ptr noundef nonnull align 8 dereferenceable(888) %5, ptr %i.ah, ptr %i.ai, ptr %i.ao, ptr noundef %9, ptr noundef %10, float noundef %11, ptr noundef %12, float noundef %13, ptr null, ptr null, i1 noundef zeroext %15, ptr noundef %16, i1 noundef zeroext %17, i32 noundef 1)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(60) @.str.9, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 863, ptr noundef nonnull @.str.10) #18
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  resume { ptr, i32 } %i.aq

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.ac, %bb.c ], [ %i.ap, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3gmxL7bshakefEP8_IO_FILEPNS_9shakedataENS_8ArrayRefIKfEERK22InteractionDefinitionsRK10t_inputrecNS4_IKNS_11BasicVectorIfEEEENS4_ISE_EEPK5t_pbcP6t_nrnbfPffSH_bPA3_fbNS_18ConstraintVariableE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr %2, ptr %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2760) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %5, ptr %.0.val, ptr %.0.val1, ptr %.8.val3, ptr noundef %6, ptr nofree noundef captures(none) %7, float noundef %8, ptr nofree noundef captures(none) %9, float noundef %10, ptr nofree captures(address) %.0.val5, ptr nofree readnone captures(address) %.8.val7, i1 noundef zeroext %11, ptr nofree noundef captures(none) %12, i1 noundef zeroext %13, i32 noundef range(i32 0, 2) %14) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %15 = alloca %"class.gmx::ArrayRef.32", align 8 ; 5 uses
  %16 = alloca %"class.gmx::ArrayRef.35", align 8 ; 5 uses
  %17 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %18 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %19 = alloca %"class.gmx::ArrayRef.29", align 8 ; 5 uses
  %20 = alloca %"class.gmx::ArrayRef.38", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1552 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = sdiv i32 %i.l, 3                         ; 3 uses
  %i.n = icmp sgt i32 %i.l, 2                     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = add nsw i32 %i.m, -1
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, i8 0, i64 %i.t, i1 false), !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !13   ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !17
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = ptrtoint ptr %3 to i64
  %i.ao = ptrtoint ptr %2 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.as = ptrtoint ptr %.8.val3 to i64
  %i.at = ptrtoint ptr %.0.val1 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val1, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = fsub float 1.000000e+00, %8             ; 3 uses
  %trunc114.i = trunc nuw i32 %14 to i1           ; 3 uses
  %.not137.i = icmp eq ptr %6, null               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.not135.i = icmp eq ptr %0, null               ; 2 uses
  %i.bm = icmp ne i32 %14, 0
  %i.bn = icmp eq ptr %.0.val5, %.8.val7
  %i.bo = fneg float %10
  %brmerge.i = select i1 %i.bm, i1 true, i1 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %i.bx = phi ptr [ %i.y, %.lr.ph59 ], [ %i.wg, %bb.ah ] ; 2 uses
  %.08856 = phi ptr [ %i.am, %.lr.ph59 ], [ %i.wd, %bb.ah ] ; 11 uses
  %.08955 = phi i32 [ 0, %.lr.ph59 ], [ %i.wa, %bb.ah ]
  %.09054 = phi i32 [ 0, %.lr.ph59 ], [ %i.vz, %bb.ah ]
  %.sroa.031.052 = phi ptr [ %i.ag, %.lr.ph59 ], [ %i.we, %bb.ah ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  %i.cc = sub nsw i32 %i.bz, %i.cb                ; 2 uses
  %i.cd = sdiv i32 %i.cc, 3                       ; 10 uses
  %i.ce = load ptr, ptr %4, align 8, !tbaa !89, !nonnull !90, !align !91
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !92 ; 3 uses
  %i.cg = load float, ptr %i.ar, align 8, !tbaa !186 ; 2 uses
  %i.ch = load float, ptr %i.aw, align 4, !tbaa !194 ; 2 uses
  %i.ci = load i32, ptr %i.ax, align 4, !tbaa !195
  %.not40 = icmp eq i32 %i.ci, 0                  ; 3 uses
  %i.cj = ptrtoint ptr %.sroa.031.052 to i64
  %i.ck = sub i64 %i.aj, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.031.052, i64 %i.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.cm = sext i32 %i.cd to i64                   ; 14 uses
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cm)
  %i.cn = load ptr, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2                 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.cm
  br i1 %i.ct, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cu = sub nuw nsw i64 %i.cm, %i.cs
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.cu)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cv = icmp ugt i64 %i.cs, %i.cm
  br i1 %i.cv, label %bb.e, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.cw
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.cw, ptr %i.az, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2                 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, %i.cm
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.de = sub nuw nsw i64 %i.cm, %i.dc
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.de)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.df = icmp ugt i64 %i.dc, %i.cm
  br i1 %i.df, label %bb.h, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

bb.h:                                             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cm ; 2 uses
  %.not.i.i143.i = icmp eq ptr %i.cx, %i.dg
  br i1 %.not.i.i143.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i:   ; preds = %bb.h
  store ptr %i.dg, ptr %i.bb, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i:          ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i144.i, %bb.h, %bb.g, %bb.f
  %i.dh = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  %i.di = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2                 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.cm
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i
  %i.do = sub nuw nsw i64 %i.cm, %i.dm
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %i.do)
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !26
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit145.i
  %i.dp = icmp ugt i64 %i.dm, %i.cm
  br i1 %i.dp, label %bb.k, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

bb.k:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cm ; 2 uses
  %.not.i.i146.i = icmp eq ptr %i.dh, %i.dq
  br i1 %.not.i.i146.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i:   ; preds = %bb.k
  store ptr %i.dq, ptr %i.bd, align 8, !tbaa !25
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i:          ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i, %bb.k, %bb.j, %bb.i
  %i.dr = phi ptr [ %.pre.i, %bb.i ], [ %i.di, %bb.j ], [ %i.di, %bb.k ], [ %i.di, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i147.i ] ; 4 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !36    ; 8 uses
  %i.dt = load ptr, ptr %i.be, align 8, !tbaa !37
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw
  %i.dy = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 6 uses
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ec
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 6 uses
  %i.ef = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ei
  %i.ek = icmp sgt i32 %i.cc, 2                   ; 3 uses
  br i1 %i.ek, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit148.i
  %wide.trip.count63.i = zext nneg i32 %i.cd to i64 ; 3 uses
  br i1 %.not137.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.m
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.m ], [ 0, %.lr.ph.i ] ; 5 uses
  %.012147.us.i = phi ptr [ %i.fy, %bb.m ], [ %.08856, %.lr.ph.i ] ; 4 uses
  %i.el = load i32, ptr %.012147.us.i, align 4, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17
  %i.eq = sext i32 %i.en to i64                   ; 2 uses
  %i.er = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.eq ; 2 uses
  %i.es = sext i32 %i.ep to i64                   ; 2 uses
  %i.et = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv60.i ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !28
  %i.ez = fsub float %i.ew, %i.ey
  %i.fa = load <2 x float>, ptr %i.er, align 4, !tbaa !28
  %i.fb = load <2 x float>, ptr %i.et, align 4, !tbaa !28
  %i.fc = fsub <2 x float> %i.fa, %i.fb
  store <2 x float> %i.fc, ptr %i.eu, align 4, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store float %i.ez, ptr %i.fd, align 4, !tbaa !28
  %i.fe = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eq
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !28
  %i.fg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.es
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !28
  %i.fi = fadd float %i.ff, %i.fh
  %i.fj = fmul float %i.fi, 2.000000e+00
  %i.fk = fdiv float 1.000000e+00, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv60.i
  store float %i.fk, ptr %i.fl, align 4, !tbaa !28
  %i.fm = sext i32 %i.el to i64
  %i.fn = getelementptr inbounds [48 x i8], ptr %i.cf, i64 %i.fm ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !16 ; 2 uses
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !16
  %i.fr = fmul float %8, %i.fq
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.fo, float %i.fr)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.i
  %.0123.us.i = phi float [ %i.fs, %bb.l ], [ %i.fo, %.lr.ph.split.us.i ] ; 2 uses
  %i.ft = fmul float %.0123.us.i, %.0123.us.i     ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv60.i
  store float %i.ft, ptr %i.fu, align 4, !tbaa !28
  %i.fv = fmul float %i.cg, %i.ft
  %i.fw = fdiv float 5.000000e-01, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv60.i
  store float %i.fw, ptr %i.fx, align 4, !tbaa !28
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012147.us.i, i64 12
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !65

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %.lr.ph.i ] ; 5 uses
  %.012147.i = phi ptr [ %i.hd, %bb.o ], [ %.08856, %.lr.ph.i ] ; 4 uses
  %i.fz = load i32, ptr %.012147.i, align 4, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %.012147.i, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %.012147.i, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !17
  %i.ge = sext i32 %i.gb to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.ge
  %i.gg = sext i32 %i.gd to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [12 x i8], ptr %.0.val, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv.i
  tail call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %6, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gi)
  %i.gj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !28
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gg
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !28
end_hunk_1
