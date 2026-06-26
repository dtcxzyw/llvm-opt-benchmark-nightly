inline.NumInlined: 4181
inline.NumDeleted: 1542
begin_hunk_0_@_ZN4LIEF3ELF4Note8write_atIlEENS_10ok_error_tEmRKT_:bb.a
bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4:     ; preds = %bb.g
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, 1
  br i1 %i.z, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.aa = getelementptr inbounds i8, ptr null, i64 %i.v
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i4
  %i.ab = load i8, ptr %i.p, align 1
  store i8 %i.ab, ptr %i.x, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5:               ; preds = %bb.j, %bb.i, %bb.k
  %i.ac = phi ptr [ %i.y, %bb.i ], [ %i.aa, %bb.j ], [ %i.y, %bb.k ] ; 3 uses
  %i.ad = phi ptr [ %i.x, %bb.i ], [ null, %bb.j ], [ %i.x, %bb.k ] ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef %i.ad, i64 noundef %i.ah) #26 ; 0 uses
  br label %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit5, %bb.l
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.al) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4LIEF15vector_iostream5writeESt6vectorIhSaIhEE.exit, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %1, ptr %i.am, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.an = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = add i64 %1, 8                           ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.au)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.aw = load i8, ptr %i.s, align 8, !range !33, !noundef !34
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ay = load i64, ptr %2, align 8
  store i64 %i.ay, ptr %i.a, align 8
  call void @_ZN4LIEF11swap_endianIlEEvPT_(ptr noundef nonnull %i.a) #26
  %i.az = load ptr, ptr %i.r, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %1
  %i.bc = load i64, ptr %i.a, align 8
  store i64 %i.bc, ptr %i.bb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.r, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %1
  %i.bg = load i64, ptr %2, align 8
  store i64 %i.bg, ptr %i.bf, align 1
  br label %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit: ; preds = %bb.p, %bb.q
  %i.bh = load i64, ptr %i.am, align 8
  %i.bi = add nsw i64 %i.bh, 8
  store i64 %i.bi, ptr %i.am, align 8
  %i.bj = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load <2 x ptr>, ptr %i.q, align 8
  store <2 x ptr> %i.bm, ptr %i.b, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  store ptr %i.bo, ptr %i.bk, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.br) #27
  %.pr = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.pr to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bv) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZN4LIEF15vector_iostream5writeIlvEERS0_RKT_.exit, %bb.r, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bw = load ptr, ptr %3, align 8               ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cf, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.bw, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.bz = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #27
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cf, %i.by
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.bw, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #27
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i.i.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.u

bb.u:                                             ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.v) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %bb.u
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i8 } @_ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i.i.i.i.i.i = icmp sgt i32 %0, 8
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 41
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i.not = icmp eq i32 %0, 42
  br i1 %.not.i.i.i.i.i.i.i.i.not, label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 43
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.critedge, label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

bb.e:                                             ; preds = %bb.b
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 38
  %.add15.i.i = select i1 %.not.i6.i.i.i.i.i.i.i, i64 152, i64 136
  br label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

bb.f:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp sgt i32 %0, 4       ; 2 uses
  %i.a = select i1 %.not.i6.i.i.i.i.i.i, i64 72, i64 8
  %.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 88, i64 24
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE.TYPE2SECTION, i64 %.sroa.sel.sroa.sel.v
  %i.b = load i32, ptr %.sroa.sel.sroa.sel, align 8
  %.not.i.i7.i.i.i.i.i.i = icmp slt i32 %i.b, %0
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 32, i64 0
  %.add16.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.a ; 2 uses
  %.ptr22.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE.TYPE2SECTION, i64 %.add16.i.i
  %i.c = load i32, ptr %.ptr22.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.c, %0
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.add17.i.i = or disjoint i64 %.add16.i.i, %.idx.i.i.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit

_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i.i.i.idx.ph.i.i = phi i64 [ 184, %bb.d ], [ %.add15.i.i, %bb.e ], [ %.add17.i.i, %bb.f ] ; 2 uses
  %.0.i.i.i.i.ptr.i.i.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE.TYPE2SECTION, i64 %.0.i.i.i.i.idx.ph.i.i
  %.pre.i.i = load i32, ptr %.0.i.i.i.i.ptr.i.i.ptr, align 4
  %i.d = icmp slt i32 %0, %.pre.i.i
  br i1 %i.d, label %.critedge, label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread

_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread: ; preds = %bb.c, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit
  %.0.i.i.i.i14.i.i.idx10 = phi i64 [ %.0.i.i.i.i.idx.ph.i.i, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ 168, %bb.c ]
  %.0.i.i.i.i14.i.i.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note15type_to_sectionENS1_4TYPEE.TYPE2SECTION, i64 %.0.i.i.i.i14.i.i.idx10
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14.i.i.ptr, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread
  %.sroa.04.0 = phi ptr [ %i.f, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread ], [ inttoptr (i64 2 to ptr), %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ inttoptr (i64 2 to ptr), %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit.thread ], [ 0, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm12ESt4lessIS4_EE4findIS4_EEPKSt4pairIS4_S6_ERKT_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i8 } @_ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i.i.i.i.i.i = icmp sgt i32 %0, 34
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 42
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %0, 38 ; 2 uses
  %.add.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 584, i64 520
  %.add.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i.i.i.i.i.i.i.i, i64 600, i64 536
  %.add.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.add.i.i.sroa.sel.sroa.sel.v
  %i.a = load i32, ptr %.add.i.i.sroa.sel.sroa.sel, align 8
  %.not.i.i6.i.i.i.i.i.i.i = icmp slt i32 %i.a, %0
  %.idx.i.i7.i.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i.i, i64 32, i64 0
  %.add12.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i.i, %.add.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.not.i6.i.i.i.i.i.i = icmp sgt i32 %0, 18      ; 2 uses
  %.add13.i.i = select i1 %.not.i6.i.i.i.i.i.i, i64 264, i64 8
  %.add13.i.i.sroa.sel.sroa.sel.v = select i1 %.not.i6.i.i.i.i.i.i, i64 376, i64 120
  %.add13.i.i.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.add13.i.i.sroa.sel.sroa.sel.v
  %i.b = load i32, ptr %.add13.i.i.sroa.sel.sroa.sel, align 8
  %.not.i.i7.i.i.i.i.i.i = icmp slt i32 %i.b, %0
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 128, i64 0
  %.add14.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %.add13.i.i ; 2 uses
  %.ptr22.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.add14.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %.ptr22.i.i, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.d, %0
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 64, i64 0
  %.add15.i.i = or disjoint i64 %.add14.i.i, %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %.ptr23.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.add15.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr23.i.i, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.not.i.i.i.i9.i.i.i.i.i.i = icmp slt i32 %i.f, %0
  %.idx.i.i.i.i10.i.i.i.i.i.i = select i1 %.not.i.i.i.i9.i.i.i.i.i.i, i64 32, i64 0
  %.add16.i.i = or disjoint i64 %.add15.i.i, %.idx.i.i.i.i10.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i

_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add16.i.i, %bb.d ], [ %.add12.i.i, %bb.c ], [ 648, %bb.b ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.sink.i.i.i.i.idx.i.i
  %.sink12.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i32 %.sink12.i.i.i.i.i.i, %0
  %.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 16, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %.sink.i.i.i.i.add.i.i, 664
  br i1 %.not.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN4LIEF3ELF4Note10type_ownerENS1_4TYPEE.TYPE2OWNER, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.g = load i32, ptr %.ptr.i.i, align 4
  %.not27.i.i = icmp slt i32 %0, %i.g
  br i1 %.not27.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i, %bb.f
  %.sroa.06.0 = phi ptr [ %i.i, %bb.f ], [ inttoptr (i64 2 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK6frozen3mapIN4LIEF3ELF4Note4TYPEEPKcLm41ESt4lessIS4_EE11lower_boundIS4_EEPKSt4pairIS4_S6_ERKT_.exit.i.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN4LIEF3ELF4Note12convert_typeENS0_6Header9FILE_TYPEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.val = load ptr, ptr %2, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !alias.scope !37
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val) #26, !noalias !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !37
  store i64 %i.d, ptr %i.a, align 8, !noalias !37
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !alias.scope !37
  %i.g = load i64, ptr %i.a, align 8, !noalias !37
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %.val, align 1, !noalias !37
  store i8 %i.i, ptr %i.h, align 1
  br label %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull readonly align 1 %.val, i64 %i.d, i1 false)
  br label %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8, !noalias !37 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !alias.scope !37
  %i.l = load ptr, ptr %3, align 8, !alias.scope !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !37
  %i.n = icmp eq i32 %0, 4
  %i.o = load i64, ptr %i.k, align 8              ; 6 uses
  br i1 %i.n, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  switch i64 %i.o, label %.critedge [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.p = load ptr, ptr %3, align 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1163022147
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.not.i.i.i.i.i.i = icmp sgt i32 %1, 13
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread26.i.i

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i32 %1, 1179208773
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %1, 1189489535
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i6.i.i.i.i.i.i.i = icmp samesign ugt i32 %1, 17
  %i.u = select i1 %.not.i6.i.i.i.i.i.i.i, i64 84, i64 68
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread26.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i6.i.i.i.i.i.i = icmp sgt i32 %1, 4
  %i.v = select i1 %.not.i6.i.i.i.i.i.i, i64 36, i64 4 ; 2 uses
  %.ptr20.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr20.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %.not.i.i7.i.i.i.i.i.i = icmp slt i32 %i.x, %1
  %.idx.i.i8.i.i.i.i.i.i = select i1 %.not.i.i7.i.i.i.i.i.i, i64 16, i64 0
  %.add16.i.i = or disjoint i64 %.idx.i.i8.i.i.i.i.i.i, %i.v ; 2 uses
  %.ptr21.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 %.add16.i.i
  %i.y = load i32, ptr %.ptr21.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.y, %1
  %.idx.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 8, i64 0
  %.add17.i.i = or disjoint i64 %.add16.i.i, %.idx.i.i.i.i.i.i.i.i.i
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sink10.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.j ], [ 108, %bb.i ] ; 2 uses
  %.ptr18.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 %.sink10.i.i.i.i.i.i.i
  %i.z = load i32, ptr %.ptr18.i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.z, %1
  %.idx.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 8, i64 0
  %.add15.i.i = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, %.sink10.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %.add15.i.i, 116
  br i1 %.not.i.i, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i: ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread26.i.i
  %.0.i.i.i.i.idx29.i.i = phi i64 [ %.add17.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread26.i.i ], [ %.add15.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ]
  %.0.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 %.0.i.i.i.i.idx29.i.i ; 2 uses
  %.pre.i.i = load i32, ptr %.0.i.i.i.i.ptr.i.i, align 4
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i: ; preds = %bb.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i
  %i.aa = phi i32 [ %.pre.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i ], [ 1189489535, %bb.i ]
  %.0.i.i.i.i14.i.i = phi ptr [ %.0.i.i.i.i.ptr.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit._crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 100), %bb.i ] ; 2 uses
  %.not23.i.i = icmp slt i32 %1, %i.aa
  %.not58 = icmp eq ptr %.0.i.i.i.i14.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL10CORE_TYPESE, i64 116)
  %or.cond = select i1 %.not23.i.i, i1 true, i1 %.not58
  br i1 %or.cond, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i14.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %bb.g
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1431193932
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 88
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  %.not.i.i.i.i.i.i79 = icmp sgt i32 %1, 1031
  br i1 %.not.i.i.i.i.i.i79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %.not.i.i.i.i.i.i.i.i83 = icmp samesign ugt i32 %1, 1033
  %.add.i.i = select i1 %.not.i.i.i.i.i.i.i.i83, i64 84, i64 68
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread
  %.not.i.i.i.i.i.i.i80 = icmp sgt i32 %1, 1027
  %.add12.i.i = select i1 %.not.i.i.i.i.i.i.i80, i64 36, i64 4 ; 2 uses
  %.ptr16.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.add12.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.ptr16.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %.not.i.i6.i.i.i.i.i.i = icmp slt i32 %i.ap, %1
  %.idx.i.i7.i.i.i.i.i.i = select i1 %.not.i.i6.i.i.i.i.i.i, i64 16, i64 0
  %.add13.i.i = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i, %.add12.i.i
  br label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.idx.i.i = phi i64 [ %.add13.i.i, %bb.m ], [ %.add.i.i, %bb.l ] ; 2 uses
  %.sink.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.idx.i.i
  %.sink11.i.i.i.i.i.i = load i32, ptr %.sink.i.i.i.i.ptr.i.i, align 4
  %.not.i.i.i8.i.i.i.i.i.i = icmp slt i32 %.sink11.i.i.i.i.i.i, %1
  %.idx.i.i.i9.i.i.i.i.i.i = select i1 %.not.i.i.i8.i.i.i.i.i.i, i64 8, i64 0
  %.sink.i.i.i.i.add.i.i = add nuw nsw i64 %.idx.i.i.i9.i.i.i.i.i.i, %.sink.i.i.i.i.idx.i.i ; 2 uses
  %.not.i.i81 = icmp eq i64 %.sink.i.i.i.i.add.i.i, 92
  br i1 %.not.i.i81, label %.critedge60, label %bb.n

bb.n:                                             ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13CORE_ARM_YPESE, i64 %.sink.i.i.i.i.add.i.i ; 2 uses
  %i.aq = load i32, ptr %.ptr.i.i, align 4
  %.not20.i.i = icmp slt i32 %1, %i.aq
  br i1 %.not20.i.i, label %.critedge60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  br label %.critedge

.critedge60:                                      ; preds = %bb.n, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm11ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i
  %.not.i.i.i.i.i.i84 = icmp sgt i32 %1, 513
  br i1 %.not.i.i.i.i.i.i84, label %bb.p, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i

bb.p:                                             ; preds = %.critedge60
  %.not.i.i.i.i.i.i.i92.not = icmp eq i32 %1, 514
  br i1 %.not.i.i.i.i.i.i.i92.not, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i93 = icmp samesign ugt i32 %1, 515
  br i1 %.not.i.i.i.i.i.i.i.i.i93, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i: ; preds = %.critedge60
  %.not.i6.i.i.i.i.i.i85 = icmp eq i32 %1, 513
  %.add15.i.i86 = select i1 %.not.i6.i.i.i.i.i.i85, i64 12, i64 4
  %.0.i.i.i.i.ptr.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 %.add15.i.i86 ; 2 uses
  %.pre.i.pre.i = load i32, ptr %.0.i.i.i.i.ptr.i.phi.trans.insert.i, align 4
  %.not21.i.i = icmp slt i32 %1, %.pre.i.pre.i
  br i1 %.not21.i.i, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175: ; preds = %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %bb.q, %bb.p
  %.0.i.i91178 = phi ptr [ %.0.i.i.i.i.ptr.i.phi.trans.insert.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 20), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CORE_X86_TYPESE, i64 28), %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i91178, i64 4
  %i.au = load i32, ptr %i.at, align 4
  br label %.critedge

bb.r:                                             ; preds = %_ZN4LIEF3ELFL10strip_zeroERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  switch i64 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95: ; preds = %bb.r
  %i.av = load ptr, ptr %3, align 8               ; 3 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 1919184449
  %i.ay = getelementptr i8, ptr %i.av, i64 3
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = xor i32 %i.az, 1684631410
  %i.bb = or i32 %i.ax, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %.not.i.i.i.i.i.i.i96 = icmp sgt i32 %1, 3      ; 2 uses
  %i.bf = select i1 %.not.i.i.i.i.i.i.i96, i64 20, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13ANDROID_TYPESE, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %.not.i.i.i.i.i.i.i.i97 = icmp slt i32 %i.bh, %1 ; 2 uses
  %.not.i.i98 = and i1 %.not.i.i.i.i.i.i.i96, %.not.i.i.i.i.i.i.i.i97
  br i1 %.not.i.i98, label %.critedge, label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  %.idx.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i97, i64 8, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %.not12.i.i = icmp slt i32 %1, %i.bj
  br i1 %.not12.i.i, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101: ; preds = %bb.r
  %.pre = load ptr, ptr %3, align 8
  %bcmp.i100 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.11, i64 %i.o)
  %i.bm = icmp eq i32 %bcmp.i100, 0
  br i1 %i.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101
  %.not.i.i.i.i.i.i102 = icmp sgt i32 %1, 4
  %.not.i.i.i.i.i.i.i103 = icmp sgt i32 %1, 2
  %i.bn = select i1 %.not.i.i.i.i.i.i.i103, i64 20, i64 4
  %i.bo = select i1 %.not.i.i.i.i.i.i102, i64 36, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL9GNU_TYPESE, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %.not.i.i6.i.i.i.i.i.i104 = icmp slt i32 %i.bq, %1
  %.idx.i.i7.i.i.i.i.i.i105 = select i1 %.not.i.i6.i.i.i.i.i.i104, i64 8, i64 0 ; 2 uses
  %i.br = or disjoint i64 %.idx.i.i7.i.i.i.i.i.i105, %i.bo
  %.not.i.i106 = icmp samesign eq i64 %i.br, 44
  br i1 %.not.i.i106, label %.critedge, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i7.i.i.i.i.i.i105 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %.not12.i.i107 = icmp slt i32 %1, %i.bt
  br i1 %.not12.i.i107, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %bb.r
  %.pre188 = load ptr, ptr %3, align 8
  %bcmp.i109 = call i32 @bcmp(ptr %.pre188, ptr nonnull @.str.16, i64 %i.o)
  %i.bw = icmp eq i32 %bcmp.i109, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %or.cond.not.i.i.not = icmp eq i32 %1, 4        ; 2 uses
  %spec.select = select i1 %or.cond.not.i.i.not, i32 41, i32 2
  %spec.select183 = select i1 %or.cond.not.i.i.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %bcmp.i112 = call i32 @bcmp(ptr nonnull %i.av, ptr nonnull @.str.17, i64 %i.o)
  %i.bx = icmp eq i32 %bcmp.i112, 0
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113
  %or.cond.not.i.i114.not = icmp eq i32 %1, 3     ; 2 uses
  %spec.select184 = select i1 %or.cond.not.i.i114.not, i32 42, i32 2
  %spec.select185 = select i1 %or.cond.not.i.i114.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117: ; preds = %bb.r
  %.pre189 = load ptr, ptr %3, align 8
  %bcmp.i116 = call i32 @bcmp(ptr %.pre189, ptr nonnull @.str.12, i64 %i.o)
  %i.by = icmp eq i32 %bcmp.i116, 0
  br i1 %i.by, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117
  %or.cond.not.i.i118.not = icmp eq i32 %1, 1330007625 ; 2 uses
  %spec.select186 = select i1 %or.cond.not.i.i118.not, i32 8, i32 2
  %spec.select187 = select i1 %or.cond.not.i.i118.not, i64 4294967296, i64 0
  br label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117
  %i.bz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18)
  br i1 %i.bz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164
  %or.cond.not.i.i120 = icmp eq i32 %1, 3         ; 2 uses
  %.0.i.i121 = select i1 %or.cond.not.i.i120, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 12)
  %.not50 = icmp eq ptr %.0.i.i121, getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL14CRASHPAD_TYPESE, i64 12)
  br i1 %.not50, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = select i1 %or.cond.not.i.i120, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL9QNX_TYPESE, i64 16)
  %i.cb = load i32, ptr %i.ca, align 4
  br label %.critedge

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread164
  %.not.i.i.i.i.i.i122 = icmp sgt i32 %1, 256
  %.not.i.i.i.i.i.i.i.i123 = icmp sgt i32 %1, 257
  %i.cc = select i1 %.not.i.i.i.i.i.i.i.i123, i64 20, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 %i.cc
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i122, ptr %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 4) ; 3 uses
  %.not.i.i125 = icmp eq ptr %.0.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4LIEF3ELFL13GENERIC_TYPESE, i64 20)
  br i1 %.not.i.i125, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load i32, ptr %.0.i.i.i.i.i.i, align 4
  %.not12.i.i126 = icmp slt i32 %1, %i.ce
  br i1 %.not12.i.i126, label %.critedge, label %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit

_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit: ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  br label %.critedge

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.g, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %bb.q, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i, %bb.z, %bb.y, %bb.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit, %bb.x, %bb.v, %bb.t, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175, %bb.o, %bb.k
  %.sroa.0146.0 = phi i32 [ %i.cg, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit ], [ %i.ac, %bb.k ], [ 2, %bb.u ], [ %i.au, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175 ], [ %i.as, %bb.o ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ %i.bl, %bb.t ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread ], [ %i.bv, %bb.v ], [ 2, %bb.q ], [ 2, %bb.g ], [ 2, %bb.y ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ %spec.select184, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread ], [ %spec.select186, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread ], [ %i.cb, %bb.x ], [ 2, %bb.w ], [ 2, %bb.z ], [ 2, %bb.s ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %.sroa.21.0 = phi i64 [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm2ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit ], [ 4294967296, %bb.k ], [ 0, %bb.u ], [ 4294967296, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE4findIjEEPKSt4pairIiS4_ERKT_.exit.thread175 ], [ 4294967296, %bb.o ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78 ], [ 4294967296, %bb.t ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread ], [ 4294967296, %bb.v ], [ 0, %bb.q ], [ 0, %bb.g ], [ 0, %bb.y ], [ %spec.select183, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.i.i ], [ %spec.select185, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread ], [ %spec.select187, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit117.thread ], [ 4294967296, %bb.x ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.s ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm14ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZNK6frozen3mapIiN4LIEF3ELF4Note4TYPEELm4ESt4lessIiEE11lower_boundIjEEPKSt4pairIiS4_ERKT_.exit.thread.i.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ch = load ptr, ptr %3, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.b
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.cj = load i64, ptr %i.b, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.sroa.0146.0.insert.ext = zext i32 %.sroa.0146.0 to i64
  %.sroa.0146.0.insert.insert = or disjoint i64 %.sroa.21.0, %.sroa.0146.0.insert.ext
  ret i64 %.sroa.0146.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF4Note6createERNS_12BinaryStreamENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_6Header9FILE_TYPEENS0_4ARCHENSA_5CLASSE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.322") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
end_hunk_0
