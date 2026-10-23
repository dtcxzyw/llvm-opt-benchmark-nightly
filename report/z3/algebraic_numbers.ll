Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/algebraic_numbers?download=true
inline.NumInlined: 2967
inline.NumDeleted: 537
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17algebraic_numbers7manager3imp12eval_sign_atERK7obj_refIN10polynomial10polynomialENS3_7managerEERKNS3_9var2valueIS0_NS_4anumEEE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN17algebraic_numbers7manager3imp13opt_var2basicE, i64 16), ptr %3, align 8, !tbaa !110
  store ptr %0, ptr %i.c, align 8, !tbaa !111
  store ptr %2, ptr %i.d, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !79, !nonnull !78, !align !80
  store ptr %i.as, ptr %4, align 8, !tbaa !34
  store i32 0, ptr %i.f, align 8, !tbaa !39
  %i.at = load i8, ptr %i.g, align 4
  %i.au = and i8 %i.at, -4
  store i8 %i.au, ptr %i.g, align 4
  store ptr null, ptr %i.h, align 8, !tbaa !40
  store i32 1, ptr %i.i, align 8, !tbaa !39
  %i.av = load i8, ptr %i.j, align 4
  %i.aw = and i8 %i.av, -4
  store i8 %i.aw, ptr %i.j, align 4
  store ptr null, ptr %i.k, align 8, !tbaa !40
  %i.ax = load ptr, ptr %1, align 8, !tbaa !106
  invoke void @_ZN10polynomial7manager4evalEPKNS_10polynomialERKNS_9var2valueI11mpq_managerILb0EE3mpqEERS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !39
  %i.az = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.ay, i32 0)
  %i.ba = load ptr, ptr %4, align 8, !tbaa !89, !nonnull !78, !align !80 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.thread178 unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i, %bb.c
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

.thread178:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit214

bb.e:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN17algebraic_numbers7manager3imp13opt_var2basic6failedE ; 3 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 1
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN17algebraic_numbers7manager3imp13opt_var2basic6failedE) #25
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %.loopexit208

bb.f:                                             ; preds = %bb.e
  %i.bh = extractvalue { ptr, i32 } %i.bd, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #25 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !106
  store ptr %i.b, ptr %i.l, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN17algebraic_numbers7manager3imp9var2basicE, i64 16), ptr %6, align 8, !tbaa !110
  store ptr %0, ptr %i.m, align 8, !tbaa !111
  store ptr %2, ptr %i.n, align 8, !tbaa !113
  %i.bj = load ptr, ptr %1, align 8, !tbaa !106
  %i.bk = invoke noundef ptr @_ZN10polynomial7manager10substituteEPKNS_10polynomialERKNS_9var2valueI11mpq_managerILb0EE3mpqEE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bk)
          to label %bb.h unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %5, align 8, !tbaa !106
  %i.bn = invoke noundef zeroext i1 @_ZN10polynomial7manager7is_zeroEPKNS_10polynomialE(ptr noundef %i.bm)
          to label %bb.i unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  br i1 %i.bn, label %.thread183, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %5, align 8, !tbaa !106
  %i.bp = invoke noundef zeroext i1 @_ZN10polynomial7manager8is_constEPKNS_10polynomialE(ptr noundef %i.bo)
          to label %_Z8is_constRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z8is_constRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit: ; preds = %bb.j
  br i1 %i.bp, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_Z8is_constRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(600) ptr @_ZNK10polynomial7manager1mEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %5, align 8, !tbaa !106
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN10polynomial7manager5coeffEPKNS_10polynomialEj(ptr noundef %i.br, i32 noundef 0)
          to label %bb.m unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !39
  %i.bu = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.bt, i32 0)
  br label %.thread183

bb.n:                                             ; preds = %_Z8is_constRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !114 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 0, ptr %i.bw, align 4, !tbaa !115
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.n, %bb.o
  %i.bx = load ptr, ptr %5, align 8, !tbaa !106
  invoke void @_ZN10polynomial7manager4varsEPKNS_10polynomialER7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.p unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN17algebraic_numbers7manager3imp12var2intervalE, i64 16), ptr %7, align 8, !tbaa !110
  store ptr %0, ptr %i.p, align 8, !tbaa !111
  store ptr %2, ptr %i.q, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.r, ptr %8, align 8, !tbaa !144
  store i32 0, ptr %i.s, align 8, !tbaa !39
  %i.by = load i8, ptr %i.t, align 4
  %i.bz = and i8 %i.by, -4
  store i8 %i.bz, ptr %i.t, align 4
  store ptr null, ptr %i.u, align 8, !tbaa !40
  store i32 0, ptr %i.v, align 8, !tbaa !42
  store i32 0, ptr %i.w, align 8, !tbaa !39
  %i.ca = load i8, ptr %i.x, align 4
  %i.cb = and i8 %i.ca, -4
  store i8 %i.cb, ptr %i.x, align 4
  store ptr null, ptr %i.y, align 8, !tbaa !40
  store i32 0, ptr %i.z, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  invoke void @_ZN17algebraic_numbers7manager3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.r unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr %5, align 8, !tbaa !106
  invoke void @_ZN10polynomial7manager4evalEPKNS_10polynomialERKNS_9var2valueI13mpbqi_managerN22basic_interval_managerI12mpbq_managerLb0EE8intervalEEERS9_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.s unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %i.cf = load i32, ptr %i.w, align 8
  %i.cg = icmp sgt i32 %i.cf, 0
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %i.ch, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.s
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !114 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.critedge296, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

bb.t:                                             ; preds = %bb.s
  %i.ck = icmp sgt i32 %i.cd, -1
  %i.cl = select i1 %i.ck, i32 1, i32 -1
  br label %.thread187

.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.f, %bb.g, %bb.h, %_ZN6vectorIjLb0EjE5resetEv.exit, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp210

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %.preheader, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %.preheader ] ; 3 uses
  %i.cm = phi ptr [ %i.di, %bb.aa ], [ %i.ci, %.preheader ] ; 3 uses
  %.089285 = phi i8 [ %.2.ph, %bb.aa ], [ 0, %.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !115
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp samesign ult i64 %indvars.iv, %i.cp
  br i1 %i.cq, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !115
  %i.ct = load ptr, ptr %2, align 8, !tbaa !110
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cs)
          to label %bb.v unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !82
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, -8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = invoke noundef i32 @_ZN17algebraic_numbers7manager3imp9magnitudeEPNS_14algebraic_cellE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef %i.da)
          to label %bb.w unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !145
  %i.dd = icmp sgt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load i32, ptr %i.ab, align 4, !tbaa !146 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  %i.dg = icmp sgt i32 %i.db, %i.de
  %or.cond155 = and i1 %i.df, %i.dg
  br i1 %or.cond155, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dh = invoke noundef zeroext i1 @_ZN17algebraic_numbers7manager3imp6refineERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %bb.z unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %bb.aa, label %.thread177

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.2.ph = phi i8 [ %.089285, %bb.x ], [ 1, %bb.z ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !114 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, !llvm.loop !232

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %bb.aa
  %i.dk = phi ptr [ %i.cm, %_ZNK6vectorIjLb0EjE4sizeEv.exit ], [ null, %bb.aa ]
  %.089.lcssa.ph = phi i8 [ %.089285, %_ZNK6vectorIjLb0EjE4sizeEv.exit ], [ %.2.ph, %bb.aa ]
  %17 = icmp eq i8 %.089.lcssa.ph, 0
  br i1 %17, label %.critedge296, label %bb.q

.thread177:                                       ; preds = %bb.z
  invoke void @_ZN17algebraic_numbers7manager3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %.backedge unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !233

.critedge296:                                     ; preds = %.preheader, %.critedge
  %i.dl = phi ptr [ %i.dk, %.critedge ], [ null, %.preheader ] ; 4 uses
  %i.dm = load i32, ptr %i.ab, align 4, !tbaa !146
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.thread187, label %bb.ab

bb.ab:                                            ; preds = %.critedge296
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !115 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !115 ; 3 uses
  %i.dr = icmp ugt i32 %i.dq, 1
  br i1 %i.dr, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i, label %_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i:      ; preds = %bb.ab
  %wide.trip.count.i = zext i32 %i.dq to i64      ; 2 uses
  %i.ds = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.dq, 9
  br i1 %min.iters.check, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i
  %n.vec = and i64 %i.ds, -8                      ; 3 uses
  %i.dt = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dx, %vector.body ]
  %vec.phi430 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dy, %vector.body ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %wide.load = load <4 x i32>, ptr %i.dv, align 4, !tbaa !115
  %wide.load431 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !115
  %i.dx = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.dy = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load431, <4 x i32> %vec.phi430) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dx, <4 x i32> %i.dy)
  %i.ea = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader:      ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i ], [ %i.dt, %middle.block ]
  %.0910.i.ph = phi i32 [ %i.do, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i ], [ %i.ea, %middle.block ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %indvars.iv.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader ] ; 2 uses
  %.0910.i = phi i32 [ %spec.select.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %.0910.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !115
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.ec, i32 %.0910.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, !llvm.loop !235

_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %middle.block, %bb.ab
  %.09.lcssa.i = phi i32 [ %i.do, %bb.ab ], [ %i.ea, %middle.block ], [ %spec.select.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ed = add i32 %.09.lcssa.i, 2
  invoke void @_ZN17algebraic_numbers7manager3imp15ensure_num_varsEj(ptr noundef nonnull align 8 dereferenceable(936) %0, i32 noundef %i.ed)
          to label %bb.ac unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit
  %i.ee = add i32 %.09.lcssa.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr null, ptr %9, align 8, !tbaa !106
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !108
  %i.ef = invoke noundef ptr @_ZN10polynomial7manager13mk_polynomialEjj(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ee, i32 noundef 1)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.eg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.ef)
          to label %bb.ae unwind label %bb.ai     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr null, ptr %10, align 8, !tbaa !106
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !108
  %i.eh = load ptr, ptr %5, align 8, !tbaa !106
  %i.ei = invoke noundef ptr @_Z7convertRN10polynomial7managerEPNS_10polynomialES1_jj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef -1, i32 noundef -1)
          to label %_Z7convertRN10polynomial7managerERK7obj_refINS_10polynomialES0_ES1_.exit unwind label %bb.aj

_Z7convertRN10polynomial7managerERK7obj_refINS_10polynomialES0_ES1_.exit: ; preds = %bb.ae
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.ei)
          to label %bb.af unwind label %bb.aj     ; 0 uses

bb.af:                                            ; preds = %_Z7convertRN10polynomial7managerERK7obj_refINS_10polynomialES0_ES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr null, ptr %11, align 8, !tbaa !106
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZmiRK7obj_refIN10polynomial10polynomialENS0_7managerEES5_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ek = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12) #25 ; 0 uses
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr null, ptr %13, align 8, !tbaa !106
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !108
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !114 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN6vectorIjLb0EjE3endEv.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !115
  %i.ep = zext i32 %i.eo to i64
  br label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.ag, %bb.ah
  %.0.i.i = phi i64 [ %i.ep, %bb.ah ], [ 0, %bb.ag ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0.i.i
  invoke void @_ZSt13__stable_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIN17algebraic_numbers7manager3imp13var_degree_ltEEEEvT_S9_T0_(ptr noundef %i.el, ptr noundef %i.eq, ptr nonnull %0, ptr nonnull %2)
          to label %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader: ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !114 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.critedge190, label %_ZNK6vectorIjLb0EjE4sizeEv.exit158

_ZNK6vectorIjLb0EjE4sizeEv.exit158:               ; preds = %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit ], [ 0, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader ] ; 3 uses
  %i.et = phi ptr [ %i.ft, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit ], [ %i.er, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader ]
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !115
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv337, %i.ew
  br i1 %i.ex, label %bb.al, label %.critedge190

.critedge190:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit158, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit, %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit.preheader
  invoke void @_ZN11upolynomial12core_manager17to_numeral_vectorI7obj_refIN10polynomial10polynomialENS3_7managerEEEEvRKT_R7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.aq unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.y, %bb.u, %bb.q, %bb.r, %.thread177, %_ZN17algebraic_numbers7manager3imp11get_max_varERK7svectorIjjE.exit
  %lpad.loopexit.split-lp442 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp193.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.aj:                                            ; preds = %bb.ae, %_Z7convertRN10polynomial7managerERK7obj_refINS_10polynomialES0_ES1_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ak:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.br

bb.al:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit158
  invoke void @_ZN17algebraic_numbers7manager3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.am unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv337
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !115 ; 3 uses
  %i.fe = load ptr, ptr %2, align 8, !tbaa !110
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.fd)
          to label %bb.an unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !82
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = and i64 %i.fj, -8
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !87
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !86
  %i.fp = invoke noundef ptr @_ZN10polynomial7manager13to_polynomialEjPK3mpzj(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.fm, ptr noundef %i.fo, i32 noundef %i.fd)
          to label %bb.ao unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.fq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.fp)
          to label %bb.ap unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load ptr, ptr %11, align 8, !tbaa !106
  %i.fs = load ptr, ptr %13, align 8, !tbaa !106
  invoke void @_ZN10polynomial7manager9resultantEPKNS_10polynomialES3_jR7obj_refIS1_S0_E(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.fr, ptr noundef %i.fs, i32 noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt11stable_sortIPjN17algebraic_numbers7manager3imp13var_degree_ltEEvT_S5_T0_.exit: ; preds = %bb.ap
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !114 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.critedge190, label %_ZNK6vectorIjLb0EjE4sizeEv.exit158, !llvm.loop !236
end_hunk_0
