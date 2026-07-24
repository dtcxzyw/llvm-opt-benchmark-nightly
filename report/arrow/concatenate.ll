inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_118ConcatenateOffsetsIiEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKSt6vectorISt10shared_ptrINS_6BufferEESaIS8_EEPNS_10MemoryPoolEPS8_PS5_INS0_5RangeESaISG_EE:bb.a
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.h = icmp eq ptr %.val, %.val57
  br i1 %i.h, label %.loopexit78, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.01.04.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.val, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = add nsw i64 %i.k, %.05.i                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.val57
  br i1 %i.n, label %.loopexit78, label %.lr.ph.i

.loopexit78:                                      ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = add i64 %.0.lcssa.i, 4
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %6, i64 noundef %i.o, ptr noundef %2)
  %i.p = load ptr, ptr %6, align 8, !tbaa !51
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %.loopexit78
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %.thread76

bb.c:                                             ; preds = %.loopexit78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !314, !noalias !923
  store i64 %i.s, ptr %7, align 8, !tbaa !314, !alias.scope !923
  store ptr null, ptr %i.r, align 8, !tbaa !314, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 8 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !91
  %i.w = load <2 x ptr>, ptr %5, align 16, !tbaa !91
  store <2 x ptr> %i.w, ptr %3, align 8, !tbaa !91
  store <2 x ptr> %i.v, ptr %5, align 16, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !41
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !46

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aq = load ptr, ptr %3, align 8, !tbaa !164   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !167, !range !65, !noundef !66
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !65
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false, !prof !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !54 ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bd = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %.not5680.not = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5680.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val59.pre = load ptr, ptr %4, align 8, !tbaa !228
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %bb.m
  %.val5987 = phi ptr [ %.val58.pre, %bb.m ], [ %.val59, %middle.block ], [ %.val59, %.lr.ph.i.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre, %bb.m ], [ %i.cc, %middle.block ], [ %i.cc, %.lr.ph.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.03683
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !306
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add i64 %i.bk, %.04181
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.val5987, i64 %.03683
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !159
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add nsw i32 %.03782, %i.bp              ; 2 uses
  %i.br = add nuw i64 %.03683, 1                  ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bf to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 4
  %.not56 = icmp ult i64 %i.br, %i.bw
  br i1 %.not56, label %bb.l, label %._crit_edge, !llvm.loop !926

bb.k:                                             ; preds = %bb.c
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i64 = icmp eq ptr %i.by, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65: ; preds = %bb.k
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.by) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.bx

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.val59 = phi ptr [ %.val59.pre, %.lr.ph ], [ %.val5987, %.loopexit ] ; 3 uses
  %i.cc = phi ptr [ %i.bd, %.lr.ph ], [ %i.bf, %.loopexit ] ; 3 uses
  %.03683 = phi i64 [ 0, %.lr.ph ], [ %i.br, %.loopexit ] ; 5 uses
  %.03782 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %.loopexit ] ; 3 uses
  %.04181 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %.loopexit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.03683
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !164 ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.04181 ; 4 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %.val59, i64 %.03683 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !306, !noalias !927 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !noalias !927
  %.pre = load ptr, ptr %1, align 8, !tbaa !116
  %.val58.pre = load ptr, ptr %4, align 8, !tbaa !228
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !167, !range !65, !noalias !927, !noundef !66
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !927 ; 8 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = select i1 %i.cm, ptr %i.co, ptr null, !prof !54 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci ; 2 uses
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !3, !noalias !927 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  store i64 %i.ct, ptr %i.cg, align 8, !tbaa !157, !noalias !927
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !927
  %i.cv = sext i32 %i.cu to i64
  %i.cw = sub nsw i64 %i.cv, %i.ct                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !159, !noalias !927
  %i.cy = sext i32 %.03782 to i64
  %i.cz = sub nsw i64 2147483647, %i.cw
  %i.da = icmp slt i64 %i.cz, %i.cy
  br i1 %i.da, label %.thread76.loopexit, label %bb.o, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.db = sub i32 %.03782, %i.cs                  ; 2 uses
  %8 = ptrtoint ptr %i.cq to i64
  %9 = ptrtoint ptr %i.co to i64
  %i.dc = add i64 %i.ci, %8
  %i.dd = sub i64 %i.dc, %9
  %i.de = add i64 %i.dd, -4                       ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %i.dh = shl i64 %.04181, 2
  %i.di = add i64 %i.dh, %i.bb
  %i.dj = sub i64 %i.cp, %i.di
  %diff.check = icmp ugt i64 %i.dj, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 3 uses
  %i.dk = shl i64 %n.vec, 2                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cf, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.co, i64 %i.dk
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.dn ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.co, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep105, align 4, !tbaa !3, !noalias !927
  %wide.load106 = load <4 x i32>, ptr %i.do, align 4, !tbaa !3, !noalias !927
  %i.dp = add <4 x i32> %broadcast.splat, %wide.load
  %i.dq = add <4 x i32> %broadcast.splat, %wide.load106
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.dp, ptr %next.gep, align 4, !tbaa !3, !noalias !927
  store <4 x i32> %i.dq, ptr %i.dr, align 4, !tbaa !3, !noalias !927
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !930

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.o, %middle.block
  %.010.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %bb.o ], [ %i.dl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %bb.o ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dt = load i32, ptr %.079.i.i, align 4, !tbaa !3, !noalias !927
  %i.du = add i32 %i.db, %i.dt
  store i32 %i.du, ptr %.010.i.i, align 4, !tbaa !3, !noalias !927
  %i.dv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.dv, %i.cr
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !933

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %.037.lcssa = phi i32 [ 0, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.bq, %.loopexit ]
  %i.dx = lshr i64 %.0.lcssa.i, 2
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dx
  store i32 %.037.lcssa, ptr %i.dy, align 4, !tbaa !3
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dz, align 8, !tbaa !45
  br label %.thread76

.thread76.loopexit:                               ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !51
  store i32 1, ptr %i.be, align 8, !tbaa !45
  br label %.thread76

.thread76:                                        ; preds = %.thread76.loopexit, %._crit_edge, %bb.b
  %i.ea = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.p, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !54

bb.p:                                             ; preds = %.thread76
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !314 ; 3 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i70, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.p
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ed) #20, !inline_history !934
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !51 ; 2 uses
  %.not.i.i71 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i71, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %.thread76
  %i.eh = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ea, %.thread76 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !55, !range !65, !noundef !66
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.p, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BuffersEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.35", align 8    ; 13 uses
  %4 = alloca %"class.arrow::Result.57", align 8  ; 12 uses
  %5 = alloca %"class.std::shared_ptr.48", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.48", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !111, !nonnull !66, !align !132 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not72 = icmp eq ptr %i.c, %i.d
  br i1 %.not72, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22
          to label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.d ; 4 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %3, align 8, !tbaa !116
  store ptr %i.j, ptr %i.k, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !206
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.m = phi ptr [ null, %bb.c ], [ %i.l, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.n = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %.not48.not = icmp eq ptr %i.c, %i.d
  br i1 %.not48.not, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE7reserveEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %i.u = phi ptr [ %i.d, %.lr.ph ], [ %i.da, %.critedge ] ; 2 uses
  %i.v = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %.critedge ]
  %.02749 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %.critedge ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.02749
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.ab, ptr %5, align 8, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 3 uses
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_118ConcatenateOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKSt6vectorISt10shared_ptrINS_6BufferEESaIS8_EEPNS_10MemoryPoolEPS8_PS5_INS0_5RangeESaISG_EE:bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !203   ; 2 uses
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.h = icmp eq ptr %.val, %.val57
  br i1 %i.h, label %.loopexit78, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.01.04.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.val, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = add nsw i64 %i.k, %.05.i                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.val57
  br i1 %i.n, label %.loopexit78, label %.lr.ph.i

.loopexit78:                                      ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = add i64 %.0.lcssa.i, 8
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %6, i64 noundef %i.o, ptr noundef %2)
  %i.p = load ptr, ptr %6, align 8, !tbaa !51
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %.loopexit78
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %.thread76

bb.c:                                             ; preds = %.loopexit78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !314, !noalias !966
  store i64 %i.s, ptr %7, align 8, !tbaa !314, !alias.scope !966
  store ptr null, ptr %i.r, align 8, !tbaa !314, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 8 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !91
  %i.w = load <2 x ptr>, ptr %5, align 16, !tbaa !91
  store <2 x ptr> %i.w, ptr %3, align 8, !tbaa !91
  store <2 x ptr> %i.v, ptr %5, align 16, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !41
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !924
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !46

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aq = load ptr, ptr %3, align 8, !tbaa !164   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !167, !range !65, !noundef !66
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !65
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false, !prof !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !54 ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bd = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %.not5680.not = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5680.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val59.pre = load ptr, ptr %4, align 8, !tbaa !228
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %bb.m
  %.val5987 = phi ptr [ %.val58.pre, %bb.m ], [ %.val59, %middle.block ], [ %.val59, %.lr.ph.i.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre, %bb.m ], [ %i.cb, %middle.block ], [ %i.cb, %.lr.ph.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.03683
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !306
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add i64 %i.bk, %.04181
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.val5987, i64 %.03683
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !159
  %i.bp = add nsw i64 %i.bo, %.03782              ; 2 uses
  %i.bq = add nuw i64 %.03683, 1                  ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bf to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4
  %.not56 = icmp ult i64 %i.bq, %i.bv
  br i1 %.not56, label %bb.l, label %._crit_edge, !llvm.loop !967

bb.k:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %.not.i64 = icmp eq ptr %i.bx, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65: ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bx) #20, !inline_history !925
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit66: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i65, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.bw

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.val59 = phi ptr [ %.val59.pre, %.lr.ph ], [ %.val5987, %.loopexit ] ; 3 uses
  %i.cb = phi ptr [ %i.bd, %.lr.ph ], [ %i.bf, %.loopexit ] ; 3 uses
  %.03683 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %.loopexit ] ; 5 uses
  %.03782 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %.loopexit ] ; 3 uses
  %.04181 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %.loopexit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.03683
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !164 ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.04181 ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.val59, i64 %.03683 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !306, !noalias !968 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !noalias !968
  %.pre = load ptr, ptr %1, align 8, !tbaa !116
  %.val58.pre = load ptr, ptr %4, align 8, !tbaa !228
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !167, !range !65, !noalias !968, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !968 ; 9 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = select i1 %i.cl, ptr %i.cn, ptr null, !prof !54 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.ch ; 2 uses
  %i.cr = load i64, ptr %i.cn, align 8, !tbaa !175, !noalias !968 ; 2 uses
  store i64 %i.cr, ptr %i.cf, align 8, !tbaa !157, !noalias !968
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !175, !noalias !968
  %i.ct = sub nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !159, !noalias !968
  %i.cv = sub nsw i64 9223372036854775807, %i.ct
  %i.cw = icmp sgt i64 %.03782, %i.cv
  br i1 %i.cw, label %.thread76.loopexit, label %bb.o, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.cx = load i64, ptr %i.cn, align 8, !tbaa !175, !noalias !968
  %i.cy = sub i64 %.03782, %i.cx                  ; 2 uses
  %8 = ptrtoint ptr %i.cp to i64
  %9 = ptrtoint ptr %i.cn to i64
  %i.cz = add i64 %i.ch, %8
  %i.da = sub i64 %i.cz, %9
  %i.db = add i64 %i.da, -8                       ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.db, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.o
  %i.de = shl i64 %.04181, 3
  %i.df = add i64 %i.de, %i.bb
  %i.dg = sub i64 %i.co, %i.df
  %diff.check = icmp ugt i64 %i.dg, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, 4611686018427387900     ; 3 uses
  %i.dh = shl i64 %n.vec, 3                       ; 2 uses
  %i.di = getelementptr i8, ptr %i.ce, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.cn, i64 %i.dh
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.dk ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.cn, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep105, align 8, !tbaa !175, !noalias !968
  %wide.load106 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !175, !noalias !968
  %i.dm = add <2 x i64> %broadcast.splat, %wide.load
  %i.dn = add <2 x i64> %broadcast.splat, %wide.load106
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.dm, ptr %next.gep, align 8, !tbaa !175, !noalias !968
  store <2 x i64> %i.dn, ptr %i.do, align 8, !tbaa !175, !noalias !968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.o, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %bb.o ], [ %i.di, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.cn, %vector.memcheck ], [ %i.cn, %bb.o ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dq = load i64, ptr %.079.i.i, align 8, !tbaa !175, !noalias !968
  %i.dr = add i64 %i.cy, %i.dq
  store i64 %i.dr, ptr %.010.i.i, align 8, !tbaa !175, !noalias !968
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.ds, %i.cq
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !972

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %.037.lcssa = phi i64 [ 0, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.bp, %.loopexit ]
  %i.du = lshr i64 %.0.lcssa.i, 3
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.du
  store i64 %.037.lcssa, ptr %i.dv, align 8, !tbaa !175
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dw, align 8, !tbaa !45
  br label %.thread76

.thread76.loopexit:                               ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !51
  store i32 1, ptr %i.be, align 8, !tbaa !45
  br label %.thread76

.thread76:                                        ; preds = %.thread76.loopexit, %._crit_edge, %bb.b
  %i.dx = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.p, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !54

bb.p:                                             ; preds = %.thread76
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !314 ; 3 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i70, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.p
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ea) #20, !inline_history !934
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !51 ; 2 uses
  %.not.i.i71 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i71, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %.thread76
  %i.ee = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.dx, %.thread76 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !55, !range !65, !noundef !66
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.p, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

declare void @_ZN5arrow10large_listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl9ChildDataEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.9", align 16    ; 11 uses
  %4 = alloca %"class.arrow::Result.156", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = load ptr, ptr %1, align 8, !tbaa !111, !nonnull !66, !align !132 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22 ; 3 uses
  store ptr %i.i, ptr %3, align 16, !tbaa !67
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.l, align 16, !tbaa !70
  store ptr %i.j, ptr %i.k, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  %i.o = add nuw i64 %.01936, 1                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !111, !nonnull !66, !align !132 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %.not = icmp ult i64 %i.o, %i.w
  br i1 %.not, label %bb.c, label %.critedge.loopexit, !llvm.loop !973

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.x = phi ptr [ %i.a, %.lr.ph ], [ %i.p, %bb.b ]
  %.01936 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.01936
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %.val26 = load ptr, ptr %2, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.val26, i64 %.01936 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !159
  invoke void @_ZNK5arrow9ArrayData9SliceSafeEll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.156") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.ad, i64 noundef %i.af, i64 noundef %i.ah)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %4, align 8, !tbaa !51
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.e, !prof !54

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_9ArrayDataEESaIS4_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ak

bb.g:                                             ; preds = %bb.d
  %i.al = load <2 x ptr>, ptr %i.m, align 8, !tbaa !91, !noalias !974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %3, align 16, !tbaa !67
end_hunk_1
