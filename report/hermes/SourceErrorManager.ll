inline.NumInlined: 1564
inline.NumDeleted: 774
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes18SourceErrorManager10dumpCoordsERN4llvh11raw_ostreamERKNS0_12SourceCoordsE:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aa, ptr noundef nonnull @.str.1, i64 noundef 1) #24
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i8 44, ptr %i.ae, align 1
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !117
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

_ZN4llvh11raw_ostreamlsEPKc.exit9:                ; preds = %bb.h, %bb.i
  %.0.i.i8 = phi ptr [ %i.ag, %bb.h ], [ %i.aa, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !186
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8, i64 noundef %i.al) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12

bb.j:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !117 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 8
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.2, i64 noundef 8) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12

bb.l:                                             ; preds = %bb.j
  store i64 3471202440163782510, ptr %i.aq, align 1
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !117
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12

_ZN4llvh11raw_ostreamlsEPKc.exit12:               ; preds = %bb.l, %bb.k, %_ZN4llvh11raw_ostreamlsEPKc.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes18SourceErrorManager12getSourceUrlEj(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load i32, ptr %i.c, align 8, !tbaa !188  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i32 %1, 37
  %i.g = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.f                ; 2 uses
  %i.h = zext i32 %.02744.i.i to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !189

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.c ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.c, !prof !190

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = add i32 %.02546.i.i, 1
  %i.o = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.o, %i.g                  ; 2 uses
  %i.p = zext i32 %.027.i.i to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !191, !llvm.loop !192

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.t = zext i32 %i.d to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.t
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit: ; preds = %bb.c, %bb.b, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i
  %.sink.i.ph.pn.i = phi ptr [ %i.u, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i ], [ %i.i, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = zext i32 %i.d to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.v
  %.not = icmp eq ptr %.sink.i.ph.pn.i, %i.w
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93
  %i.ab = insertvalue { ptr, i64 } poison, ptr %i.y, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %i.aa, 1
  br label %_ZNK6hermes18SourceErrorManager17getBufferFileNameEj.exit

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit
  %i.ad = icmp slt i32 %1, 0
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = and i32 %1, 2147483647
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !164, !noalias !193 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44, !noalias !193
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43, !noalias !193
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5
  %i.aq = add nsw i64 %i.ap, %i.af                ; 5 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.as = icmp samesign ult i64 %i.aq, 16
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit.i

bb.i:                                             ; preds = %bb.g
  %i.au = lshr i64 %i.aq, 4
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.av = ashr i64 %i.aq, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = phi i64 [ %i.au, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42, !noalias !193
  %i.az = shl nsw i64 %i.aw, 4
  %i.ba = sub nsw i64 %i.aq, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit.i

_ZNK6hermes15StringSetVectorixB5cxx11Em.exit.i:   ; preds = %bb.k, %bb.h
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.k ], [ %i.at, %bb.h ] ; 2 uses
  %i.bc = load ptr, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !93
  %i.bf = insertvalue { ptr, i64 } poison, ptr %i.bc, 0
  %i.bg = insertvalue { ptr, i64 } %i.bf, i64 %i.be, 1
  br label %_ZNK6hermes18SourceErrorManager17getBufferFileNameEj.exit

bb.l:                                             ; preds = %bb.e
  %i.bh = add nsw i32 %1, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %0, align 8, !tbaa !158
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !152 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call { ptr, i64 } %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #24, !inline_history !196
  br label %_ZNK6hermes18SourceErrorManager17getBufferFileNameEj.exit

_ZNK6hermes18SourceErrorManager17getBufferFileNameEj.exit: ; preds = %bb.l, %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit.i, %bb.d
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.ac, %bb.d ], [ %i.bg, %_ZNK6hermes15StringSetVectorixB5cxx11Em.exit.i ], [ %i.bp, %bb.l ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager10dumpCoordsERN4llvh11raw_ostreamENS1_5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.hermes::SourceErrorManager::SourceCoords", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !185
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !186
  %i.c = call noundef zeroext i1 @_ZN6hermes18SourceErrorManager20findBufferLineAndLocEN4llvh5SMLocERNS0_12SourceCoordsE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %2, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  call void @_ZN6hermes18SourceErrorManager10dumpCoordsERN4llvh11raw_ostreamERKNS0_12SourceCoordsE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes18SourceErrorManager20findBufferLineAndLocEN4llvh5SMLocERNS0_12SourceCoordsE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 16       ; 5 uses
  %.not43 = icmp eq ptr %1, null
  br i1 %.not43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !183
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !134 ; 6 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !89
  %.not.i = icmp uge ptr %1, %.sroa.010.0.copyload
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload
  %i.e = icmp ult ptr %1, %i.d
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !118     ; 2 uses
  %i.h = icmp eq i8 %i.g, 13
  %i.i = icmp slt i8 %i.g, -64
  %or.cond.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %.critedge.preheader.i.i, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, !prof !198

.critedge.preheader.i.i:                          ; preds = %bb.e
  %i.j = ptrtoaddr ptr %.sroa.010.0.copyload to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %i.m = icmp eq ptr %1, %.sroa.010.0.copyload
  br i1 %i.m, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, label %.lr.ph49, !prof !199

.critedge.i.i:                                    ; preds = %.lr.ph49
  %i.n = icmp eq ptr %i.o, %.sroa.010.0.copyload
  br i1 %i.n, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, label %.lr.ph49, !prof !200, !llvm.loop !201

.lr.ph49:                                         ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %.0.i.i48 = phi ptr [ %i.o, %.critedge.i.i ], [ %1, %.critedge.preheader.i.i ]
  %i.o = getelementptr inbounds i8, ptr %.0.i.i48, i64 -1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !118   ; 2 uses
  %i.q = icmp eq i8 %i.p, 13
  %i.r = icmp slt i8 %i.p, -64
  %or.cond8.i.i = or i1 %i.q, %i.r
  br i1 %or.cond8.i.i, label %.critedge.i.i, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge: ; preds = %.lr.ph49
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit: ; preds = %.critedge.i.i, %.critedge.preheader.i.i, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge, %bb.e
  %.1.i.i = phi ptr [ %1, %bb.e ], [ %scevgep.i.i, %.critedge.preheader.i.i ], [ %i.o, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge ], [ %scevgep.i.i, %.critedge.i.i ]
  store i32 %i.b, ptr %2, align 4, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !202
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !185
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = ptrtoint ptr %.sroa.010.0.copyload to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = add i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !186
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !134 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !89
  %.not.i18 = icmp uge ptr %1, %.sroa.07.0.copyload
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 %.sroa.2.0.copyload
  %i.ad = icmp ult ptr %1, %i.ac
  %i.ae = select i1 %.not.i18, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !203 ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !179
  %i.ai = add i32 %i.ag, 2
  %i.aj = tail call { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ai, i32 noundef %i.b) #24 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !134
  store i64 %i.al, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !165 ; 4 uses
  %i.an = load i8, ptr %1, align 1, !tbaa !118    ; 2 uses
  %i.ao = icmp eq i8 %i.an, 13
  %i.ap = icmp slt i8 %i.an, -64
  %or.cond.i.i19 = or i1 %i.ao, %i.ap
  br i1 %or.cond.i.i19, label %.critedge.preheader.i.i21, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, !prof !198

.critedge.preheader.i.i21:                        ; preds = %bb.g
  %i.aq = ptrtoaddr ptr %i.am to i64
  %i.ar = ptrtoaddr ptr %1 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %scevgep.i.i22 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  %i.at = icmp eq ptr %1, %i.am
  br i1 %i.at, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, label %.lr.ph, !prof !199

.critedge.i.i23:                                  ; preds = %.lr.ph
  %i.au = icmp eq ptr %i.av, %i.am
  br i1 %i.au, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, label %.lr.ph, !prof !200, !llvm.loop !201

.lr.ph:                                           ; preds = %.critedge.preheader.i.i21, %.critedge.i.i23
  %.0.i.i2446 = phi ptr [ %i.av, %.critedge.i.i23 ], [ %1, %.critedge.preheader.i.i21 ]
  %i.av = getelementptr inbounds i8, ptr %.0.i.i2446, i64 -1 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !118 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 13
  %i.ay = icmp slt i8 %i.aw, -64
  %or.cond8.i.i25 = or i1 %i.ax, %i.ay
  br i1 %or.cond8.i.i25, label %.critedge.i.i23, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26: ; preds = %.critedge.i.i23, %.critedge.preheader.i.i21, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge, %bb.g
  %.1.i.i20 = phi ptr [ %1, %bb.g ], [ %scevgep.i.i22, %.critedge.preheader.i.i21 ], [ %i.av, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge ], [ %scevgep.i.i22, %.critedge.i.i23 ]
  %i.az = load <2 x i32>, ptr %i.a, align 8, !tbaa !3
  store <2 x i32> %i.az, ptr %2, align 4, !tbaa !3
  %i.ba = ptrtoint ptr %.1.i.i20 to i64
  %i.bb = ptrtoint ptr %i.am to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !186
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 8, !tbaa !197
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %i.bg = tail call noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %1) #24, !noalias !204 ; 4 uses
  %.not.i27 = icmp ne i32 %i.bg, 0                ; 3 uses
  br i1 %.not.i27, label %bb.j, label %_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit

_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit: ; preds = %bb.i
  store i32 0, ptr %2, align 4, !tbaa !183
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !204
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %1, i32 noundef %i.bg) #24, !noalias !204
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !162, !noalias !204 ; 2 uses
  %.sroa.7.sroa.0.0.copyload = load <16 x i8>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !204
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !197
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !203
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store <16 x i8> %.sroa.7.sroa.0.0.copyload, ptr %i.bk, align 8
  %i.bl = add i32 %i.bi, 1
  %i.bm = call { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bl, i32 noundef %i.bg) #24 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !89
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !165 ; 4 uses
  %i.br = load i8, ptr %1, align 1, !tbaa !118    ; 2 uses
  %i.bs = icmp eq i8 %i.br, 13
  %i.bt = icmp slt i8 %i.br, -64
  %or.cond.i.i28 = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i28, label %.critedge.preheader.i.i30, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, !prof !198

.critedge.preheader.i.i30:                        ; preds = %bb.j
  %i.bu = ptrtoaddr ptr %i.bq to i64
  %i.bv = ptrtoaddr ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %scevgep.i.i31 = getelementptr i8, ptr %1, i64 %i.bw ; 2 uses
  %i.bx = icmp eq ptr %1, %i.bq
  br i1 %i.bx, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, label %.lr.ph53, !prof !199

.critedge.i.i32:                                  ; preds = %.lr.ph53
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, label %.lr.ph53, !prof !200, !llvm.loop !201

.lr.ph53:                                         ; preds = %.critedge.preheader.i.i30, %.critedge.i.i32
  %.0.i.i3352 = phi ptr [ %i.bz, %.critedge.i.i32 ], [ %1, %.critedge.preheader.i.i30 ]
  %i.bz = getelementptr inbounds i8, ptr %.0.i.i3352, i64 -1 ; 4 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !118 ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 13
  %i.cc = icmp slt i8 %i.ca, -64
  %or.cond8.i.i34 = or i1 %i.cb, %i.cc
  br i1 %or.cond8.i.i34, label %.critedge.i.i32, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge: ; preds = %.lr.ph53
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35: ; preds = %.critedge.i.i32, %.critedge.preheader.i.i30, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge, %bb.j
  %.1.i.i29 = phi ptr [ %1, %bb.j ], [ %scevgep.i.i31, %.critedge.preheader.i.i30 ], [ %i.bz, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge ], [ %scevgep.i.i31, %.critedge.i.i32 ]
  %i.cd = load <2 x i32>, ptr %i.a, align 8, !tbaa !3
  store <2 x i32> %i.cd, ptr %2, align 4, !tbaa !3
  %i.ce = ptrtoint ptr %.1.i.i29 to i64
  %i.cf = ptrtoint ptr %i.bq to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !186
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, %bb.b
  %.1 = phi i1 [ true, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit ], [ true, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26 ], [ false, %bb.b ], [ %.not.i27, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35 ], [ %.not.i27, %_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager18countAndGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(18) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !3
  tail call void @_ZN6hermes18SourceErrorManager12doGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(18) %5)
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %.critedge, !prof !207

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 1, ptr %i.k, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.m, align 1, !tbaa !148
  store ptr @_ZN6hermesL14sTooManyErrorsE, ptr %6, align 8, !tbaa !118
  store i8 3, ptr %i.l, align 8, !tbaa !145
  call void @_ZN6hermes18SourceErrorManager12doGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef 0, ptr null, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager12doGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(18) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SMRange", align 8     ; 5 uses
  %7 = alloca %"class.llvh::ArrayRef.26", align 8 ; 4 uses
  %8 = alloca %"class.llvh::SMLoc", align 8       ; 4 uses
  %9 = alloca %"class.llvh::SMRange", align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.llvh::SMLoc", align 8      ; 2 uses
  %11 = alloca %"class.llvh::SMRange", align 8    ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %4, ptr %i.c, align 8
  store i32 %1, ptr %i.b, align 4, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 3
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18) %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.m, align 8
  store i32 3, ptr %i.a, align 4, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 3, ptr %i.o, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %3, ptr %i.s, align 8, !tbaa !134
  %.sroa.2.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i9.i.i, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !121
  %i.v = load ptr, ptr %12, align 8, !tbaa !90    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !93   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.v, ptr %i.t, align 8, !tbaa !90
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !118
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.ad = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !93
  store ptr %i.w, ptr %12, align 8, !tbaa !90
  store i64 0, ptr %i.ae, align 8, !tbaa !93
  store i8 0, ptr %i.w, align 8, !tbaa !118
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !129
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

bb.g:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
  br label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i: ; preds = %bb.g, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !135 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.h, label %_ZN6hermes18SourceErrorManager15BufferedMessage7addNoteERSt6vectorINS0_11MessageDataESaIS3_EENS0_8DiagKindEN4llvh5SMLocENS8_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !137
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 6
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, -1
  %i.as = getelementptr inbounds i8, ptr %i.j, i64 -4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !138
  br label %_ZN6hermes18SourceErrorManager15BufferedMessage7addNoteERSt6vectorINS0_11MessageDataESaIS3_EENS0_8DiagKindEN4llvh5SMLocENS8_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager15BufferedMessage7addNoteERSt6vectorINS0_11MessageDataESaIS3_EENS0_8DiagKindEN4llvh5SMLocENS8_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit.i, %bb.h
  %i.at = add i32 %i.aj, 1
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = load ptr, ptr %12, align 8, !tbaa !90   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessage7addNoteERSt6vectorINS0_11MessageDataESaIS3_EENS0_8DiagKindEN4llvh5SMLocENS8_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !118
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessage7addNoteERSt6vectorINS0_11MessageDataESaIS3_EENS0_8DiagKindEN4llvh5SMLocENS8_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.m

bb.i:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(18) %5) #24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !142 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !208
  %.not.i8 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i8, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12emplace_backIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %1, ptr %i.ba, align 8, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %2, ptr %i.bd, align 8, !tbaa !134
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
end_hunk_0
