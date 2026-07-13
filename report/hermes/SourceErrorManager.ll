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
begin_hunk_1_@_ZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsE:bb.a
  %.sroa.15.1207 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.15.0214, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 3 uses
  %.sroa.9.1206 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.9.0213, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0209, i64 1 ; 2 uses
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !234
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  %.not.i.i72 = icmp eq ptr %.sroa.9.1206, %.sroa.15.1207
  br i1 %.not.i.i72, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  store i32 %i.bi, ptr %.sroa.9.1206, align 4, !tbaa !3
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = ptrtoint ptr %.sroa.15.1207 to i64
  %i.bk = ptrtoint ptr %.sroa.0.1208 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %bb.p, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bn = ashr exact i64 %i.bl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951)
  %i.br = select i1 %i.bp, i64 2305843009213693951, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #23 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 %i.bi, ptr %i.bu, align 4, !tbaa !3
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %.sroa.0.1208, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.1208, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1208, i64 noundef %i.bl) #25
  %.pre256.pre = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %.pre256 = phi ptr [ %.pre256.pre, %bb.r ], [ %.pre256260, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.pre256261 = phi ptr [ %.pre256, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.pre256260, %bb.n ]
  %i.bx = phi ptr [ %.pre256, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.be, %bb.n ] ; 3 uses
  %.pn = phi ptr [ %i.bu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.9.1206, %bb.n ]
  %.sroa.15.2 = phi ptr [ %i.bw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1207, %bb.n ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.bt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0.1208, %bb.n ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.by = icmp ult ptr %i.bf, %i.bx
  br i1 %i.by, label %.lr.ph, label %.loopexit190, !llvm.loop !247

._crit_edge.loopexit:                             ; preds = %.loopexit190
  %i.bz = ptrtoint ptr %.sroa.9.1.lcssa to i64
  %i.ca = ptrtoint ptr %.sroa.15.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %._crit_edge.loopexit, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %.sroa.9.0.lcssa = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.bz, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %.sroa.15.0.lcssa = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.ca, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %.sroa.0.1.lcssa, %._crit_edge.loopexit ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ] ; 6 uses
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !234 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !110
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.cg = sub i64 %.sroa.9.0.lcssa, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 3 uses
  %i.ci = icmp ugt i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ce
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

bb.t:                                             ; preds = %._crit_edge
  %i.cl = trunc i64 %i.cb to i32
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit": ; preds = %bb.s, %bb.t
  %i.cm = phi i32 [ %i.ck, %bb.s ], [ %i.cl, %bb.t ] ; 5 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !248 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !249 ; 2 uses
  %.not62220 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not62220, label %._crit_edge226, label %.lr.ph225

.lr.ph225:                                        ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %i.cs = trunc i64 %i.cb to i32                  ; 2 uses
  br label %bb.u

._crit_edge226.loopexit:                          ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %i.ct = ptrtoint ptr %.sroa.13.1 to i64
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %._crit_edge226.loopexit, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %.sroa.13.0.lcssa = phi i64 [ 0, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %i.ct, %._crit_edge226.loopexit ]
  %.sroa.8.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.8.1, %._crit_edge226.loopexit ] ; 3 uses
  %.sroa.0159.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.0159.1, %._crit_edge226.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cu = add i64 %i.cb, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cv, ptr %6, align 8, !tbaa !121
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cu, i8 noundef signext 32) #24
  %.not186230 = icmp eq ptr %.sroa.0159.0.lcssa, %.sroa.8.0.lcssa ; 2 uses
  br i1 %.not186230, label %._crit_edge234, label %.lr.ph233

.lr.ph233:                                        ; preds = %._crit_edge226
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ae

bb.u:                                             ; preds = %.lr.ph225, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %.052224 = phi ptr [ %i.cp, %.lr.ph225 ], [ %i.en, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 3 uses
  %.sroa.0159.0223 = phi ptr [ null, %.lr.ph225 ], [ %.sroa.0159.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 8 uses
  %.sroa.8.0222 = phi ptr [ null, %.lr.ph225 ], [ %.sroa.8.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.13.0221 = phi ptr [ null, %.lr.ph225 ], [ %.sroa.13.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 2 uses
  %i.cx = load i32, ptr %.052224, align 4, !tbaa !250
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i64 %i.ch, %i.cy
  br i1 %i.cz, label %bb.v, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75": ; preds = %bb.u, %bb.v
  %i.dc = phi i32 [ %i.db, %bb.v ], [ %i.cs, %bb.u ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.052224, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !252
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp ugt i64 %i.ch, %i.df
  br i1 %i.dg, label %bb.w, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

bb.w:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76": ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75", %bb.w
  %i.dj = phi i32 [ %i.di, %bb.w ], [ %i.cs, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75" ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.8.0222, %.sroa.13.0221
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  store i32 %i.dc, ptr %.sroa.8.0222, align 4, !tbaa !250
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.8.0222, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !252
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

bb.y:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  %i.dl = ptrtoint ptr %.sroa.8.0222 to i64       ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.0159.0223 to i64    ; 3 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.do, label %bb.z, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.dp = ashr exact i64 %i.dn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 1152921504606846975)
  %i.dt = select i1 %i.dr, i64 1152921504606846975, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i32 %i.dc, ptr %i.dw, align 4, !tbaa !250
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dj, ptr %i.dx, align 4, !tbaa !252
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0159.0223, %.sroa.8.0222
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dy = ptrtoaddr ptr %i.dv to i64
  %7 = add i64 %i.dl, -8
  %8 = sub i64 %7, %i.dm                          ; 2 uses
  %i.dz = lshr i64 %8, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.eb = sub i64 %i.dm, %i.dy
  %diff.check = icmp ugt i64 %i.eb, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader347, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ea, 4611686018427387900     ; 3 uses
  %i.ec = shl i64 %n.vec, 3                       ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dv, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.0159.0223, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dv, i64 %i.ef ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.sroa.0159.0223, i64 %i.ef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.eg = getelementptr i8, ptr %next.gep339, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep339, align 4, !alias.scope !256, !noalias !253
  %wide.load340 = load <2 x i64>, ptr %i.eg, align 4, !alias.scope !256, !noalias !253
  %i.eh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !253, !noalias !256
  store <2 x i64> %wide.load340, ptr %i.eh, align 4, !alias.scope !253, !noalias !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader347

.lr.ph.i.i.i.i.i.preheader347:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ed, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0159.0223, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader347, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader347 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader347 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ej = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !256, !noalias !253
  store i64 %i.ej, ptr %.012.i.i.i.i.i, align 4, !alias.scope !253, !noalias !256
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, %.sroa.8.0222
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !261

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dv, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ed, %middle.block ], [ %i.el, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.0159.0223, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0223, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.13.1 = phi ptr [ %i.em, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0221, %bb.x ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.8.0222, %bb.x ]
  %.sroa.0159.1 = phi ptr [ %i.dv, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0159.0223, %bb.x ] ; 2 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.052224, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.en, %i.cr
  br i1 %.not62, label %._crit_edge226.loopexit, label %bb.u

._crit_edge234:                                   ; preds = %_ZSt4fillIPccEvT_S1_RKT0_.exit, %._crit_edge226
  %.sroa.speculated137 = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cn)
  %i.eo = load ptr, ptr %6, align 8, !tbaa !90
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.speculated137
  store i8 94, ptr %i.ep, align 1, !tbaa !118
  %i.eq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 32, i64 noundef -1) #24
  %i.er = add i64 %i.eq, 1                        ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !93 ; 2 uses
  %i.eu = icmp ugt i64 %i.er, %i.et
  br i1 %i.eu, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.ab:                                            ; preds = %._crit_edge234
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %i.er, i64 noundef %i.et) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %._crit_edge234
  store i64 %i.er, ptr %i.es, align 8, !tbaa !93
  %i.ev = load ptr, ptr %6, align 8, !tbaa !90
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store i8 0, ptr %i.ew, align 1, !tbaa !118
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !234 ; 4 uses
  %.not187 = icmp eq i64 %i.ex, 0
  br i1 %.not187, label %.preheader, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.ey = load ptr, ptr %4, align 8, !tbaa !246   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.ac
  %.0915.i.i = phi i64 [ %i.fc, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.0915.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !236
  %i.fb = icmp eq i32 %i.fa, 9
  br i1 %i.fb, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.fc = add nuw i64 %.0915.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fc, %i.ex
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, label %.lr.ph.i.i, !llvm.loop !262

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.0915.i.i
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit
  %i.fe = phi ptr [ %i.fd, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit ], [ null, %bb.ad ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.fe, null
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.ey to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 2
  %.0.i78 = select i1 %.not.i77, i64 -1, i64 %i.fi ; 2 uses
  %i.fj = icmp ult i64 %.0.i78, %i.ex
  br i1 %i.fj, label %.lr.ph240, label %.preheader

bb.ae:                                            ; preds = %.lr.ph233, %_ZSt4fillIPccEvT_S1_RKT0_.exit
  %.sroa.0149.0231 = phi ptr [ %.sroa.0159.0.lcssa, %.lr.ph233 ], [ %i.ft, %_ZSt4fillIPccEvT_S1_RKT0_.exit ] ; 3 uses
  %i.fk = load i32, ptr %.sroa.0149.0231, align 4, !tbaa !250 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 3 uses
  %i.fm = load i64, ptr %i.cw, align 8, !tbaa !93 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, %i.fl
  br i1 %i.fn, label %bb.af, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0149.0231, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !252 ; 2 uses
  %.not.i.i.i80 = icmp eq i32 %i.fp, %i.fk
  br i1 %.not.i.i.i80, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = zext i32 %i.fp to i64
  %.sroa.speculated143 = call i64 @llvm.umin.i64(i64 %i.fm, i64 %i.fq)
  %i.fr = load ptr, ptr %6, align 8, !tbaa !90
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fl
  %gepdiff = sub nsw i64 %.sroa.speculated143, %i.fl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fs, i8 126, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0149.0231, i64 8 ; 2 uses
  %.not186 = icmp eq ptr %i.ft, %.sroa.8.0.lcssa
  br i1 %.not186, label %._crit_edge234, label %bb.ae

.preheader:                                       ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit
  %.lcssa192 = phi i64 [ %i.ex, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %i.ge, %bb.ah ]
  br i1 %.not186230, label %.loopexit, label %.lr.ph244

.lr.ph240:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89
  %.053239 = phi i64 [ %.0.i87, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %.0.i78, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ] ; 6 uses
  %i.fu = and i64 %.053239, 7
  %i.fv = sub nuw nsw i64 8, %i.fu                ; 3 uses
  %i.fw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7replaceEmmmDi(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.053239, i64 noundef 1, i64 noundef %i.fv, i32 noundef zeroext 32) ; 0 uses
  %i.fx = load i64, ptr %i.es, align 8, !tbaa !93
  %i.fy = icmp ult i64 %.053239, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit: ; preds = %.lr.ph240
  %i.fz = load ptr, ptr %6, align 8, !tbaa !90
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.053239
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !118
  %i.gc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.053239, i64 noundef 1, i64 noundef %i.fv, i8 noundef signext %i.gb) #24 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, %.lr.ph240
  %i.gd = add nsw i64 %i.fv, %.053239             ; 3 uses
  %i.ge = load i64, ptr %i.f, align 8, !tbaa !234 ; 5 uses
  %i.gf = icmp ult i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.gg = load ptr, ptr %4, align 8, !tbaa !246   ; 2 uses
  %i.gh = sub nuw i64 %i.ge, %i.gd
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gd ; 2 uses
  br label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %bb.aj, %bb.ai
  %.0915.i.i83 = phi i64 [ %i.gm, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.0915.i.i83
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !236
  %i.gl = icmp eq i32 %i.gk, 9
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i82
  %i.gm = add nuw i64 %.0915.i.i83, 1             ; 2 uses
end_hunk_1
