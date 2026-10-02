Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.15?download=true
inline.NumInlined: 1271
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2g_:bb.a
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE9next_implKb0_EB2m_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE9next_implKb0_EB2m_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.026.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.024.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [72 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.023.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -56
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2762, !noalias !2752, !noundef !4 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB23_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE9next_implKb0_EB2m_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -40
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2764, !noalias !2752, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1T_.exit.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.w, align 8, !alias.scope !2764, !noalias !2752, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !2765
  %i.ae = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = bitcast <16 x i1> %i.ae to i16
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i, %bb.f
  %.sroa.05.016.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %.sroa.05.1.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ag, %bb.f ], [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.f ], [ %i.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE9next_implKb0_EB1E_.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i.i.i, %bb.g ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !2766
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE9next_implKb0_EB1E_.exit.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE9next_implKb0_EB1E_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i.i.i, i64 %i.aq ; 7 uses
  %i.as = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.at)
          to label %bb.j unwind label %bb.h, !noalias !2767

bb.h:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE9next_implKb0_EB1E_.exit.i.i.i.i.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !2768, !noalias !2767 ; 2 uses
  %i.av = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.av, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -40
  %.val3.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !2769, !noalias !2767, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2770
  br label %.body.i.i.i

bb.j:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE9next_implKb0_EB1E_.exit.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !2768, !noalias !2767 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -40
  %.val1.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !2769, !noalias !2767, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2771
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.az) #33
          to label %common.resume.i.i.i unwind label %bb.p, !noalias !2767

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.n unwind label %bb.l, !noalias !2767

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !2772, !noalias !2767 ; 2 uses
  %i.bc = icmp eq i64 %.val2.i.i1.i.i.i, 0
  br i1 %i.bc, label %common.resume.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %.val3.i.i2.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !2773, !noalias !2767, !nonnull !4, !noundef !4
  %i.be = shl nuw i64 %.val2.i.i1.i.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2774
  br label %common.resume.i.i.i

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %.val.i.i3.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !2772, !noalias !2767 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i3.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %.val1.i.i4.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2773, !noalias !2767, !nonnull !4, !noundef !4
  %i.bh = shl nuw i64 %.val.i.i3.i.i.i, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2775
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i

common.resume.i.i.i:                              ; preds = %bb.m, %bb.l, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.bb, %bb.m ], [ %i.au, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.p:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2767
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i: ; preds = %bb.o, %bb.n
  %i.bj = icmp eq i64 %i.as, 0
  br i1 %i.bj, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1T_.exit.i.i.i.i.i.i.i.i.i, label %bb.g

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1T_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_.exit.i.i, %bb.e
  %i.bk = mul i64 %i.y, 48                        ; 2 uses
  %i.bl = add i64 %i.bk, 48                       ; 2 uses
  %i.bm = add i64 %i.y, 17
  %i.bn = add i64 %i.bm, %i.bl                    ; 4 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl
  %i.bp = icmp ult i64 %i.bn, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB23_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1T_.exit.i.i.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %i.w, align 8, !alias.scope !2762, !noalias !2752, !nonnull !4, !noundef !4
  %i.bs = sub i64 -48, %i.bk
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !2776
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB23_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB23_.exit.i.i: ; preds = %bb.q, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1T_.exit.i.i.i.i.i.i.i.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE9next_implKb0_EB2m_.exit.i.i
  %i.bu = icmp eq i64 %i.v, 0
  br i1 %i.bu, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB2B_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB2B_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB23_.exit.i.i, %bb.b
  %i.bv = mul i64 %i.b, 72
  %i.bw = icmp slt i64 %i.b, 256204778801521550
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = and i64 %i.bv, -16                      ; 2 uses
  %i.by = add i64 %i.bx, 80                       ; 2 uses
  %i.bz = add nsw i64 %i.b, 17
  %i.ca = add i64 %i.bz, %i.by                    ; 4 uses
  %i.cb = icmp uge i64 %i.ca, %i.by
  %i.cc = icmp ult i64 %i.ca, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cb)
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB1Z_5alloc6GlobalEB2E_.exit, label %bb.r

bb.r:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB2B_.exit.i
  %i.ce = load ptr, ptr %0, align 8, !alias.scope !2750, !nonnull !4, !noundef !4
  %i.cf = sub i64 -80, %i.bx
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !2750
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB1Z_5alloc6GlobalEB2E_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtNtB1Z_5alloc6GlobalEB2E_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEB2B_.exit.i, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2779
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2782
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2785
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 49
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2788
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 72
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 97
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -80, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2791
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 12
  %i.h = add i64 %i.g, 24
  %i.i = and i64 %i.h, -16                        ; 2 uses
  %i.j = add i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.m, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.c
  %i.q = getelementptr i8, ptr %i.p, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.r, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.o, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2794
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcmEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2797
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 4611686018427387900
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %i.c, 2
  %i.i = and i64 %i.h, -16                        ; 2 uses
  %i.j = add nsw i64 %i.c, 33
  %i.k = add i64 %i.j, %i.i
  %i.l = sub nuw nsw i64 -16, %i.i
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.m, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.c
  %i.q = getelementptr i8, ptr %i.p, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.r, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.o, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThcEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2800
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThcEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThcEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThcEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtNtNtBX_4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2803
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 49
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !2806
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEE15into_allocationCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation15TruncationErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionBG_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation15TruncationErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !range !26, !alias.scope !2815, !noundef !4
  %i.c = icmp eq i8 %i.b, -40
  br i1 %i.c, label %bb.b, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBZ_3vec3VecBV_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1w_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBG_3vec3VecBC_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1w_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1C_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2828 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.b, label %.body.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2829, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2830
  br label %.body.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2828 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0B1z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2829, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2831
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0B1z_.exit

.body.i.i:                                        ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.f) #33
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.g:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0B1z_.exit: ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.h)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1w_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB1E_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringdEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_dNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2844 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2845, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2846
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2844 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_dNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2845, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2847
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_dNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_dNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2860 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2861, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2862
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2860 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2861, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !2863
  br label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0Es_0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_mNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
