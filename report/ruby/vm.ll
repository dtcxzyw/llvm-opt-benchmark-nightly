inline.NumInlined: 3274
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@rb_vm_opt_getconstant_path:bb.a
  %.0.i.i23 = phi ptr [ %i.ca, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %i.ca, %RCLASS_EXT_READABLE.exit.i.i ], [ null, %bb.ah ]
  %i.ed = getelementptr i8, ptr %i.bu, i64 16
  store ptr %.0.i.i23, ptr %i.ed, align 8, !tbaa !297
  br i1 %i.bz, label %rb_ractor_shareable_p.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %vm_get_const_key_cref.exit.i
  %i.ee = inttoptr i64 %.1.lcssa.i to ptr
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !77
  %i.eg = and i64 %i.ef, 256
  %.not.i15.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i15.i, label %rb_ractor_shareable_p.exit.i, label %rb_ractor_shareable_p.exit.thread.i

rb_ractor_shareable_p.exit.i:                     ; preds = %bb.ai
  %i.eh = call zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %.1.lcssa.i) #23
  br i1 %i.eh, label %rb_ractor_shareable_p.exit.thread.i, label %bb.aj

rb_ractor_shareable_p.exit.thread.i:              ; preds = %rb_ractor_shareable_p.exit.i, %bb.ai, %vm_get_const_key_cref.exit.i
  %i.ei = load i64, ptr %i.bu, align 8, !tbaa !295
  %i.ej = or i64 %i.ei, 65536
  store i64 %i.ej, ptr %i.bu, align 8, !tbaa !295
  br label %bb.aj

bb.aj:                                            ; preds = %rb_ractor_shareable_p.exit.thread.i, %rb_ractor_shareable_p.exit.i
  store i64 %i.bt, ptr %2, align 8, !tbaa !11
  %i.ek = icmp eq i64 %i.bt, 0
  %i.el = and i64 %i.bt, 7
  %i.em = icmp ne i64 %i.el, 0
  %i.en = or i1 %i.ek, %i.em
  br i1 %i.en, label %rb_obj_write.exit17.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = ptrtoint ptr %i.bn to i64
  call void @rb_gc_writebarrier(i64 noundef %i.eo, i64 noundef %i.bt) #23
  br label %rb_obj_write.exit17.i

rb_obj_write.exit17.i:                            ; preds = %bb.ak, %bb.aj
  %i.ep = getelementptr i8, ptr %i.bn, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !124
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !147
  %i.et = ptrtoint ptr %i.br to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = lshr exact i64 %i.ev, 3
  %i.ex = trunc i64 %i.ew to i32
  call void @rb_yjit_constant_ic_update(ptr noundef %i.bn, ptr noundef nonnull %2, i32 noundef %i.ex) #23
  br label %vm_ic_update.exit

vm_ic_update.exit:                                ; preds = %rb_obj_write.exit17.i, %bb.k, %vm_ic_hit_p.exit.thread
  %.0 = phi i64 [ %i.s, %vm_ic_hit_p.exit.thread ], [ %.1.lcssa.i, %bb.k ], [ %.1.lcssa.i, %rb_obj_write.exit17.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @Init_vm_stack_canary() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_vm_lvar_exposed(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef nonnull ptr @rb_vm_get_insns_address_table() local_unnamed_addr #8 {
bb.a:
  ret ptr @vm_exec_core.insns_address_table
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_exec_core(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.RArray, align 8             ; 4 uses
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.RArray, align 8             ; 4 uses
  %i.d = alloca [1 x i64], align 8                ; 4 uses
  %i.e = alloca [1 x i64], align 8                ; 4 uses
  %3 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %4 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %5 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i16, align 2                      ; 7 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i16, align 2                      ; 5 uses
  %6 = alloca %struct.rb_forwarding_call_data, align 8 ; 5 uses
  %7 = alloca %struct.rb_callinfo, align 8
  %8 = alloca %struct.rb_forwarding_call_data, align 8 ; 3 uses
  %9 = alloca %struct.rb_callinfo, align 8
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %.loopexit2951, label %bb.b, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 16         ; 30 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !146
  %i.s = getelementptr i8, ptr %0, i64 32         ; 7 uses
  %i.t = getelementptr i8, ptr %0, i64 36         ; 7 uses
  %i.u = getelementptr i8, ptr %0, i64 48         ; 8 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 37
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.aq = getelementptr i8, ptr %0, i64 104
  %i.ar = getelementptr i8, ptr %0, i64 112
  br label %.backedge

bb.c:                                             ; preds = %.backedge, %bb.afh
  %i.as = getelementptr i8, ptr %.6, i64 8        ; 2 uses
  store ptr %i.as, ptr %.02257, align 8, !tbaa !146
  br label %.backedge.backedge

bb.d:                                             ; preds = %.backedge, %bb.afi
  %i.at = getelementptr i8, ptr %.6, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr i8, ptr %.6, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11 ; 4 uses
  %i.ax = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.ax, ptr %.02257, align 8, !tbaa !146
  %i.ay = getelementptr i8, ptr %.02257, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15 ; 3 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %vm_get_ep.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter3860 = and i64 %i.aw, 7                ; 3 uses
  %i.ba = icmp ult i64 %i.aw, 8
  br i1 %i.ba, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter3865 = and i64 %i.aw, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi ptr [ %i.az, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ]
  %niter3866 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter3866.next.7, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %.07.i, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = and i64 %i.bc, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.bh = and i64 %i.bg, -4
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = and i64 %i.bk, -4
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = and i64 %i.bo, -4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %i.bt = and i64 %i.bs, -4
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = and i64 %i.bw, -4
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11
  %i.cb = and i64 %i.ca, -4
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = and i64 %i.ce, -4
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  %niter3866.next.7 = add i64 %niter3866, 8       ; 2 uses
  %niter3866.ncmp.7 = icmp eq i64 %niter3866.next.7, %unroll_iter3865
  br i1 %niter3866.ncmp.7, label %vm_get_ep.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !306

vm_get_ep.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod3862.not = icmp eq i64 %xtraiter3860, 0
  br i1 %lcmp.mod3862.not, label %vm_get_ep.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %vm_get_ep.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.cg, %vm_get_ep.exit.loopexit.unr-lcssa ]
  %lcmp.mod3864 = icmp ne i64 %xtraiter3860, 0
  call void @llvm.assume(i1 %lcmp.mod3864)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi ptr [ %i.ck, %.lr.ph.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter3861 = phi i64 [ %epil.iter3861.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ch = getelementptr i8, ptr %.07.i.epil, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !11
  %i.cj = and i64 %i.ci, -4
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %epil.iter3861.next = add i64 %epil.iter3861, 1 ; 2 uses
  %epil.iter3861.cmp.not = icmp eq i64 %epil.iter3861.next, %xtraiter3860
  br i1 %epil.iter3861.cmp.not, label %vm_get_ep.exit, label %.lr.ph.i.epil, !llvm.loop !307

vm_get_ep.exit:                                   ; preds = %vm_get_ep.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.0.lcssa.i = phi ptr [ %i.az, %bb.d ], [ %i.cg, %vm_get_ep.exit.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i.epil ]
  %i.cl = sub i64 0, %i.au
  %i.cm = getelementptr [8 x i8], ptr %.0.lcssa.i, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !73 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !73
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !11
  br label %.backedge.backedge

bb.e:                                             ; preds = %.backedge, %bb.afj
  %i.cr = getelementptr i8, ptr %.6, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = getelementptr i8, ptr %.6, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11 ; 4 uses
  %i.cv = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !73 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.cz = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.cz, ptr %.02257, align 8, !tbaa !146
  %i.da = getelementptr i8, ptr %.02257, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15 ; 3 uses
  %.not.i2364 = icmp eq i64 %i.cu, 0
  br i1 %.not.i2364, label %vm_get_ep.exit2370, label %.lr.ph.i2365.preheader

.lr.ph.i2365.preheader:                           ; preds = %bb.e
  %xtraiter3853 = and i64 %i.cu, 7                ; 3 uses
  %i.dc = icmp ult i64 %i.cu, 8
  br i1 %i.dc, label %.lr.ph.i2365.epil.preheader, label %.lr.ph.i2365.preheader.new

.lr.ph.i2365.preheader.new:                       ; preds = %.lr.ph.i2365.preheader
  %unroll_iter3858 = and i64 %i.cu, -8
  br label %.lr.ph.i2365

.lr.ph.i2365:                                     ; preds = %.lr.ph.i2365, %.lr.ph.i2365.preheader.new
  %.07.i2366 = phi ptr [ %i.db, %.lr.ph.i2365.preheader.new ], [ %i.ei, %.lr.ph.i2365 ]
  %niter3859 = phi i64 [ 0, %.lr.ph.i2365.preheader.new ], [ %niter3859.next.7, %.lr.ph.i2365 ]
  %i.dd = getelementptr i8, ptr %.07.i2366, i64 -8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.df = and i64 %i.de, -4
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11
  %i.dj = and i64 %i.di, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr i8, ptr %i.dk, i64 -8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11
  %i.dn = and i64 %i.dm, -4
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = and i64 %i.dq, -4
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !11
  %i.dv = and i64 %i.du, -4
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11
  %i.dz = and i64 %i.dy, -4
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr i8, ptr %i.ea, i64 -8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = and i64 %i.ec, -4
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr i8, ptr %i.ee, i64 -8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !11
  %i.eh = and i64 %i.eg, -4
  %i.ei = inttoptr i64 %i.eh to ptr               ; 3 uses
  %niter3859.next.7 = add i64 %niter3859, 8       ; 2 uses
  %niter3859.ncmp.7 = icmp eq i64 %niter3859.next.7, %unroll_iter3858
  br i1 %niter3859.ncmp.7, label %vm_get_ep.exit2370.loopexit.unr-lcssa, label %.lr.ph.i2365, !llvm.loop !306

vm_get_ep.exit2370.loopexit.unr-lcssa:            ; preds = %.lr.ph.i2365
  %lcmp.mod3855.not = icmp eq i64 %xtraiter3853, 0
  br i1 %lcmp.mod3855.not, label %vm_get_ep.exit2370, label %.lr.ph.i2365.epil.preheader

.lr.ph.i2365.epil.preheader:                      ; preds = %vm_get_ep.exit2370.loopexit.unr-lcssa, %.lr.ph.i2365.preheader
  %.07.i2366.epil.init = phi ptr [ %i.db, %.lr.ph.i2365.preheader ], [ %i.ei, %vm_get_ep.exit2370.loopexit.unr-lcssa ]
  %lcmp.mod3857 = icmp ne i64 %xtraiter3853, 0
  call void @llvm.assume(i1 %lcmp.mod3857)
  br label %.lr.ph.i2365.epil

.lr.ph.i2365.epil:                                ; preds = %.lr.ph.i2365.epil, %.lr.ph.i2365.epil.preheader
  %.07.i2366.epil = phi ptr [ %i.em, %.lr.ph.i2365.epil ], [ %.07.i2366.epil.init, %.lr.ph.i2365.epil.preheader ]
  %epil.iter3854 = phi i64 [ %epil.iter3854.next, %.lr.ph.i2365.epil ], [ 0, %.lr.ph.i2365.epil.preheader ]
  %i.ej = getelementptr i8, ptr %.07.i2366.epil, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.el = and i64 %i.ek, -4
  %i.em = inttoptr i64 %i.el to ptr               ; 2 uses
  %epil.iter3854.next = add i64 %epil.iter3854, 1 ; 2 uses
  %epil.iter3854.cmp.not = icmp eq i64 %epil.iter3854.next, %xtraiter3853
  br i1 %epil.iter3854.cmp.not, label %vm_get_ep.exit2370, label %.lr.ph.i2365.epil, !llvm.loop !309

vm_get_ep.exit2370:                               ; preds = %vm_get_ep.exit2370.loopexit.unr-lcssa, %.lr.ph.i2365.epil, %bb.e
  %.0.lcssa.i2369 = phi ptr [ %i.db, %bb.e ], [ %i.ei, %vm_get_ep.exit2370.loopexit.unr-lcssa ], [ %i.em, %.lr.ph.i2365.epil ] ; 3 uses
  %i.en = trunc i64 %i.cs to i32
  %i.eo = sub i32 0, %i.en                        ; 2 uses
  %i.ep = load i64, ptr %.0.lcssa.i2369, align 8, !tbaa !11
  %i.eq = and i64 %i.ep, 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.f, label %bb.g, !prof !72

bb.f:                                             ; preds = %vm_get_ep.exit2370
  %i.es = sext i32 %i.eo to i64
  %i.et = getelementptr [8 x i8], ptr %.0.lcssa.i2369, i64 %i.es
  store i64 %i.cy, ptr %i.et, align 8, !tbaa !11
  br label %vm_env_write.exit

bb.g:                                             ; preds = %vm_get_ep.exit2370
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %.0.lcssa.i2369, i32 noundef %i.eo, i64 noundef %i.cy)
  %.pre3210 = load ptr, ptr %i.cv, align 8, !tbaa !73
  br label %vm_env_write.exit

vm_env_write.exit:                                ; preds = %bb.f, %bb.g
  %i.eu = phi ptr [ %i.cw, %bb.f ], [ %.pre3210, %bb.g ]
  %i.ev = getelementptr i8, ptr %i.eu, i64 -8
  store ptr %i.ev, ptr %i.cv, align 8, !tbaa !73
  br label %.backedge.backedge

bb.h:                                             ; preds = %.backedge, %bb.afk
  %i.ew = getelementptr i8, ptr %.6, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11 ; 2 uses
  %i.ey = getelementptr i8, ptr %.6, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !11 ; 4 uses
  %i.fa = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.fa, ptr %.02257, align 8, !tbaa !146
  %i.fb = getelementptr i8, ptr %.02257, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 3 uses
  %.not.i2371 = icmp eq i64 %i.ez, 0
  br i1 %.not.i2371, label %vm_get_ep.exit2377, label %.lr.ph.i2372.preheader

.lr.ph.i2372.preheader:                           ; preds = %bb.h
  %xtraiter3846 = and i64 %i.ez, 7                ; 3 uses
  %i.fd = icmp ult i64 %i.ez, 8
  br i1 %i.fd, label %.lr.ph.i2372.epil.preheader, label %.lr.ph.i2372.preheader.new

.lr.ph.i2372.preheader.new:                       ; preds = %.lr.ph.i2372.preheader
  %unroll_iter3851 = and i64 %i.ez, -8
  br label %.lr.ph.i2372

.lr.ph.i2372:                                     ; preds = %.lr.ph.i2372, %.lr.ph.i2372.preheader.new
  %.07.i2373 = phi ptr [ %i.fc, %.lr.ph.i2372.preheader.new ], [ %i.gj, %.lr.ph.i2372 ]
  %niter3852 = phi i64 [ 0, %.lr.ph.i2372.preheader.new ], [ %niter3852.next.7, %.lr.ph.i2372 ]
  %i.fe = getelementptr i8, ptr %.07.i2373, i64 -8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !11
  %i.fg = and i64 %i.ff, -4
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !11
  %i.fk = and i64 %i.fj, -4
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr i8, ptr %i.fl, i64 -8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !11
  %i.fo = and i64 %i.fn, -4
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr i8, ptr %i.fp, i64 -8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !11
  %i.fs = and i64 %i.fr, -4
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11
  %i.fw = and i64 %i.fv, -4
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr i8, ptr %i.fx, i64 -8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !11
  %i.ga = and i64 %i.fz, -4
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr i8, ptr %i.gb, i64 -8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !11
  %i.ge = and i64 %i.gd, -4
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !11
  %i.gi = and i64 %i.gh, -4
  %i.gj = inttoptr i64 %i.gi to ptr               ; 3 uses
  %niter3852.next.7 = add i64 %niter3852, 8       ; 2 uses
  %niter3852.ncmp.7 = icmp eq i64 %niter3852.next.7, %unroll_iter3851
  br i1 %niter3852.ncmp.7, label %vm_get_ep.exit2377.loopexit.unr-lcssa, label %.lr.ph.i2372, !llvm.loop !306

vm_get_ep.exit2377.loopexit.unr-lcssa:            ; preds = %.lr.ph.i2372
  %lcmp.mod3848.not = icmp eq i64 %xtraiter3846, 0
  br i1 %lcmp.mod3848.not, label %vm_get_ep.exit2377, label %.lr.ph.i2372.epil.preheader

.lr.ph.i2372.epil.preheader:                      ; preds = %vm_get_ep.exit2377.loopexit.unr-lcssa, %.lr.ph.i2372.preheader
  %.07.i2373.epil.init = phi ptr [ %i.fc, %.lr.ph.i2372.preheader ], [ %i.gj, %vm_get_ep.exit2377.loopexit.unr-lcssa ]
  %lcmp.mod3850 = icmp ne i64 %xtraiter3846, 0
  call void @llvm.assume(i1 %lcmp.mod3850)
  br label %.lr.ph.i2372.epil

.lr.ph.i2372.epil:                                ; preds = %.lr.ph.i2372.epil, %.lr.ph.i2372.epil.preheader
  %.07.i2373.epil = phi ptr [ %i.gn, %.lr.ph.i2372.epil ], [ %.07.i2373.epil.init, %.lr.ph.i2372.epil.preheader ]
  %epil.iter3847 = phi i64 [ %epil.iter3847.next, %.lr.ph.i2372.epil ], [ 0, %.lr.ph.i2372.epil.preheader ]
  %i.gk = getelementptr i8, ptr %.07.i2373.epil, i64 -8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11
  %i.gm = and i64 %i.gl, -4
  %i.gn = inttoptr i64 %i.gm to ptr               ; 2 uses
  %epil.iter3847.next = add i64 %epil.iter3847, 1 ; 2 uses
  %epil.iter3847.cmp.not = icmp eq i64 %epil.iter3847.next, %xtraiter3846
  br i1 %epil.iter3847.cmp.not, label %vm_get_ep.exit2377, label %.lr.ph.i2372.epil, !llvm.loop !310

vm_get_ep.exit2377:                               ; preds = %vm_get_ep.exit2377.loopexit.unr-lcssa, %.lr.ph.i2372.epil, %bb.h
  %.0.lcssa.i2376 = phi ptr [ %i.fc, %bb.h ], [ %i.gj, %vm_get_ep.exit2377.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i2372.epil ] ; 8 uses
  %.val2350 = load i64, ptr %.0.lcssa.i2376, align 8, !tbaa !11 ; 2 uses
  %i.go = and i64 %.val2350, 512
  %.not2342 = icmp eq i64 %i.go, 0
  br i1 %.not2342, label %bb.i, label %bb.o

bb.i:                                             ; preds = %vm_get_ep.exit2377
  %i.gp = and i64 %.val2350, 2147418113
  switch i64 %i.gp, label %VM_ENV_BLOCK_HANDLER.exit [
    i64 1145307137, label %rb_vm_bh_to_procval.exit
    i64 858980353, label %rb_vm_bh_to_procval.exit
  ]

VM_ENV_BLOCK_HANDLER.exit:                        ; preds = %bb.i
  %i.gq = getelementptr i8, ptr %.0.lcssa.i2376, i64 -8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11 ; 9 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %rb_vm_bh_to_procval.exit, label %bb.j

bb.j:                                             ; preds = %VM_ENV_BLOCK_HANDLER.exit
  %i.gt = and i64 %i.gr, 3
  switch i64 %i.gt, label %bb.k [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.gu = and i64 %i.gr, 255
  %i.gv = icmp eq i64 %i.gu, 12
  br i1 %i.gv, label %vm_block_handler_type.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gw = and i64 %i.gr, 7
  %.not.i2380 = icmp eq i64 %i.gw, 0
  br i1 %.not.i2380, label %RB_SYMBOL_P.exit.i.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.l
  %i.gx = inttoptr i64 %i.gr to ptr
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !77
  %.fr10.i.i = freeze i64 %i.gy
  %i.gz = and i64 %.fr10.i.i, 31
  %i.ha = icmp eq i64 %i.gz, 20
  br i1 %i.ha, label %vm_block_handler_type.exit.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i:          ; preds = %bb.j, %bb.j
  %i.hb = and i64 %i.gr, -4
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.he = call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.hc, i64 noundef %i.hd, i8 noundef signext 0), !inline_history !78
  br label %rb_vm_bh_to_procval.exit

vm_block_handler_type.exit.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.k
  %i.hf = call i64 @rb_sym_to_proc(i64 noundef %i.gr) #23
  br label %rb_vm_bh_to_procval.exit

rb_vm_bh_to_procval.exit:                         ; preds = %bb.i, %bb.i, %VM_ENV_BLOCK_HANDLER.exit, %bb.l, %RB_SYMBOL_P.exit.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i, %vm_block_handler_type.exit.i
  %.0.i2379 = phi i64 [ 4, %VM_ENV_BLOCK_HANDLER.exit ], [ %i.he, %RB_SYMBOL_P.exit.thread7.fold.split.i.i ], [ %i.hf, %vm_block_handler_type.exit.i ], [ %i.gr, %bb.l ], [ %i.gr, %RB_SYMBOL_P.exit.i.i ], [ 4, %bb.i ], [ 4, %bb.i ] ; 3 uses
  %i.hg = trunc i64 %i.ex to i32
  %i.hh = sub i32 0, %i.hg                        ; 2 uses
  %i.hi = load i64, ptr %.0.lcssa.i2376, align 8, !tbaa !11
  %i.hj = and i64 %i.hi, 8
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %rb_vm_bh_to_procval.exit
  %i.hl = sext i32 %i.hh to i64
  %i.hm = getelementptr [8 x i8], ptr %.0.lcssa.i2376, i64 %i.hl
  store i64 %.0.i2379, ptr %i.hm, align 8, !tbaa !11
  br label %vm_env_write.exit2381

bb.n:                                             ; preds = %rb_vm_bh_to_procval.exit
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %.0.lcssa.i2376, i32 noundef %i.hh, i64 noundef %.0.i2379)
  br label %vm_env_write.exit2381

vm_env_write.exit2381:                            ; preds = %bb.m, %bb.n
  %i.hn = load i64, ptr %.0.lcssa.i2376, align 8, !tbaa !11
  %i.ho = or i64 %i.hn, 512
  store i64 %i.ho, ptr %.0.lcssa.i2376, align 8, !tbaa !11
  br label %bb.p

bb.o:                                             ; preds = %vm_get_ep.exit2377
  %i.hp = sub i64 0, %i.ex
  %i.hq = getelementptr [8 x i8], ptr %.0.lcssa.i2376, i64 %i.hp
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %vm_env_write.exit2381
  %.02258 = phi i64 [ %i.hr, %bb.o ], [ %.0.i2379, %vm_env_write.exit2381 ]
  %i.hs = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !73 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  store ptr %i.hu, ptr %i.hs, align 8, !tbaa !73
  store i64 %.02258, ptr %i.ht, align 8, !tbaa !11
  br label %.backedge.backedge

bb.q:                                             ; preds = %.backedge, %bb.afl
  %i.hv = getelementptr i8, ptr %.6, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !11
  %i.hx = getelementptr i8, ptr %.6, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !11 ; 4 uses
  %i.hz = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !73 ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !11 ; 2 uses
  %i.id = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.id, ptr %.02257, align 8, !tbaa !146
  %i.ie = getelementptr i8, ptr %.02257, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !15 ; 3 uses
  %.not.i2382 = icmp eq i64 %i.hy, 0
  br i1 %.not.i2382, label %vm_get_ep.exit2388, label %.lr.ph.i2383.preheader

.lr.ph.i2383.preheader:                           ; preds = %bb.q
  %xtraiter3839 = and i64 %i.hy, 7                ; 3 uses
  %i.ig = icmp ult i64 %i.hy, 8
  br i1 %i.ig, label %.lr.ph.i2383.epil.preheader, label %.lr.ph.i2383.preheader.new

.lr.ph.i2383.preheader.new:                       ; preds = %.lr.ph.i2383.preheader
  %unroll_iter3844 = and i64 %i.hy, -8
  br label %.lr.ph.i2383

.lr.ph.i2383:                                     ; preds = %.lr.ph.i2383, %.lr.ph.i2383.preheader.new
  %.07.i2384 = phi ptr [ %i.if, %.lr.ph.i2383.preheader.new ], [ %i.jm, %.lr.ph.i2383 ]
  %niter3845 = phi i64 [ 0, %.lr.ph.i2383.preheader.new ], [ %niter3845.next.7, %.lr.ph.i2383 ]
  %i.ih = getelementptr i8, ptr %.07.i2384, i64 -8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !11
  %i.ij = and i64 %i.ii, -4
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = getelementptr i8, ptr %i.ik, i64 -8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !11
  %i.in = and i64 %i.im, -4
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = getelementptr i8, ptr %i.io, i64 -8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !11
  %i.ir = and i64 %i.iq, -4
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = getelementptr i8, ptr %i.is, i64 -8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !11
  %i.iv = and i64 %i.iu, -4
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = getelementptr i8, ptr %i.iw, i64 -8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !11
  %i.iz = and i64 %i.iy, -4
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = getelementptr i8, ptr %i.ja, i64 -8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !11
  %i.jd = and i64 %i.jc, -4
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = getelementptr i8, ptr %i.je, i64 -8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !11
  %i.jh = and i64 %i.jg, -4
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !11
  %i.jl = and i64 %i.jk, -4
  %i.jm = inttoptr i64 %i.jl to ptr               ; 3 uses
  %niter3845.next.7 = add i64 %niter3845, 8       ; 2 uses
  %niter3845.ncmp.7 = icmp eq i64 %niter3845.next.7, %unroll_iter3844
  br i1 %niter3845.ncmp.7, label %vm_get_ep.exit2388.loopexit.unr-lcssa, label %.lr.ph.i2383, !llvm.loop !306

vm_get_ep.exit2388.loopexit.unr-lcssa:            ; preds = %.lr.ph.i2383
  %lcmp.mod3841.not = icmp eq i64 %xtraiter3839, 0
  br i1 %lcmp.mod3841.not, label %vm_get_ep.exit2388, label %.lr.ph.i2383.epil.preheader

.lr.ph.i2383.epil.preheader:                      ; preds = %vm_get_ep.exit2388.loopexit.unr-lcssa, %.lr.ph.i2383.preheader
  %.07.i2384.epil.init = phi ptr [ %i.if, %.lr.ph.i2383.preheader ], [ %i.jm, %vm_get_ep.exit2388.loopexit.unr-lcssa ]
  %lcmp.mod3843 = icmp ne i64 %xtraiter3839, 0
  call void @llvm.assume(i1 %lcmp.mod3843)
  br label %.lr.ph.i2383.epil

.lr.ph.i2383.epil:                                ; preds = %.lr.ph.i2383.epil, %.lr.ph.i2383.epil.preheader
  %.07.i2384.epil = phi ptr [ %i.jq, %.lr.ph.i2383.epil ], [ %.07.i2384.epil.init, %.lr.ph.i2383.epil.preheader ]
  %epil.iter3840 = phi i64 [ %epil.iter3840.next, %.lr.ph.i2383.epil ], [ 0, %.lr.ph.i2383.epil.preheader ]
  %i.jn = getelementptr i8, ptr %.07.i2384.epil, i64 -8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !11
  %i.jp = and i64 %i.jo, -4
  %i.jq = inttoptr i64 %i.jp to ptr               ; 2 uses
  %epil.iter3840.next = add i64 %epil.iter3840, 1 ; 2 uses
  %epil.iter3840.cmp.not = icmp eq i64 %epil.iter3840.next, %xtraiter3839
  br i1 %epil.iter3840.cmp.not, label %vm_get_ep.exit2388, label %.lr.ph.i2383.epil, !llvm.loop !311

vm_get_ep.exit2388:                               ; preds = %vm_get_ep.exit2388.loopexit.unr-lcssa, %.lr.ph.i2383.epil, %bb.q
  %.0.lcssa.i2387 = phi ptr [ %i.if, %bb.q ], [ %i.jm, %vm_get_ep.exit2388.loopexit.unr-lcssa ], [ %i.jq, %.lr.ph.i2383.epil ] ; 5 uses
  %i.jr = trunc i64 %i.hw to i32
  %i.js = sub i32 0, %i.jr                        ; 2 uses
  %i.jt = load i64, ptr %.0.lcssa.i2387, align 8, !tbaa !11
  %i.ju = and i64 %i.jt, 8
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %bb.r, label %bb.s, !prof !72

bb.r:                                             ; preds = %vm_get_ep.exit2388
  %i.jw = sext i32 %i.js to i64
  %i.jx = getelementptr [8 x i8], ptr %.0.lcssa.i2387, i64 %i.jw
  store i64 %i.ic, ptr %i.jx, align 8, !tbaa !11
  br label %vm_env_write.exit2389

bb.s:                                             ; preds = %vm_get_ep.exit2388
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %.0.lcssa.i2387, i32 noundef %i.js, i64 noundef %i.ic)
  %.pre3209 = load ptr, ptr %i.hz, align 8, !tbaa !73
  br label %vm_env_write.exit2389

vm_env_write.exit2389:                            ; preds = %bb.r, %bb.s
  %i.jy = phi ptr [ %i.ia, %bb.r ], [ %.pre3209, %bb.s ]
  %i.jz = load i64, ptr %.0.lcssa.i2387, align 8, !tbaa !11
  %i.ka = or i64 %i.jz, 512
  store i64 %i.ka, ptr %.0.lcssa.i2387, align 8, !tbaa !11
  %i.kb = getelementptr i8, ptr %i.jy, i64 -8
  store ptr %i.kb, ptr %i.hz, align 8, !tbaa !73
  br label %.backedge.backedge

bb.t:                                             ; preds = %.backedge, %bb.afm
  %i.kc = getelementptr i8, ptr %.6, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !11 ; 2 uses
  %i.ke = getelementptr i8, ptr %.6, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !11 ; 4 uses
  %i.kg = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.kg, ptr %.02257, align 8, !tbaa !146
  %i.kh = getelementptr i8, ptr %.02257, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !15 ; 3 uses
  %.not.i2390 = icmp eq i64 %i.kf, 0
  br i1 %.not.i2390, label %vm_get_ep.exit2396, label %.lr.ph.i2391.preheader

.lr.ph.i2391.preheader:                           ; preds = %bb.t
  %xtraiter3833 = and i64 %i.kf, 7                ; 3 uses
  %i.kj = icmp ult i64 %i.kf, 8
  br i1 %i.kj, label %.lr.ph.i2391.epil.preheader, label %.lr.ph.i2391.preheader.new

.lr.ph.i2391.preheader.new:                       ; preds = %.lr.ph.i2391.preheader
  %unroll_iter3837 = and i64 %i.kf, -8
  br label %.lr.ph.i2391

.lr.ph.i2391:                                     ; preds = %.lr.ph.i2391, %.lr.ph.i2391.preheader.new
  %.07.i2392 = phi ptr [ %i.ki, %.lr.ph.i2391.preheader.new ], [ %i.lp, %.lr.ph.i2391 ]
  %niter3838 = phi i64 [ 0, %.lr.ph.i2391.preheader.new ], [ %niter3838.next.7, %.lr.ph.i2391 ]
  %i.kk = getelementptr i8, ptr %.07.i2392, i64 -8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !11
  %i.km = and i64 %i.kl, -4
  %i.kn = inttoptr i64 %i.km to ptr
  %i.ko = getelementptr i8, ptr %i.kn, i64 -8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !11
  %i.kq = and i64 %i.kp, -4
  %i.kr = inttoptr i64 %i.kq to ptr
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !11
  %i.ku = and i64 %i.kt, -4
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = getelementptr i8, ptr %i.kv, i64 -8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !11
  %i.ky = and i64 %i.kx, -4
  %i.kz = inttoptr i64 %i.ky to ptr
  %i.la = getelementptr i8, ptr %i.kz, i64 -8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !11
  %i.lc = and i64 %i.lb, -4
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = getelementptr i8, ptr %i.ld, i64 -8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !11
  %i.lg = and i64 %i.lf, -4
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = getelementptr i8, ptr %i.lh, i64 -8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !11
  %i.lk = and i64 %i.lj, -4
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = getelementptr i8, ptr %i.ll, i64 -8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !11
  %i.lo = and i64 %i.ln, -4
  %i.lp = inttoptr i64 %i.lo to ptr               ; 3 uses
  %niter3838.next.7 = add i64 %niter3838, 8       ; 2 uses
  %niter3838.ncmp.7 = icmp eq i64 %niter3838.next.7, %unroll_iter3837
  br i1 %niter3838.ncmp.7, label %vm_get_ep.exit2396.loopexit.unr-lcssa, label %.lr.ph.i2391, !llvm.loop !306

vm_get_ep.exit2396.loopexit.unr-lcssa:            ; preds = %.lr.ph.i2391
  %lcmp.mod3834.not = icmp eq i64 %xtraiter3833, 0
  br i1 %lcmp.mod3834.not, label %vm_get_ep.exit2396, label %.lr.ph.i2391.epil.preheader

.lr.ph.i2391.epil.preheader:                      ; preds = %vm_get_ep.exit2396.loopexit.unr-lcssa, %.lr.ph.i2391.preheader
  %.07.i2392.epil.init = phi ptr [ %i.ki, %.lr.ph.i2391.preheader ], [ %i.lp, %vm_get_ep.exit2396.loopexit.unr-lcssa ]
  %lcmp.mod3836 = icmp ne i64 %xtraiter3833, 0
  call void @llvm.assume(i1 %lcmp.mod3836)
  br label %.lr.ph.i2391.epil

.lr.ph.i2391.epil:                                ; preds = %.lr.ph.i2391.epil, %.lr.ph.i2391.epil.preheader
  %.07.i2392.epil = phi ptr [ %i.lt, %.lr.ph.i2391.epil ], [ %.07.i2392.epil.init, %.lr.ph.i2391.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i2391.epil ], [ 0, %.lr.ph.i2391.epil.preheader ]
  %i.lq = getelementptr i8, ptr %.07.i2392.epil, i64 -8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !11
  %i.ls = and i64 %i.lr, -4
  %i.lt = inttoptr i64 %i.ls to ptr               ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3833
  br i1 %epil.iter.cmp.not, label %vm_get_ep.exit2396, label %.lr.ph.i2391.epil, !llvm.loop !312

vm_get_ep.exit2396:                               ; preds = %vm_get_ep.exit2396.loopexit.unr-lcssa, %.lr.ph.i2391.epil, %bb.t
  %.0.lcssa.i2395 = phi ptr [ %i.ki, %bb.t ], [ %i.lp, %vm_get_ep.exit2396.loopexit.unr-lcssa ], [ %i.lt, %.lr.ph.i2391.epil ] ; 8 uses
  %.val = load i64, ptr %.0.lcssa.i2395, align 8, !tbaa !11 ; 7 uses
  %i.lu = and i64 %.val, 512
  %.not2340 = icmp eq i64 %i.lu, 0
  br i1 %.not2340, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %vm_get_ep.exit2396
  %i.lv = and i64 %.val, 2147418113
  switch i64 %i.lv, label %VM_ENV_BLOCK_HANDLER.exit2399 [
    i64 1145307137, label %VM_ENV_BLOCK_HANDLER.exit2399.thread
    i64 858980353, label %VM_ENV_BLOCK_HANDLER.exit2399.thread
  ]

VM_ENV_BLOCK_HANDLER.exit2399:                    ; preds = %bb.u
  %i.lw = getelementptr i8, ptr %.0.lcssa.i2395, i64 -8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !11 ; 8 uses
  %.not2341 = icmp eq i64 %i.lx, 0
  br i1 %.not2341, label %VM_ENV_BLOCK_HANDLER.exit2399.thread, label %bb.v

bb.v:                                             ; preds = %VM_ENV_BLOCK_HANDLER.exit2399
  %i.ly = and i64 %i.lx, 3
  switch i64 %i.ly, label %bb.w [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i
  ]

bb.w:                                             ; preds = %bb.v
  %i.lz = and i64 %i.lx, 255
  %i.ma = icmp eq i64 %i.lz, 12
  br i1 %i.ma, label %vm_block_handler_type.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mb = and i64 %i.lx, 7
  %.not2948 = icmp eq i64 %i.mb, 0
  br i1 %.not2948, label %RB_SYMBOL_P.exit.i, label %VM_ENV_BLOCK_HANDLER.exit2399.thread

RB_SYMBOL_P.exit.i:                               ; preds = %bb.x
  %i.mc = inttoptr i64 %i.lx to ptr
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !77
  %.fr10.i = freeze i64 %i.md
  %i.me = and i64 %.fr10.i, 31
  %i.mf = icmp eq i64 %i.me, 20
  br i1 %i.mf, label %vm_block_handler_type.exit, label %VM_ENV_BLOCK_HANDLER.exit2399.thread

RB_SYMBOL_P.exit.thread7.fold.split.i:            ; preds = %bb.v, %bb.v
  %i.mg = load i64, ptr @rb_block_param_proxy, align 8, !tbaa !11
  br label %bb.ab

vm_block_handler_type.exit:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.w
  %i.mh = call i64 @rb_sym_to_proc(i64 noundef %i.lx) #23
  %.pre3208 = load i64, ptr %.0.lcssa.i2395, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit2399.thread

VM_ENV_BLOCK_HANDLER.exit2399.thread:             ; preds = %bb.u, %bb.u, %RB_SYMBOL_P.exit.i, %bb.x, %VM_ENV_BLOCK_HANDLER.exit2399, %vm_block_handler_type.exit
  %i.mi = phi i64 [ %.pre3208, %vm_block_handler_type.exit ], [ %.val, %RB_SYMBOL_P.exit.i ], [ %.val, %VM_ENV_BLOCK_HANDLER.exit2399 ], [ %.val, %bb.x ], [ %.val, %bb.u ], [ %.val, %bb.u ]
  %.02259 = phi i64 [ %i.mh, %vm_block_handler_type.exit ], [ %i.lx, %RB_SYMBOL_P.exit.i ], [ 4, %VM_ENV_BLOCK_HANDLER.exit2399 ], [ %i.lx, %bb.x ], [ 4, %bb.u ], [ 4, %bb.u ] ; 3 uses
  %i.mj = trunc i64 %i.kd to i32
  %i.mk = sub i32 0, %i.mj                        ; 2 uses
  %i.ml = and i64 %i.mi, 8
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %bb.y, label %bb.z, !prof !72

bb.y:                                             ; preds = %VM_ENV_BLOCK_HANDLER.exit2399.thread
  %i.mn = sext i32 %i.mk to i64
  %i.mo = getelementptr [8 x i8], ptr %.0.lcssa.i2395, i64 %i.mn
  store i64 %.02259, ptr %i.mo, align 8, !tbaa !11
  br label %vm_env_write.exit2401

bb.z:                                             ; preds = %VM_ENV_BLOCK_HANDLER.exit2399.thread
  call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %.0.lcssa.i2395, i32 noundef %i.mk, i64 noundef %.02259)
  br label %vm_env_write.exit2401

vm_env_write.exit2401:                            ; preds = %bb.y, %bb.z
  %i.mp = load i64, ptr %.0.lcssa.i2395, align 8, !tbaa !11
  %i.mq = or i64 %i.mp, 512
  store i64 %i.mq, ptr %.0.lcssa.i2395, align 8, !tbaa !11
  br label %bb.ab

bb.aa:                                            ; preds = %vm_get_ep.exit2396
  %i.mr = sub i64 0, %i.kd
  %i.ms = getelementptr [8 x i8], ptr %.0.lcssa.i2395, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %RB_SYMBOL_P.exit.thread7.fold.split.i, %vm_env_write.exit2401, %bb.aa
  %.12260 = phi i64 [ %i.mt, %bb.aa ], [ %i.mg, %RB_SYMBOL_P.exit.thread7.fold.split.i ], [ %.02259, %vm_env_write.exit2401 ]
  %i.mu = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !73 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 8
  store ptr %i.mw, ptr %i.mu, align 8, !tbaa !73
  store i64 %.12260, ptr %i.mv, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ac:                                            ; preds = %.backedge, %bb.afn
  %i.mx = getelementptr i8, ptr %.6, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !11 ; 2 uses
  %i.mz = getelementptr i8, ptr %.6, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !11 ; 3 uses
  %i.nb = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.nb, ptr %.02257, align 8, !tbaa !146
  %i.nc = getelementptr i8, ptr %.02257, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !15 ; 3 uses
  %.0.val4.i = load i64, ptr %i.nd, align 8, !tbaa !11
  %i.ne = and i64 %.0.val4.i, 2
  %.not5.i = icmp eq i64 %i.ne, 0
  br i1 %.not5.i, label %.lr.ph.i2403, label %VM_EP_LEP.exit

.lr.ph.i2403:                                     ; preds = %bb.ac, %.lr.ph.i2403
  %.06.i = phi ptr [ %i.nh, %.lr.ph.i2403 ], [ %i.nd, %bb.ac ]
  %i.nf = getelementptr i8, ptr %.06.i, i64 -8
  %.0.val3.i = load i64, ptr %i.nf, align 8, !tbaa !11
  %i.ng = and i64 %.0.val3.i, -4
  %i.nh = inttoptr i64 %i.ng to ptr               ; 3 uses
  %.0.val.i = load i64, ptr %i.nh, align 8, !tbaa !11
  %i.ni = and i64 %.0.val.i, 2
  %.not.i2404 = icmp eq i64 %i.ni, 0
  br i1 %.not.i2404, label %.lr.ph.i2403, label %VM_EP_LEP.exit, !llvm.loop !13

VM_EP_LEP.exit:                                   ; preds = %.lr.ph.i2403, %bb.ac
  %.0.lcssa.i2402 = phi ptr [ %i.nd, %bb.ac ], [ %i.nh, %.lr.ph.i2403 ] ; 2 uses
  %i.nj = icmp eq i64 %i.na, 0
  %i.nk = load ptr, ptr %i.aq, align 8, !tbaa !220
  %.not8.i.i.i = icmp eq ptr %i.nk, %.0.lcssa.i2402
  %i.nl = getelementptr i8, ptr %.0.lcssa.i2402, i64 -16
  %.0.in.i.i.i = select i1 %.not8.i.i.i, ptr %i.ar, ptr %i.nl
  %.0.i.i.i = load i64, ptr %.0.in.i.i.i, align 8, !tbaa !11 ; 2 uses
  %i.nm = inttoptr i64 %.0.i.i.i to ptr           ; 6 uses
  %i.nn = icmp eq i64 %.0.i.i.i, 0                ; 2 uses
  br i1 %i.nj, label %lep_svar.exit.i.i, label %lep_svar.exit.i17.i

lep_svar.exit.i.i:                                ; preds = %VM_EP_LEP.exit
  br i1 %i.nn, label %vm_getspecial.exit, label %bb.ad

bb.ad:                                            ; preds = %lep_svar.exit.i.i
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !77
  %i.np = and i64 %i.no, 61440
  %.not.i.i = icmp eq i64 %i.np, 8192
  br i1 %.not.i.i, label %bb.ae, label %vm_getspecial.exit

bb.ae:                                            ; preds = %bb.ad
  switch i64 %i.my, label %bb.ah [
    i64 0, label %bb.af
    i64 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.nq = getelementptr i8, ptr %i.nm, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !313
  br label %vm_getspecial.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ns = getelementptr i8, ptr %i.nm, i64 24
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !221
  br label %vm_getspecial.exit

bb.ah:                                            ; preds = %bb.ae
  %i.nu = getelementptr i8, ptr %i.nm, i64 32
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !314 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 4
  br i1 %i.nw, label %vm_getspecial.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nx = add i64 %i.my, -2
  %i.ny = call i64 @rb_ary_entry(i64 noundef %i.nv, i64 noundef %i.nx) #56
  br label %vm_getspecial.exit

lep_svar.exit.i17.i:                              ; preds = %VM_EP_LEP.exit
  br i1 %i.nn, label %lep_svar_get.exit22.i, label %bb.aj

bb.aj:                                            ; preds = %lep_svar.exit.i17.i
  %i.nz = load i64, ptr %i.nm, align 8, !tbaa !77
  %i.oa = and i64 %i.nz, 61440
  %.not.i20.i = icmp eq i64 %i.oa, 8192
  br i1 %.not.i20.i, label %bb.ak, label %lep_svar_get.exit22.i

end_hunk_0
