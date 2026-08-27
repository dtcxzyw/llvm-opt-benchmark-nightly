Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_ddfw?download=true
inline.NumInlined: 927
inline.NumDeleted: 339
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sat4ddfw8simplifyEv:bb.a

bb.r:                                             ; preds = %.noexc61, %bb.q
  %i.cl = phi i32 [ %.pre2.i60, %.noexc61 ], [ 0, %bb.q ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i58, %.noexc61 ], [ %i.cg, %bb.q ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  %i.cq = trunc nuw i64 %indvars.iv to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !15
  %i.cr = add i32 %i.cl, 1
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !15
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !83
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread: ; preds = %bb.b, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.r
  %i.cs = phi ptr [ %.pre, %bb.r ], [ %i.j, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.11, %bb.r ], [ %.sroa.0.0370, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.sroa.0.0370, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge.preheader, label %_ZNK6vectorIN3sat11clause_infoELb1EjE4sizeEv.exit, !llvm.loop !197

.loopexit791:                                     ; preds = %bb.g, %bb.m
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.10, %bb.m ], [ null, %bb.g ]
  %lpad.loopexit793 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e, %_ZN6vectorIjLb0EjE5resetEv.exit.thread
  %.sroa.0.2.ph792 = phi ptr [ %.sroa.0.0370, %bb.e ], [ %.sroa.0.11, %_ZN6vectorIjLb0EjE5resetEv.exit.thread ]
  %lpad.loopexit.split-lp794 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread.lr.ph, %.critedge
  %i.cu = phi ptr [ %.pre457, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread.lr.ph ], [ %i.ee, %.critedge ] ; 8 uses
  %indvars.iv454 = phi i64 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread.lr.ph ], [ %indvars.iv.next455, %.critedge ] ; 3 uses
  %.sroa.0225.0387 = phi ptr [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread.lr.ph ], [ %.sroa.0225.1.lcssa, %.critedge ] ; 6 uses
  %.sroa.0.3386 = phi ptr [ %.sroa.0.0.lcssa.ph, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread.lr.ph ], [ %.sroa.0.4.lcssa, %.critedge ] ; 6 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = icmp samesign ult i64 %indvars.iv454, %i.cx
  br i1 %i.cy, label %bb.t, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread
  %i.cz = shl nuw nsw i64 %i.cx, 2                ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %.not392 = icmp eq i32 %i.cw, 0
  br i1 %.not392, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !175 ; 3 uses
  %i.dd = add nsw i64 %i.cz, -4                   ; 2 uses
  %i.de = and i64 %i.dd, 4
  %lcmp.mod.not.not = icmp eq i64 %i.de, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph394
  %.sroa.01.0.copyload.prol = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.df = xor i32 %.sroa.01.0.copyload.prol, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !126 ; 2 uses
  %.not.i126.prol = icmp eq ptr %i.di, null
  br i1 %.not.i126.prol, label %_ZN6vectorIjLb0EjE5resetEv.exit127.prol, label %bb.s

bb.s:                                             ; preds = %.prol.preheader
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  store i32 0, ptr %i.dj, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE5resetEv.exit127.prol

_ZN6vectorIjLb0EjE5resetEv.exit127.prol:          ; preds = %bb.s, %.prol.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit127.prol, %.lr.ph394
  %.042393.unr = phi ptr [ %i.cu, %.lr.ph394 ], [ %i.dk, %_ZN6vectorIjLb0EjE5resetEv.exit127.prol ]
  %i.dl = icmp eq i64 %i.dd, 0
  br i1 %i.dl, label %._crit_edge395, label %.lr.ph394.new

bb.t:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv454
  %.sroa.027.0.copyload = load i32, ptr %i.dm, align 4, !tbaa !15 ; 5 uses
  %i.dn = xor i32 %.sroa.027.0.copyload, 1
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !126 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.critedge, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.t
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dw
  %.not47377 = icmp eq i32 %i.du, 0
  br i1 %.not47377, label %.critedge, label %.lr.ph382

.lr.ph382:                                        ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.dy = icmp eq i32 %.sroa.027.0.copyload, -2
  %i.dz = trunc i32 %.sroa.027.0.copyload to i1
  %i.ea = select i1 %i.dz, ptr @.str.12, ptr @.str.11
  %.mask.i = and i32 %.sroa.027.0.copyload, 1
  %i.eb = zext nneg i32 %.mask.i to i64
  %i.ec = lshr i32 %.sroa.027.0.copyload, 1
  %i.ed = zext nneg i32 %i.ec to i64
  br label %bb.u

.critedge.loopexit:                               ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread
  %.pre460 = load ptr, ptr %11, align 8, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.loopexit, %_ZN6vectorIjLb0EjE3endEv.exit
  %i.ee = phi ptr [ %i.cu, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %.pre460, %.critedge.loopexit ], [ %i.cu, %bb.t ] ; 2 uses
  %.sroa.0.4.lcssa = phi ptr [ %.sroa.0.3386, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %.sroa.0.6, %.critedge.loopexit ], [ %.sroa.0.3386, %bb.t ] ; 2 uses
  %.sroa.0225.1.lcssa = phi ptr [ %.sroa.0225.0387, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %.sroa.0225.4, %.critedge.loopexit ], [ %.sroa.0225.0387, %bb.t ] ; 2 uses
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %._crit_edge395, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit63.thread, !llvm.loop !198

bb.u:                                             ; preds = %.lr.ph382, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread
  %.046381 = phi ptr [ %i.dr, %.lr.ph382 ], [ %i.pp, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread ] ; 2 uses
  %.sroa.0225.1380 = phi ptr [ %.sroa.0225.0387, %.lr.ph382 ], [ %.sroa.0225.4, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread ] ; 6 uses
  %.sroa.0.4378 = phi ptr [ %.sroa.0.3386, %.lr.ph382 ], [ %.sroa.0.6, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread ] ; 21 uses
  %i.eg = load i32, ptr %.046381, align 4, !tbaa !15
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ei = zext i32 %i.eg to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !12 ; 5 uses
  %i.em = icmp eq ptr %i.el, null                 ; 2 uses
  br i1 %i.em, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67:   ; preds = %bb.u
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !15
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67.thread

.loopexit:                                        ; preds = %.peel.next.i164, %bb.aw, %bb.ax, %.noexc175
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.loopexit.split-lp.loopexit:                      ; preds = %.noexc157, %bb.as, %bb.ar, %.peel.next.i
  %lpad.loopexit292 = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bz, %bb.cf
  %.sroa.0.5.ph.ph.ph = phi ptr [ %.sroa.0.13, %bb.cf ], [ null, %bb.bz ]
  %lpad.loopexit700 = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %.noexc79, %_ZN3satlsERSoNS_7literalE.exit, %.noexc84, %.noexc85, %.noexc86, %.noexc87, %_ZN3satlsERSoRKNS_11clause_infoE.exit, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, %bb.ap, %.noexc152, %bb.aq, %bb.au, %.noexc170, %bb.av, %bb.bo, %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body204

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67.thread: ; preds = %bb.u, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67
  %.not.i68 = icmp eq ptr %.sroa.0225.1380, null
  br i1 %.not.i68, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67.thread
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0225.1380, i64 -4
  store i32 0, ptr %i.eq, align 4, !tbaa !15
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.v, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67.thread
  br i1 %i.em, label %._crit_edge, label %_ZNK3sat11clause_info3endEv.exit

_ZNK3sat11clause_info3endEv.exit:                 ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.er = getelementptr inbounds i8, ptr %i.el, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !15 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eu
  %.not48373 = icmp eq i32 %i.es, 0
  br i1 %.not48373, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3sat11clause_info3endEv.exit
  %i.ew = icmp eq ptr %.sroa.0.4378, null
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.4378, i64 -4
  br label %bb.w

._crit_edge:                                      ; preds = %bb.aj, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZNK3sat11clause_info3endEv.exit
  %.sroa.0225.2.lcssa = phi ptr [ %.sroa.0225.1380, %_ZNK3sat11clause_info3endEv.exit ], [ %.sroa.0225.1380, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %.sroa.0225.3, %bb.aj ] ; 21 uses
  %i.ey = icmp eq ptr %.sroa.0225.2.lcssa, null   ; 2 uses
  br i1 %i.ey, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit70

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.thread: ; preds = %._crit_edge
  %i.ez = load i32, ptr %i.i, align 4, !tbaa !91
  br label %_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit70:   ; preds = %._crit_edge
  %i.fa = getelementptr inbounds i8, ptr %.sroa.0225.2.lcssa, i64 -4 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !15 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.ak, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96

bb.w:                                             ; preds = %.lr.ph, %bb.aj
  %.045375 = phi ptr [ %i.el, %.lr.ph ], [ %i.hf, %bb.aj ] ; 2 uses
  %.sroa.0225.2374 = phi ptr [ %.sroa.0225.1380, %.lr.ph ], [ %.sroa.0225.3, %bb.aj ] ; 8 uses
  %i.fd = load i32, ptr %.045375, align 4, !tbaa !15 ; 3 uses
  %i.fe = lshr i32 %i.fd, 5                       ; 2 uses
  br i1 %i.ew, label %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread", label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i71

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i71:            ; preds = %bb.w
  %i.ff = load i32, ptr %i.ex, align 4, !tbaa !15
  %i.fg = icmp ult i32 %i.fe, %i.ff
  br i1 %i.fg, label %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit", label %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread"

"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit": ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i71
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4378, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  %i.fk = and i32 %i.fd, 31
  %i.fl = xor i32 %i.fk, 1
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = and i32 %i.fj, %i.fm
  %.not287 = icmp eq i32 %i.fn, 0
  br i1 %.not287, label %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread", label %bb.aj

"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread": ; preds = %bb.w, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i71, %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit"
  %i.fo = icmp eq ptr %.sroa.0225.2374, null
  br i1 %i.fo, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread"
  %i.fp = getelementptr inbounds i8, ptr %.sroa.0225.2374, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !15 ; 5 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.0225.2374, i64 -8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !15
  %i.ft = icmp eq i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.z, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit76

bb.y:                                             ; preds = %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit.thread"
  %i.fu = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc147 unwind label %bb.ai ; 3 uses

.noexc147:                                        ; preds = %bb.y
  store i32 2, ptr %i.fu, align 4, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 0, ptr %i.fv, align 4, !tbaa !15
  br label %.noexc75

bb.z:                                             ; preds = %bb.x
  %i.fw = mul i32 %i.fq, 3
  %i.fx = add i32 %i.fw, 1
  %i.fy = lshr i32 %i.fx, 1                       ; 3 uses
  %i.fz = shl i32 %i.fy, 2
  %i.ga = add i32 %i.fz, 8                        ; 2 uses
  %.not.i137 = icmp ugt i32 %i.fy, %i.fq
  br i1 %.not.i137, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gb = shl i32 %i.fq, 2
  %i.gc = add i32 %i.gb, 8
  %.not27.i146 = icmp ugt i32 %i.ga, %i.gc
  br i1 %.not27.i146, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gd = call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gd, align 8, !tbaa !95
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 3 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !157
  %i.gg = load ptr, ptr %7, align 8, !tbaa !159   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

bb.ad:                                            ; preds = %bb.ac
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !161 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.gm, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.ac
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !159
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !162
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !162
  %.phi.trans.insert.i140 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i141 = load i64, ptr %.phi.trans.insert.i140, align 8, !tbaa !161
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i142

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i142: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139, %bb.ad
  %i.go = phi i64 [ %i.gk, %bb.ad ], [ %.pre.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %i.go, ptr %i.gq, align 8, !tbaa !161
  store ptr %i.gh, ptr %7, align 8, !tbaa !159
  store i64 0, ptr %i.gp, align 8, !tbaa !161
  store i8 0, ptr %i.gh, align 8, !tbaa !162
  invoke void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i142
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %7, align 8, !tbaa !159   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gh
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i143: ; preds = %bb.ae
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !162
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body204.thread

bb.af:                                            ; preds = %bb.ab
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @__cxa_free_exception(ptr %i.gd) #24
  br label %.body204.thread

bb.ag:                                            ; preds = %bb.aa
  %i.gx = zext i32 %i.ga to i64
  %i.gy = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fr, i64 noundef %i.gx)
          to label %.noexc150 unwind label %bb.ai ; 3 uses

.noexc150:                                        ; preds = %bb.ag
  store i32 %i.fy, ptr %i.gy, align 4, !tbaa !15
  %.phi.trans.insert.i73.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %.pre2.i74.pre = load i32, ptr %.phi.trans.insert.i73.phi.trans.insert, align 4, !tbaa !15
  br label %.noexc75

bb.ah:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i142
  unreachable

.noexc75:                                         ; preds = %.noexc150, %.noexc147
  %.pre2.i74 = phi i32 [ 0, %.noexc147 ], [ %.pre2.i74.pre, %.noexc150 ]
  %.pn = phi ptr [ %i.fu, %.noexc147 ], [ %i.gy, %.noexc150 ]
  %.sroa.0225.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit76

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit76: ; preds = %bb.x, %.noexc75
  %.sroa.0225.5 = phi ptr [ %.sroa.0225.6, %.noexc75 ], [ %.sroa.0225.2374, %bb.x ] ; 3 uses
  %i.gz = phi i32 [ %.pre2.i74, %.noexc75 ], [ %i.fq, %bb.x ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.sroa.0225.5, i64 -4
  %i.hb = zext i32 %i.gz to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0225.5, i64 %i.hb
  store i32 %i.fd, ptr %i.hc, align 4, !tbaa !15
  %i.hd = add i32 %i.gz, 1
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !15
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.y
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.aj:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit76, %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit"
  %.sroa.0225.3 = phi ptr [ %.sroa.0225.2374, %"_ZZN3sat4ddfw8simplifyEvENK3$_0clENS_7literalE.exit" ], [ %.sroa.0225.5, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit76 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.045375, i64 4 ; 2 uses
  %.not48 = icmp eq ptr %i.hf, %i.ev
  br i1 %.not48, label %._crit_edge, label %bb.w

bb.ak:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit70
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

bb.al:                                            ; preds = %bb.ak
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.6, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.al
  br i1 %i.dy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN3satlsERSoNS_7literalE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull %i.ea, i64 noundef %i.eb)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc79:                                         ; preds = %bb.an
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i64 noundef %i.ed)
          to label %_ZN3satlsERSoNS_7literalE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.am, %.noexc79
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZN3satlsERSoNS_7literalE.exit
  %i.hm = load ptr, ptr %i.ek, align 8, !tbaa !12 ; 4 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %.noexc84, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit.i

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit.i:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !15 ; 3 uses
  %.not9.i = icmp eq i32 %i.hp, 0
  br i1 %.not9.i, label %.noexc84, label %bb.ao

bb.ao:                                            ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit.i
  %.sroa.0.0.copyload.peel.pre.i = load i32, ptr %i.hm, align 4, !tbaa !15 ; 4 uses
  %i.hq = icmp eq i32 %.sroa.0.0.copyload.peel.pre.i, -2
  br i1 %i.hq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = trunc i32 %.sroa.0.0.copyload.peel.pre.i to i1
  %i.hs = select i1 %i.hr, ptr @.str.12, ptr @.str.11
  %.mask.i.peel.i = and i32 %.sroa.0.0.copyload.peel.pre.i, 1
  %i.ht = zext nneg i32 %.mask.i.peel.i to i64
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull %i.hs, i64 noundef %i.ht)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc152:                                        ; preds = %bb.ap
  %i.hv = lshr i32 %.sroa.0.0.copyload.peel.pre.i, 1
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i64 noundef %i.hw)
          to label %_ZN3satlsERSoNS_7literalE.exit.peel.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aq:                                            ; preds = %bb.ao
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN3satlsERSoNS_7literalE.exit.peel.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3satlsERSoNS_7literalE.exit.peel.i:            ; preds = %bb.aq, %.noexc152
  %.not288 = icmp eq i32 %i.hp, 1
  br i1 %.not288, label %.noexc84, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %_ZN3satlsERSoNS_7literalE.exit.peel.i
  %umax = zext i32 %i.hp to i64
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %_ZN3satlsERSoNS_7literalE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN3satlsERSoNS_7literalE.exit.i ], [ 1, %.peel.next.i.preheader ] ; 2 uses
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc155:                                        ; preds = %.peel.next.i
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.ia, align 4, !tbaa !15 ; 4 uses
  %i.ib = icmp eq i32 %.sroa.0.0.copyload.i, -2
  br i1 %i.ib, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc155
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN3satlsERSoNS_7literalE.exit.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.as:                                            ; preds = %.noexc155
  %i.id = trunc i32 %.sroa.0.0.copyload.i to i1
  %i.ie = select i1 %i.id, ptr @.str.12, ptr @.str.11
  %.mask.i.i = and i32 %.sroa.0.0.copyload.i, 1
  %i.if = zext nneg i32 %.mask.i.i to i64
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull %i.ie, i64 noundef %i.if)
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc157:                                        ; preds = %bb.as
  %i.ih = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i64 noundef %i.ii)
          to label %_ZN3satlsERSoNS_7literalE.exit.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN3satlsERSoNS_7literalE.exit.i:                 ; preds = %.noexc157, %bb.ar
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %umax
  br i1 %exitcond.not, label %.noexc84, label %.peel.next.i, !llvm.loop !199

.noexc84:                                         ; preds = %_ZN3satlsERSoNS_7literalE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82, %_ZN3satlsERSoNS_7literalE.exit.peel.i, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit.i
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.10, i64 noundef 4)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %i.il = load double, ptr %i.ej, align 8, !tbaa !87
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, double noundef %i.il)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc86:                                         ; preds = %.noexc85
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.9, i64 noundef 5)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %.noexc86
  %i.io = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !92
  %i.iq = zext i32 %i.ip to i64
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.im, i64 noundef %i.iq)
          to label %_ZN3satlsERSoRKNS_11clause_infoE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

_ZN3satlsERSoRKNS_11clause_infoE.exit:            ; preds = %.noexc87
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %_ZN3satlsERSoRKNS_11clause_infoE.exit
  %i.it = load i32, ptr %i.fa, align 4, !tbaa !15 ; 3 uses
  %.not9.i159 = icmp eq i32 %i.it, 0
  br i1 %.not9.i159, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %.sroa.0.0.copyload.peel.pre.i161 = load i32, ptr %.sroa.0225.2.lcssa, align 4, !tbaa !15 ; 4 uses
  %i.iu = icmp eq i32 %.sroa.0.0.copyload.peel.pre.i161, -2
  br i1 %i.iu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iv = trunc i32 %.sroa.0.0.copyload.peel.pre.i161 to i1
  %i.iw = select i1 %i.iv, ptr @.str.12, ptr @.str.11
  %.mask.i.peel.i162 = and i32 %.sroa.0.0.copyload.peel.pre.i161, 1
  %i.ix = zext nneg i32 %.mask.i.peel.i162 to i64
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull %i.iw, i64 noundef %i.ix)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc170:                                        ; preds = %bb.au
  %i.iz = lshr i32 %.sroa.0.0.copyload.peel.pre.i161, 1
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, i64 noundef %i.ja)
          to label %_ZN3satlsERSoNS_7literalE.exit.peel.i163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.av:                                            ; preds = %bb.at
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN3satlsERSoNS_7literalE.exit.peel.i163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN3satlsERSoNS_7literalE.exit.peel.i163:         ; preds = %bb.av, %.noexc170
  %.not289 = icmp eq i32 %i.it, 1
  br i1 %.not289, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %.peel.next.i164.preheader

.peel.next.i164.preheader:                        ; preds = %_ZN3satlsERSoNS_7literalE.exit.peel.i163
  %umax452 = zext i32 %i.it to i64
  br label %.peel.next.i164

.peel.next.i164:                                  ; preds = %.peel.next.i164.preheader, %_ZN3satlsERSoNS_7literalE.exit.i168
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i169, %_ZN3satlsERSoNS_7literalE.exit.i168 ], [ 1, %.peel.next.i164.preheader ] ; 2 uses
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc173 unwind label %.loopexit ; 0 uses

.noexc173:                                        ; preds = %.peel.next.i164
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0225.2.lcssa, i64 %indvars.iv.i165
  %.sroa.0.0.copyload.i166 = load i32, ptr %i.je, align 4, !tbaa !15 ; 4 uses
  %i.jf = icmp eq i32 %.sroa.0.0.copyload.i166, -2
  br i1 %i.jf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc173
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.25, i64 noundef 4)
          to label %_ZN3satlsERSoNS_7literalE.exit.i168 unwind label %.loopexit ; 0 uses

bb.ax:                                            ; preds = %.noexc173
  %i.jh = trunc i32 %.sroa.0.0.copyload.i166 to i1
  %i.ji = select i1 %i.jh, ptr @.str.12, ptr @.str.11
  %.mask.i.i167 = and i32 %.sroa.0.0.copyload.i166, 1
  %i.jj = zext nneg i32 %.mask.i.i167 to i64
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull %i.ji, i64 noundef %i.jj)
          to label %.noexc175 unwind label %.loopexit ; 0 uses

.noexc175:                                        ; preds = %bb.ax
  %i.jl = lshr i32 %.sroa.0.0.copyload.i166, 1
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, i64 noundef %i.jm)
          to label %_ZN3satlsERSoNS_7literalE.exit.i168 unwind label %.loopexit ; 0 uses

_ZN3satlsERSoNS_7literalE.exit.i168:              ; preds = %.noexc175, %bb.aw
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next.i169, %umax452
  br i1 %exitcond453.not, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %.peel.next.i164, !llvm.loop !199

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit:      ; preds = %_ZN3satlsERSoNS_7literalE.exit.i168, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %_ZN3satlsERSoNS_7literalE.exit.peel.i163
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit
  %.pre459 = load i32, ptr %i.fa, align 4, !tbaa !15
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit70, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %12 = phi i32 [ %.pre459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 ], [ %i.fb, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit70 ] ; 2 uses
  %i.jp = load i32, ptr %i.i, align 4, !tbaa !91  ; 2 uses
  %.not.i.i.i = icmp eq i32 %12, 0
  br i1 %.not.i.i.i, label %_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96
  %wide.trip.count.i.i.i = zext i32 %12 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.10.0 = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %.sroa.10.2, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i ] ; 3 uses
  %i.jq = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %i.lg, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0225.2.lcssa, i64 %indvars.iv.i.i.i
  %i.js = icmp eq ptr %i.jq, null
  br i1 %i.js, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.jq, i64 -4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !15 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !15
  %i.jx = icmp eq i32 %i.ju, %i.jw
  br i1 %i.jx, label %bb.az, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i.i
  %i.jy = icmp eq ptr %.sroa.10.0, null
  br i1 %i.jy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc188 unwind label %bb.ci ; 3 uses

.noexc188:                                        ; preds = %bb.ba
  store i32 2, ptr %i.jz, align 4, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i32 0, ptr %i.ka, align 4, !tbaa !15
  br label %.noexc97

bb.bb:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds i8, ptr %.sroa.10.0, i64 -8 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !15 ; 3 uses
  %i.kd = mul i32 %i.kc, 3
  %i.ke = add i32 %i.kd, 1
  %i.kf = lshr i32 %i.ke, 1                       ; 3 uses
  %i.kg = shl i32 %i.kf, 2
  %i.kh = add i32 %i.kg, 8                        ; 2 uses
  %.not.i178 = icmp ugt i32 %i.kf, %i.kc
  br i1 %.not.i178, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ki = shl i32 %i.kc, 2
  %i.kj = add i32 %i.ki, 8
  %.not27.i187 = icmp ugt i32 %i.kh, %i.kj
  br i1 %.not27.i187, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kk = call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kk, align 8, !tbaa !95
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 3 uses
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !157
  %i.kn = load ptr, ptr %5, align 8, !tbaa !159   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180

bb.bf:                                            ; preds = %bb.be
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !161 ; 3 uses
  %i.ks = icmp ult i64 %i.kr, 16
  call void @llvm.assume(i1 %i.ks)
  %i.kt = add nuw nsw i64 %i.kr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.km, ptr noundef nonnull align 8 dereferenceable(1) %i.ko, i64 %i.kt, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180: ; preds = %bb.be
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !159
  %i.ku = load i64, ptr %i.ko, align 8, !tbaa !162
  store i64 %i.ku, ptr %i.km, align 8, !tbaa !162
  %.phi.trans.insert.i181 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i182 = load i64, ptr %.phi.trans.insert.i181, align 8, !tbaa !161
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i183

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i183: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180, %bb.bf
  %i.kv = phi i64 [ %i.kr, %bb.bf ], [ %.pre.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 %i.kv, ptr %i.kx, align 8, !tbaa !161
  store ptr %i.ko, ptr %5, align 8, !tbaa !159
  store i64 0, ptr %i.kw, align 8, !tbaa !161
  store i8 0, ptr %i.ko, align 8, !tbaa !162
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.bj unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i183
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = load ptr, ptr %5, align 8, !tbaa !159   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.ko
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i184: ; preds = %bb.bg
  %i.lb = load i64, ptr %i.ko, align 8, !tbaa !162
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body204

bb.bh:                                            ; preds = %bb.bd
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @__cxa_free_exception(ptr %i.kk) #24
  br label %.body204

bb.bi:                                            ; preds = %bb.bc
  %i.le = zext i32 %i.kh to i64
  %i.lf = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.kb, i64 noundef %i.le)
          to label %.noexc191 unwind label %bb.ci ; 2 uses

.noexc191:                                        ; preds = %bb.bi
  store i32 %i.kf, ptr %i.lf, align 4, !tbaa !15
  br label %.noexc97

bb.bj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i183
  unreachable

.noexc97:                                         ; preds = %.noexc191, %.noexc188
  %.pn535 = phi ptr [ %i.jz, %.noexc188 ], [ %i.lf, %.noexc191 ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn535, i64 8 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn535, i64 4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !15
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i: ; preds = %.noexc97, %bb.ay
  %.sroa.10.2 = phi ptr [ %.sroa.10.1, %.noexc97 ], [ %.sroa.10.0, %bb.ay ] ; 2 uses
  %i.lg = phi ptr [ %.sroa.10.1, %.noexc97 ], [ %i.jq, %bb.ay ] ; 3 uses
  %i.lh = phi i32 [ %.pre2.i.i.i.i, %.noexc97 ], [ %i.ju, %bb.ay ] ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -4
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lj
  %i.ll = load i32, ptr %i.jr, align 4, !tbaa !15
  store i32 %i.ll, ptr %i.lk, align 4, !tbaa !15
  %i.lm = add i32 %i.lh, 1
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !15
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit, label %.lr.ph.i.i.i, !llvm.loop !173

_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.thread
  %.sroa.10.3 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.thread ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96 ], [ %.sroa.10.2, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i ]
  %.sroa.0.0.in = phi i32 [ %i.ez, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94.thread ], [ %i.jp, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit96 ], [ %i.jp, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i ]
  %.sroa.0.0 = uitofp i32 %.sroa.0.0.in to double
  %i.ln = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %i.ei ; 3 uses
  store double %.sroa.0.0, ptr %i.lo, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i, label %_ZN3sat11clause_infoaSEOS0_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lr)
          to label %_ZN3sat11clause_infoaSEOS0_.exit.thread unwind label %bb.bl

_ZN3sat11clause_infoaSEOS0_.exit.thread:          ; preds = %_ZN3sat11clause_infoC2EjPKNS_7literalEd.exit, %bb.bk
  store ptr %.sroa.10.3, ptr %i.lp, align 8, !tbaa !12
  br i1 %i.ey, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100

bb.bl:                                            ; preds = %bb.bk
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #26
  unreachable

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100:  ; preds = %_ZN3sat11clause_infoaSEOS0_.exit.thread
  %i.lu = getelementptr inbounds i8, ptr %.sroa.0225.2.lcssa, i64 -4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !15
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %bb.bm, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread

bb.bm:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100
  %i.lx = load ptr, ptr %11, align 8, !tbaa !12   ; 4 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.bo, label %bb.bn
end_hunk_0
begin_hunk_1_@_ZN3sat4ddfw8simplifyEv:bb.a
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc206:                                        ; preds = %bb.bw
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  store ptr %i.nk, ptr %11, align 8, !tbaa !12
  store i32 %i.mj, ptr %i.nj, align 4, !tbaa !15
  br label %.noexc104

bb.bx:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i198
  unreachable

.noexc104:                                        ; preds = %.noexc206, %.noexc203
  %.pre.i101 = phi ptr [ %i.nk, %.noexc206 ], [ %i.mg, %.noexc203 ] ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !15
  br label %bb.by

bb.by:                                            ; preds = %.noexc104, %bb.bn
  %i.nl = phi i32 [ %.pre2.i103, %.noexc104 ], [ %i.ma, %bb.bn ] ; 2 uses
  %i.nm = phi ptr [ %.pre.i101, %.noexc104 ], [ %i.lx, %bb.bn ] ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 -4
  %i.no = zext i32 %i.nl to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.no
  %i.nq = load i32, ptr %.sroa.0225.2.lcssa, align 4, !tbaa !15
  store i32 %i.nq, ptr %i.np, align 4, !tbaa !15
  %i.nr = add i32 %i.nl, 1
  store i32 %i.nr, ptr %i.nn, align 4, !tbaa !15
  %i.ns = load i32, ptr %.sroa.0225.2.lcssa, align 4, !tbaa !201 ; 2 uses
  %i.nt = lshr i32 %i.ns, 5                       ; 4 uses
  %i.nu = icmp eq ptr %.sroa.0.4378, null
  br i1 %i.nu, label %thread-pre-split.i.i109.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106

_ZNK6vectorIjLb0EjE4sizeEv.exit.i106:             ; preds = %bb.by
  %i.nv = getelementptr inbounds i8, ptr %.sroa.0.4378, i64 -4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !15 ; 2 uses
  %.not.i107 = icmp ult i32 %i.nt, %i.nw
  br i1 %.not.i107, label %_ZN8uint_set6insertEj.exit120, label %thread-pre-split.i.i109.preheader

thread-pre-split.i.i109.preheader:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106, %bb.by
  %.sroa.0.13.ph = phi ptr [ null, %bb.by ], [ %.sroa.0.4378, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106 ]
  %.0.i16.i.i112.ph = phi i32 [ 0, %bb.by ], [ %i.nw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106 ] ; 2 uses
  %.ph = add nuw nsw i32 %i.nt, 1                 ; 3 uses
  br label %thread-pre-split.i.i109

thread-pre-split.i.i109:                          ; preds = %thread-pre-split.i.i109.backedge, %thread-pre-split.i.i109.preheader
  %.sroa.0.13 = phi ptr [ %.sroa.0.13.ph, %thread-pre-split.i.i109.preheader ], [ %.sroa.0.13.be, %thread-pre-split.i.i109.backedge ] ; 9 uses
  %cond291 = icmp eq ptr %.sroa.0.13, null
  br i1 %cond291, label %bb.bz, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i113

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i113:       ; preds = %thread-pre-split.i.i109
  %i.nx = getelementptr inbounds i8, ptr %.sroa.0.13, i64 -8 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !15 ; 3 uses
  %.not799 = icmp ult i32 %i.nt, %i.ny
  br i1 %.not799, label %bb.ch, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i116

bb.bz:                                            ; preds = %thread-pre-split.i.i109
  %i.nz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc218:                                        ; preds = %bb.bz
  store i32 2, ptr %i.nz, align 4, !tbaa !15
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store i32 0, ptr %i.oa, align 4, !tbaa !15
  br label %thread-pre-split.i.i109.backedge

thread-pre-split.i.i109.backedge:                 ; preds = %.noexc218, %.noexc221
  %.pn800 = phi ptr [ %i.nz, %.noexc218 ], [ %i.pb, %.noexc221 ]
  %.sroa.0.13.be = getelementptr inbounds nuw i8, ptr %.pn800, i64 8
  br label %thread-pre-split.i.i109, !llvm.loop !164

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i116: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i113
  %i.ob = mul nuw nsw i32 %i.ny, 3
  %i.oc = add nuw nsw i32 %i.ob, 1
  %i.od = lshr i32 %i.oc, 1                       ; 3 uses
  %.not.i208 = icmp ugt i32 %i.od, %i.ny
  br i1 %.not.i208, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i116
  %i.oe = call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.oe, align 8, !tbaa !95
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 24 ; 3 uses
  store ptr %i.og, ptr %i.of, align 8, !tbaa !157
  %i.oh = load ptr, ptr %1, align 8, !tbaa !159   ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210

bb.cc:                                            ; preds = %bb.cb
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !161 ; 3 uses
  %i.om = icmp ult i64 %i.ol, 16
  call void @llvm.assume(i1 %i.om)
  %i.on = add nuw nsw i64 %i.ol, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.og, ptr noundef nonnull align 8 dereferenceable(1) %i.oi, i64 %i.on, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210: ; preds = %bb.cb
  store ptr %i.oh, ptr %i.of, align 8, !tbaa !159
  %i.oo = load i64, ptr %i.oi, align 8, !tbaa !162
  store i64 %i.oo, ptr %i.og, align 8, !tbaa !162
  %.phi.trans.insert.i211 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i212 = load i64, ptr %.phi.trans.insert.i211, align 8, !tbaa !161
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i213

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i213: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210, %bb.cc
  %i.op = phi i64 [ %i.ol, %bb.cc ], [ %.pre.i212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store i64 %i.op, ptr %i.or, align 8, !tbaa !161
  store ptr %i.oi, ptr %1, align 8, !tbaa !159
  store i64 0, ptr %i.oq, align 8, !tbaa !161
  store i8 0, ptr %i.oi, align 8, !tbaa !162
  invoke void @__cxa_throw(ptr nonnull %i.oe, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.cg unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i213
  %i.os = landingpad { ptr, i32 }
          cleanup
  %i.ot = load ptr, ptr %1, align 8, !tbaa !159   ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.oi
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i214: ; preds = %bb.cd
  %i.ov = load i64, ptr %i.oi, align 8, !tbaa !162
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body204

bb.ce:                                            ; preds = %bb.ca
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @__cxa_free_exception(ptr %i.oe) #24
  br label %.body204

bb.cf:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i116
  %i.oy = shl nuw nsw i32 %i.od, 2
  %i.oz = add nuw nsw i32 %i.oy, 8
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.nx, i64 noundef %i.pa)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc221:                                        ; preds = %bb.cf
  store i32 %i.od, ptr %i.pb, align 4, !tbaa !15
  br label %thread-pre-split.i.i109.backedge

bb.cg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i213
  unreachable

bb.ch:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i113
  %i.pc = getelementptr inbounds i8, ptr %.sroa.0.13, i64 -4
  store i32 %.ph, ptr %i.pc, align 4, !tbaa !15
  %.not1218.i.i114 = icmp eq i32 %.0.i16.i.i112.ph, %.ph
  br i1 %.not1218.i.i114, label %_ZN8uint_set6insertEj.exit120, label %.lr.ph.preheader.i.i115

.lr.ph.preheader.i.i115:                          ; preds = %bb.ch
  %i.pd = zext nneg i32 %.ph to i64
  %i.pe = zext nneg i32 %.0.i16.i.i112.ph to i64  ; 2 uses
  %i.pf = getelementptr [4 x i8], ptr %.sroa.0.13, i64 %i.pe
  %i.pg = sub nsw i64 %i.pd, %i.pe
  %i.ph = shl nsw i64 %i.pg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.pf, i8 0, i64 %i.ph, i1 false), !tbaa !15
  br label %_ZN8uint_set6insertEj.exit120

_ZN8uint_set6insertEj.exit120:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106, %bb.ch, %.lr.ph.preheader.i.i115
  %.sroa.0.14 = phi ptr [ %.sroa.0.13, %bb.ch ], [ %.sroa.0.13, %.lr.ph.preheader.i.i115 ], [ %.sroa.0.4378, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i106 ] ; 2 uses
  %i.pi = and i32 %i.ns, 31
  %i.pj = shl nuw i32 1, %i.pi
  %i.pk = zext nneg i32 %i.nt to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.14, i64 %i.pk ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !15
  %i.pn = or i32 %i.pm, %i.pj
  store i32 %i.pn, ptr %i.pl, align 4, !tbaa !15
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread

bb.ci:                                            ; preds = %bb.bi, %bb.ba
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body204

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100.thread: ; preds = %_ZN3sat11clause_infoaSEOS0_.exit.thread, %_ZN8uint_set6insertEj.exit120, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67
  %.sroa.0.6 = phi ptr [ %.sroa.0.4378, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67 ], [ %.sroa.0.14, %_ZN8uint_set6insertEj.exit120 ], [ %.sroa.0.4378, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100 ], [ %.sroa.0.4378, %_ZN3sat11clause_infoaSEOS0_.exit.thread ] ; 2 uses
  %.sroa.0225.4 = phi ptr [ %.sroa.0225.1380, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit67 ], [ %.sroa.0225.2.lcssa, %_ZN8uint_set6insertEj.exit120 ], [ %.sroa.0225.2.lcssa, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit100 ], [ null, %_ZN3sat11clause_infoaSEOS0_.exit.thread ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.046381, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.pp, %i.dx
  br i1 %.not47, label %.critedge.loopexit, label %bb.u

.body204:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ci, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185, %.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215, %bb.ce, %bb.ai
  %.sroa.0225.2298 = phi ptr [ %.sroa.0225.2374, %bb.ai ], [ %.sroa.0225.2.lcssa, %bb.ci ], [ %.sroa.0225.2.lcssa, %bb.ce ], [ %.sroa.0225.2.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215 ], [ %.sroa.0225.2.lcssa, %.loopexit ], [ %.sroa.0225.2.lcssa, %.loopexit.split-lp.loopexit ], [ %.sroa.0225.2.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185 ], [ %.sroa.0225.2.lcssa, %bb.bh ], [ %.sroa.0225.2.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0225.2.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit ] ; 2 uses
  %.sroa.0.7 = phi ptr [ %.sroa.0.4378, %bb.ai ], [ %.sroa.0.4378, %bb.ci ], [ %.sroa.0.13, %bb.ce ], [ %.sroa.0.13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215 ], [ %.sroa.0.4378, %.loopexit ], [ %.sroa.0.4378, %.loopexit.split-lp.loopexit ], [ %.sroa.0.4378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185 ], [ %.sroa.0.4378, %bb.bh ], [ %.sroa.0.5.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.4378, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ai ], [ %i.po, %bb.ci ], [ %i.ox, %bb.ce ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i215 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit292, %.loopexit.split-lp.loopexit ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i185 ], [ %i.ld, %bb.bh ], [ %lpad.loopexit700, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0225.2298, null
  br i1 %.not.i.i, label %.body, label %.body204.thread

.body204.thread:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144, %bb.af, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i200, %.body204
  %.sroa.0225.2297 = phi ptr [ %.sroa.0225.2298, %.body204 ], [ %.sroa.0225.2.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i200 ], [ %.sroa.0225.2374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144 ], [ %.sroa.0225.2374, %bb.af ], [ %.sroa.0225.2.lcssa, %bb.bv ]
  %.pn.pn.pn279 = phi { ptr, i32 } [ %.pn.pn.pn, %.body204 ], [ %i.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i200 ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144 ], [ %i.gw, %bb.af ], [ %i.nh, %bb.bv ]
  %.sroa.0.7277 = phi ptr [ %.sroa.0.7, %.body204 ], [ %.sroa.0.4378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i200 ], [ %.sroa.0.4378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i144 ], [ %.sroa.0.4378, %bb.af ], [ %.sroa.0.4378, %bb.bv ]
  %i.pq = getelementptr inbounds i8, ptr %.sroa.0225.2297, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pq)
          to label %.body unwind label %bb.cj

bb.cj:                                            ; preds = %.body204.thread
  %i.pr = landingpad { ptr, i32 }
          catch ptr null
  %i.ps = extractvalue { ptr, i32 } %i.pr, 0
  call void @__clang_call_terminate(ptr %i.ps) #26
  unreachable

._crit_edge395:                                   ; preds = %.critedge, %.prol.loopexit, %_ZN6vectorIjLb0EjE5resetEv.exit127.1, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %.sroa.0225.0352542 = phi ptr [ %.sroa.0225.0387, %.prol.loopexit ], [ %.sroa.0225.0387, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ], [ %.sroa.0225.0387, %_ZN6vectorIjLb0EjE5resetEv.exit127.1 ], [ %.sroa.0225.1.lcssa, %.critedge ] ; 2 uses
  %.sroa.0.3364541 = phi ptr [ %.sroa.0.3386, %.prol.loopexit ], [ %.sroa.0.3386, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ], [ %.sroa.0.3386, %_ZN6vectorIjLb0EjE5resetEv.exit127.1 ], [ %.sroa.0.4.lcssa, %.critedge ] ; 2 uses
  %.not.i.i121 = icmp eq ptr %.sroa.0225.0352542, null
  br i1 %.not.i.i121, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit122, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge395
  %i.pt = getelementptr inbounds i8, ptr %.sroa.0225.0352542, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pt)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit122 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #26
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit122:      ; preds = %.critedge.preheader, %._crit_edge395, %bb.ck
  %.sroa.0.3364541550 = phi ptr [ %.sroa.0.3364541, %bb.ck ], [ %.sroa.0.3364541, %._crit_edge395 ], [ %.sroa.0.0.lcssa.ph, %.critedge.preheader ] ; 2 uses
  %.not.i.i123 = icmp eq ptr %.sroa.0.3364541550, null
  br i1 %.not.i.i123, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit122
  %i.pw = getelementptr inbounds i8, ptr %.sroa.0.3364541550, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pw)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #26
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit122, %bb.cm
  %.pr = load ptr, ptr %11, align 8, !tbaa !12    ; 2 uses
  %.not.i.i124 = icmp eq ptr %.pr, null
  br i1 %.not.i.i124, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit125, label %bb.co

bb.co:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.pz = getelementptr inbounds i8, ptr %.pr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.pz)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit125 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qb) #26
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit125:      ; preds = %bb.a, %_ZN6vectorIjLb0EjED2Ev.exit, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void

.lr.ph394.new:                                    ; preds = %.prol.loopexit, %_ZN6vectorIjLb0EjE5resetEv.exit127.1
  %.042393 = phi ptr [ %i.qn, %_ZN6vectorIjLb0EjE5resetEv.exit127.1 ], [ %.042393.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload = load i32, ptr %.042393, align 4, !tbaa !15
  %i.qc = xor i32 %.sroa.01.0.copyload, 1
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !126 ; 2 uses
  %.not.i126 = icmp eq ptr %i.qf, null
  br i1 %.not.i126, label %_ZN6vectorIjLb0EjE5resetEv.exit127, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph394.new
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -4
  store i32 0, ptr %i.qg, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE5resetEv.exit127

_ZN6vectorIjLb0EjE5resetEv.exit127:               ; preds = %.lr.ph394.new, %bb.cq
  %i.qh = getelementptr inbounds nuw i8, ptr %.042393, i64 4
  %.sroa.01.0.copyload.1 = load i32, ptr %i.qh, align 4, !tbaa !15
  %i.qi = xor i32 %.sroa.01.0.copyload.1, 1
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.qj
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !126 ; 2 uses
  %.not.i126.1 = icmp eq ptr %i.ql, null
  br i1 %.not.i126.1, label %_ZN6vectorIjLb0EjE5resetEv.exit127.1, label %bb.cr

bb.cr:                                            ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit127
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 -4
  store i32 0, ptr %i.qm, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE5resetEv.exit127.1

_ZN6vectorIjLb0EjE5resetEv.exit127.1:             ; preds = %bb.cr, %_ZN6vectorIjLb0EjE5resetEv.exit127
  %i.qn = getelementptr inbounds nuw i8, ptr %.042393, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.qn, %i.da
  br i1 %.not.1, label %._crit_edge395, label %.lr.ph394.new

.body:                                            ; preds = %.loopexit791, %.loopexit.split-lp, %.body204.thread, %.body204
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %.body204 ], [ %.sroa.0.7277, %.body204.thread ], [ %.sroa.0.2.ph, %.loopexit791 ], [ %.sroa.0.2.ph792, %.loopexit.split-lp ] ; 2 uses
  %.pn53 = phi { ptr, i32 } [ %.pn.pn.pn, %.body204 ], [ %.pn.pn.pn279, %.body204.thread ], [ %lpad.loopexit793, %.loopexit791 ], [ %lpad.loopexit.split-lp794, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i128 = icmp eq ptr %.sroa.0.8, null
  br i1 %.not.i.i128, label %_ZN6vectorIjLb0EjED2Ev.exit129, label %.body.thread

.body.thread:                                     ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %.body
  %.pn53285 = phi { ptr, i32 } [ %.pn53, %.body ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bm, %bb.l ]
  %.sroa.0.8284 = phi ptr [ %.sroa.0.8, %.body ], [ %.sroa.0.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %.sroa.0.10, %bb.l ]
  %i.qo = getelementptr inbounds i8, ptr %.sroa.0.8284, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qo)
          to label %_ZN6vectorIjLb0EjED2Ev.exit129 unwind label %bb.cs

bb.cs:                                            ; preds = %.body.thread
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #26
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit129:                   ; preds = %.body, %.body.thread
  %.pn53286 = phi { ptr, i32 } [ %.pn53, %.body ], [ %.pn53285, %.body.thread ]
  %i.qr = load ptr, ptr %11, align 8, !tbaa !12   ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i130, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit131, label %bb.ct

bb.ct:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit129
  %i.qs = getelementptr inbounds i8, ptr %i.qr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qs)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit131 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #26
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit131:      ; preds = %_ZN6vectorIjLb0EjED2Ev.exit129, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  resume { ptr, i32 } %.pn53286
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat4ddfw10try_rotateEjR16tracked_uint_setRj(ptr noundef nonnull align 8 dereferenceable(434) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK16tracked_uint_set8containsEj.exit.thread, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %_ZNK16tracked_uint_set8containsEj.exit, label %_ZNK16tracked_uint_set8containsEj.exit.thread

_ZNK16tracked_uint_set8containsEj.exit:           ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !162
  %.not161 = icmp eq i8 %i.i, 0
  br i1 %.not161, label %_ZNK16tracked_uint_set8containsEj.exit.thread, label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZNK16tracked_uint_set8containsEj.exit.thread:    ; preds = %bb.a, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i, %_ZNK16tracked_uint_set8containsEj.exit
  %i.j = load i32, ptr %3, align 4, !tbaa !15     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK16tracked_uint_set8containsEj.exit.thread
  %i.l = add i32 %i.j, -1
  store i32 %i.l, ptr %3, align 4, !tbaa !15
  %i.m = add i32 %1, 1                            ; 12 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !203    ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.b
  %.not.i.i = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15   ; 2 uses
  %i.r = icmp ugt i32 %i.m, %i.q
  br i1 %i.r, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader:  ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
end_hunk_1
