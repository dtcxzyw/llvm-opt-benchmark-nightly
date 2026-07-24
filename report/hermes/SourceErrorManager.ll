inline.NumInlined: 1564
inline.NumDeleted: 774
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes18SourceErrorManager10dumpCoordsERN4llvh11raw_ostreamERKNS0_12SourceCoordsE:bb.a
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
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %.not43 = icmp eq ptr %1, null
  br i1 %.not43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !183
  br label %bb.l

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
  %4 = ptrtoaddr ptr %.sroa.010.0.copyload to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.j = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.j ; 2 uses
  %i.k = icmp eq ptr %1, %.sroa.010.0.copyload
  br i1 %i.k, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, label %.lr.ph49, !prof !199

.critedge.i.i:                                    ; preds = %.lr.ph49
  %i.l = icmp eq ptr %i.m, %.sroa.010.0.copyload
  br i1 %i.l, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, label %.lr.ph49, !prof !200, !llvm.loop !201

.lr.ph49:                                         ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %.0.i.i48 = phi ptr [ %i.m, %.critedge.i.i ], [ %1, %.critedge.preheader.i.i ]
  %i.m = getelementptr inbounds i8, ptr %.0.i.i48, i64 -1 ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !118   ; 2 uses
  %i.o = icmp eq i8 %i.n, 13
  %i.p = icmp slt i8 %i.n, -64
  %or.cond8.i.i = or i1 %i.o, %i.p
  br i1 %or.cond8.i.i, label %.critedge.i.i, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge: ; preds = %.lr.ph49
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit: ; preds = %.critedge.i.i, %.critedge.preheader.i.i, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge, %bb.e
  %.1.i.i = phi ptr [ %1, %bb.e ], [ %scevgep.i.i, %.critedge.preheader.i.i ], [ %i.m, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit.loopexit_crit_edge ], [ %scevgep.i.i, %.critedge.i.i ]
  store i32 %i.b, ptr %2, align 4, !tbaa !183
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !202
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !185
  %6 = ptrtoint ptr %.1.i.i to i64
  %i.t = ptrtoint ptr %.sroa.010.0.copyload to i64
  %i.u = sub i64 %6, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.w, ptr %i.x, align 4, !tbaa !186
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !89
  %.not.i18 = icmp uge ptr %1, %.sroa.07.0.copyload
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 %.sroa.2.0.copyload
  %i.aa = icmp ult ptr %1, %i.z
  %i.ab = select i1 %.not.i18, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !203 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !179
  %i.af = add i32 %i.ad, 2
  %i.ag = tail call { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.af, i32 noundef %i.b) #24 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !134
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !89
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !165 ; 4 uses
  %i.ak = load i8, ptr %1, align 1, !tbaa !118    ; 2 uses
  %i.al = icmp eq i8 %i.ak, 13
  %i.am = icmp slt i8 %i.ak, -64
  %or.cond.i.i19 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i19, label %.critedge.preheader.i.i21, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, !prof !198

.critedge.preheader.i.i21:                        ; preds = %bb.g
  %7 = ptrtoaddr ptr %i.aj to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.an = sub i64 %7, %8
  %scevgep.i.i22 = getelementptr i8, ptr %1, i64 %i.an ; 2 uses
  %i.ao = icmp eq ptr %1, %i.aj
  br i1 %i.ao, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, label %.lr.ph, !prof !199

.critedge.i.i23:                                  ; preds = %.lr.ph
  %i.ap = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ap, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, label %.lr.ph, !prof !200, !llvm.loop !201

.lr.ph:                                           ; preds = %.critedge.preheader.i.i21, %.critedge.i.i23
  %.0.i.i2446 = phi ptr [ %i.aq, %.critedge.i.i23 ], [ %1, %.critedge.preheader.i.i21 ]
  %i.aq = getelementptr inbounds i8, ptr %.0.i.i2446, i64 -1 ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !118 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 13
  %i.at = icmp slt i8 %i.ar, -64
  %or.cond8.i.i25 = or i1 %i.as, %i.at
  br i1 %or.cond8.i.i25, label %.critedge.i.i23, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26: ; preds = %.critedge.i.i23, %.critedge.preheader.i.i21, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge, %bb.g
  %.1.i.i20 = phi ptr [ %1, %bb.g ], [ %scevgep.i.i22, %.critedge.preheader.i.i21 ], [ %i.aq, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26.loopexit_crit_edge ], [ %scevgep.i.i22, %.critedge.i.i23 ]
  %i.au = load <2 x i32>, ptr %i.a, align 8, !tbaa !3
  store <2 x i32> %i.au, ptr %2, align 4, !tbaa !3
  %9 = ptrtoint ptr %.1.i.i20 to i64
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = sub i64 %9, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !186
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 8, !tbaa !197
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ba = tail call noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %1) #24, !noalias !204 ; 4 uses
  %.not.i27 = icmp ne i32 %i.ba, 0                ; 2 uses
  br i1 %.not.i27, label %bb.j, label %_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit

_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit: ; preds = %bb.i
  store i32 0, ptr %2, align 4, !tbaa !183
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !204
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(464) %0, ptr nonnull %1, i32 noundef %i.ba) #24, !noalias !204
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !162, !noalias !204 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !204
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !203
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !tbaa.struct !179
  %i.bf = add i32 %i.bc, 1
  %i.bg = call { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.bf, i32 noundef %i.ba) #24 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.bi, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !89
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !165 ; 4 uses
  %i.bl = load i8, ptr %1, align 1, !tbaa !118    ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 13
  %i.bn = icmp slt i8 %i.bl, -64
  %or.cond.i.i28 = or i1 %i.bm, %i.bn
  br i1 %or.cond.i.i28, label %.critedge.preheader.i.i30, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, !prof !198

.critedge.preheader.i.i30:                        ; preds = %bb.j
  %10 = ptrtoaddr ptr %i.bk to i64
  %11 = ptrtoaddr ptr %1 to i64
  %i.bo = sub i64 %10, %11
  %scevgep.i.i31 = getelementptr i8, ptr %1, i64 %i.bo ; 2 uses
  %i.bp = icmp eq ptr %1, %i.bk
  br i1 %i.bp, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, label %.lr.ph53, !prof !199

.critedge.i.i32:                                  ; preds = %.lr.ph53
  %i.bq = icmp eq ptr %i.br, %i.bk
  br i1 %i.bq, label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, label %.lr.ph53, !prof !200, !llvm.loop !201

.lr.ph53:                                         ; preds = %.critedge.preheader.i.i30, %.critedge.i.i32
  %.0.i.i3352 = phi ptr [ %i.br, %.critedge.i.i32 ], [ %1, %.critedge.preheader.i.i30 ]
  %i.br = getelementptr inbounds i8, ptr %.0.i.i3352, i64 -1 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !118 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 13
  %i.bu = icmp slt i8 %i.bs, -64
  %or.cond8.i.i34 = or i1 %i.bt, %i.bu
  br i1 %or.cond8.i.i34, label %.critedge.i.i32, label %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge, !llvm.loop !201

._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge: ; preds = %.lr.ph53
  br label %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, !llvm.loop !201

_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35: ; preds = %.critedge.i.i32, %.critedge.preheader.i.i30, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge, %bb.j
  %.1.i.i29 = phi ptr [ %1, %bb.j ], [ %scevgep.i.i31, %.critedge.preheader.i.i30 ], [ %i.br, %._ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35.loopexit_crit_edge ], [ %scevgep.i.i31, %.critedge.i.i32 ]
  %i.bv = load <2 x i32>, ptr %i.a, align 8, !tbaa !3
  store <2 x i32> %i.bv, ptr %2, align 4, !tbaa !3
  %12 = ptrtoint ptr %.1.i.i29 to i64
  %i.bw = ptrtoint ptr %i.bk to i64
  %i.bx = sub i64 %12, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !186
  br label %bb.k

bb.k:                                             ; preds = %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit35, %_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit, %bb.b
  %.1 = phi i1 [ true, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit ], [ true, %_ZN6hermes18SourceErrorManager13FindLineCache10fillCoordsEN4llvh5SMLocERNS0_12SourceCoordsE.exit26 ], [ %.not.i27, %bb.k ], [ false, %bb.b ]
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
end_hunk_0
begin_hunk_1_@_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.cg, align 1, !tbaa !148
  store ptr @_ZN6hermesL14sTooManyErrorsE, ptr %8, align 8, !tbaa !118
  store i8 3, ptr %i.cf, align 8, !tbaa !145
  call void @_ZN6hermes18SourceErrorManager12doGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef 0, ptr null, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN6hermes18SourceErrorManager18countAndGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE.exit

_ZN6hermes18SourceErrorManager18countAndGenMessageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineE.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.h, %bb.c, %bb.b, %_ZN6hermes19CollectMessagesRAII10addMessageENS_18SourceErrorManager8DiagKindEN4llvh5SMLocENS3_7SMRangeERKNS3_5TwineE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0, i32 noundef %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1, ptr %2, ptr null, ptr null, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceErrorManager17findBufferAndLineEN4llvh5SMLocE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::Optional") align 8 captures(none) initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8, !tbaa !220
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %2) #24 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !220
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %2, i32 noundef %i.b) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !162
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.f, align 8, !tbaa !220
  store i32 %i.b, ptr %0, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

declare noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120), ptr) local_unnamed_addr #9

declare void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef nonnull align 8 dereferenceable(120), ptr, i32 noundef) local_unnamed_addr #9

declare { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes18SourceErrorManager20findBufferLineAndLocEN4llvh5SMLocERNS0_12SourceCoordsEb(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6hermes18SourceErrorManager20findBufferLineAndLocEN4llvh5SMLocERNS0_12SourceCoordsE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %brmerge.demorgan = and i1 %3, %i.a
  br i1 %brmerge.demorgan, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK6hermes18SourceErrorManager18findBufferIdForLocEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) #24
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes18SourceErrorManager16findBufferForLocEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr %1) #24 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.a, -1
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_ZN6hermes18SourceErrorManager19findSMLocFromCoordsENS0_12SourceCoordsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0, i64 %1, i32 %2) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = and i64 %1, 4294967295
  %.not64 = icmp eq i64 %i.a, 0
  br i1 %.not64, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 4294967295
  %i.c = and i64 %i.b, 4294967295
  %i.d = load ptr, ptr %0, align 8, !tbaa !158
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = tail call noundef ptr @memchr(ptr noundef %i.h, i32 noundef 10, i64 noundef %i.m) #26 ; 3 uses
  %i.o = icmp ne ptr %i.n, null                   ; 2 uses
  %i.p = icmp ne i64 %.sroa.3.0.extract.shift, 1
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.r = phi ptr [ %i.w, %.lr.ph ], [ %i.n, %bb.c ]
  %.04267 = phi i32 [ %i.s, %.lr.ph ], [ 1, %bb.c ]
  %i.s = add i32 %.04267, 1                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.k, %i.u
  %i.w = tail call noundef ptr @memchr(ptr noundef nonnull %i.t, i32 noundef 10, i64 noundef %i.v) #26 ; 3 uses
  %i.x = icmp ne ptr %i.w, null                   ; 2 uses
  %i.y = icmp ne i32 %i.s, %.sroa.3.0.extract.trunc
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.043.lcssa = phi ptr [ %i.h, %bb.c ], [ %i.t, %.lr.ph ] ; 4 uses
  %.042.lcssa = phi i32 [ 1, %bb.c ], [ %i.s, %.lr.ph ]
  %.lcssa66 = phi ptr [ %i.n, %bb.c ], [ %i.w, %.lr.ph ]
  %.lcssa = phi i1 [ %i.o, %bb.c ], [ %i.x, %.lr.ph ]
  %spec.select = select i1 %.lcssa, ptr %.lcssa66, ptr %i.j ; 5 uses
  %.not50 = icmp eq i32 %.042.lcssa, %.sroa.3.0.extract.trunc
  br i1 %.not50, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.not51 = icmp eq ptr %.043.lcssa, %spec.select
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %.043.lcssa, align 1, !tbaa !118
  %i.ab = icmp eq i8 %i.aa, 13
  %spec.select56.idx = zext i1 %i.ab to i64
  %spec.select56 = getelementptr inbounds nuw i8, ptr %.043.lcssa, i64 %spec.select56.idx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.144 = phi ptr [ %.043.lcssa, %bb.d ], [ %spec.select56, %bb.e ] ; 9 uses
  %.144101 = ptrtoaddr ptr %.144 to i64
  %.not52 = icmp eq ptr %.144, %spec.select
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %spec.select, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !118
  %i.ae = icmp eq i8 %i.ad, 13
  %spec.select57 = select i1 %i.ae, ptr %i.ac, ptr %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.141 = phi ptr [ %spec.select, %bb.f ], [ %spec.select57, %bb.g ] ; 5 uses
  %i.af = icmp eq ptr %.144, %.141
  br i1 %i.af, label %bb.j, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %bb.h
  %.141100 = ptrtoaddr ptr %.141 to i64
  %i.ag = sub i64 %.141100, %.144101
  %i.ah = freeze i64 %i.ag                        ; 2 uses
  %3 = add i64 %i.ah, -1
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader65.prol.loopexit, label %.preheader65.prol

.preheader65.prol:                                ; preds = %.preheader65.preheader, %bb.i
  %.03871.prol = phi ptr [ %i.aj, %bb.i ], [ %.144, %.preheader65.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.i ], [ 0, %.preheader65.preheader ]
  %i.ai = load i8, ptr %.03871.prol, align 1, !tbaa !118
  %.not54.prol = icmp sgt i8 %i.ai, -1
  br i1 %.not54.prol, label %bb.i, label %.lr.ph75.preheader, !prof !190

bb.i:                                             ; preds = %.preheader65.prol
  %i.aj = getelementptr inbounds nuw i8, ptr %.03871.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader65.prol.loopexit, label %.preheader65.prol, !llvm.loop !227

.preheader65.prol.loopexit:                       ; preds = %bb.i, %.preheader65.preheader
  %.03871.unr = phi ptr [ %.144, %.preheader65.preheader ], [ %i.aj, %bb.i ]
  %i.ak = icmp ult i64 %3, 7
  br i1 %i.ak, label %.critedge, label %.preheader65

bb.j:                                             ; preds = %bb.h
  %i.al = icmp ult i32 %2, 2
  %spec.select63 = select i1 %i.al, ptr %.144, ptr null
  br label %.loopexit

.preheader65.1:                                   ; preds = %.preheader65
  %i.am = getelementptr inbounds nuw i8, ptr %.03871, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !118
  %.not54.1 = icmp sgt i8 %i.an, -1
  br i1 %.not54.1, label %.preheader65.2, label %.lr.ph75.preheader, !prof !190

.preheader65.2:                                   ; preds = %.preheader65.1
  %i.ao = getelementptr inbounds nuw i8, ptr %.03871, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !118
  %.not54.2 = icmp sgt i8 %i.ap, -1
  br i1 %.not54.2, label %.preheader65.3, label %.lr.ph75.preheader, !prof !190

.preheader65.3:                                   ; preds = %.preheader65.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.03871, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !118
  %.not54.3 = icmp sgt i8 %i.ar, -1
  br i1 %.not54.3, label %.preheader65.4, label %.lr.ph75.preheader, !prof !190

.preheader65.4:                                   ; preds = %.preheader65.3
  %i.as = getelementptr inbounds nuw i8, ptr %.03871, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !118
  %.not54.4 = icmp sgt i8 %i.at, -1
  br i1 %.not54.4, label %.preheader65.5, label %.lr.ph75.preheader, !prof !190

.preheader65.5:                                   ; preds = %.preheader65.4
  %i.au = getelementptr inbounds nuw i8, ptr %.03871, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !118
  %.not54.5 = icmp sgt i8 %i.av, -1
  br i1 %.not54.5, label %.preheader65.6, label %.lr.ph75.preheader, !prof !190

.preheader65.6:                                   ; preds = %.preheader65.5
  %i.aw = getelementptr inbounds nuw i8, ptr %.03871, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !118
  %.not54.6 = icmp sgt i8 %i.ax, -1
  br i1 %.not54.6, label %.preheader65.7, label %.lr.ph75.preheader, !prof !190

.preheader65.7:                                   ; preds = %.preheader65.6
  %i.ay = getelementptr inbounds nuw i8, ptr %.03871, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !118
  %.not54.7 = icmp sgt i8 %i.az, -1
  br i1 %.not54.7, label %bb.k, label %.lr.ph75.preheader, !prof !190

bb.k:                                             ; preds = %.preheader65.7
  %i.ba = getelementptr inbounds nuw i8, ptr %.03871, i64 8 ; 2 uses
  %.not53.not.7 = icmp eq ptr %i.ba, %.141
  br i1 %.not53.not.7, label %.critedge, label %.preheader65, !llvm.loop !229

.preheader65:                                     ; preds = %.preheader65.prol.loopexit, %bb.k
  %.03871 = phi ptr [ %i.ba, %bb.k ], [ %.03871.unr, %.preheader65.prol.loopexit ] ; 9 uses
  %i.bb = load i8, ptr %.03871, align 1, !tbaa !118
  %.not54 = icmp sgt i8 %i.bb, -1
  br i1 %.not54, label %.preheader65.1, label %.lr.ph75.preheader, !prof !190

.lr.ph75.preheader:                               ; preds = %.preheader65.prol, %.preheader65, %.preheader65.1, %.preheader65.2, %.preheader65.3, %.preheader65.4, %.preheader65.5, %.preheader65.6, %.preheader65.7
  br label %.lr.ph75

.critedge:                                        ; preds = %bb.k, %.preheader65.prol.loopexit
  %i.bc = zext i32 %2 to i64                      ; 2 uses
  %i.bd = ptrtoint ptr %.141 to i64
  %i.be = ptrtoint ptr %.144 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.bc
  br i1 %i.bg, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %.144, i64 %i.bc
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -1
  br label %.loopexit

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %bb.n
  %.074 = phi i32 [ %.1, %bb.n ], [ 0, %.lr.ph75.preheader ] ; 2 uses
  %.273 = phi ptr [ %i.bn, %bb.n ], [ %.144, %.lr.ph75.preheader ] ; 3 uses
  %i.bj = load i8, ptr %.273, align 1, !tbaa !118
  %i.bk = icmp slt i8 %i.bj, -64
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph75
  %i.bl = add i32 %.074, 1                        ; 2 uses
  %i.bm = icmp eq i32 %i.bl, %2
  br i1 %i.bm, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph75
  %.1 = phi i32 [ %.074, %.lr.ph75 ], [ %i.bl, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.273, i64 1 ; 2 uses
  %.not55 = icmp eq ptr %i.bn, %.141
  br i1 %.not55, label %.loopexit, label %.lr.ph75, !llvm.loop !230

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.j, %.critedge, %._crit_edge, %bb.b, %bb.a, %bb.l
  %.sroa.062.0 = phi ptr [ null, %bb.a ], [ null, %._crit_edge ], [ null, %.critedge ], [ %spec.select63, %bb.j ], [ %i.bi, %bb.l ], [ null, %bb.b ], [ %.273, %bb.m ], [ null, %bb.n ]
  ret ptr %.sroa.062.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.32") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %1, i8 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.39", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.c = alloca [6 x i8], align 1                 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i64 0, ptr %i.f, align 8, !tbaa !234
  store i32 0, ptr %i.e, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %.not.i.i = icmp eq ptr %i.h, null
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !121, !alias.scope !244
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.b

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !93, !alias.scope !244
  store i8 0, ptr %i.k, align 8, !tbaa !118, !alias.scope !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.k, ptr %i.b, align 8, !tbaa !134
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !244
  store i64 %i.j, ptr %i.a, align 8, !tbaa !89, !noalias !244
  %i.m = icmp ugt i64 %i.j, 15
  br i1 %i.m, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !90, !alias.scope !244
  %i.o = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !244
  store i64 %i.o, ptr %i.k, align 8, !tbaa !118, !alias.scope !244
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !118
  store i8 %i.q, ptr %i.p, align 1, !tbaa !118
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !244 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !93, !alias.scope !244
  %i.t = load ptr, ptr %5, align 8, !tbaa !90, !alias.scope !244
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !244
  %.pre = load ptr, ptr %5, align 8, !tbaa !90    ; 3 uses
  %.pre255 = load i8, ptr %.pre, align 1, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %.pre, ptr %i.b, align 8, !tbaa !134
  %.not212 = icmp eq i8 %.pre255, 0
  br i1 %.not212, label %._crit_edge, label %.lr.ph216

.loopexit190:                                     ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit
  %i.v = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %i.bx, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0213, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0214, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.15.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0215, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !118   ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph216, !llvm.loop !245

.lr.ph216:                                        ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit, %.loopexit190
  %i.x = phi i8 [ %i.w, %.loopexit190 ], [ %.pre255, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %i.y = phi ptr [ %i.v, %.loopexit190 ], [ %.pre, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 3 uses
  %.sroa.0.0215 = phi ptr [ %.sroa.0.1.lcssa, %.loopexit190 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %.sroa.15.0214 = phi ptr [ %.sroa.15.1.lcssa, %.loopexit190 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %.sroa.9.0213 = phi ptr [ %.sroa.9.1.lcssa, %.loopexit190 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %i.z = icmp sgt i8 %i.x, -1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !190

end_hunk_1
