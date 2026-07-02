inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE:bb.a
  %i.pb = load i32, ptr %i.mq, align 1
  %i.pc = xor i32 %i.pb, 811825200
  %i.pd = getelementptr i8, ptr %i.mq, i64 4
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = zext i8 %i.pe to i32
  %i.pg = xor i32 %i.pf, 48
  %i.ph = or i32 %i.pc, %i.pg
  %i.pi = icmp ne i32 %i.ph, 0
  %i.pj = zext i1 %i.pi to i32
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit270

_ZNK4llvh9StringRef6equalsES0_.exit270:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit273
  %i.pl = load i32, ptr %i.mq, align 1
  %i.pm = xor i32 %i.pl, 811825200
  %i.pn = getelementptr i8, ptr %i.mq, i64 4
  %i.po = load i8, ptr %i.pn, align 1
  %i.pp = zext i8 %i.po to i32
  %i.pq = xor i32 %i.pp, 49
  %i.pr = or i32 %i.pm, %i.pq
  %i.ps = icmp ne i32 %i.pr, 0
  %i.pt = zext i1 %i.ps to i32
  %i.pu = icmp eq i32 %i.pt, 0
  %spec.select1101 = select i1 %i.pu, ptr @.str.92, ptr @.str.1
  br label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit270, %_ZNK4llvh9StringRef10startswithES0_.exit.thread1016, %_ZNK4llvh9StringRef6equalsES0_.exit273, %_ZNK4llvh9StringRef6equalsES0_.exit276, %_ZNK4llvh9StringRef6equalsES0_.exit279, %_ZNK4llvh9StringRef6equalsES0_.exit282, %_ZNK4llvh9StringRef6equalsES0_.exit285, %_ZNK4llvh9StringRef6equalsES0_.exit288, %_ZNK4llvh9StringRef6equalsES0_.exit291
  %.0.i1092 = phi ptr [ @.str.90, %_ZNK4llvh9StringRef6equalsES0_.exit273 ], [ @.str.69, %_ZNK4llvh9StringRef6equalsES0_.exit276 ], [ @.str.69, %_ZNK4llvh9StringRef6equalsES0_.exit279 ], [ @.str.84, %_ZNK4llvh9StringRef6equalsES0_.exit282 ], [ @.str.84, %_ZNK4llvh9StringRef6equalsES0_.exit285 ], [ @.str.84, %_ZNK4llvh9StringRef6equalsES0_.exit288 ], [ @.str.82, %_ZNK4llvh9StringRef6equalsES0_.exit291 ], [ @.str.1, %_ZNK4llvh9StringRef10startswithES0_.exit.thread1016 ], [ %spec.select1101, %_ZNK4llvh9StringRef6equalsES0_.exit270 ] ; 2 uses
  %i.pv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i1092) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.e, %_ZNK4llvh9StringRef10startswithES0_.exit
  %indvars.iv.next1203 = add nuw nsw i64 %indvars.iv1202, 1 ; 2 uses
  %.not65 = icmp eq i64 %indvars.iv.next1203, %i.mb
  br i1 %.not65, label %_ZNK4llvh9StringRef6equalsES0_.exit267, label %bb.e, !llvm.loop !39

_ZNK4llvh9StringRef6equalsES0_.exit267:           ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit264, %_ZNK4llvh9StringRef6equalsES0_.exit264.thread1014
  %i.pw = load i32, ptr %.sroa.0566.11235, align 1
  %i.px = icmp ne i32 %i.pw, 859142192
  %i.py = zext i1 %i.px to i32
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782

_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit267
  %i.qa = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.qb = load i32, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.qc = zext i32 %i.qb to i64
  %.idx = shl nuw nsw i64 %i.qc, 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.idx
  %.not661176 = icmp eq i32 %i.qb, 0
  br i1 %.not661176, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, label %.lr.ph1179

.lr.ph1179:                                       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094
  %i.qe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.f

._crit_edge1180:                                  ; preds = %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread
  %.pre1207 = load ptr, ptr %3, align 8, !tbaa !29 ; 2 uses
  %.pre1208 = load i32, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %i.qf = shl i32 %.1774, 12
  %i.qg = zext i32 %.pre1208 to i64
  %.idx1189 = shl nuw nsw i64 %i.qg, 4
  %i.qh = getelementptr inbounds nuw i8, ptr %.pre1207, i64 %.idx1189
  %.not671182 = icmp eq i32 %.pre1208, 0
  br i1 %.not671182, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, label %.lr.ph1186

.lr.ph1186:                                       ; preds = %._crit_edge1180
  %i.qi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph1179, %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread
  %.0611178 = phi ptr [ %i.qa, %.lr.ph1179 ], [ %i.rf, %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread ] ; 2 uses
  %.07731177 = phi i32 [ 0, %.lr.ph1179 ], [ %.1774, %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.0611178, i64 16, i1 false), !tbaa.struct !40
  %i.qj = load i64, ptr %i.qe, align 8, !tbaa !33 ; 2 uses
  %.not.i.i230 = icmp ult i64 %i.qj, 11
  br i1 %.not.i.i230, label %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit.i231

_ZNK4llvh9StringRef10startswithES0_.exit.i231:    ; preds = %bb.f
  %i.qk = load ptr, ptr %9, align 8, !tbaa !35    ; 3 uses
  %i.ql = load i64, ptr %i.qk, align 1
  %i.qm = xor i64 %i.ql, 7598242681303945283
  %i.qn = getelementptr i8, ptr %i.qk, i64 3
  %i.qo = load i64, ptr %i.qn, align 1
  %i.qp = xor i64 %i.qo, 8389750261356262944
  %i.qq = or i64 %i.qm, %i.qp
  %i.qr = icmp ne i64 %i.qq, 0
  %i.qs = zext i1 %i.qr to i32
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %_ZNK4llvh9StringRef10startswithES0_.exit.i231.thread1096, label %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread

_ZNK4llvh9StringRef10startswithES0_.exit.i231.thread1096: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i231
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qk, i64 11
  %i.qv = add i64 %i.qj, -11
  store ptr %i.qu, ptr %9, align 8, !tbaa !41
  store i64 %i.qv, ptr %i.qe, align 8, !tbaa !19
  %i.qw = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.32, i64 3, i64 noundef 0) #20
  %i.qx = load i64, ptr %i.qe, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i381 = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qx) ; 2 uses
  %i.qy = load ptr, ptr %9, align 8, !tbaa !35
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.sroa.speculated.i381
  %i.ra = sub i64 %i.qx, %.sroa.speculated.i381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.rb = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.qz, i64 %i.ra, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.rc = load i64, ptr %i.b, align 8             ; 2 uses
  %.not.i385 = icmp ugt i64 %i.rc, 4294967295
  %i.rd = trunc nuw i64 %i.rc to i32
  %i.re = select i1 %i.rb, i1 true, i1 %.not.i385
  %.2775 = select i1 %i.re, i32 %.07731177, i32 %i.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit233.thread

_ZN4llvh9StringRef13consume_frontES0_.exit233.thread: ; preds = %bb.f, %_ZNK4llvh9StringRef10startswithES0_.exit.i231, %_ZNK4llvh9StringRef10startswithES0_.exit.i231.thread1096
  %.1774 = phi i32 [ %.2775, %_ZNK4llvh9StringRef10startswithES0_.exit.i231.thread1096 ], [ %.07731177, %_ZNK4llvh9StringRef10startswithES0_.exit.i231 ], [ %.07731177, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.rf = getelementptr inbounds nuw i8, ptr %.0611178, i64 16 ; 2 uses
  %.not66 = icmp eq ptr %i.rf, %i.qd
  br i1 %.not66, label %._crit_edge1180, label %bb.f

._crit_edge1187.loopexit:                         ; preds = %_ZN4llvh9StringRef13consume_frontES0_.exit.thread
  %i.rg = or i32 %.1, %i.qf
  %i.rh = icmp eq i32 %i.rg, 16385
  %i.ri = select i1 %i.rh, ptr @.str.96, ptr @.str.95
  br label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782

bb.g:                                             ; preds = %.lr.ph1186, %_ZN4llvh9StringRef13consume_frontES0_.exit.thread
  %.0581184 = phi ptr [ %.pre1207, %.lr.ph1186 ], [ %i.sa, %_ZN4llvh9StringRef13consume_frontES0_.exit.thread ] ; 2 uses
  %.07721183 = phi i32 [ 0, %.lr.ph1186 ], [ %.1, %_ZN4llvh9StringRef13consume_frontES0_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.0581184, i64 16, i1 false), !tbaa.struct !40
  %i.rj = load i64, ptr %i.qi, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp ult i64 %i.rj, 8
  br i1 %.not.i.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %bb.g
  %i.rk = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 1
  %i.rm = icmp ne i64 %i.rl, 8390876189951348803
  %i.rn = zext i1 %i.rm to i32
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread1098, label %_ZN4llvh9StringRef13consume_frontES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.i.thread1098: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rq = add i64 %i.rj, -8
  store ptr %i.rp, ptr %10, align 8, !tbaa !41
  store i64 %i.rq, ptr %i.qi, align 8, !tbaa !19
  %i.rr = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull @.str.32, i64 3, i64 noundef 0) #20
  %i.rs = load i64, ptr %i.qi, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i389 = call i64 @llvm.umin.i64(i64 %i.rr, i64 %i.rs) ; 2 uses
  %i.rt = load ptr, ptr %10, align 8, !tbaa !35
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.sroa.speculated.i389
  %i.rv = sub i64 %i.rs, %.sroa.speculated.i389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.rw = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.ru, i64 %i.rv, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.rx = load i64, ptr %i.a, align 8             ; 2 uses
  %.not.i395 = icmp ugt i64 %i.rx, 4294967295
  %i.ry = trunc nuw i64 %i.rx to i32
  %i.rz = select i1 %i.rw, i1 true, i1 %.not.i395
  %.2 = select i1 %i.rz, i32 %.07721183, i32 %i.ry
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit.thread

_ZN4llvh9StringRef13consume_frontES0_.exit.thread: ; preds = %bb.g, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread1098
  %.1 = phi i32 [ %.2, %_ZNK4llvh9StringRef10startswithES0_.exit.i.thread1098 ], [ %.07721183, %_ZNK4llvh9StringRef10startswithES0_.exit.i ], [ %.07721183, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.sa = getelementptr inbounds nuw i8, ptr %.0581184, i64 16 ; 2 uses
  %.not67 = icmp eq ptr %i.sa, %i.qh
  br i1 %.not67, label %._crit_edge1187.loopexit, label %bb.g

_ZNK4llvh9StringRef8endswithES0_.exit229.thread782: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094, %bb.a, %._crit_edge1180, %._crit_edge1187.loopexit, %._crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit267, %_ZNK4llvh9StringRef8endswithES0_.exit229, %_ZNK4llvh9StringRef8endswithES0_.exit, %_ZN4llvh9StringRefC2EPKc.exit, %_ZN4llvh9StringRefC2EPKc.exit73, %_ZN4llvh9StringRefC2EPKc.exit75
  %.sroa.0574.1 = phi ptr [ @.str.1, %bb.a ], [ %.0.i196949, %_ZN4llvh9StringRefC2EPKc.exit75 ], [ @.str.37, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ %.0.i1092, %_ZN4llvh9StringRefC2EPKc.exit ], [ %.0.i194, %_ZN4llvh9StringRefC2EPKc.exit73 ], [ @.str.37, %_ZNK4llvh9StringRef8endswithES0_.exit229 ], [ @.str.1, %._crit_edge ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit267 ], [ @.str.95, %._crit_edge1180 ], [ %i.ri, %._crit_edge1187.loopexit ], [ @.str.95, %_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094 ]
  %.sroa.8.1 = phi i64 [ 7, %bb.a ], [ %i.iw, %_ZN4llvh9StringRefC2EPKc.exit75 ], [ 10, %_ZNK4llvh9StringRef8endswithES0_.exit ], [ %i.pv, %_ZN4llvh9StringRefC2EPKc.exit ], [ %i.lu, %_ZN4llvh9StringRefC2EPKc.exit73 ], [ 10, %_ZNK4llvh9StringRef8endswithES0_.exit229 ], [ 7, %._crit_edge ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit267 ], [ 9, %._crit_edge1180 ], [ 9, %._crit_edge1187.loopexit ], [ 9, %_ZNK4llvh9StringRef6equalsES0_.exit267.thread1094 ]
  %i.sb = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.d
  br i1 %i.sc, label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782
  call void @free(ptr noundef %i.sb) #20
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit: ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0574.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6detail22getHostCPUNameForS390xENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 12 uses
  %4 = alloca %"class.llvh::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  store ptr %0, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.e, align 4, !tbaa !32
  call void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.30, i64 1, i32 noundef -1, i1 noundef zeroext true) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 32, ptr %i.h, align 4, !tbaa !32
  %i.i = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not113 = icmp eq i32 %i.i, 0
  br i1 %.not113, label %.critedge46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = zext i32 %i.i to i64
  %.pre136 = load ptr, ptr %3, align 8, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %i.k = phi ptr [ %.pre136, %.lr.ph.preheader ], [ %i.ac, %.critedge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %.not.i47 = icmp ult i64 %i.n, 8
  br i1 %.not.i47, label %.critedge, label %_ZNK4llvh9StringRef10startswithES0_.exit48

_ZNK4llvh9StringRef10startswithES0_.exit48:       ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.p = load i64, ptr %i.o, align 1
  %i.q = icmp ne i64 %i.p, 8315178135798768998
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK4llvh9StringRef10startswithES0_.exit48.thread98, label %.critedge

_ZNK4llvh9StringRef10startswithES0_.exit48.thread98: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit48
  %i.t = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr nonnull @.str.98, i64 1, i64 noundef 0) #20 ; 2 uses
  %.not39 = icmp eq i64 %i.t, -1
  %.pre = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  br i1 %.not39, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit48.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.v = add nuw i64 %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %.sroa.speculated92 = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.speculated92
  %i.aa = sub i64 %i.x, %.sroa.speculated92
  store ptr %i.z, ptr %5, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  call void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext 32, i32 noundef -1, i1 noundef zeroext true) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph, %_ZNK4llvh9StringRef10startswithES0_.exit48.thread98, %_ZNK4llvh9StringRef10startswithES0_.exit48
  %i.ac = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %_ZNK4llvh9StringRef10startswithES0_.exit48.thread98 ], [ %i.k, %_ZNK4llvh9StringRef10startswithES0_.exit48 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !42

.loopexit:                                        ; preds = %.critedge, %bb.b
  %.pr = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not40115 = icmp eq i32 %.pr, 0
  br i1 %.not40115, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.loopexit
  %i.ad = load ptr, ptr %4, align 8, !tbaa !29
  %i.ae = zext i32 %.pr to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %.loopexit
  %.033.lcssa.ph = phi i1 [ false, %.loopexit ], [ %i.an, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.pr145 = load i32, ptr %i.d, align 8, !tbaa !31 ; 2 uses
  %.not41119 = icmp eq i32 %.pr145, 0
  br i1 %.not41119, label %.critedge46, label %.lr.ph122

.lr.ph122:                                        ; preds = %._crit_edge
  %i.af = load ptr, ptr %3, align 8, !tbaa !29
  %i.ag = zext i32 %.pr145 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph118, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %indvars.iv131 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next132, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.033117 = phi i1 [ false, %.lr.ph118 ], [ %i.an, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv131 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %i.ai = icmp eq i64 %.sroa.2.0.copyload, 2
  br i1 %i.ai, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = load i16, ptr %.sroa.0.0.copyload, align 1
  %i.ak = icmp ne i16 %i.aj, 30838
  %i.al = zext i1 %i.ak to i32
  %bcmp108.fr = freeze i32 %i.al
  %i.am = icmp eq i32 %bcmp108.fr, 0
  %spec.select = select i1 %i.am, i1 true, i1 %.033117
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.c
  %i.an = phi i1 [ %.033117, %bb.c ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %.not40 = icmp eq i64 %indvars.iv.next132, %i.ae
  br i1 %.not40, label %._crit_edge, label %bb.c, !llvm.loop !43

bb.d:                                             ; preds = %.lr.ph122, %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %indvars.iv133 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next134, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv133 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.aq, 10
  br i1 %.not.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.d
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 8030889439828865648
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i64
  %i.ax = xor i64 %i.aw, 8306
  %i.ay = or i64 %i.at, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread104, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread104: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.bc = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr nonnull @.str.101, i64 10, i64 noundef 0) #20 ; 2 uses
  %.not42 = icmp eq i64 %i.bc, -1
  br i1 %.not42, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread104
  %i.bd = add i64 %i.bc, 10
  %i.be = load ptr, ptr %3, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv133 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated80 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bd) ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.speculated80
  %i.bk = sub i64 %i.bh, %.sroa.speculated80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bl = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.bj, i64 %i.bk, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br i1 %i.bl, label %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !44  ; 5 uses
  %.not.i59 = icmp ult i64 %i.bm, 4294967296
  br i1 %.not.i59, label %bb.g, label %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread

_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.critedge46

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bn = icmp samesign ugt i64 %i.bm, 3905
  %or.cond = select i1 %i.bn, i1 %.033.lcssa.ph, i1 false
  br i1 %or.cond, label %.critedge44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = icmp samesign ugt i64 %i.bm, 2963
  %or.cond5 = select i1 %i.bo, i1 %.033.lcssa.ph, i1 false
  br i1 %or.cond5, label %.critedge44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp samesign ugt i64 %i.bm, 2826
  br i1 %i.bp, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp samesign ugt i64 %i.bm, 2816
  br i1 %i.bq, label %.critedge44, label %.critedge46

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.d, %_ZNK4llvh9StringRef10startswithES0_.exit
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %.not41 = icmp eq i64 %indvars.iv.next134, %i.ag
  br i1 %.not41, label %.critedge46, label %bb.d, !llvm.loop !46

.critedge46:                                      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %bb.a, %._crit_edge, %bb.j, %_ZNK4llvh9StringRef12getAsIntegerIjEENSt9enable_ifIXntsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, %_ZNK4llvh9StringRef10startswithES0_.exit.thread104
  br label %.critedge44

.critedge44:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.critedge46
  %.sroa.073.1 = phi ptr [ @.str.1, %.critedge46 ], [ @.str.104, %bb.i ], [ @.str.102, %bb.g ], [ @.str.103, %bb.h ], [ @.str.105, %bb.j ]
  %.sroa.6.1 = phi i64 [ 7, %.critedge46 ], [ 5, %bb.i ], [ 3, %bb.g ], [ 3, %bb.h ], [ 4, %bb.j ]
  %i.br = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge44
  call void @free(ptr noundef %i.br) #20
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit: ; preds = %.critedge44, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bt = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit
  call void @free(ptr noundef %i.bt) #20
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61

_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit61: ; preds = %_ZN4llvh11SmallVectorINS_9StringRefELj32EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.073.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #3

declare void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6detail20getHostCPUNameForBPFEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %0 = alloca %struct.bpf_prog_load_attr, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) @__const._ZN4llvh3sys6detail20getHostCPUNameForBPFEv.insns, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 5, ptr %i.c, align 4, !tbaa !49
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @.str.106 to i64), ptr %i.f, align 8, !tbaa !51
  %i.g = call i64 (i64, ...) @syscall(i64 noundef 321, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 48) #20
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @close(i32 noundef %i.h) #20    ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ @.str.107, %bb.b ], [ @.str.108, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #5
end_hunk_0
