Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb_solver?download=true
inline.NumInlined: 3382
inline.NumDeleted: 792
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK2pb6solver7displayERSoRKNS0_4ineqEb:bb.a

bb.g:                                             ; preds = %_ZNK2pb6solver4ineq4sizeEv.exit
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !306 ; 2 uses
  %.not = icmp eq i32 %i.av, 1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aw)
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.98, i64 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !288
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi ptr [ %.pre, %bb.h ], [ %i.ak, %bb.g ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 4, !tbaa !110 ; 4 uses
  %i.bc = icmp eq i32 %.sroa.0.0.copyload.i, -2
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.k:                                             ; preds = %bb.i
  %i.be = trunc i32 %.sroa.0.0.copyload.i to i1
  %i.bf = select i1 %i.be, ptr @.str.124, ptr @.str.125
  %.mask.i = and i32 %.sroa.0.0.copyload.i, 1
  %i.bg = zext nneg i32 %.mask.i to i64
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bf, i64 noundef %i.bg) ; 0 uses
  %i.bi = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bj) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.j, %bb.k
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bm = load ptr, ptr %2, align 8, !tbaa !288   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge, label %_ZNK2pb6solver4ineq4sizeEv.exit, !llvm.loop !700
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2pb6solver16resolve_conflictEv(ptr noundef nonnull align 8 dereferenceable(1049) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.sat::mk_lits_pp", align 8  ; 5 uses
  %2 = alloca %"class.sat::justification", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.c = load i32, ptr %i.b, align 8, !tbaa !245
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load i32, ptr %i.g, align 8, !tbaa !705
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN2pb6solver19resolve_conflict_rsEv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  br label %bb.bj

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 17 uses
  store i8 0, ptr %i.k, align 4, !tbaa !310
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286  ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2pb6solver12reset_coeffsEv.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !110  ; 3 uses
  %.not2.i = icmp eq i32 %i.p, 0
  br i1 %.not2.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !308  ; 5 uses
  %i.s = zext i32 %i.p to i64                     ; 3 uses
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %i.t, %.prol.preheader ], [ %i.s, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.t = add nsw i64 %indvars.iv.i.prol, -1       ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  store i64 0, ptr %i.x, align 8, !tbaa !309
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !701

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.s, %.lr.ph.i ], [ %i.t, %.prol.preheader ]
  %i.y = icmp ult i32 %i.p, 4
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.new

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  store i32 0, ptr %i.o, align 4, !tbaa !110
  br label %_ZN2pb6solver12reset_coeffsEv.exit

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %i.ao, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %i.z = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  store i64 0, ptr %i.ad, align 8, !tbaa !309
  %i.ae = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !110
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ah
  store i64 0, ptr %i.ai, align 8, !tbaa !309
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !110
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.am
  store i64 0, ptr %i.an, align 8, !tbaa !309
  %i.ao = add nsw i64 %indvars.iv.i, -4           ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !110
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ar
  store i64 0, ptr %i.as, align 8, !tbaa !309
  %.not.wide.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.wide.i.3, label %.loopexit.i, label %.lr.ph.i.new, !llvm.loop !4

_ZN2pb6solver12reset_coeffsEv.exit:               ; preds = %bb.d, %.loopexit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !312
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 12 uses
  store i32 0, ptr %i.au, align 8, !tbaa !311
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 3200
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !110 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 3176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ay = call noundef i32 @_ZN3sat6solver11get_max_lvlENS_7literalENS_13justificationERb(ptr noundef nonnull align 8 dereferenceable(4264) %i.f, i32 %i.aw, ptr noundef nonnull byval(%"class.sat::justification") align 8 %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !314
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %bb.bi, label %bb.e

bb.e:                                             ; preds = %_ZN2pb6solver12reset_coeffsEv.exit
  %.not121 = icmp eq i32 %i.aw, -2
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = xor i32 %i.aw, 1                        ; 2 uses
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %i.bb, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi i32 [ %i.bb, %bb.f ], [ -2, %bb.e ]
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3784 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !257 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !110
  %i.bi = add i32 %i.bh, -1
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.bi, %bb.h ], [ -1, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.pre = load i8, ptr %i.k, align 4, !tbaa !310, !range !252
  br label %bb.i

bb.i:                                             ; preds = %bb.bd, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.bp = phi ptr [ %i.bc, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.hr, %bb.bd ]
  %i.bq = phi ptr [ %i.be, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.hs, %bb.bd ]
  %i.br = phi i8 [ %.pre, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.jf, %bb.bd ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.hx, %bb.bd ] ; 16 uses
  %.081 = phi i32 [ 1, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.283, %bb.bd ] ; 19 uses
  %.077 = phi i32 [ %.0.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.is, %bb.bd ] ; 5 uses
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp ugt i32 %.081, 4096
  %or.cond = or i1 %i.bt, %i.bs
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bu = call noundef i32 @_Z19get_verbosity_levelv()
  %i.bv = icmp ugt i32 %i.bu, 19
  br i1 %i.bv, label %bb.k, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_Z12verbose_lockv()
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.40, i64 noundef 8) ; 0 uses
  %i.bz = zext i32 %.081 to i64
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.bz)
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.40, i64 noundef 8) ; 0 uses
  %i.ce = zext i32 %.081 to i64
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i64 noundef %i.ce)
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.n:                                             ; preds = %bb.i
  %i.ch = icmp eq i32 %.081, 0
  br i1 %i.ch, label %.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.b91 = load i1, ptr @_ZN2pbL15_debug_conflictE, align 1
  br i1 %.b91, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.ci = call noundef i32 @_Z19get_verbosity_levelv() ; 0 uses
  %i.cj = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.cj, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_Z12verbose_lockv()
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 4 uses
  %i.cl = icmp eq i32 %.sroa.0.1, -2
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.s:                                             ; preds = %bb.q
  %i.cn = trunc i32 %.sroa.0.1 to i1
  %i.co = select i1 %i.cn, ptr @.str.124, ptr @.str.125
  %.mask.i = and i32 %.sroa.0.1, 1
  %i.cp = zext nneg i32 %.mask.i to i64
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull %i.co, i64 noundef %i.cp) ; 0 uses
  %i.cr = lshr i32 %.sroa.0.1, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i64 noundef %i.cs) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.r, %bb.s
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat6solver21display_justificationERSoRKNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(20) %2) ; 0 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 4 uses
  %i.db = icmp eq i32 %.sroa.0.1, -2
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit96

bb.v:                                             ; preds = %bb.t
  %i.dd = trunc i32 %.sroa.0.1 to i1
  %i.de = select i1 %i.dd, ptr @.str.124, ptr @.str.125
  %.mask.i95 = and i32 %.sroa.0.1, 1
  %i.df = zext nneg i32 %.mask.i95 to i64
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull %i.de, i64 noundef %i.df) ; 0 uses
  %i.dh = lshr i32 %.sroa.0.1, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i64 noundef %i.di) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit96

_ZN3satlsERSoNS_7literalE.exit96:                 ; preds = %bb.u, %bb.v
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat6solver21display_justificationERSoRKNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull align 8 dereferenceable(20) %2) ; 0 uses
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZN3satlsERSoNS_7literalE.exit, %_ZN3satlsERSoNS_7literalE.exit96
  store i32 %.sroa.0.1, ptr @_ZN2pbL17_debug_consequentE.0, align 4, !tbaa !110
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.o
  %i.dq = load i32, ptr %i.bj, align 8, !tbaa !242
  %i.dr = and i32 %i.dq, 7
  switch i32 %i.dr, label %bb.as [
    i32 0, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.af
  ]

bb.y:                                             ; preds = %bb.x
  %3 = zext nneg i32 %.081 to i64
  %i.ds = load i32, ptr %i.au, align 8, !tbaa !311
  %4 = zext i32 %i.ds to i64
  %5 = add nuw nsw i64 %4, %3                     ; 2 uses
  %6 = trunc i64 %5 to i32
  %7 = icmp samesign ugt i64 %5, 4294967295
  %i.dt = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.du = zext i1 %7 to i8
  %i.dv = or i8 %i.dt, %i.du
  store i8 %i.dv, ptr %i.k, align 4, !tbaa !310
  store i32 %6, ptr %i.au, align 8, !tbaa !311
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

bb.z:                                             ; preds = %bb.x
  %8 = zext nneg i32 %.081 to i64
  %i.dw = load i32, ptr %i.au, align 8, !tbaa !311
  %9 = zext i32 %i.dw to i64
  %10 = add nuw nsw i64 %9, %8                    ; 2 uses
  %11 = trunc i64 %10 to i32
  %12 = icmp samesign ugt i64 %10, 4294967295
  %i.dx = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.dy = zext i1 %12 to i8
  %i.dz = or i8 %i.dx, %i.dy
  store i8 %i.dz, ptr %i.k, align 4, !tbaa !310
  store i32 %11, ptr %i.au, align 8, !tbaa !311
  call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.1, i32 noundef %.081)
  %i.ea = load i64, ptr %i.bk, align 8, !tbaa !241
  %i.eb = trunc i64 %i.ea to i32
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %i.eb, i32 noundef %.081)
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

bb.aa:                                            ; preds = %bb.x
  %13 = zext nneg i32 %.081 to i64
  %i.ec = load i32, ptr %i.au, align 8, !tbaa !311
  %14 = zext i32 %i.ec to i64
  %15 = add nuw nsw i64 %14, %13                  ; 2 uses
  %16 = trunc i64 %15 to i32
  %17 = icmp samesign ugt i64 %15, 4294967295
  %i.ed = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.ee = zext i1 %17 to i8
  %i.ef = or i8 %i.ed, %i.ee
  store i8 %i.ef, ptr %i.k, align 4, !tbaa !310
  store i32 %16, ptr %i.au, align 8, !tbaa !311
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %i.eh = load i64, ptr %i.bk, align 8, !tbaa !241
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1200
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 2336
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !315, !range !252, !noundef !253
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [568 x i8], ptr %i.ei, i64 %i.el
  %i.en = call noundef nonnull align 4 dereferenceable(20) ptr @_ZNK3sat16clause_allocator10get_clauseEm(ptr noundef nonnull align 8 dereferenceable(568) %i.em, i64 noundef %i.eh) ; 3 uses
  %.not122 = icmp eq i32 %.sroa.0.1, -2
  br i1 %.not122, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.1, i32 noundef %.081)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !295 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %.sroa.0.1
  br i1 %i.eq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %i.ep, i32 noundef %.081)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.084 = phi i32 [ 0, %bb.aa ], [ 2, %bb.ac ], [ 1, %bb.ab ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !317 ; 2 uses
  %i.et = icmp ult i32 %.084, %i.es
  br i1 %i.et, label %.lr.ph144, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

.lr.ph144:                                        ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ev = zext nneg i32 %.084 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph144, %bb.ae
  %indvars.iv = phi i64 [ %i.ev, %.lr.ph144 ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %.sroa.029.0.copyload = load i32, ptr %i.ew, align 4, !tbaa !110
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.029.0.copyload, i32 noundef %.081)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.es, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, label %bb.ae, !llvm.loop !702

bb.af:                                            ; preds = %bb.x
  %i.ex = load i64, ptr %i.bk, align 8, !tbaa !241
  %i.ey = inttoptr i64 %i.ex to ptr               ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !299
  %.not = icmp eq ptr %i.ez, %0
  br i1 %.not, label %bb.ag, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.bl, align 8, !tbaa !318
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.bl, align 8, !tbaa !318
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !319
  switch i32 %i.fe, label %bb.ar [
    i32 0, label %bb.ah
    i32 1, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ff = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN2pb10constraint7to_cardEv(ptr noundef nonnull align 8 dereferenceable(64) %i.fa) ; 5 uses
  %i.fg = zext nneg i32 %.081 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 60 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !256 ; 3 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = mul nuw nsw i64 %i.fj, %i.fg
  %i.fl = load i32, ptr %i.au, align 8, !tbaa !311
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fk, %i.fm            ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp samesign ugt i64 %i.fn, 4294967295
  %i.fq = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.fr = zext i1 %i.fp to i8
  %i.fs = or i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %i.k, align 4, !tbaa !310
  store i32 %i.fo, ptr %i.au, align 8, !tbaa !311
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ft, align 8, !tbaa !110 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !249
  %i.fw = icmp ult i32 %i.fi, %i.fv
  br i1 %i.fw, label %.lr.ph.i97, label %.preheader.i

.lr.ph.i97:                                       ; preds = %bb.ah
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  br label %bb.ai

.preheader.loopexit.i:                            ; preds = %bb.ai
  %.pre.i = load i32, ptr %i.fh, align 4, !tbaa !256
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ah
  %i.fy = phi i32 [ %.pre.i, %.preheader.loopexit.i ], [ %i.fi, %bb.ah ]
  %.not31.i = icmp eq i32 %i.fy, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i97
  %indvars.iv.i98 = phi i64 [ %i.fj, %.lr.ph.i97 ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i98
  %.sroa.010.0.copyload.i = load i32, ptr %i.ga, align 4, !tbaa !110
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.010.0.copyload.i, i32 noundef %.081)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i98, 1 ; 2 uses
  %i.gb = load i32, ptr %i.fu, align 8, !tbaa !249
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next.i, %i.gc
  br i1 %i.gd, label %bb.ai, label %.preheader.loopexit.i, !llvm.loop !5

._crit_edge.loopexit.i:                           ; preds = %bb.aj
  %i.ge = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.081, i32 %i.gg)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.lcssa.i = phi { i32, i1 } [ zeroinitializer, %.preheader.i ], [ %i.ge, %._crit_edge.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, -2
  br i1 %.not.i, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, label %bb.ak

bb.aj:                                            ; preds = %bb.aj, %.lr.ph30.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph30.i ], [ %indvars.iv.next35.i, %bb.aj ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv34.i
  %.sroa.06.0.copyload.i = load i32, ptr %i.gf, align 4, !tbaa !110
  call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.06.0.copyload.i, i32 noundef %.081)
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.gg = load i32, ptr %i.fh, align 4, !tbaa !256 ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = icmp samesign ult i64 %indvars.iv.next35.i, %i.gh
  br i1 %i.gi, label %bb.aj, label %._crit_edge.loopexit.i, !llvm.loop !6

bb.ak:                                            ; preds = %._crit_edge.i
  %umul.value.i = extractvalue { i32, i1 } %.lcssa.i, 0
  %i.gj = extractvalue { i32, i1 } %.lcssa.i, 1
  br i1 %i.gj, label %bb.al, label %.sink.split.i

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.k, align 4, !tbaa !310
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.al, %bb.ak
  %i.gk = load ptr, ptr %0, align 8, !tbaa !112
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 536
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.0.copyload.i.i), !inline_history !707
  %i.go = icmp eq i32 %i.gn, 1
  %i.gp = zext i1 %i.go to i32
  %.sink.i = xor i32 %.sroa.0.0.copyload.i.i, %i.gp
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sink.i, i32 noundef %umul.value.i)
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

bb.am:                                            ; preds = %bb.ag
  %i.gq = call noundef nonnull align 8 dereferenceable(76) ptr @_ZN2pb10constraint5to_pbEv(ptr noundef nonnull align 8 dereferenceable(64) %i.fa)
  %i.gr = load ptr, ptr %i.bm, align 8, !tbaa !257 ; 2 uses
  %.not.i99 = icmp eq ptr %i.gr, null
  br i1 %.not.i99, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -4
  store i32 0, ptr %i.gs, align 4, !tbaa !110
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.am, %bb.an
  %18 = zext nneg i32 %.081 to i64
  %i.gt = load i32, ptr %i.au, align 8, !tbaa !311
  %19 = zext i32 %i.gt to i64
  %20 = add nuw nsw i64 %19, %18                  ; 2 uses
  %21 = trunc i64 %20 to i32
  %22 = icmp samesign ugt i64 %20, 4294967295
  %i.gu = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.gv = zext i1 %22 to i8
  %i.gw = or i8 %i.gu, %i.gv
  store i8 %i.gw, ptr %i.k, align 4, !tbaa !310
  store i32 %21, ptr %i.au, align 8, !tbaa !311
  call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.1, i32 noundef %.081)
  call void @_ZN2pb6solver15get_antecedentsEN3sat7literalERKNS_3pbcER7svectorIS2_jE(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(76) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %.b = load i1, ptr @_ZN2pbL15_debug_conflictE, align 1
  br i1 %.b, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.gy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i32 %.sroa.0.1)
  %i.gz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.41, i64 noundef 13) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.hc = load ptr, ptr %i.bm, align 8, !tbaa !257 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !110
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit:      ; preds = %bb.ao, %bb.ap
  %.0.i.i = phi i32 [ %i.hf, %bb.ap ], [ 0, %bb.ao ]
  store i32 %.0.i.i, ptr %1, align 8, !tbaa !266
  store ptr %i.hc, ptr %i.bn, align 8, !tbaa !267
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.hi = load ptr, ptr %i.bm, align 8, !tbaa !257 ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %bb.aq
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !110 ; 2 uses
  %i.hm = zext i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hn
  %.not92141 = icmp eq i32 %i.hl, 0
  br i1 %.not92141, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %.lr.ph
  %.080142 = phi ptr [ %i.hq, %.lr.ph ], [ %i.hi, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 2 uses
  %.sroa.011.0.copyload = load i32, ptr %.080142, align 4, !tbaa !110
  %i.hp = xor i32 %.sroa.011.0.copyload, 1
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %i.hp, i32 noundef %.081)
  %i.hq = getelementptr inbounds nuw i8, ptr %.080142, i64 4 ; 2 uses
  %.not92 = icmp eq ptr %i.hq, %i.ho
  br i1 %.not92, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, label %.lr.ph

bb.ar:                                            ; preds = %bb.ag
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

bb.as:                                            ; preds = %bb.x
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 754, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread

_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread: ; preds = %.lr.ph, %bb.ae, %bb.aq, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %bb.ad, %.sink.split.i, %._crit_edge.i, %bb.ar, %bb.as, %bb.z, %bb.y
  call void @_ZN2pb6solver3cutEv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  %.pre167 = load ptr, ptr %i.bd, align 8, !tbaa !257
  %.pre168 = load ptr, ptr %i.e, align 8, !tbaa !114
  br label %.split

.split:                                           ; preds = %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread, %bb.n
  %i.hr = phi ptr [ %.pre168, %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread ], [ %i.bp, %bb.n ] ; 3 uses
  %i.hs = phi ptr [ %.pre167, %_ZN2pb6solver12process_cardERNS_4cardEj.exit.thread ], [ %i.bq, %bb.n ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 3296
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !250 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 3280
  %i.hw = zext i32 %.077 to i64
  br label %bb.at

bb.at:                                            ; preds = %.split87, %.split
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.split87 ], [ %i.hw, %.split ] ; 4 uses
  %phi.call = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv164
  %i.hx = load i32, ptr %phi.call, align 4, !tbaa !110 ; 2 uses
  %i.hy = lshr i32 %i.hx, 1                       ; 3 uses
  %i.hz = zext nneg i32 %i.hy to i64              ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !251, !range !252, !noundef !253
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !271
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.id, i64 %i.hz ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !240
  %i.ig = load i32, ptr %i.az, align 4, !tbaa !314
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ii = icmp eq i64 %indvars.iv164, 0
  br i1 %i.ii, label %bb.aw, label %.split87

bb.aw:                                            ; preds = %bb.av
  %i.ij = call noundef i32 @_Z19get_verbosity_levelv()
  %i.ik = icmp ugt i32 %i.ij, 1
  br i1 %i.ik, label %bb.ax, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.ax:                                            ; preds = %bb.aw
  %i.il = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.il, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_Z12verbose_lockv()
  %i.im = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.in = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.42, i64 noundef 28) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.az:                                            ; preds = %bb.ax
  %i.io = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.ip = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull @.str.42, i64 noundef 28) ; 0 uses
  br label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

.split87:                                         ; preds = %bb.av
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, -1
  br label %bb.at, !llvm.loop !703

bb.ba:                                            ; preds = %bb.au
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hz
  %i.ir = trunc nuw i64 %indvars.iv164 to i32
  store i8 0, ptr %i.iq, align 1, !tbaa !251
  %i.is = add i32 %i.ir, -1                       ; 2 uses
  %i.it = load i32, ptr %i.at, align 8, !tbaa !312
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.at, align 8, !tbaa !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.ie, i64 20, i1 false), !tbaa.struct !706
  %i.iv = load ptr, ptr %i.bo, align 8, !tbaa !308 ; 6 uses
  %i.iw = icmp eq ptr %i.iv, null                 ; 2 uses
  br i1 %i.iw, label %_ZNK2pb6solver13get_abs_coeffEj.exit, label %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.ba
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !110
  %.not.i.i.i = icmp ult i32 %i.hy, %i.iy
  br i1 %.not.i.i.i, label %bb.bb, label %_ZNK2pb6solver13get_abs_coeffEj.exit

bb.bb:                                            ; preds = %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i.i
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.hz
  %.0.i.sroa.speculate.load..i.i = load i64, ptr %i.iz, align 8, !tbaa !309
  %i.ja = call i64 @llvm.abs.i64(i64 %.0.i.sroa.speculate.load..i.i, i1 true)
  br label %_ZNK2pb6solver13get_abs_coeffEj.exit

_ZNK2pb6solver13get_abs_coeffEj.exit:             ; preds = %bb.ba, %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i.i, %bb.bb
  %.0.i.sroa.speculated.i.i = phi i64 [ %i.ja, %bb.bb ], [ 0, %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i.i ], [ 0, %bb.ba ] ; 2 uses
  %i.jb = trunc i64 %.0.i.sroa.speculated.i.i to i32 ; 2 uses
  %i.jc = icmp samesign ugt i64 %.0.i.sroa.speculated.i.i, 4294967295
  %i.jd = load i8, ptr %i.k, align 4, !tbaa !310, !range !252, !noundef !253
  %i.je = zext i1 %i.jc to i8
  %i.jf = or i8 %i.jd, %i.je                      ; 2 uses
  store i8 %i.jf, ptr %i.k, align 4, !tbaa !310
  %i.jg = load i32, ptr %i.au, align 8, !tbaa !311 ; 3 uses
  %i.jh = icmp ult i32 %i.jg, %i.jb
  br i1 %i.jh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK2pb6solver13get_abs_coeffEj.exit
  %i.ji = zext i32 %i.jg to i64                   ; 4 uses
  br i1 %i.iw, label %_ZNK2pb6solver9get_coeffEj.exit.thread, label %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.bc
  %i.jj = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !110
  %.not.i.i = icmp ult i32 %i.hy, %i.jk
  br i1 %.not.i.i, label %_ZNK2pb6solver9get_coeffEj.exit, label %_ZNK2pb6solver9get_coeffEj.exit.thread

_ZNK2pb6solver9get_coeffEj.exit:                  ; preds = %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.hz
  %.0.i.sroa.speculate.load..i = load i64, ptr %i.jl, align 8, !tbaa !309
  %.0.i.sroa.speculate.load..i.fr = freeze i64 %.0.i.sroa.speculate.load..i
  %i.jm = icmp slt i64 %.0.i.sroa.speculate.load..i.fr, 0
  %i.jn = sub nsw i64 0, %i.ji
  %spec.select = select i1 %i.jm, i64 %i.jn, i64 %i.ji
  br label %_ZNK2pb6solver9get_coeffEj.exit.thread

_ZNK2pb6solver9get_coeffEj.exit.thread:           ; preds = %_ZNK2pb6solver9get_coeffEj.exit, %bb.bc, %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i
  %i.jo = phi i64 [ %i.ji, %bb.bc ], [ %spec.select, %_ZNK2pb6solver9get_coeffEj.exit ], [ %i.ji, %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.hz
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !309
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK2pb6solver9get_coeffEj.exit.thread, %_ZNK2pb6solver13get_abs_coeffEj.exit
  %.283 = phi i32 [ %i.jb, %_ZNK2pb6solver13get_abs_coeffEj.exit ], [ %i.jg, %_ZNK2pb6solver9get_coeffEj.exit.thread ]
  %.not93 = icmp eq i32 %i.iu, 0
  br i1 %.not93, label %bb.be, label %bb.i, !llvm.loop !704

bb.be:                                            ; preds = %bb.bd
  %i.jq = call noundef zeroext i1 @_ZN2pb6solver22create_asserting_lemmaEv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  br i1 %i.jq, label %bb.bf, label %_ZN2pb6solver12process_cardERNS_4cardEj.exit

bb.bf:                                            ; preds = %bb.be
  %i.jr = call noundef ptr @_ZN2pb6solver12active2lemmaEv(ptr noundef nonnull align 8 dereferenceable(1049) %0) ; 0 uses
  br label %bb.bi
end_hunk_0
