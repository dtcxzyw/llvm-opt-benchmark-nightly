inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %.critedge.thread, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i360 = phi { i32, i64 } [ %i.yw, %.critedge.thread ], [ %i.yx, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.ze = extractvalue { i32, i64 } %.pn.i360, 0
  %i.zf = extractvalue { i32, i64 } %.pn.i360, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fx, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0441.7 = phi i32 [ %i.ze, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %bb.fx ]
  %.sroa.5.0 = phi i64 [ %i.zf, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ undef, %bb.fx ]
  %i.zg = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.ae
  br i1 %i.zh, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361, label %bb.gb

bb.gb:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.zg) #12
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361:       ; preds = %.loopexit, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0441.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %.not.i.i = icmp eq ptr %4, null                ; 2 uses
  %i.j = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ptrtoint ptr %5 to i64                   ; 2 uses
  %i.n = ptrtoint ptr %3 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.l ; 24 uses
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 %i.s, %i.g
  %i.u = icmp ugt i64 %.0.i.i, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = add i64 %.0.i.i, %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef 2) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.pre15.i = zext i32 %.pre.i to i64
  %.pre75.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre75 = phi ptr [ %.pre75.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre15.i, %bb.c ], [ %i.g, %bb.b ]
  %i.x = phi i32 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  %i.y = icmp sgt i64 %.0.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i, label %_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i:               ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.pre75, i64 %.pre-phi.i ; 3 uses
  %xtraiter99 = and i64 %.0.i.i, 1
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %.not.i5.i.i.i.i.i.i.i.i.i.prol = icmp eq ptr %2, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.prol, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.aa = load i8, ptr %2, align 1, !tbaa !27
  %i.ab = sext i8 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.ad = load i16, ptr %3, align 2, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i.i.i.i.prol = phi i16 [ %i.ad, %bb.f ], [ %i.ab, %bb.e ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.prol = phi ptr [ null, %bb.f ], [ %i.ac, %bb.e ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %bb.f ], [ %3, %bb.e ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.prol, ptr %i.z, align 2, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = add nsw i64 %.0.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.ag, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.0414.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.af, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.5.013.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.07.012.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %i.ah = icmp eq i64 %.0.i.i, 1
  br i1 %i.ah, label %_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0414.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.0414.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.5.013.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.07.012.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.not.i5.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, align 1, !tbaa !27
  %i.aj = sext i8 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = load i16, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i, align 2, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.h ], [ %i.aj, %bb.g ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %.sroa.5.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  store i16 %.sink.i.i.i.i.i.i.i.i.i, ptr %.0414.i.i.i.i.i.i.i.i.i, align 2, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i, i64 2
  %.not.i5.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i
  %i.ao = load i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, align 1, !tbaa !27
  %i.ap = sext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1

bb.j:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i
  %i.ar = load i16, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i, align 2, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1: ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i.i.i.1 = phi i16 [ %i.ar, %bb.j ], [ %i.ap, %bb.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.1 = phi ptr [ null, %bb.j ], [ %i.aq, %bb.i ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.as, %bb.j ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i, %bb.i ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.1, ptr %i.an, align 2, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i, i64 4
  %i.au = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -2
  %i.av = icmp sgt i64 %.015.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit, !llvm.loop !419

_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1, %bb.d
  %i.aw = trunc i64 %.0.i.i to i32
  %i.ax = add i32 %i.x, %i.aw
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre75, i64 %i.d
  br label %_ZSt4copyIN6hermes2vm10StringView14const_iteratorEPDsET0_T_S6_S5_.exit

_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit: ; preds = %bb.a
  %i.az = add i64 %.0.i.i, %i.g                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.k, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

bb.k:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.be, i64 noundef %i.az, i64 noundef 2) #12
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  %.pre73 = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.pre77 = zext i32 %.pre73 to i64
  br label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit:     ; preds = %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit, %bb.k
  %.pre-phi = phi i64 [ %i.g, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit ], [ %.pre77, %bb.k ] ; 4 uses
  %i.bf = phi i32 [ %i.f, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit ], [ %.pre73, %bb.k ] ; 2 uses
  %i.bg = phi ptr [ %i.a, %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit ], [ %.pre, %bb.k ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.d ; 15 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 1            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx ; 6 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 4 uses
  %i.bj = ashr exact i64 %gepdiff, 1              ; 4 uses
  %.not = icmp ult i64 %i.bj, %.0.i.i
  br i1 %.not, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %.neg = mul i64 %.0.i.i, -2                     ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %.neg ; 2 uses
  %.idx60.neg = shl nsw i64 %.0.i.i, 1
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 %i.bm, %.pre-phi
  %i.bo = icmp ugt i64 %.0.i.i, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = add nsw i64 %.0.i.i, %.pre-phi
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bq, i64 noundef %i.bp, i64 noundef 2) #12
  %.pre.i48 = load i32, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %.pre11.i = zext i32 %.pre.i48 to i64
  %.pre74 = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = phi ptr [ %.pre74, %bb.m ], [ %i.bg, %bb.l ]
  %.pre-phi.i47 = phi i64 [ %.pre11.i, %bb.m ], [ %.pre-phi, %bb.l ]
  %i.bs = phi i32 [ %.pre.i48, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %.pre-phi.i47 ; 2 uses
  %i.bu = icmp sgt i64 %.0.i.i, 1
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !42

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bt, ptr nonnull align 2 %i.bk, i64 %.idx60.neg, i1 false)
  %.pre10.i = load i32, ptr %i.e, align 8, !tbaa !47
  br label %_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit

bb.p:                                             ; preds = %bb.n
  %i.bv = icmp eq i64 %.0.i.i, 1
  br i1 %i.bv, label %bb.q, label %_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.bk, align 2, !tbaa !80
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !80
  br label %_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit

_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.bx = phi i32 [ %.pre10.i, %bb.o ], [ %i.bs, %bb.p ], [ %i.bs, %bb.q ]
  %i.by = trunc i64 %.0.i.i to i32
  %i.bz = add i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.e, align 8, !tbaa !47
  %i.ca = sub i64 %.neg, %i.d
  %gepdiff63 = add i64 %i.ca, %.idx               ; 3 uses
  %i.cb = ashr exact i64 %gepdiff63, 1            ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 1
  br i1 %i.cc, label %bb.r, label %bb.s, !prof !42

bb.r:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit
  %i.cd = sub nsw i64 0, %i.cb
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ce, ptr align 2 %i.bh, i64 %gepdiff63, i1 false)
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.s:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE6appendISt13move_iteratorIPDsEvEEvT_S6_.exit
  %i.cf = icmp eq i64 %gepdiff63, 2
  br i1 %i.cf, label %bb.t, label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds i8, ptr %i.bi, i64 -2
  %i.ch = load i16, ptr %i.bh, align 2, !tbaa !80
  store i16 %i.ch, ptr %i.cg, align 2, !tbaa !80
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit:      ; preds = %bb.r, %bb.s, %bb.t
  %i.ci = icmp sgt i64 %.0.i.i, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN6hermes2vm10StringView14const_iteratorEPDsET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit
  %xtraiter = and i64 %.0.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %.not.i5.i.i.i.i.i.prol = icmp eq ptr %2, null
  br i1 %.not.i5.i.i.i.i.i.prol, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.cj = load i8, ptr %2, align 1, !tbaa !27
  %i.ck = sext i8 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.cm = load i16, ptr %3, align 2, !tbaa !80
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol: ; preds = %bb.v, %bb.u
  %.sink.i.i.i.i.i.prol = phi i16 [ %i.cm, %bb.v ], [ %i.ck, %bb.u ]
  %.sroa.07.1.i.i.i.i.i.prol = phi ptr [ null, %bb.v ], [ %i.cl, %bb.u ]
  %.sroa.5.1.i.i.i.i.i.prol = phi ptr [ %i.cn, %bb.v ], [ %3, %bb.u ]
  store i16 %.sink.i.i.i.i.i.prol, ptr %i.bh, align 2, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.cp = add nsw i64 %.0.i.i, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.015.i.i.i.i.i.unr = phi i64 [ %.0.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol ]
  %.0414.i.i.i.i.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.co, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol ]
  %.sroa.5.013.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol ]
  %.sroa.07.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.prol ]
  %i.cq = icmp eq i64 %.0.i.i, 1
  br i1 %i.cq, label %_ZSt4copyIN6hermes2vm10StringView14const_iteratorEPDsET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1
  %.015.i.i.i.i.i = phi i64 [ %i.dd, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1 ], [ %.015.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0414.i.i.i.i.i = phi ptr [ %i.dc, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1 ], [ %.0414.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.5.013.i.i.i.i.i = phi ptr [ %.sroa.5.1.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1 ], [ %.sroa.5.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1 ], [ %.sroa.07.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.not.i5.i.i.i.i.i = icmp eq ptr %.sroa.07.012.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cr = load i8, ptr %.sroa.07.012.i.i.i.i.i, align 1, !tbaa !27
  %i.cs = sext i8 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = load i16, ptr %.sroa.5.013.i.i.i.i.i, align 2, !tbaa !80
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.013.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i.i = phi i16 [ %i.cu, %bb.x ], [ %i.cs, %bb.w ]
  %.sroa.07.1.i.i.i.i.i = phi ptr [ null, %bb.x ], [ %i.ct, %bb.w ] ; 3 uses
  %.sroa.5.1.i.i.i.i.i = phi ptr [ %i.cv, %bb.x ], [ %.sroa.5.013.i.i.i.i.i, %bb.w ] ; 3 uses
  store i16 %.sink.i.i.i.i.i, ptr %.0414.i.i.i.i.i, align 2, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i, i64 2
  %.not.i5.i.i.i.i.i.1 = icmp eq ptr %.sroa.07.1.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i
  %i.cx = load i8, ptr %.sroa.07.1.i.i.i.i.i, align 1, !tbaa !27
  %i.cy = sext i8 %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1

bb.z:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i
  %i.da = load i16, ptr %.sroa.5.1.i.i.i.i.i, align 2, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.1: ; preds = %bb.z, %bb.y
  %.sink.i.i.i.i.i.1 = phi i16 [ %i.da, %bb.z ], [ %i.cy, %bb.y ]
  %.sroa.07.1.i.i.i.i.i.1 = phi ptr [ null, %bb.z ], [ %i.cz, %bb.y ]
  %.sroa.5.1.i.i.i.i.i.1 = phi ptr [ %i.db, %bb.z ], [ %.sroa.5.1.i.i.i.i.i, %bb.y ]
  store i16 %.sink.i.i.i.i.i.1, ptr %i.cw, align 2, !tbaa !80
  %i.dc = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i, i64 4
  %i.dd = add nsw i64 %.015.i.i.i.i.i, -2
  %i.de = icmp sgt i64 %.015.i.i.i.i.i, 2
  br i1 %i.de, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN6hermes2vm10StringView14const_iteratorEPDsET0_T_S6_S5_.exit, !llvm.loop !419

bb.aa:                                            ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.df = trunc i64 %.0.i.i to i32
  %i.dg = add i32 %i.bf, %i.df                    ; 2 uses
  store i32 %i.dg, ptr %i.e, align 8, !tbaa !47
  %.not.i.i49 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i49, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.dh
  %i.dj = sub nsw i64 0, %i.bj
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr align 2 %i.bh, i64 %gepdiff, i1 false)
  %i.dl = and i64 %gepdiff, 2
  %lcmp.mod96.not = icmp eq i64 %i.dl, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.not.i50.prol = icmp eq ptr %2, null
  br i1 %.not.i50.prol, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.prol
  %i.dm = load i8, ptr %2, align 1, !tbaa !27
  %i.dn = sext i8 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol

bb.ac:                                            ; preds = %.lr.ph.prol
  %i.dp = load i16, ptr %3, align 2, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol: ; preds = %bb.ac, %bb.ab
  %.sink.prol = phi i16 [ %i.dp, %bb.ac ], [ %i.dn, %bb.ab ]
  %.sroa.053.1.prol = phi ptr [ null, %bb.ac ], [ %i.do, %bb.ab ] ; 2 uses
  %.sroa.8.1.prol = phi ptr [ %i.dq, %bb.ac ], [ %3, %bb.ab ] ; 2 uses
  store i16 %.sink.prol, ptr %i.bh, align 2, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.ds = add nsw i64 %i.bj, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol, %.lr.ph.preheader
  %.sroa.053.1.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.053.1.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol ]
  %.sroa.8.1.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.8.1.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol ]
  %.04370.unr = phi i64 [ %i.bj, %.lr.ph.preheader ], [ %i.ds, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol ]
  %.04469.unr = phi ptr [ %i.bh, %.lr.ph.preheader ], [ %i.dr, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.prol ]
end_hunk_0
