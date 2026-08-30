Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MacroInfo?download=true
inline.NumInlined: 352
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5clang9MacroInfo4dumpEv:bb.a

bb.bl:                                            ; preds = %bb.bj
  store i8 32, ptr %i.hn, align 1
  %i.hq = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %i.d, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit104

_ZN4llvm11raw_ostreamlsEPKc.exit104:              ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.hs = getelementptr inbounds nuw i8, ptr %.044130, i64 16
  %i.ht = load i16, ptr %i.hs, align 8, !tbaa !30 ; 4 uses
  %i.hu = tail call noundef ptr @_ZN5clang3tok21getPunctuatorSpellingENS0_9TokenKindE(i16 noundef zeroext %i.ht) #15 ; 4 uses
  %.not60 = icmp eq ptr %i.hu, null
  br i1 %.not60, label %bb.bp, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit104
  %i.hv = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hu) #13 ; 5 uses
  %i.hw = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !291 ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = icmp ugt i64 %i.hv, %i.ia
  br i1 %i.ib, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.ic = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.hu, i64 noundef %i.hv) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.bn:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i105 = icmp eq i64 %i.hv, 0
  br i1 %.not.i2.i105, label %_ZN4llvm11raw_ostreamlsEPKc.exit107, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr nonnull align 1 %i.hu, i64 %i.hv, i1 false)
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hv
  store ptr %i.ie, ptr %i.d, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit104
  %i.if = add i16 %i.ht, -7
  %i.ig = icmp ult i16 %i.if, 13
  %i.ih = getelementptr inbounds nuw i8, ptr %.044130, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8            ; 5 uses
  br i1 %i.ig, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %.not61 = icmp eq ptr %i.ii, null
  br i1 %.not61, label %.thread194, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ij = getelementptr inbounds nuw i8, ptr %.044130, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23 ; 2 uses
  %i.il = zext i32 %i.ik to i64                   ; 4 uses
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.in = load ptr, ptr %i.d, align 8, !tbaa !291 ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = icmp ult i64 %i.iq, %i.il
  br i1 %i.ir, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.is = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.ii, i64 noundef %i.il) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.bt:                                            ; preds = %bb.br
  %.not.i108 = icmp eq i32 %i.ik, 0
  br i1 %.not.i108, label %_ZN4llvm11raw_ostreamlsEPKc.exit107, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr nonnull align 1 %i.ii, i64 %i.il, i1 false)
  %i.it = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.il
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.bv:                                            ; preds = %bb.bp
  %i.iv = icmp eq i16 %i.ht, 1
  %.not62125 = icmp eq ptr %i.ii, null
  %.not62 = select i1 %i.iv, i1 true, i1 %.not62125
  br i1 %.not62, label %.thread194, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !292 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !295
  %i.ja = and i64 %i.iz, 4294967295               ; 5 uses
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !291 ; 2 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = icmp ugt i64 %i.ja, %i.jf
  br i1 %i.jg, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.iy, i64 noundef %i.ja) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.by:                                            ; preds = %bb.bw
  %.not.i114 = icmp eq i64 %i.ja, 0
  br i1 %.not.i114, label %_ZN4llvm11raw_ostreamlsEPKc.exit107, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jc, ptr nonnull align 8 %i.iy, i64 %i.ja, i1 false)
  %i.ji = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  store ptr %i.jj, ptr %i.d, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

.thread194:                                       ; preds = %bb.bq, %bb.bv
  %i.jk = tail call noundef ptr @_ZN5clang3tok12getTokenNameENS0_9TokenKindE(i16 noundef zeroext %i.ht) #15 ; 4 uses
  %.not.i.i117 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i117, label %_ZN4llvm11raw_ostreamlsEPKc.exit107, label %_ZN4llvm9StringRefC2EPKc.exit.i118

_ZN4llvm9StringRefC2EPKc.exit.i118:               ; preds = %.thread194
  %i.jl = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jk) #13 ; 5 uses
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.jn = load ptr, ptr %i.d, align 8, !tbaa !291 ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = icmp ugt i64 %i.jl, %i.jq
  br i1 %i.jr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i118
  %i.js = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.jk, i64 noundef %i.jl) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

bb.cb:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i118
  %.not.i2.i119 = icmp eq i64 %i.jl, 0
  br i1 %.not.i2.i119, label %_ZN4llvm11raw_ostreamlsEPKc.exit107, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr nonnull align 1 %i.jk, i64 %i.jl, i1 false)
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jl
  store ptr %i.ju, ptr %i.d, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit107

_ZN4llvm11raw_ostreamlsEPKc.exit107:              ; preds = %bb.cc, %bb.cb, %bb.ca, %.thread194, %bb.bz, %bb.by, %bb.bx, %bb.bu, %bb.bt, %bb.bs, %bb.bo, %bb.bn, %bb.bm
  %i.jv = getelementptr inbounds nuw i8, ptr %.044130, i64 24 ; 2 uses
  %.not59 = icmp eq ptr %i.jv, %i.ey
  br i1 %.not59, label %._crit_edge132, label %bb.bi, !llvm.loop !298
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef ptr @_ZN5clang3tok21getPunctuatorSpellingENS0_9TokenKindE(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN5clang14MacroDirective13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(13) %0) local_unnamed_addr #6 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.044 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.e ]  ; 4 uses
  %.sroa.020.043 = phi i8 [ undef, %bb.a ], [ %.sroa.020.1, %bb.e ] ; 3 uses
  %.sroa.5.042 = phi i8 [ 0, %bb.a ], [ %.sroa.5.1, %bb.e ] ; 3 uses
  %.sroa.024.041 = phi i32 [ 0, %bb.a ], [ %.sroa.024.129, %bb.e ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 3
  switch i8 %i.c, label %bb.d [
    i8 0, label %bb.f
    i8 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = trunc nuw i8 %.sroa.5.042 to i1
  %i.f = lshr i8 %i.b, 3
  %spec.select = select i1 %i.e, i8 %.sroa.020.043, i8 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.024.129 = phi i32 [ %.sroa.024.041, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.c ] ; 2 uses
  %.sroa.5.1 = phi i8 [ 1, %bb.d ], [ %.sroa.5.042, %bb.c ] ; 2 uses
  %.sroa.020.1 = phi i8 [ %spec.select, %bb.d ], [ %.sroa.020.043, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %.044, align 8, !tbaa !300 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !303

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.5.042.lcssa.sink = phi i8 [ %.sroa.5.042, %bb.b ], [ %.sroa.5.1, %bb.e ]
  %.sroa.020.043.lcssa.sink = phi i8 [ %.sroa.020.043, %bb.b ], [ %.sroa.020.1, %bb.e ]
  %.sroa.024.040 = phi i32 [ %.sroa.024.041, %bb.b ], [ %.sroa.024.129, %bb.e ]
  %.sroa.026.0 = phi ptr [ %.044, %bb.b ], [ null, %bb.e ]
  %i.h = trunc nuw i8 %.sroa.5.042.lcssa.sink to i1
  %i.i = and i8 %.sroa.020.043.lcssa.sink, 1
  %1 = select i1 %i.h, i8 %i.i, i8 1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.026.0, 0
  %i.j = zext nneg i8 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %.sroa.3.8.insert.ext = zext i32 %.sroa.024.040 to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %i.k, %.sroa.3.8.insert.ext
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK5clang14MacroDirective18findDirectiveAtLocENS_14SourceLocationERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(13) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(776) %2) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.044.i.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.e ] ; 6 uses
  %.sroa.020.043.i.i = phi i8 [ undef, %bb.a ], [ %.sroa.020.1.i.i, %bb.e ] ; 3 uses
  %.sroa.5.042.i.i = phi i8 [ 0, %bb.a ], [ %.sroa.5.1.i.i, %bb.e ] ; 3 uses
  %.sroa.024.041.i.i = phi i32 [ 0, %bb.a ], [ %.sroa.024.129.i.i, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 12
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 3
  switch i8 %i.c, label %bb.d [
    i8 0, label %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader
    i8 1, label %bb.c
  ]

_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader: ; preds = %bb.b
  %i.d = trunc nuw i8 %.sroa.5.042.i.i to i1
  %i.e = and i8 %.sroa.020.043.i.i, 1
  %3 = select i1 %i.d, i8 %i.e, i8 1
  %.sroa.6.8.insert.ext.i.i32120 = zext nneg i8 %3 to i64
  %.sroa.6.8.insert.shift.i.i33121 = shl nuw nsw i64 %.sroa.6.8.insert.ext.i.i32120, 32
  %.sroa.3.8.insert.ext.i.i33120 = zext i32 %.sroa.024.041.i.i to i64
  %.sroa.3.8.insert.insert.i.i34121 = or disjoint i64 %.sroa.6.8.insert.shift.i.i33121, %.sroa.3.8.insert.ext.i.i33120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8
  %.sroa.0.0.copyload.i.i122 = load i32, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.g = icmp eq i32 %.sroa.0.0.copyload.i.i122, 0
  br i1 %i.g, label %.critedge, label %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.h, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = trunc nuw i8 %.sroa.5.042.i.i to i1
  %i.j = lshr i8 %i.b, 3
  %spec.select.i.i = select i1 %i.i, i8 %.sroa.020.043.i.i, i8 %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.024.129.i.i = phi i32 [ %.sroa.024.041.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ]
  %.sroa.5.1.i.i = phi i8 [ 1, %bb.d ], [ %.sroa.5.042.i.i, %bb.c ]
  %.sroa.020.1.i.i = phi i8 [ %spec.select.i.i, %bb.d ], [ %.sroa.020.043.i.i, %bb.c ]
  %i.k = load ptr, ptr %.044.i.i, align 8, !tbaa !300 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread, label %bb.b, !llvm.loop !303

_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit: ; preds = %.preheader.i
  %i.l = trunc nuw i8 %.sroa.5.042.i.i22 to i1
  %i.m = and i8 %.sroa.020.043.i.i21, 1
  %4 = select i1 %i.l, i8 %i.m, i8 1
  %.sroa.6.8.insert.ext.i.i32 = zext nneg i8 %4 to i64
  %.sroa.6.8.insert.shift.i.i33 = shl nuw nsw i64 %.sroa.6.8.insert.ext.i.i32, 32
  %.sroa.3.8.insert.ext.i.i33 = zext i32 %.sroa.024.041.i.i23 to i64
  %.sroa.3.8.insert.insert.i.i34 = or disjoint i64 %.sroa.6.8.insert.shift.i.i33, %.sroa.3.8.insert.ext.i.i33 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.044.i.i20, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.o = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.o, label %.critedge, label %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18, !llvm.loop !304

_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18: ; preds = %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit
  %.sroa.0.0.copyload.i.i126 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ], [ %.sroa.0.0.copyload.i.i122, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ]
  %.sroa.3.8.insert.insert.i.i34125 = phi i64 [ %.sroa.3.8.insert.insert.i.i34, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ], [ %.sroa.3.8.insert.insert.i.i34121, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ]
  %.sroa.038.063124 = phi ptr [ %.044.i.i20, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ], [ %.044.i.i, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ] ; 2 uses
  %.sroa.024.041.i.i23.lcssa.sink123 = phi i32 [ %.sroa.024.041.i.i23, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ], [ %.sroa.024.041.i.i, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ]
  %i.p = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %.sroa.0.0.copyload.i.i126, i32 %1) #13
  br i1 %i.p, label %.critedge, label %bb.h

.critedge:                                        ; preds = %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader
  %.sroa.024.041.i.i23.lcssa.sink.lcssa = phi i32 [ %.sroa.024.041.i.i, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ], [ %.sroa.024.041.i.i23.lcssa.sink123, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18 ], [ %.sroa.024.041.i.i23, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ] ; 2 uses
  %.sroa.038.063.lcssa = phi ptr [ %.044.i.i, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ], [ %.sroa.038.063124, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18 ], [ %.044.i.i20, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ]
  %.sroa.3.8.insert.insert.i.i34.lcssa = phi i64 [ %.sroa.3.8.insert.insert.i.i34121, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.preheader ], [ %.sroa.3.8.insert.insert.i.i34125, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18 ], [ %.sroa.3.8.insert.insert.i.i34, %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit ]
  %.not59 = icmp eq i32 %.sroa.024.041.i.i23.lcssa.sink.lcssa, 0
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.q = tail call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %1, i32 %.sroa.024.041.i.i23.lcssa.sink.lcssa) #13
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %.critedge
  br label %.thread

bb.h:                                             ; preds = %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit18
  %i.r = load ptr, ptr %.sroa.038.063124, align 8, !tbaa !300 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.k
  %.044.i.i20 = phi ptr [ %i.z, %bb.k ], [ %i.r, %bb.h ] ; 6 uses
  %.sroa.020.043.i.i21 = phi i8 [ %.sroa.020.1.i.i27, %bb.k ], [ undef, %bb.h ] ; 3 uses
  %.sroa.5.042.i.i22 = phi i8 [ %.sroa.5.1.i.i26, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.sroa.024.041.i.i23 = phi i32 [ %.sroa.024.129.i.i25, %bb.k ], [ 0, %bb.h ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.044.i.i20, i64 12
  %i.u = load i8, ptr %i.t, align 4               ; 2 uses
  %i.v = and i8 %i.u, 3
  switch i8 %i.v, label %bb.j [
    i8 0, label %_ZNK5clang14MacroDirective7DefInfo11getLocationEv.exit.loopexit
    i8 1, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.044.i.i20, i64 8
  %.sroa.0.0.copyload.i.i.i24 = load i32, ptr %i.w, align 8, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.x = trunc nuw i8 %.sroa.5.042.i.i22 to i1
  %i.y = lshr i8 %i.u, 3
  %spec.select.i.i37 = select i1 %i.x, i8 %.sroa.020.043.i.i21, i8 %i.y
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.024.129.i.i25 = phi i32 [ %.sroa.024.041.i.i23, %bb.j ], [ %.sroa.0.0.copyload.i.i.i24, %bb.i ]
  %.sroa.5.1.i.i26 = phi i8 [ 1, %bb.j ], [ %.sroa.5.042.i.i22, %bb.i ]
  %.sroa.020.1.i.i27 = phi i8 [ %spec.select.i.i37, %bb.j ], [ %.sroa.020.043.i.i21, %bb.i ]
  %i.z = load ptr, ptr %.044.i.i20, align 8, !tbaa !300 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i1.i, label %.thread, label %.preheader.i, !llvm.loop !303

.thread:                                          ; preds = %bb.e, %bb.h, %bb.k, %bb.f, %bb.g
  %.sroa.6.1 = phi i64 [ %.sroa.3.8.insert.insert.i.i34.lcssa, %bb.g ], [ 4294967296, %bb.f ], [ 4294967296, %bb.k ], [ 4294967296, %bb.h ], [ 4294967296, %bb.e ]
  %.sroa.045.1 = phi ptr [ %.sroa.038.063.lcssa, %bb.g ], [ null, %bb.f ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.045.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776), i32, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK5clang14MacroDirective4dumpEv(ptr noundef nonnull align 8 dereferenceable(13) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #13 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %_ZN4llvm11raw_ostreamlsEPKc.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !291  ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 17
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.13, i64 noundef 17) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, i64 17, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !291
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store ptr %i.o, ptr %i.g, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !287
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !291  ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 19
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.14, i64 noundef 19) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.s, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, i64 19, i1 false)
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !291
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 19
  store ptr %i.z, ptr %i.r, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !287
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !291 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 24
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.15, i64 noundef 24) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ad, ptr noundef nonnull align 1 dereferenceable(24) @.str.15, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !291
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.a, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !287
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 18 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !291 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.12, i64 noundef 1) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 32, ptr %i.ao, align 1
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !291
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.an, align 8, !tbaa !291
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.k, %bb.l
  %.0.i.i29 = phi ptr [ %i.aq, %bb.k ], [ %i.a, %bb.l ]
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i29, ptr noundef nonnull %0) #13 ; 0 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !300   ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit30
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !287
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !291 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 6
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.16, i64 noundef 6) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit33

bb.o:                                             ; preds = %bb.m
end_hunk_0
