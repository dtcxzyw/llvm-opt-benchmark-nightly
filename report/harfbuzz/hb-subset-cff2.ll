Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %.not.i126.i664 = icmp eq i32 %i.bau, 0
  br i1 %.not.i126.i664, label %.thread, label %bb.is, !prof !97

bb.ir:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %i.bav = add i32 %.lcssa1753, 3
  %i.baw = add i32 %.lcssa1753, 1
  %i.bax = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.baw, i1 false)
  %i.bay = sub nuw nsw i32 39, %i.bax
  %i.baz = lshr i32 %i.bay, 3
  %i.bba = add nuw i32 %i.wo, 1
  %i.bbb = mul i32 %i.baz, %i.bba
  %i.bbc = add i32 %i.bav, %i.bbb                 ; 2 uses
  %i.bbd = zext nneg i32 %i.bbc to i64
  %i.bbe = icmp slt i32 %i.bbc, 0
  br i1 %i.bbe, label %.critedge.i128.i, label %.thread, !prof !156

.thread:                                          ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread, %bb.ir
  %.sroa.0.0.ph466484.i665678 = phi i32 [ %i.ws, %bb.ir ], [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ] ; 3 uses
  %.sroa.21.0.ph468483.i668676 = phi ptr [ %i.wx, %bb.ir ], [ null, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ] ; 8 uses
  %.0.i124.i671675 = phi i64 [ %i.bbd, %bb.ir ], [ 2, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ] ; 2 uses
  %i.bbf = phi ptr [ %i.bar, %bb.ir ], [ %i.bat, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ] ; 4 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !170 ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !171 ; 2 uses
  %i.bbk = ptrtoint ptr %i.bbh to i64
  %i.bbl = ptrtoint ptr %i.bbj to i64
  %i.bbm = sub i64 %i.bbk, %i.bbl
  %i.bbn = icmp slt i64 %i.bbm, %.0.i124.i671675
  br i1 %i.bbn, label %.critedge.i128.i, label %bb.it, !prof !99

.critedge.i128.i:                                 ; preds = %.thread, %bb.ir
  %.sroa.0.0.ph466484.i665679 = phi i32 [ %.sroa.0.0.ph466484.i665678, %.thread ], [ %i.ws, %bb.ir ]
  %.sroa.21.0.ph468483.i668677 = phi ptr [ %.sroa.21.0.ph468483.i668676, %.thread ], [ %i.wx, %bb.ir ]
  %i.bbo = phi ptr [ %i.bbf, %.thread ], [ %i.bar, %bb.ir ]
  store i32 4, ptr %i.bbo, align 4, !tbaa !169
  br label %bb.is

bb.is:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread, %.critedge.i128.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %.sroa.21.0.ph468483.i670 = phi ptr [ null, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ], [ %.sroa.21.0.ph468483.i668677, %.critedge.i128.i ], [ %i.wx, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ]
  %.sroa.0.0.ph466484.i667 = phi i32 [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.thread ], [ %.sroa.0.0.ph466484.i665679, %.critedge.i128.i ], [ %i.ws, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ]
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.je

bb.it:                                            ; preds = %.thread
  %i.bbp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bbj, ptr %i.bbp, align 8, !tbaa !172
  %i.bbq = sub nsw i64 0, %.0.i124.i671675
  %i.bbr = getelementptr inbounds i8, ptr %i.bbh, i64 %i.bbq ; 4 uses
  store ptr %i.bbr, ptr %i.bbi, align 8, !tbaa !171
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !173 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8
  store ptr %i.bbr, ptr %i.bbu, align 8, !tbaa !177
  store ptr %i.bbr, ptr %i.bbt, align 8, !tbaa !178
  br i1 %.not.i142.not.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.it
  %.sroa.2.8.insert.ext.i.i.i.i.i.i.i = zext nneg i32 %i.wo to i64 ; 3 uses
  %i.bbv = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i.i, 1152921504606846975
  %i.bbw = and i64 %i.bbv, 1152921504606846975    ; 2 uses
  %i.bbx = add nuw nsw i64 %i.bbw, 1              ; 2 uses
  %xtraiter1867 = and i64 %i.bbx, 7               ; 3 uses
  %i.bby = icmp samesign ult i64 %i.bbw, 7
  br i1 %i.bby, label %.lr.ph.i.i129.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter1872 = and i64 %i.bbx, 2305843009213693944
  br label %.lr.ph.i.i129.i

.lr.ph.i.i129.i:                                  ; preds = %.lr.ph.i.i129.i, %.lr.ph.preheader.i.i.i.new
  %.01644.i.i.i = phi ptr [ %.sroa.21.0.ph468483.i668676, %.lr.ph.preheader.i.i.i.new ], [ %i.bcp, %.lr.ph.i.i129.i ] ; 9 uses
  %.01743.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.bco, %.lr.ph.i.i129.i ]
  %niter1873 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter1873.next.7, %.lr.ph.i.i129.i ]
  %i.bbz = getelementptr i8, ptr %.01644.i.i.i, i64 4
  %.016.val.i.i.i = load i32, ptr %i.bbz, align 4, !tbaa !132
  %i.bca = add i32 %.016.val.i.i.i, %.01743.i.i.i
  %i.bcb = getelementptr i8, ptr %.01644.i.i.i, i64 20
  %.016.val.i.i.i.1 = load i32, ptr %i.bcb, align 4, !tbaa !132
  %i.bcc = add i32 %.016.val.i.i.i.1, %i.bca
  %i.bcd = getelementptr i8, ptr %.01644.i.i.i, i64 36
  %.016.val.i.i.i.2 = load i32, ptr %i.bcd, align 4, !tbaa !132
  %i.bce = add i32 %.016.val.i.i.i.2, %i.bcc
  %i.bcf = getelementptr i8, ptr %.01644.i.i.i, i64 52
  %.016.val.i.i.i.3 = load i32, ptr %i.bcf, align 4, !tbaa !132
  %i.bcg = add i32 %.016.val.i.i.i.3, %i.bce
  %i.bch = getelementptr i8, ptr %.01644.i.i.i, i64 68
  %.016.val.i.i.i.4 = load i32, ptr %i.bch, align 4, !tbaa !132
  %i.bci = add i32 %.016.val.i.i.i.4, %i.bcg
  %i.bcj = getelementptr i8, ptr %.01644.i.i.i, i64 84
  %.016.val.i.i.i.5 = load i32, ptr %i.bcj, align 4, !tbaa !132
  %i.bck = add i32 %.016.val.i.i.i.5, %i.bci
  %i.bcl = getelementptr i8, ptr %.01644.i.i.i, i64 100
  %.016.val.i.i.i.6 = load i32, ptr %i.bcl, align 4, !tbaa !132
  %i.bcm = add i32 %.016.val.i.i.i.6, %i.bck
  %i.bcn = getelementptr i8, ptr %.01644.i.i.i, i64 116
  %.016.val.i.i.i.7 = load i32, ptr %i.bcn, align 4, !tbaa !132
  %i.bco = add i32 %.016.val.i.i.i.7, %i.bcm      ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %.01644.i.i.i, i64 128 ; 2 uses
  %niter1873.next.7 = add i64 %niter1873, 8       ; 2 uses
  %niter1873.ncmp.7 = icmp eq i64 %niter1873.next.7, %unroll_iter1872
  br i1 %niter1873.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i129.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i129.i
  %lcmp.mod1869.not = icmp eq i64 %xtraiter1867, 0
  br i1 %lcmp.mod1869.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i, label %.lr.ph.i.i129.i.epil.preheader

.lr.ph.i.i129.i.epil.preheader:                   ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.01644.i.i.i.epil.init = phi ptr [ %.sroa.21.0.ph468483.i668676, %.lr.ph.preheader.i.i.i ], [ %i.bcp, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa ]
  %.01743.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bco, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1871 = icmp ne i64 %xtraiter1867, 0
  call void @llvm.assume(i1 %lcmp.mod1871)
  br label %.lr.ph.i.i129.i.epil

.lr.ph.i.i129.i.epil:                             ; preds = %.lr.ph.i.i129.i.epil, %.lr.ph.i.i129.i.epil.preheader
  %.01644.i.i.i.epil = phi ptr [ %i.bcs, %.lr.ph.i.i129.i.epil ], [ %.01644.i.i.i.epil.init, %.lr.ph.i.i129.i.epil.preheader ] ; 2 uses
  %.01743.i.i.i.epil = phi i32 [ %i.bcr, %.lr.ph.i.i129.i.epil ], [ %.01743.i.i.i.epil.init, %.lr.ph.i.i129.i.epil.preheader ]
  %epil.iter1868 = phi i64 [ %epil.iter1868.next, %.lr.ph.i.i129.i.epil ], [ 0, %.lr.ph.i.i129.i.epil.preheader ]
  %i.bcq = getelementptr i8, ptr %.01644.i.i.i.epil, i64 4
  %.016.val.i.i.i.epil = load i32, ptr %i.bcq, align 4, !tbaa !132
  %i.bcr = add i32 %.016.val.i.i.i.epil, %.01743.i.i.i.epil ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.01644.i.i.i.epil, i64 16
  %epil.iter1868.next = add i64 %epil.iter1868, 1 ; 2 uses
  %epil.iter1868.cmp.not = icmp eq i64 %epil.iter1868.next, %xtraiter1867
  br i1 %epil.iter1868.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i, label %.lr.ph.i.i129.i.epil, !llvm.loop !700

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i129.i.epil, %bb.it
  %.sroa.2.8.insert.ext.i.i.i.i.i131.pre-phi.i = phi i64 [ 0, %bb.it ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i.i, %.lr.ph.i.i129.i.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.066.i.i = phi i32 [ 0, %bb.it ], [ %i.bco, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i.loopexit.unr-lcssa ], [ %i.bcr, %.lr.ph.i.i129.i.epil ] ; 4 uses
  %i.bct = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.bbr, ptr noundef nonnull %0, ptr %.sroa.21.0.ph468483.i668676, i64 %.sroa.2.8.insert.ext.i.i.i.i.i131.pre-phi.i, i32 noundef %.066.i.i, i32 noundef 0)
  br i1 %i.bct, label %bb.iu, label %bb.jd, !prof !97

bb.iu:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i
  %i.bcu = zext i32 %.066.i.i to i64              ; 2 uses
  %i.bcv = load i32, ptr %i.bbf, align 4, !tbaa !169
  %.not.i.i132.i = icmp eq i32 %i.bcv, 0
  br i1 %.not.i.i132.i, label %bb.iv, label %bb.jd, !prof !97

bb.iv:                                            ; preds = %bb.iu
  %i.bcw = icmp slt i32 %.066.i.i, 0
  br i1 %i.bcw, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.iw, !prof !99

bb.iw:                                            ; preds = %bb.iv
  %i.bcx = load ptr, ptr %i.bbg, align 8, !tbaa !170
  %i.bcy = load ptr, ptr %i.bbi, align 8, !tbaa !171 ; 4 uses
  %i.bcz = ptrtoint ptr %i.bcx to i64
  %i.bda = ptrtoint ptr %i.bcy to i64
  %i.bdb = sub i64 %i.bcz, %i.bda
  %i.bdc = icmp slt i64 %i.bdb, %i.bcu
  br i1 %i.bdc, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i: ; preds = %bb.iw
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcy, i64 %i.bcu
  store ptr %i.bdd, ptr %i.bbi, align 8, !tbaa !171
  %.not43.i.i = icmp eq ptr %i.bcy, null
  br i1 %.not43.i.i, label %bb.jd, label %bb.ix, !prof !143

bb.ix:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i
  %.idx.i133.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i131.pre-phi.i, 4
  %i.bde = getelementptr inbounds nuw i8, ptr %.sroa.21.0.ph468483.i668676, i64 %.idx.i133.i
  br i1 %.not.i142.not.i, label %.thread1409, label %.lr.ph.i134.i

.lr.ph.i134.i:                                    ; preds = %bb.ix, %bb.jc
  %.082.i.i = phi ptr [ %i.bdr, %bb.jc ], [ %.sroa.21.0.ph468483.i668676, %bb.ix ] ; 3 uses
  %.03481.i.i = phi i32 [ %.1.ph.i.i, %bb.jc ], [ %.066.i.i, %bb.ix ] ; 3 uses
  %.03580.i.i = phi ptr [ %.136.ph.i.i, %bb.jc ], [ %i.bcy, %bb.ix ] ; 5 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 4
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !132 ; 5 uses
  %.not45.i.i = icmp eq i32 %i.bdg, 0
  br i1 %.not45.i.i, label %bb.jc, label %bb.iy

bb.iy:                                            ; preds = %.lr.ph.i134.i
  %i.bdh = icmp ugt i32 %i.bdg, %.03481.i.i
  br i1 %i.bdh, label %bb.iz, label %bb.ja, !prof !99

bb.iz:                                            ; preds = %bb.iy
  %i.bdi = load i32, ptr %i.bbf, align 4, !tbaa !169
  %.not.i.i53.not.i.i = icmp eq i32 %i.bdi, 0
  br i1 %.not.i.i53.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.jd, !prof !153

bb.ja:                                            ; preds = %bb.iy
  %i.bdj = sub nuw nsw i32 %.03481.i.i, %i.bdg    ; 2 uses
  %i.bdk = icmp eq i32 %i.bdg, 1
  %i.bdl = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 8
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !133 ; 2 uses
  br i1 %i.bdk, label %bb.jb, label %_ZL9hb_memcpyPvPKvm.exit.i.i

bb.jb:                                            ; preds = %bb.ja
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !148
  %i.bdo = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 1
  store i8 %i.bdn, ptr %.03580.i.i, align 1, !tbaa !148
  br label %bb.jc

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.ja
  %i.bdp = zext nneg i32 %i.bdg to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i.i, ptr readonly align 1 %i.bdm, i64 %i.bdp, i1 false), !alias.scope !780
  %i.bdq = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 %i.bdp
  br label %bb.jc

bb.jc:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.jb, %.lr.ph.i134.i
  %.136.ph.i.i = phi ptr [ %i.bdq, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.bdo, %bb.jb ], [ %.03580.i.i, %.lr.ph.i134.i ]
  %.1.ph.i.i = phi i32 [ %i.bdj, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.bdj, %bb.jb ], [ %.03481.i.i, %.lr.ph.i134.i ]
  %i.bdr = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.bdr, %i.bde
  br i1 %.not44.i.i, label %.thread1409, label %.lr.ph.i134.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i: ; preds = %bb.iz, %bb.iw, %bb.iv
  %.sink.i.i = phi i32 [ 4, %bb.iv ], [ 4, %bb.iw ], [ 8, %bb.iz ]
  store i32 %.sink.i.i, ptr %i.bbf, align 4, !tbaa !169
  br label %bb.jd

bb.jd:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, %bb.iz, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, %bb.iu, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.is, %.critedge50.i
  %.sroa.21.0240.i = phi ptr [ %.sroa.21.0.ph468483.i670, %bb.is ], [ %i.wx, %.critedge50.i ], [ %.sroa.21.0.ph468483.i668676, %bb.jd ]
  %.sroa.0.0233.i = phi i32 [ %.sroa.0.0.ph466484.i667, %bb.is ], [ %i.ws, %.critedge50.i ], [ %.sroa.0.0.ph466484.i665678, %bb.jd ]
  %i.bds = add nsw i32 %.sroa.0.0233.i, -1
  %spec.select.i.i.i.i235 = icmp ult i32 %i.bds, -2
  br i1 %spec.select.i.i.i.i235, label %bb.jf, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

.thread1409:                                      ; preds = %bb.jc, %bb.ix
  %i.bdt = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false)
  %i.bdu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bdt, ptr %i.bdu, align 8, !tbaa !179
  %i.bdv = add nsw i32 %.sroa.0.0.ph466484.i665678, -1
  %spec.select.i.i.i.i2351413 = icmp ult i32 %i.bdv, -2
  br i1 %spec.select.i.i.i.i2351413, label %bb.jf, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417

_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %.thread.i144.i, %_ZN11hb_vector_tIS_IhLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.jf:                                            ; preds = %.thread1409, %bb.je
  %.7.i1415 = phi i1 [ true, %.thread1409 ], [ false, %bb.je ]
  %.sroa.21.0240.i1414 = phi ptr [ %.sroa.21.0.ph468483.i668676, %.thread1409 ], [ %.sroa.21.0240.i, %bb.je ] ; 2 uses
  br i1 %.not.i142.not.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i135.i

.lr.ph.preheader.i.i.i135.i:                      ; preds = %bb.jf
  %i.bdw = zext nneg i32 %i.wo to i64
  %i.bdx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.21.0240.i1414, i64 %i.bdw
  br label %.lr.ph.i.i.i136.i

.lr.ph.i.i.i136.i:                                ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i, %.lr.ph.preheader.i.i.i135.i
  %.07.i.i.i137.i = phi ptr [ %i.bdz, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i ], [ %i.bdx, %.lr.ph.preheader.i.i.i135.i ] ; 3 uses
  %.046.i.i.i138.i = phi i32 [ %i.bdy, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i ], [ %i.wo, %.lr.ph.preheader.i.i.i135.i ]
  %i.bdy = add nsw i32 %.046.i.i.i138.i, -1       ; 2 uses
  %i.bdz = getelementptr inbounds i8, ptr %.07.i.i.i137.i, i64 -16 ; 2 uses
  %i.bea = load i32, ptr %i.bdz, align 8, !tbaa !131
  %i.beb = add i32 %i.bea, -1
  %spec.select.i.i.i.i.i.i139.i = icmp ult i32 %i.beb, -2
  br i1 %spec.select.i.i.i.i.i.i139.i, label %bb.jg, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i

bb.jg:                                            ; preds = %.lr.ph.i.i.i136.i
  %i.bec = getelementptr inbounds i8, ptr %.07.i.i.i137.i, i64 -12
  store i32 0, ptr %i.bec, align 4, !tbaa !132
  %i.bed = getelementptr inbounds i8, ptr %.07.i.i.i137.i, i64 -8
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !133
  call void @hb_free(ptr noundef %i.bee) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i:      ; preds = %bb.jg, %.lr.ph.i.i.i136.i
  %.not.i.i.i141.i = icmp eq i32 %i.bdy, 0
  br i1 %.not.i.i.i141.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i136.i, !llvm.loop !7

_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i140.i, %bb.jf
  call void @hb_free(ptr noundef %.sroa.21.0240.i1414) #16
  br i1 %.7.i1415, label %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1417, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.jh:                                            ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %storemerge939 = phi i32 [ 0, %.lr.ph ], [ %i.bgq, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 5 uses
  %.sroa.0605.0938 = phi i32 [ %.sroa.0605.11394, %.lr.ph ], [ %.sroa.0605.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 10 uses
  %.sroa.11.0936 = phi i32 [ 0, %.lr.ph ], [ %.sroa.11.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %.sroa.18.0935 = phi ptr [ %.sroa.18.21393, %.lr.ph ], [ %.sroa.18.4, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %i.bef = load ptr, ptr %i.w, align 8, !tbaa !116 ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 40
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !759 ; 5 uses
  %.not.i250 = icmp eq ptr %i.beh, null
  br i1 %.not.i250, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bei = mul i32 %storemerge939, 506952113
  %i.bej = and i32 %i.bei, 1073741823
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bef, i64 32
  %i.bel = load i32, ptr %i.bek, align 8, !tbaa !760
  %i.bem = urem i32 %i.bej, %i.bel                ; 3 uses
  %i.ben = zext nneg i32 %i.bem to i64            ; 2 uses
  %i.beo = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.ben ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 4
  %i.beq = load i32, ptr %i.bep, align 4          ; 3 uses
  %i.ber = and i32 %i.beq, 2
  %.not15.i.i.i = icmp eq i32 %i.ber, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i252

.lr.ph.i.i.i252:                                  ; preds = %bb.ji
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bef, i64 28
  %i.bet = load i32, ptr %i.bes, align 4          ; 2 uses
  %i.beu = load i32, ptr %i.beo, align 4, !tbaa !101
  %i.bev = icmp eq i32 %i.beu, %storemerge939
  br i1 %i.bev, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419, label %.lr.ph.i.i253

bb.jj:                                            ; preds = %.lr.ph.i.i253
  %i.bew = load i32, ptr %i.bfc, align 4, !tbaa !101
  %i.bex = icmp eq i32 %i.bew, %storemerge939
  br i1 %i.bex, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, label %.lr.ph.i.i253, !llvm.loop !655

.lr.ph.i.i253:                                    ; preds = %.lr.ph.i.i.i252, %bb.jj
  %.01016.i20.i.i = phi i32 [ %i.bfa, %bb.jj ], [ %i.bem, %.lr.ph.i.i.i252 ]
  %.017.i19.i.i = phi i32 [ %i.bey, %bb.jj ], [ 0, %.lr.ph.i.i.i252 ]
  %i.bey = add i32 %.017.i19.i.i, 1               ; 2 uses
  %i.bez = add i32 %i.bey, %.01016.i20.i.i
  %i.bfa = and i32 %i.bez, %i.bet                 ; 2 uses
  %i.bfb = zext i32 %i.bfa to i64
  %i.bfc = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfb ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 4
  %i.bfe = load i32, ptr %i.bfd, align 4          ; 2 uses
  %i.bff = and i32 %i.bfe, 2
  %.not.i.i.i254 = icmp eq i32 %i.bff, 0
  br i1 %.not.i.i.i254, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread, label %bb.jj, !llvm.loop !655

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit: ; preds = %bb.jj
  %i.bfg = trunc i32 %i.bfe to i1
  br i1 %i.bfg, label %.lr.ph.i.i259, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419: ; preds = %.lr.ph.i.i.i252
  %i.bfh = trunc i32 %i.beq to i1
  br i1 %i.bfh, label %._crit_edge.i.i261, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

bb.jk:                                            ; preds = %.lr.ph.i.i259
  %i.bfi = load i32, ptr %i.bfs, align 4, !tbaa !101
  %i.bfj = icmp eq i32 %i.bfi, %storemerge939
  br i1 %i.bfj, label %._crit_edge.i.i261, label %.lr.ph.i.i259, !llvm.loop !655

._crit_edge.i.i261:                               ; preds = %bb.jk, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419
  %.lcssa10.i.i = phi i32 [ %i.beq, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ %i.bfu, %bb.jk ]
  %i.bfk = phi i64 [ %i.ben, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ %i.bfr, %bb.jk ]
  %i.bfl = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfk
  %i.bfm = trunc i32 %.lcssa10.i.i to i1
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %spec.select.i.i = select i1 %i.bfm, ptr %i.bfn, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit

.lr.ph.i.i259:                                    ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit, %bb.jk
  %.01016.i13.i.i = phi i32 [ %i.bfq, %bb.jk ], [ %i.bem, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.bfo, %bb.jk ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ]
  %i.bfo = add i32 %.017.i12.i.i, 1               ; 2 uses
  %i.bfp = add i32 %i.bfo, %.01016.i13.i.i
  %i.bfq = and i32 %i.bfp, %i.bet                 ; 2 uses
  %i.bfr = zext i32 %i.bfq to i64                 ; 2 uses
  %i.bfs = getelementptr inbounds nuw [16 x i8], ptr %i.beh, i64 %i.bfr ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 4
  %i.bfu = load i32, ptr %i.bft, align 4          ; 2 uses
  %i.bfv = and i32 %i.bfu, 2
  %.not.i.i.i260 = icmp eq i32 %i.bfv, 0
  br i1 %.not.i.i.i260, label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, label %bb.jk, !llvm.loop !655

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i259, %._crit_edge.i.i261
  %.0.i262 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i261 ], [ @_hb_NullPool, %.lr.ph.i.i259 ]
  %i.bfw = load i32, ptr %.0.i262, align 4, !tbaa !762
  br label %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i253, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419, %bb.ji, %bb.jh, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit
  %.0658 = phi i32 [ %i.bfw, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3getERKj.exit ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit ], [ 0, %bb.jh ], [ 0, %bb.ji ], [ 0, %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread1419 ], [ 0, %.lr.ph.i.i253 ]
  %.not.i263 = icmp slt i32 %.sroa.11.0936, %.sroa.0605.0938
  %.pre1092 = add i32 %.sroa.11.0936, 1           ; 6 uses
  br i1 %.not.i263, label %.critedge.i266, label %bb.jl

bb.jl:                                            ; preds = %_ZNK12hb_hashmap_tIj9hb_pair_tIjiELb0EE3hasIS1_EEbRKjPPT_.exit.thread
  %i.bfx = icmp slt i32 %.sroa.0605.0938, 0
  br i1 %i.bfx, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483, label %bb.jm, !prof !99

bb.jm:                                            ; preds = %bb.jl
  %.not.i463 = icmp ugt i32 %.pre1092, %.sroa.0605.0938
  br i1 %.not.i463, label %.preheader.i465, label %.critedge.i266, !prof !99

.preheader.i465:                                  ; preds = %bb.jm, %.preheader.i465
  %.043.i466 = phi i32 [ %i.bga, %.preheader.i465 ], [ %.sroa.0605.0938, %bb.jm ] ; 2 uses
  %i.bfy = lshr i32 %.043.i466, 1
  %i.bfz = add i32 %.043.i466, 8
  %i.bga = add i32 %i.bfz, %i.bfy                 ; 8 uses
  %i.bgb = icmp ugt i32 %.pre1092, %i.bga
  br i1 %i.bgb, label %.preheader.i465, label %.thread.i467, !llvm.loop !0

.thread.i467:                                     ; preds = %.preheader.i465
  %i.bgc = icmp ugt i32 %i.bga, 1073741823
  br i1 %i.bgc, label %.critedge.i482, label %bb.jn, !prof !99

.critedge.i482:                                   ; preds = %.thread.i467
  %i.bgd = xor i32 %.sroa.0605.0938, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit483

bb.jn:                                            ; preds = %.thread.i467
  %.not49.i469 = icmp eq i32 %.sroa.0605.0938, 0
  br i1 %.not49.i469, label %bb.jo, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470

bb.jo:                                            ; preds = %bb.jn
  %.not9.i.i.i479 = icmp eq ptr %.sroa.18.0935, null
  br i1 %.not9.i.i.i479, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i470, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bge = shl nuw i32 %i.bga, 2
end_hunk_0
begin_hunk_1_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %.lcssa17.i.i.i = phi i32 [ %i.biw, %.lr.ph.i.i.i.i270 ], [ %i.bjl, %bb.jx ]
  %i.bjn = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.bjn, label %bb.jy, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.jy:                                            ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.bjo = load i32, ptr %i.bhm, align 4, !tbaa !205
  %i.bjp = zext i32 %i.bjo to i64
  %.not.i275 = icmp samesign ult i64 %indvars.iv.next, %i.bjp
  br i1 %.not.i275, label %bb.ka, label %bb.jz, !prof !97

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.ka:                                            ; preds = %bb.jy
  %i.bjq = load ptr, ptr %i.bhn, align 8, !tbaa !206
  %i.bjr = getelementptr inbounds nuw [16 x i8], ptr %i.bjq, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.jz, %bb.ka
  %.0.i276 = phi ptr [ @_hb_CrapPool, %bb.jz ], [ %i.bjr, %bb.ka ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0.i276, i64 4
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !154
  %.not = icmp eq i32 %i.bjt, 0
  br i1 %.not, label %bb.kn, label %bb.kb

bb.kb:                                            ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.bju = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bjv = load i32, ptr %i.bhm, align 4, !tbaa !205
  %i.bjw = zext i32 %i.bjv to i64
  %.not.i277 = icmp samesign ult i64 %indvars.iv.next, %i.bjw
  br i1 %.not.i277, label %bb.kd, label %bb.kc, !prof !97

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279

bb.kd:                                            ; preds = %bb.kb
  %i.bjx = load ptr, ptr %i.bhn, align 8, !tbaa !206
  %i.bjy = getelementptr inbounds nuw [16 x i8], ptr %i.bjx, i64 %indvars.iv.next
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279: ; preds = %bb.kc, %bb.kd
  %.0.i278 = phi ptr [ @_hb_CrapPool, %bb.kc ], [ %i.bjy, %bb.kd ] ; 3 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0.i278, i64 4
  %.val.i.i = load i32, ptr %i.bjz, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i280 = icmp eq i32 %.val.i.i, 0       ; 2 uses
  br i1 %.not41.i.i280, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge, label %.lr.ph.preheader.i.i281

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i278, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289

.lr.ph.preheader.i.i281:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279
  %.sroa.2.8.insert.ext.i.i.i.i.i.i282 = zext i32 %.val.i.i to i64 ; 3 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %.0.i278, i64 8
  %.val21.i.i = load ptr, ptr %i.bka, align 8, !tbaa !155 ; 4 uses
  %i.bkb = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i282, 1152921504606846975
  %i.bkc = and i64 %i.bkb, 1152921504606846975    ; 2 uses
  %i.bkd = add nuw nsw i64 %i.bkc, 1              ; 2 uses
  %xtraiter1874 = and i64 %i.bkd, 7               ; 3 uses
  %i.bke = icmp samesign ult i64 %i.bkc, 7
  br i1 %i.bke, label %.lr.ph.i.i284.epil.preheader, label %.lr.ph.preheader.i.i281.new

.lr.ph.preheader.i.i281.new:                      ; preds = %.lr.ph.preheader.i.i281
  %unroll_iter1879 = and i64 %i.bkd, 2305843009213693944
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.lr.ph.i.i284, %.lr.ph.preheader.i.i281.new
  %.01644.i.i285 = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i281.new ], [ %i.bkv, %.lr.ph.i.i284 ] ; 9 uses
  %.01743.i.i286 = phi i32 [ 0, %.lr.ph.preheader.i.i281.new ], [ %i.bku, %.lr.ph.i.i284 ]
  %niter1880 = phi i64 [ 0, %.lr.ph.preheader.i.i281.new ], [ %niter1880.next.7, %.lr.ph.i.i284 ]
  %i.bkf = getelementptr i8, ptr %.01644.i.i285, i64 4
  %.016.val.i.i287 = load i32, ptr %i.bkf, align 4, !tbaa !132
  %i.bkg = add i32 %.016.val.i.i287, %.01743.i.i286
  %i.bkh = getelementptr i8, ptr %.01644.i.i285, i64 20
  %.016.val.i.i287.1 = load i32, ptr %i.bkh, align 4, !tbaa !132
  %i.bki = add i32 %.016.val.i.i287.1, %i.bkg
  %i.bkj = getelementptr i8, ptr %.01644.i.i285, i64 36
  %.016.val.i.i287.2 = load i32, ptr %i.bkj, align 4, !tbaa !132
  %i.bkk = add i32 %.016.val.i.i287.2, %i.bki
  %i.bkl = getelementptr i8, ptr %.01644.i.i285, i64 52
  %.016.val.i.i287.3 = load i32, ptr %i.bkl, align 4, !tbaa !132
  %i.bkm = add i32 %.016.val.i.i287.3, %i.bkk
  %i.bkn = getelementptr i8, ptr %.01644.i.i285, i64 68
  %.016.val.i.i287.4 = load i32, ptr %i.bkn, align 4, !tbaa !132
  %i.bko = add i32 %.016.val.i.i287.4, %i.bkm
  %i.bkp = getelementptr i8, ptr %.01644.i.i285, i64 84
  %.016.val.i.i287.5 = load i32, ptr %i.bkp, align 4, !tbaa !132
  %i.bkq = add i32 %.016.val.i.i287.5, %i.bko
  %i.bkr = getelementptr i8, ptr %.01644.i.i285, i64 100
  %.016.val.i.i287.6 = load i32, ptr %i.bkr, align 4, !tbaa !132
  %i.bks = add i32 %.016.val.i.i287.6, %i.bkq
  %i.bkt = getelementptr i8, ptr %.01644.i.i285, i64 116
  %.016.val.i.i287.7 = load i32, ptr %i.bkt, align 4, !tbaa !132
  %i.bku = add i32 %.016.val.i.i287.7, %i.bks     ; 3 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %.01644.i.i285, i64 128 ; 2 uses
  %niter1880.next.7 = add i64 %niter1880, 8       ; 2 uses
  %niter1880.ncmp.7 = icmp eq i64 %niter1880.next.7, %unroll_iter1879
  br i1 %niter1880.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa, label %.lr.ph.i.i284

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i284
  %lcmp.mod1876.not = icmp eq i64 %xtraiter1874, 0
  br i1 %lcmp.mod1876.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289, label %.lr.ph.i.i284.epil.preheader

.lr.ph.i.i284.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa, %.lr.ph.preheader.i.i281
  %.01644.i.i285.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i281 ], [ %i.bkv, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa ]
  %.01743.i.i286.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i281 ], [ %i.bku, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa ]
  %lcmp.mod1878 = icmp ne i64 %xtraiter1874, 0
  call void @llvm.assume(i1 %lcmp.mod1878)
  br label %.lr.ph.i.i284.epil

.lr.ph.i.i284.epil:                               ; preds = %.lr.ph.i.i284.epil, %.lr.ph.i.i284.epil.preheader
  %.01644.i.i285.epil = phi ptr [ %i.bky, %.lr.ph.i.i284.epil ], [ %.01644.i.i285.epil.init, %.lr.ph.i.i284.epil.preheader ] ; 2 uses
  %.01743.i.i286.epil = phi i32 [ %i.bkx, %.lr.ph.i.i284.epil ], [ %.01743.i.i286.epil.init, %.lr.ph.i.i284.epil.preheader ]
  %epil.iter1875 = phi i64 [ %epil.iter1875.next, %.lr.ph.i.i284.epil ], [ 0, %.lr.ph.i.i284.epil.preheader ]
  %i.bkw = getelementptr i8, ptr %.01644.i.i285.epil, i64 4
  %.016.val.i.i287.epil = load i32, ptr %i.bkw, align 4, !tbaa !132
  %i.bkx = add i32 %.016.val.i.i287.epil, %.01743.i.i286.epil ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %.01644.i.i285.epil, i64 16
  %epil.iter1875.next = add i64 %epil.iter1875, 1 ; 2 uses
  %epil.iter1875.cmp.not = icmp eq i64 %epil.iter1875.next, %xtraiter1874
  br i1 %epil.iter1875.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289, label %.lr.ph.i.i284.epil, !llvm.loop !708

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa, %.lr.ph.i.i284.epil, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi = phi i64 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i282, %.lr.ph.i.i284.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i282, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i = phi ptr [ %.val46.i.pre, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge ], [ %.val21.i.i, %.lr.ph.i.i284.epil ], [ %.val21.i.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa ] ; 3 uses
  %.066.i = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit279._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289_crit_edge ], [ %i.bku, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289.loopexit.unr-lcssa ], [ %i.bkx, %.lr.ph.i.i284.epil ] ; 4 uses
  %i.bkz = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.bju, ptr noundef nonnull %0, ptr %.val46.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, i32 noundef %.066.i, i32 noundef 0)
  br i1 %i.bkz, label %bb.ke, label %.thread720, !prof !97

bb.ke:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289
  %i.bla = zext i32 %.066.i to i64                ; 2 uses
  %i.blb = load i32, ptr %i.bho, align 4, !tbaa !169
  %.not.i.i291 = icmp eq i32 %i.blb, 0
  br i1 %.not.i.i291, label %bb.kf, label %.thread720, !prof !97

bb.kf:                                            ; preds = %bb.ke
  %i.blc = icmp slt i32 %.066.i, 0
  br i1 %i.blc, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %bb.kg, !prof !99

bb.kg:                                            ; preds = %bb.kf
  %i.bld = load ptr, ptr %i.bhp, align 8, !tbaa !170
  %i.ble = load ptr, ptr %i.bhq, align 8, !tbaa !171 ; 4 uses
  %i.blf = ptrtoint ptr %i.bld to i64
  %i.blg = ptrtoint ptr %i.ble to i64
  %i.blh = sub i64 %i.blf, %i.blg
  %i.bli = icmp slt i64 %i.blh, %i.bla
  br i1 %i.bli, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i: ; preds = %bb.kg
  %i.blj = getelementptr inbounds nuw i8, ptr %i.ble, i64 %i.bla
  store ptr %i.blj, ptr %i.bhq, align 8, !tbaa !171
  %.not43.i = icmp eq ptr %i.ble, null
  br i1 %.not43.i, label %.thread720, label %bb.kh, !prof !143

bb.kh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i
  %.idx.i292 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, 4
  %i.blk = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %.idx.i292
  br i1 %.not41.i.i280, label %.thread712, label %.lr.ph.i293

.lr.ph.i293:                                      ; preds = %bb.kh, %bb.km
  %.082.i = phi ptr [ %i.blx, %bb.km ], [ %.val46.i, %bb.kh ] ; 3 uses
  %.03481.i = phi i32 [ %.1.ph.i, %bb.km ], [ %.066.i, %bb.kh ] ; 3 uses
  %.03580.i = phi ptr [ %.136.ph.i, %bb.km ], [ %i.ble, %bb.kh ] ; 5 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %.082.i, i64 4
  %i.blm = load i32, ptr %i.bll, align 4, !tbaa !132 ; 5 uses
  %.not45.i294 = icmp eq i32 %i.blm, 0
  br i1 %.not45.i294, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph.i293
  %i.bln = icmp ugt i32 %i.blm, %.03481.i
  br i1 %i.bln, label %bb.kj, label %bb.kk, !prof !99

bb.kj:                                            ; preds = %bb.ki
  %i.blo = load i32, ptr %i.bho, align 4, !tbaa !169
  %.not.i.i53.not.i = icmp eq i32 %i.blo, 0
  br i1 %.not.i.i53.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %.thread720, !prof !153

bb.kk:                                            ; preds = %bb.ki
  %i.blp = sub nuw nsw i32 %.03481.i, %i.blm      ; 2 uses
  %i.blq = icmp eq i32 %i.blm, 1
  %i.blr = getelementptr inbounds nuw i8, ptr %.082.i, i64 8
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !133 ; 2 uses
  br i1 %i.blq, label %bb.kl, label %_ZL9hb_memcpyPvPKvm.exit.i

bb.kl:                                            ; preds = %bb.kk
  %i.blt = load i8, ptr %i.bls, align 1, !tbaa !148
  %i.blu = getelementptr inbounds nuw i8, ptr %.03580.i, i64 1
  store i8 %i.blt, ptr %.03580.i, align 1, !tbaa !148
  br label %bb.km

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.kk
  %i.blv = zext nneg i32 %i.blm to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i, ptr readonly align 1 %i.bls, i64 %i.blv, i1 false), !alias.scope !782
  %i.blw = getelementptr inbounds nuw i8, ptr %.03580.i, i64 %i.blv
  br label %bb.km

bb.km:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i, %bb.kl, %.lr.ph.i293
  %.136.ph.i = phi ptr [ %i.blw, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.blu, %bb.kl ], [ %.03580.i, %.lr.ph.i293 ]
  %.1.ph.i = phi i32 [ %i.blp, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.blp, %bb.kl ], [ %.03481.i, %.lr.ph.i293 ]
  %i.blx = getelementptr inbounds nuw i8, ptr %.082.i, i64 16 ; 2 uses
  %.not44.i = icmp eq ptr %i.blx, %i.blk
  br i1 %.not44.i, label %.thread712, label %.lr.ph.i293

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i: ; preds = %bb.kg, %bb.kf, %bb.kj
  %.sink.i295 = phi i32 [ 8, %bb.kj ], [ 4, %bb.kf ], [ 4, %bb.kg ]
  store i32 %.sink.i295, ptr %i.bho, align 4, !tbaa !169
  br label %.thread720

.thread712:                                       ; preds = %bb.km, %bb.kh
  %i.bly = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false)
  br label %bb.kn

.thread720:                                       ; preds = %bb.ke, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i289, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, %bb.kj, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.kn:                                            ; preds = %.thread712, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %.1660 = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit ], [ %i.bly, %.thread712 ]
  %i.blz = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.bma = load i8, ptr %i.bhr, align 1, !tbaa !207, !range !121, !noundef !122
  %i.bmb = load i8, ptr %i.bhs, align 8, !tbaa !208, !range !121, !noundef !122
  %i.bmc = load i8, ptr %i.bht, align 4, !tbaa !209, !range !121, !noundef !122
  %i.bmd = load ptr, ptr %i.bhu, align 8, !tbaa !210
  %.sroa.0632.0.copyload = load ptr, ptr %i.bhv, align 8
  %.sroa.2633.0.copyload = load i64, ptr %.sroa.2633.0..sroa_idx, align 8
  store i8 %i.bma, ptr %11, align 8, !tbaa !217
  store i8 %i.bmb, ptr %i.bhw, align 1, !tbaa !218
  store i8 %i.bmc, ptr %i.bhx, align 2, !tbaa !219
  store ptr null, ptr %i.bhy, align 8, !tbaa !220
  store i8 0, ptr %i.bhz, align 8, !tbaa !221
  store i32 0, ptr %i.bia, align 4, !tbaa !222
  store i32 0, ptr %i.bib, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bic, i8 0, i64 16, i1 false)
  store ptr %i.bmd, ptr %i.bid, align 8, !tbaa !224
  store ptr %.sroa.0632.0.copyload, ptr %i.bie, align 8
  store i64 %.sroa.2633.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bif, i8 0, i64 24, i1 false)
  %i.bme = load i32, ptr %i.bhg, align 4, !tbaa !225
  %i.bmf = zext i32 %i.bme to i64
  %.not.i296 = icmp ult i64 %indvars.iv.next, %i.bmf
  %i.bmg = load ptr, ptr %i.big, align 8
  %i.bmh = getelementptr inbounds nuw [48 x i8], ptr %i.bmg, i64 %indvars.iv.next
  %.0.i297 = select i1 %.not.i296, ptr %i.bmh, ptr @_hb_NullPool, !prof !97 ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0.i297, i64 12 ; 2 uses
  %i.bmj = load i32, ptr %i.bmi, align 4, !tbaa !226
  %.not12.i = icmp eq i32 %i.bmj, 0
  br i1 %.not12.i, label %.loopexit806, label %.lr.ph.i298

.lr.ph.i298:                                      ; preds = %bb.kn
  %i.bmk = getelementptr inbounds nuw i8, ptr %.0.i297, i64 16
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kp
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i299, 1 ; 2 uses
  %i.bml = load i32, ptr %i.bmi, align 4, !tbaa !226
  %i.bmm = zext i32 %i.bml to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i301, %i.bmm
  br i1 %.not.not.i, label %bb.kp, label %.loopexit806, !llvm.loop !10

bb.kp:                                            ; preds = %bb.ko, %.lr.ph.i298
  %indvars.iv.i299 = phi i64 [ 0, %.lr.ph.i298 ], [ %indvars.iv.next.i301, %bb.ko ] ; 2 uses
  %i.bmn = load ptr, ptr %i.bmk, align 8
  %i.bmo = getelementptr inbounds nuw [16 x i8], ptr %i.bmn, i64 %indvars.iv.i299
  %i.bmp = call noundef zeroext i1 @_ZNK33cff2_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(13) %i.bmo, i32 noundef %.1660)
  br i1 %i.bmp, label %bb.ko, label %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit, !prof !97

.loopexit806:                                     ; preds = %bb.ko, %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %12, ptr %13, align 8, !tbaa !119
  %i.bmq = load i32, ptr %i.wi, align 8, !tbaa !756
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.bmq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 20, ptr %i.b, align 1, !tbaa !148
  %i.bmr = load ptr, ptr %13, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 4 ; 2 uses
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !132 ; 3 uses
  %i.bmu = load i32, ptr %i.bmr, align 8, !tbaa !131
  %i.bmv = icmp slt i32 %i.bmt, %i.bmu
  br i1 %i.bmv, label %bb.kq, label %bb.kr, !prof !97

bb.kq:                                            ; preds = %.loopexit806
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !133
  %i.bmy = add nsw i32 %i.bmt, 1
  store i32 %i.bmy, ptr %i.bms, align 4, !tbaa !132
  %i.bmz = zext i32 %i.bmt to i64
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmx, i64 %i.bmz
  store i8 20, ptr %i.bna, align 1, !tbaa !148
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.kr:                                            ; preds = %.loopexit806
  %i.bnb = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bmr, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

_ZN3CFF13str_encoder_t9encode_opEj.exit:          ; preds = %bb.kq, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bnc = load i32, ptr %i.wh, align 4, !tbaa !757
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.bnc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 21, ptr %i.a, align 1, !tbaa !148
  %i.bnd = load ptr, ptr %13, align 8, !tbaa !150, !nonnull !122, !align !151 ; 4 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 4 ; 2 uses
  %i.bnf = load i32, ptr %i.bne, align 4, !tbaa !132 ; 3 uses
  %i.bng = load i32, ptr %i.bnd, align 8, !tbaa !131
  %i.bnh = icmp slt i32 %i.bnf, %i.bng
  br i1 %i.bnh, label %bb.ks, label %bb.kt, !prof !97

bb.ks:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !133
  %i.bnk = add nsw i32 %i.bnf, 1
  store i32 %i.bnk, ptr %i.bne, align 4, !tbaa !132
  %i.bnl = zext i32 %i.bnf to i64
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnj, i64 %i.bnl
  store i8 21, ptr %i.bnm, align 1, !tbaa !148
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit302

bb.kt:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bnn = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bnd, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit302

_ZN3CFF13str_encoder_t9encode_opEj.exit302:       ; preds = %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bno = load ptr, ptr %13, align 8, !tbaa !150, !nonnull !122, !align !151
  %i.bnp = load i32, ptr %i.bno, align 8, !tbaa !131
  %i.bnq = icmp slt i32 %i.bnp, 0
  br i1 %i.bnq, label %.critedge, label %bb.ku

bb.ku:                                            ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit302
  %i.bnr = load ptr, ptr %i.bih, align 8, !tbaa !133
  %i.bns = load i32, ptr %i.bii, align 4, !tbaa !132 ; 3 uses
  %i.bnt = zext i32 %i.bns to i64                 ; 3 uses
  %i.bnu = load i32, ptr %i.bho, align 4, !tbaa !169
  %.not.i.i303 = icmp eq i32 %i.bnu, 0
  br i1 %.not.i.i303, label %bb.kv, label %.critedge, !prof !97

bb.kv:                                            ; preds = %bb.ku
  %i.bnv = icmp slt i32 %i.bns, 0
  br i1 %i.bnv, label %.critedge.i.i307, label %bb.kw, !prof !99

bb.kw:                                            ; preds = %bb.kv
  %i.bnw = load ptr, ptr %i.bhp, align 8, !tbaa !170
  %i.bnx = load ptr, ptr %i.bhq, align 8, !tbaa !171 ; 4 uses
  %i.bny = ptrtoint ptr %i.bnw to i64
  %i.bnz = ptrtoint ptr %i.bnx to i64
  %i.boa = sub i64 %i.bny, %i.bnz
  %i.bob = icmp slt i64 %i.boa, %i.bnt
  br i1 %i.bob, label %.critedge.i.i307, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i, !prof !99

.critedge.i.i307:                                 ; preds = %bb.kw, %bb.kv
  store i32 4, ptr %i.bho, align 4, !tbaa !169
  br label %.critedge

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i: ; preds = %bb.kw
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.bnt
  store ptr %i.boc, ptr %i.bhq, align 8, !tbaa !171
  %.not.i306 = icmp eq ptr %i.bnx, null
  br i1 %.not.i306, label %.critedge, label %bb.kx, !prof !143

bb.kx:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i
  %.not.i7.i = icmp eq i32 %i.bns, 0
  br i1 %.not.i7.i, label %_ZN22hb_serialize_context_t5embedEPKcj.exit, label %bb.ky, !prof !99

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bnx, ptr readonly align 1 %i.bnr, i64 %i.bnt, i1 false), !alias.scope !783
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit

_ZN22hb_serialize_context_t5embedEPKcj.exit:      ; preds = %bb.ky, %bb.kx
  %i.bod = load ptr, ptr %i.bhj, align 8, !tbaa !203 ; 4 uses
  %.not.i.i.i308 = icmp eq ptr %i.bod, null
  br i1 %.not.i.i.i308, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.kz

bb.kz:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit
  %i.boe = load i32, ptr %i.bhk, align 8, !tbaa !204
  %i.bof = urem i32 %i.biq, %i.boe                ; 2 uses
  %i.bog = zext nneg i32 %i.bof to i64            ; 2 uses
  %i.boh = getelementptr inbounds nuw [12 x i8], ptr %i.bod, i64 %i.bog ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 4
  %i.boj = load i32, ptr %i.boi, align 4          ; 2 uses
  %i.bok = and i32 %i.boj, 2
  %.not15.i.i.i.i.i309 = icmp eq i32 %i.bok, 0
  br i1 %.not15.i.i.i.i.i309, label %_ZNK14hb_inc_bimap_tixEj.exit, label %.lr.ph.i.i.i.i.i310

.lr.ph.i.i.i.i.i310:                              ; preds = %bb.kz
  %i.bol = load i32, ptr %i.bhl, align 4
  %i.bom = load i32, ptr %i.boh, align 4, !tbaa !101
  %i.bon = zext i32 %i.bom to i64
  %i.boo = icmp eq i64 %indvars.iv.next, %i.bon
  br i1 %i.boo, label %._crit_edge.i.i.i.i315, label %.lr.ph.i.i.i.i311

bb.la:                                            ; preds = %.lr.ph.i.i.i.i311
  %i.bop = load i32, ptr %i.bpa, align 4, !tbaa !101
  %i.boq = zext i32 %i.bop to i64
  %i.bor = icmp eq i64 %indvars.iv.next, %i.boq
  br i1 %i.bor, label %._crit_edge.i.i.i.i315, label %.lr.ph.i.i.i.i311, !llvm.loop !9

end_hunk_1
begin_hunk_2_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  br i1 %.not.i13.i, label %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %.preheader111.i.i
  %i.cfd = getelementptr inbounds nuw i8, ptr %.sroa.15.0.i, i64 4 ; 2 uses
  %i.cfe = load i32, ptr %i.cfd, align 4, !tbaa !792
  %i.cff = load i32, ptr %.sroa.15.0.i, align 4, !tbaa !793
  %i.cfg = trunc i32 %i.cff to i16
  %i.cfh = call i16 @llvm.bswap.i16(i16 %i.cfg)
  store i16 %i.cfh, ptr %i.cex, align 1, !tbaa !148
  %i.cfi = load i32, ptr %i.cfd, align 4, !tbaa !792
  %i.cfj = trunc i32 %i.cfi to i16
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cex, i64 2
  %i.cfl = call i16 @llvm.bswap.i16(i16 %i.cfj)
  store i16 %i.cfl, ptr %i.cfk, align 1, !tbaa !148
  %i.cfm = icmp ult i32 %i.cfe, 65536
  br i1 %i.cfm, label %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, label %bb.ob, !prof !794

.sink.split.i382:                                 ; preds = %bb.oa, %bb.nx, %bb.nw
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %bb.ob

bb.ob:                                            ; preds = %.sink.split.i382, %.lr.ph.i.i381, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i, %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.oc

_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i: ; preds = %.lr.ph.i.i381, %.preheader111.i.i
  %i.cfn = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  br label %bb.oc

bb.oc:                                            ; preds = %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, %bb.ob
  %.0657 = phi i32 [ undef, %bb.ob ], [ %i.cfn, %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i ] ; 2 uses
  %.5.i41.i = phi i1 [ false, %bb.ob ], [ true, %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i ]
  br i1 %spec.select.i.i.i.i379, label %bb.od, label %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit

bb.od:                                            ; preds = %bb.oc
  call void @hb_free(ptr noundef %.sroa.15.0.i) #16
  br label %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit

_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit: ; preds = %bb.oc, %bb.od
  br i1 %.5.i41.i, label %bb.oe, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.oe:                                            ; preds = %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit
  %i.cfo = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.cfp = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.val.i.i386 = load i32, ptr %i.cfp, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i387 = icmp eq i32 %.val.i.i386, 0    ; 2 uses
  br i1 %.not41.i.i387, label %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge, label %.lr.ph.preheader.i.i388

._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge: ; preds = %bb.oe
  %.phi.trans.insert1084 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val46.i400.pre = load ptr, ptr %.phi.trans.insert1084, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397

.lr.ph.preheader.i.i388:                          ; preds = %bb.oe
  %.sroa.2.8.insert.ext.i.i.i.i.i.i389 = zext i32 %.val.i.i386 to i64 ; 3 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val21.i.i390 = load ptr, ptr %i.cfq, align 8, !tbaa !155 ; 4 uses
  %i.cfr = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i389, 1152921504606846975
  %i.cfs = and i64 %i.cfr, 1152921504606846975    ; 2 uses
  %i.cft = add nuw nsw i64 %i.cfs, 1              ; 2 uses
  %xtraiter1881 = and i64 %i.cft, 7               ; 3 uses
  %i.cfu = icmp samesign ult i64 %i.cfs, 7
  br i1 %i.cfu, label %.lr.ph.i.i392.epil.preheader, label %.lr.ph.preheader.i.i388.new

.lr.ph.preheader.i.i388.new:                      ; preds = %.lr.ph.preheader.i.i388
  %unroll_iter1886 = and i64 %i.cft, 2305843009213693944
  br label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.lr.ph.i.i392, %.lr.ph.preheader.i.i388.new
  %.01644.i.i393 = phi ptr [ %.val21.i.i390, %.lr.ph.preheader.i.i388.new ], [ %i.cgl, %.lr.ph.i.i392 ] ; 9 uses
  %.01743.i.i394 = phi i32 [ 0, %.lr.ph.preheader.i.i388.new ], [ %i.cgk, %.lr.ph.i.i392 ]
  %niter1887 = phi i64 [ 0, %.lr.ph.preheader.i.i388.new ], [ %niter1887.next.7, %.lr.ph.i.i392 ]
  %i.cfv = getelementptr i8, ptr %.01644.i.i393, i64 4
  %.016.val.i.i395 = load i32, ptr %i.cfv, align 4, !tbaa !132
  %i.cfw = add i32 %.016.val.i.i395, %.01743.i.i394
  %i.cfx = getelementptr i8, ptr %.01644.i.i393, i64 20
  %.016.val.i.i395.1 = load i32, ptr %i.cfx, align 4, !tbaa !132
  %i.cfy = add i32 %.016.val.i.i395.1, %i.cfw
  %i.cfz = getelementptr i8, ptr %.01644.i.i393, i64 36
  %.016.val.i.i395.2 = load i32, ptr %i.cfz, align 4, !tbaa !132
  %i.cga = add i32 %.016.val.i.i395.2, %i.cfy
  %i.cgb = getelementptr i8, ptr %.01644.i.i393, i64 52
  %.016.val.i.i395.3 = load i32, ptr %i.cgb, align 4, !tbaa !132
  %i.cgc = add i32 %.016.val.i.i395.3, %i.cga
  %i.cgd = getelementptr i8, ptr %.01644.i.i393, i64 68
  %.016.val.i.i395.4 = load i32, ptr %i.cgd, align 4, !tbaa !132
  %i.cge = add i32 %.016.val.i.i395.4, %i.cgc
  %i.cgf = getelementptr i8, ptr %.01644.i.i393, i64 84
  %.016.val.i.i395.5 = load i32, ptr %i.cgf, align 4, !tbaa !132
  %i.cgg = add i32 %.016.val.i.i395.5, %i.cge
  %i.cgh = getelementptr i8, ptr %.01644.i.i393, i64 100
  %.016.val.i.i395.6 = load i32, ptr %i.cgh, align 4, !tbaa !132
  %i.cgi = add i32 %.016.val.i.i395.6, %i.cgg
  %i.cgj = getelementptr i8, ptr %.01644.i.i393, i64 116
  %.016.val.i.i395.7 = load i32, ptr %i.cgj, align 4, !tbaa !132
  %i.cgk = add i32 %.016.val.i.i395.7, %i.cgi     ; 3 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %.01644.i.i393, i64 128 ; 2 uses
  %niter1887.next.7 = add i64 %niter1887, 8       ; 2 uses
  %niter1887.ncmp.7 = icmp eq i64 %niter1887.next.7, %unroll_iter1886
  br i1 %niter1887.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, label %.lr.ph.i.i392

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i392
  %lcmp.mod1883.not = icmp eq i64 %xtraiter1881, 0
  br i1 %lcmp.mod1883.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397, label %.lr.ph.i.i392.epil.preheader

.lr.ph.i.i392.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, %.lr.ph.preheader.i.i388
  %.01644.i.i393.epil.init = phi ptr [ %.val21.i.i390, %.lr.ph.preheader.i.i388 ], [ %i.cgl, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ]
  %.01743.i.i394.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i388 ], [ %i.cgk, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ]
  %lcmp.mod1885 = icmp ne i64 %xtraiter1881, 0
  call void @llvm.assume(i1 %lcmp.mod1885)
  br label %.lr.ph.i.i392.epil

.lr.ph.i.i392.epil:                               ; preds = %.lr.ph.i.i392.epil, %.lr.ph.i.i392.epil.preheader
  %.01644.i.i393.epil = phi ptr [ %i.cgo, %.lr.ph.i.i392.epil ], [ %.01644.i.i393.epil.init, %.lr.ph.i.i392.epil.preheader ] ; 2 uses
  %.01743.i.i394.epil = phi i32 [ %i.cgn, %.lr.ph.i.i392.epil ], [ %.01743.i.i394.epil.init, %.lr.ph.i.i392.epil.preheader ]
  %epil.iter1882 = phi i64 [ %epil.iter1882.next, %.lr.ph.i.i392.epil ], [ 0, %.lr.ph.i.i392.epil.preheader ]
  %i.cgm = getelementptr i8, ptr %.01644.i.i393.epil, i64 4
  %.016.val.i.i395.epil = load i32, ptr %i.cgm, align 4, !tbaa !132
  %i.cgn = add i32 %.016.val.i.i395.epil, %.01743.i.i394.epil ; 2 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %.01644.i.i393.epil, i64 16
  %epil.iter1882.next = add i64 %epil.iter1882, 1 ; 2 uses
  %epil.iter1882.cmp.not = icmp eq i64 %epil.iter1882.next, %xtraiter1881
  br i1 %epil.iter1882.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397, label %.lr.ph.i.i392.epil, !llvm.loop !741

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, %.lr.ph.i.i392.epil, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i401.pre-phi = phi i64 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i389, %.lr.ph.i.i392.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i389, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i400 = phi ptr [ %.val46.i400.pre, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %.val21.i.i390, %.lr.ph.i.i392.epil ], [ %.val21.i.i390, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ] ; 3 uses
  %.066.i399 = phi i32 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %i.cgk, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ], [ %i.cgn, %.lr.ph.i.i392.epil ] ; 4 uses
  %i.cgp = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cfo, ptr noundef nonnull %0, ptr %.val46.i400, i64 %.sroa.2.8.insert.ext.i.i.i.i.i401.pre-phi, i32 noundef %.066.i399, i32 noundef 0)
  br i1 %i.cgp, label %bb.of, label %bb.oo, !prof !97

bb.of:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397
  %i.cgq = zext i32 %.066.i399 to i64             ; 2 uses
  %i.cgr = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i403 = icmp eq i32 %i.cgr, 0
  br i1 %.not.i.i403, label %bb.og, label %bb.oo, !prof !97

bb.og:                                            ; preds = %bb.of
  %i.cgs = icmp slt i32 %.066.i399, 0
  br i1 %i.cgs, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i418, label %bb.oh, !prof !99

bb.oh:                                            ; preds = %bb.og
  %i.cgt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cgu = load ptr, ptr %i.cgt, align 8, !tbaa !170
  %i.cgv = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.cgw = ptrtoint ptr %i.cgu to i64
  %i.cgx = ptrtoint ptr %i.cgv to i64
  %i.cgy = sub i64 %i.cgw, %i.cgx
  %i.cgz = icmp slt i64 %i.cgy, %i.cgq
  br i1 %i.cgz, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i418, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i404, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i404: ; preds = %bb.oh
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgv, i64 %i.cgq
  store ptr %i.cha, ptr %i.brr, align 8, !tbaa !171
  %.not43.i405 = icmp eq ptr %i.cgv, null
  br i1 %.not43.i405, label %bb.oo, label %bb.oi, !prof !143

bb.oi:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i404
  %.idx.i406 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i401.pre-phi, 4
  %i.chb = getelementptr inbounds nuw i8, ptr %.val46.i400, i64 %.idx.i406
  br i1 %.not41.i.i387, label %.loopexit, label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %bb.oi, %bb.on
  %.082.i409 = phi ptr [ %i.cho, %bb.on ], [ %.val46.i400, %bb.oi ] ; 3 uses
  %.03481.i410 = phi i32 [ %.1.ph.i415, %bb.on ], [ %.066.i399, %bb.oi ] ; 3 uses
  %.03580.i411 = phi ptr [ %.136.ph.i414, %bb.on ], [ %i.cgv, %bb.oi ] ; 5 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %.082.i409, i64 4
  %i.chd = load i32, ptr %i.chc, align 4, !tbaa !132 ; 5 uses
  %.not45.i412 = icmp eq i32 %i.chd, 0
  br i1 %.not45.i412, label %bb.on, label %bb.oj

bb.oj:                                            ; preds = %.lr.ph.i408
  %i.che = icmp ugt i32 %i.chd, %.03481.i410
  br i1 %i.che, label %bb.ok, label %bb.ol, !prof !99

bb.ok:                                            ; preds = %bb.oj
  %i.chf = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i53.not.i417 = icmp eq i32 %i.chf, 0
  br i1 %.not.i.i53.not.i417, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i418, label %bb.oo, !prof !153

bb.ol:                                            ; preds = %bb.oj
  %i.chg = sub nuw nsw i32 %.03481.i410, %i.chd   ; 2 uses
  %i.chh = icmp eq i32 %i.chd, 1
  %i.chi = getelementptr inbounds nuw i8, ptr %.082.i409, i64 8
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !133 ; 2 uses
  br i1 %i.chh, label %bb.om, label %_ZL9hb_memcpyPvPKvm.exit.i413

bb.om:                                            ; preds = %bb.ol
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !148
  %i.chl = getelementptr inbounds nuw i8, ptr %.03580.i411, i64 1
  store i8 %i.chk, ptr %.03580.i411, align 1, !tbaa !148
  br label %bb.on

_ZL9hb_memcpyPvPKvm.exit.i413:                    ; preds = %bb.ol
  %i.chm = zext nneg i32 %i.chd to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i411, ptr readonly align 1 %i.chj, i64 %i.chm, i1 false), !alias.scope !795
  %i.chn = getelementptr inbounds nuw i8, ptr %.03580.i411, i64 %i.chm
  br label %bb.on

bb.on:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i413, %bb.om, %.lr.ph.i408
  %.136.ph.i414 = phi ptr [ %i.chn, %_ZL9hb_memcpyPvPKvm.exit.i413 ], [ %i.chl, %bb.om ], [ %.03580.i411, %.lr.ph.i408 ]
  %.1.ph.i415 = phi i32 [ %i.chg, %_ZL9hb_memcpyPvPKvm.exit.i413 ], [ %i.chg, %bb.om ], [ %.03481.i410, %.lr.ph.i408 ]
  %i.cho = getelementptr inbounds nuw i8, ptr %.082.i409, i64 16 ; 2 uses
  %.not44.i416 = icmp eq ptr %i.cho, %i.chb
  br i1 %.not44.i416, label %.loopexit, label %.lr.ph.i408

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i418: ; preds = %bb.ok, %bb.oh, %bb.og
  %.sink.i419 = phi i32 [ 4, %bb.og ], [ 4, %bb.oh ], [ 8, %bb.ok ]
  store i32 %.sink.i419, ptr %i.cef, align 4, !tbaa !169
  br label %bb.oo

bb.oo:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i418, %bb.ok, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i404, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397, %bb.of
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.loopexit:                                        ; preds = %bb.on, %bb.oi
  %i.chp = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.chq = call noundef zeroext i1 @_ZN11hb_vector_tI10hb_array_tIKhELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 2, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr @.str, ptr %15, align 8, !tbaa !254
  %i.chr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 5, ptr %i.chr, align 8, !tbaa !255
  %i.chs = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 0, ptr %i.chs, align 4, !tbaa !796
  %i.cht = call noundef ptr @_ZN11hb_vector_tI10hb_array_tIKhELb0EE4pushIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr @.str.1, ptr %16, align 8, !tbaa !254
  %i.chu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 8, ptr %i.chu, align 8, !tbaa !255
  %i.chv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 0, ptr %i.chv, align 4, !tbaa !796
  %i.chw = call noundef ptr @_ZN11hb_vector_tI10hb_array_tIKhELb0EE4pushIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.chx = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.chy = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj(ptr noundef nonnull align 1 dereferenceable(4) %i.chx, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef null, i32 noundef 0) ; 2 uses
  br i1 %i.chy, label %bb.op, label %bb.oq, !prof !97

bb.op:                                            ; preds = %.loopexit
  %i.chz = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  br label %bb.or

bb.oq:                                            ; preds = %.loopexit
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.or

bb.or:                                            ; preds = %bb.op, %bb.oq
  %i.cia = load i32, ptr %14, align 8, !tbaa !258
  %i.cib = add i32 %i.cia, -1
  %spec.select.i.i.i421 = icmp ult i32 %i.cib, -2
  br i1 %spec.select.i.i.i421, label %bb.os, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit

bb.os:                                            ; preds = %bb.or
  %i.cic = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.cic, align 4, !tbaa !259
  %i.cid = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cie = load ptr, ptr %i.cid, align 8, !tbaa !260
  call void @hb_free(ptr noundef %i.cie) #16
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit

_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit:  ; preds = %bb.or, %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br i1 %i.chy, label %bb.ot, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.ot:                                            ; preds = %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit
  %i.cif = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i422 = icmp eq i32 %i.cif, 0
  br i1 %.not.i.i422, label %bb.ou, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !97

bb.ou:                                            ; preds = %bb.ot
  %i.cig = load ptr, ptr %i.cgt, align 8, !tbaa !170
  %i.cih = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.cii = ptrtoint ptr %i.cig to i64
  %i.cij = ptrtoint ptr %i.cih to i64
  %i.cik = sub i64 %i.cii, %i.cij
  %i.cil = icmp slt i64 %i.cik, 4
  br i1 %i.cil, label %.critedge.i.i424, label %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, !prof !99

.critedge.i.i424:                                 ; preds = %bb.ou
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit: ; preds = %bb.ou
  store i32 0, ptr %i.cih, align 1
  %.pre.i.i = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 3 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  store ptr %i.cim, ptr %i.brr, align 8, !tbaa !171
  %.not204 = icmp eq ptr %.pre.i.i, null
  br i1 %.not204, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %bb.ov, !prof !143

bb.ov:                                            ; preds = %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit
  store <4 x i8> <i8 1, i8 0, i8 4, i8 4>, ptr %.pre.i.i, align 1, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i32 8, ptr %i.j, align 4, !tbaa !101
  %i.cin = load ptr, ptr %i.brr, align 8, !tbaa !171
  %i.cio = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cin, ptr noundef nonnull %0, ptr nonnull %i.j, i64 1, i32 noundef 8, i32 noundef 0)
  br i1 %i.cio, label %bb.ow, label %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767, !prof !97

bb.ow:                                            ; preds = %bb.ov
  %i.cip = load i32, ptr %i.j, align 4, !tbaa !101 ; 3 uses
  %i.ciq = zext i32 %i.cip to i64                 ; 3 uses
  %i.cir = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i427 = icmp eq i32 %i.cir, 0
  br i1 %.not.i.i427, label %bb.ox, label %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767, !prof !97

bb.ox:                                            ; preds = %bb.ow
  %i.cis = icmp slt i32 %i.cip, 0
  br i1 %i.cis, label %.critedge.i.i433, label %bb.oy, !prof !99

bb.oy:                                            ; preds = %bb.ox
  %i.cit = load ptr, ptr %i.cgt, align 8, !tbaa !170
  %i.ciu = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.civ = ptrtoint ptr %i.cit to i64
  %i.ciw = ptrtoint ptr %i.ciu to i64
  %i.cix = sub i64 %i.civ, %i.ciw
  %i.ciy = icmp slt i64 %i.cix, %i.ciq
  br i1 %i.ciy, label %.critedge.i.i433, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i430, !prof !99

.critedge.i.i433:                                 ; preds = %bb.oy, %bb.ox
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i430: ; preds = %bb.oy
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.ciu, i64 %i.ciq
  store ptr %i.ciz, ptr %i.brr, align 8, !tbaa !171
  %.not.i431 = icmp eq ptr %i.ciu, null
  br i1 %.not.i431, label %_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767, label %bb.oz, !prof !143

bb.oz:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i430
  %.not.i7.i432 = icmp eq i32 %i.cip, 0
  br i1 %.not.i7.i432, label %bb.pb, label %bb.pa, !prof !99

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ciu, ptr nonnull readonly align 1 @_ZN3CFFL22CFF1_DEFAULT_FONT_NAMEE, i64 %i.ciq, i1 false), !alias.scope !797
  br label %bb.pb

_ZN22hb_serialize_context_t5embedEPKcj.exit434.thread767: ; preds = %bb.ov, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i430, %.critedge.i.i433, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.cja = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7TopDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.cjb = call noundef zeroext i1 @_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t13serialize_rosEP22hb_serialize_context_t(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull %0)
  br i1 %i.cjb, label %bb.pc, label %.thread787.sink.split, !prof !97

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store ptr %18, ptr %19, align 8, !tbaa !119
  %i.cjc = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cjd = load i32, ptr %i.cjc, align 8, !tbaa !798
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.cjd)
  %i.cje = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cjf = load i32, ptr %i.cje, align 8, !tbaa !799
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.cjf)
  %i.cjg = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.cjh = load i32, ptr %i.cjg, align 4, !tbaa !800
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.cjh)
  %i.cji = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !801
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %i.cjj)
  call void @_ZN3CFF13str_encoder_t9encode_opEj(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 5)
  %i.cjk = load ptr, ptr %19, align 8, !tbaa !150, !nonnull !122, !align !151
  %i.cjl = load i32, ptr %i.cjk, align 8, !tbaa !131
  %i.cjm = icmp slt i32 %i.cjl, 0
  br i1 %i.cjm, label %.critedge14, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.cjn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cjo = load ptr, ptr %i.cjn, align 8, !tbaa !133
  %i.cjp = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.cjq = load i32, ptr %i.cjp, align 4, !tbaa !132 ; 3 uses
  %i.cjr = zext i32 %i.cjq to i64                 ; 3 uses
  %i.cjs = load i32, ptr %i.cef, align 4, !tbaa !169
  %.not.i.i437 = icmp eq i32 %i.cjs, 0
  br i1 %.not.i.i437, label %bb.pe, label %.critedge14, !prof !97

bb.pe:                                            ; preds = %bb.pd
  %i.cjt = icmp slt i32 %i.cjq, 0
  br i1 %i.cjt, label %.critedge.i.i443, label %bb.pf, !prof !99

bb.pf:                                            ; preds = %bb.pe
  %i.cju = load ptr, ptr %i.cgt, align 8, !tbaa !170
  %i.cjv = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.cjw = ptrtoint ptr %i.cju to i64
  %i.cjx = ptrtoint ptr %i.cjv to i64
  %i.cjy = sub i64 %i.cjw, %i.cjx
  %i.cjz = icmp slt i64 %i.cjy, %i.cjr
  br i1 %i.cjz, label %.critedge.i.i443, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440, !prof !99

.critedge.i.i443:                                 ; preds = %bb.pf, %bb.pe
  store i32 4, ptr %i.cef, align 4, !tbaa !169
  br label %.critedge14

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i440: ; preds = %bb.pf
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjv, i64 %i.cjr
  store ptr %i.cka, ptr %i.brr, align 8, !tbaa !171
end_hunk_2
begin_hunk_3_@_ZN22hb_serialize_context_t8pop_packEb:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = call noundef ptr @_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE10fetch_itemERKS3_j(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.aa) ; 2 uses
  %.not6.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %spec.select.i = select i1 %.not6.i, ptr @_hb_NullPool, ptr %i.af
  %.pre26.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !263
  br label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit: ; preds = %bb.d, %bb.e
  %.pre26.pre = phi ptr [ %i.d, %bb.d ], [ %.pre26.pre.pre, %bb.e ] ; 4 uses
  %.1.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.ag = load i32, ptr %.1.i, align 4, !tbaa !101 ; 5 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !101
  %.not17 = icmp eq i32 %i.ag, 0
  br i1 %.not17, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !270
  %.not.i.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.aj, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !271
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !237 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i = mul nuw nsw i64 %i.as, 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.ar, 0
  br i1 %.not12.i, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.au = load ptr, ptr %.0.i.i, align 8, !tbaa !263 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 36 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.bh, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i ] ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !237 ; 3 uses
  %i.az = load i32, ptr %i.av, align 8, !tbaa !238
  %.not.i10.i = icmp slt i32 %i.ay, %i.az
  br i1 %.not.i10.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = add i32 %i.ay, 1
  %i.bb = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i32 noundef %i.ba, i1 noundef zeroext false)
  br i1 %i.bb, label %..critedge_crit_edge.i.i, label %bb.k, !prof !97

..critedge_crit_edge.i.i:                         ; preds = %bb.j
  %.pre.i.i = load i32, ptr %i.aw, align 4, !tbaa !237
  br label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.i
  %i.bc = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !239
  %i.be = add i32 %i.bc, 1
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !237
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %.013.i, i64 12, i1 false), !tbaa.struct !809
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i: ; preds = %.critedge.i.i, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bh, %i.at
  br i1 %.not.i18, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, label %bb.i

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !263
  br label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit: ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.bi = phi ptr [ %.pre, %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit ], [ %.pre26.pre, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !238
  %i.bl = add i32 %i.bk, -1
  %spec.select.i.i.i = icmp ult i32 %i.bl, -2
  br i1 %spec.select.i.i.i, label %bb.l, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 0, ptr %i.bm, align 4, !tbaa !237
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !239
  call void @hb_free(ptr noundef %i.bo) #16
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.l, %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !238
  %i.br = add i32 %i.bq, -1
  %spec.select.i.i1.i = icmp ult i32 %i.br, -2
  br i1 %spec.select.i.i1.i, label %bb.m, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  store i32 0, ptr %i.bs, align 4, !tbaa !237
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !239
  call void @hb_free(ptr noundef %i.bu) #16
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !263 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !262
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !263
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !262
  br label %bb.x

bb.n:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit, %bb.c
  %.pre26.a = phi ptr [ %.pre26.pre, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit ], [ %i.d, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.aa, %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit ], [ 0, %bb.c ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !170
  %i.ca = sub nsw i64 0, %i.r
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca ; 3 uses
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !170
  br i1 %.not14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %.pre26.a, align 8, !tbaa !178
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %i.cc, i64 %i.r, i1 false)
  %.pre24 = load ptr, ptr %i.by, align 8, !tbaa !170
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !263
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cd = phi ptr [ %.pre26.a, %bb.n ], [ %.pre25, %bb.o ] ; 3 uses
  %i.ce = phi ptr [ %i.cb, %bb.n ], [ %.pre24, %bb.o ] ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !178
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !177
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !270 ; 3 uses
  %i.ck = load i32, ptr %i.ch, align 8, !tbaa !272
  %.not.i19 = icmp slt i32 %i.cj, %i.ck
  br i1 %.not.i19, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = add i32 %i.cj, 1
  %i.cm = call noundef zeroext i1 @_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i32 noundef %i.cl, i1 noundef zeroext false)
  br i1 %i.cm, label %..critedge_crit_edge.i, label %bb.r, !prof !97

..critedge_crit_edge.i:                           ; preds = %bb.q
  %.pre.i = load i32, ptr %i.ci, align 4, !tbaa !270
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !263
  br label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.cn = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cn, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.p
  %i.co = phi ptr [ %.pre27, %..critedge_crit_edge.i ], [ %i.cd, %bb.p ]
  %i.cp = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !271
  %i.cs = add i32 %i.cp, 1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !270
  %i.ct = zext i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %i.co, ptr %i.cu, align 8, !tbaa !263
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit: ; preds = %bb.r, %.critedge.i
  %i.cv = load i32, ptr %i.ch, align 8, !tbaa !272
  %i.cw = icmp sgt i32 %i.cv, -1
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !169 ; 2 uses
  %.not.i.i.i = icmp ne i32 %i.cx, 0
  %brmerge.i.i = or i1 %i.cw, %.not.i.i.i
  br i1 %brmerge.i.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  store i32 1, ptr %i.e, align 4, !tbaa !169
  br label %bb.s

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  %.not.i.i.i.not = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.not, label %bb.t, label %bb.s, !prof !156

bb.s:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !263
  call void @_ZN22hb_serialize_context_t8object_t4finiEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cy)
  br label %bb.x

bb.t:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.cz = load i32, ptr %i.ci, align 4, !tbaa !273
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.b, align 4, !tbaa !101
  br i1 %1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dc = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13set_with_hashIRPS1_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %.pre28 = load i32, ptr %i.e, align 4, !tbaa !169
  %i.dd = icmp ne i32 %.pre28, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not.i.i.i20 = phi i1 [ %i.dd, %bb.u ], [ false, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.df = load i8, ptr %i.de, align 8, !tbaa !274, !range !121, !noundef !122
  %i.dg = trunc nuw i8 %i.df to i1
  %brmerge.i.i21 = or i1 %.not.i.i.i20, %i.dg
  br i1 %brmerge.i.i21, label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.e, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit

_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit: ; preds = %bb.v, %bb.w
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !101
  br label %bb.x

bb.x:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, %bb.s, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  %.010 = phi i32 [ %i.ag, %_ZN22hb_serialize_context_t8object_t4finiEv.exit ], [ 0, %bb.s ], [ %i.dh, %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.x, %.critedge, %bb.a
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.a ], [ %.010, %bb.x ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !169  ; 2 uses
  switch i32 %i.d, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !268
  store ptr %i.f, ptr %i.a, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172  ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !178
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %.critedge ]
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !170
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.d, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !238
  %i.q = add i32 %i.p, -1
  %spec.select.i.i.i = icmp ult i32 %i.q, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !237
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !239
  tail call void @hb_free(ptr noundef %i.t) #16
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !238
  %i.w = add i32 %i.v, -1
  %spec.select.i.i1.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i1.i, label %bb.g, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !237
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !239
  tail call void @hb_free(ptr noundef %i.z) #16
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !262
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !263
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !262
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
end_hunk_3
begin_hunk_4_@_ZN22hb_serialize_context_t4pushIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_v:bb.a

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  store ptr %i.r, ptr %i.u, align 8, !tbaa !173
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !171
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4, !tbaa !101
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !259
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !259 ; 4 uses
  %.not41.i = icmp eq i32 %.val.i, 0
  br i1 %.not41.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %.val.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val21.i = load ptr, ptr %i.c, align 8, !tbaa !260 ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i, 1152921504606846975
  %i.e = and i64 %i.d, 1152921504606846975        ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.e, 7
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.f, 2305843009213693944
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.01644.i = phi ptr [ %.val21.i, %.lr.ph.preheader.i.new ], [ %i.x, %.lr.ph.i ] ; 9 uses
  %.01743.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.w, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.h = getelementptr i8, ptr %.01644.i, i64 8
  %.016.val22.i = load i64, ptr %i.h, align 8
  %.sroa.3.8.extract.trunc.i.i = trunc i64 %.016.val22.i to i32
  %i.i = add i32 %.01743.i, %.sroa.3.8.extract.trunc.i.i
  %i.j = getelementptr i8, ptr %.01644.i, i64 24
  %.016.val22.i.1 = load i64, ptr %i.j, align 8
  %.sroa.3.8.extract.trunc.i.i.1 = trunc i64 %.016.val22.i.1 to i32
  %i.k = add i32 %i.i, %.sroa.3.8.extract.trunc.i.i.1
  %i.l = getelementptr i8, ptr %.01644.i, i64 40
  %.016.val22.i.2 = load i64, ptr %i.l, align 8
  %.sroa.3.8.extract.trunc.i.i.2 = trunc i64 %.016.val22.i.2 to i32
  %i.m = add i32 %i.k, %.sroa.3.8.extract.trunc.i.i.2
  %i.n = getelementptr i8, ptr %.01644.i, i64 56
  %.016.val22.i.3 = load i64, ptr %i.n, align 8
  %.sroa.3.8.extract.trunc.i.i.3 = trunc i64 %.016.val22.i.3 to i32
  %i.o = add i32 %i.m, %.sroa.3.8.extract.trunc.i.i.3
  %i.p = getelementptr i8, ptr %.01644.i, i64 72
  %.016.val22.i.4 = load i64, ptr %i.p, align 8
  %.sroa.3.8.extract.trunc.i.i.4 = trunc i64 %.016.val22.i.4 to i32
  %i.q = add i32 %i.o, %.sroa.3.8.extract.trunc.i.i.4
  %i.r = getelementptr i8, ptr %.01644.i, i64 88
  %.016.val22.i.5 = load i64, ptr %i.r, align 8
  %.sroa.3.8.extract.trunc.i.i.5 = trunc i64 %.016.val22.i.5 to i32
  %i.s = add i32 %i.q, %.sroa.3.8.extract.trunc.i.i.5
  %i.t = getelementptr i8, ptr %.01644.i, i64 104
  %.016.val22.i.6 = load i64, ptr %i.t, align 8
  %.sroa.3.8.extract.trunc.i.i.6 = trunc i64 %.016.val22.i.6 to i32
  %i.u = add i32 %i.s, %.sroa.3.8.extract.trunc.i.i.6
  %i.v = getelementptr i8, ptr %.01644.i, i64 120
  %.016.val22.i.7 = load i64, ptr %i.v, align 8
  %.sroa.3.8.extract.trunc.i.i.7 = trunc i64 %.016.val22.i.7 to i32
  %i.w = add i32 %i.u, %.sroa.3.8.extract.trunc.i.i.7 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01644.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.01644.i.epil.init = phi ptr [ %.val21.i, %.lr.ph.preheader.i ], [ %i.x, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ]
  %.01743.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.w, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01644.i.epil = phi ptr [ %i.aa, %.lr.ph.i.epil ], [ %.01644.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01743.i.epil = phi i32 [ %i.z, %.lr.ph.i.epil ], [ %.01743.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr i8, ptr %.01644.i.epil, i64 8
  %.016.val22.i.epil = load i64, ptr %i.y, align 8
  %.sroa.3.8.extract.trunc.i.i.epil = trunc i64 %.016.val22.i.epil to i32
  %i.z = add i32 %.01743.i.epil, %.sroa.3.8.extract.trunc.i.i.epil ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01644.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.i.epil, !llvm.loop !815

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c, %bb.b
  %.val = phi i32 [ %.val.pre, %bb.b ], [ 0, %bb.c ], [ %.val.i, %.lr.ph.i.epil ], [ %.val.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ] ; 2 uses
  %.066 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.c ], [ %i.w, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.i.epil ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val46 = load ptr, ptr %i.ab, align 8, !tbaa !260 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64 ; 2 uses
  %i.ac = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKS5_IKhEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %.val46, i64 %.sroa.2.8.insert.ext.i.i.i.i, i32 noundef %.066, i32 noundef %4)
  br i1 %i.ac, label %bb.d, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, !prof !97

bb.d:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit
  %i.ad = zext i32 %.066 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !169
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp slt i32 %.066, 0
  br i1 %i.ag, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %bb.f, !prof !99

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !170
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !171 ; 4 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp slt i64 %i.an, %i.ad
  br i1 %i.ao, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ad
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !171
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, label %bb.g, !prof !143

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit
  %.idx = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not4479 = icmp eq i32 %.val, 0
  br i1 %.not4479, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.l
  %.082 = phi ptr [ %i.bc, %bb.l ], [ %.val46, %bb.g ] ; 3 uses
  %.03481 = phi i32 [ %.1.ph, %bb.l ], [ %.066, %bb.g ] ; 3 uses
  %.03580 = phi ptr [ %.136.ph, %bb.l ], [ %i.ak, %bb.g ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !255 ; 5 uses
  %.not45 = icmp eq i32 %i.as, 0
  br i1 %.not45, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.at = icmp ugt i32 %i.as, %.03481
  br i1 %i.at, label %bb.i, label %bb.j, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.ae, align 4, !tbaa !169
  %.not.i.i53.not = icmp eq i32 %i.au, 0
  br i1 %.not.i.i53.not, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.av = sub nuw nsw i32 %.03481, %i.as          ; 2 uses
  %i.aw = icmp eq i32 %i.as, 1
  %i.ax = load ptr, ptr %.082, align 8, !tbaa !254 ; 2 uses
  br i1 %i.aw, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !148
  %i.az = getelementptr inbounds nuw i8, ptr %.03580, i64 1
  store i8 %i.ay, ptr %.03580, align 1, !tbaa !148
  br label %bb.l

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.j
  %i.ba = zext nneg i32 %i.as to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580, ptr readonly align 1 %i.ax, i64 %i.ba, i1 false), !alias.scope !819
  %i.bb = getelementptr inbounds nuw i8, ptr %.03580, i64 %i.ba
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %_ZL9hb_memcpyPvPKvm.exit
  %.136.ph = phi ptr [ %i.bb, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.az, %bb.k ], [ %.03580, %.lr.ph ]
  %.1.ph = phi i32 [ %i.av, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.av, %bb.k ], [ %.03481, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.082, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.bc, %i.aq
  br i1 %.not44, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, label %.lr.ph

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split: ; preds = %bb.i, %bb.e, %bb.f
  %.sink = phi i32 [ 4, %bb.e ], [ 4, %bb.f ], [ 8, %bb.i ]
  store i32 %.sink, ptr %i.ae, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread: ; preds = %bb.l, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, %bb.g, %bb.i, %bb.d, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit
  %.5 = phi i1 [ false, %bb.d ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit ], [ true, %bb.g ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split ], [ false, %bb.i ], [ true, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %2, i64 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i32 %4, 1
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false)
  %i.c = sub nuw nsw i32 39, %i.b
  %i.d = lshr i32 %i.c, 3
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.d) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !169
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 4 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2147483647
  br i1 %i.m, label %.critedge.i.i.i, label %bb.c, !prof !99

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = icmp slt i64 %i.q, %i.l
  br i1 %i.r, label %.critedge.i.i.i, label %bb.d, !prof !99

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.e, align 4, !tbaa !169
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !236

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.l, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store ptr %i.t, ptr %i.h, align 8, !tbaa !171
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, !prof !99

_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.v = trunc i64 %3 to i16
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  store i16 %i.w, ptr %0, align 1, !tbaa !148
  %i.x = and i64 %3, 65535
  %.not62 = icmp eq i64 %i.x, 0
  br i1 %.not62, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit
  %i.y = load i32, ptr %i.e, align 4, !tbaa !169
  %.not11.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i, label %bb.g, label %select.unfold, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 14 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !171 ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483647
  br i1 %i.ae, label %.critedge.i.i.i.i, label %bb.h, !prof !99

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !170
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = icmp slt i64 %i.ah, %i.ad
  br i1 %i.ai, label %.critedge.i.i.i.i, label %bb.i, !prof !99

.critedge.i.i.i.i:                                ; preds = %bb.h, %bb.g
  store i32 4, ptr %i.e, align 4, !tbaa !169
  br label %select.unfold

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.j, !prof !236

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.ad, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.j, %bb.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !171
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %select.unfold, label %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, !prof !99

_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.am = trunc i32 %.sroa.speculated to i8
  store i8 %i.am, ptr %i.g, align 1, !tbaa !148
  %i.an = load i16, ptr %0, align 1, !tbaa !276
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = mul i32 %i.aq, %.sroa.speculated        ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = load i32, ptr %i.e, align 4, !tbaa !169
  %.not.i69 = icmp eq i32 %i.at, 0
  br i1 %.not.i69, label %bb.k, label %select.unfold, !prof !97

bb.k:                                             ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit
  %i.au = icmp slt i32 %i.ar, 0
  br i1 %i.au, label %.critedge.i, label %bb.l, !prof !99

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !170
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !171 ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp slt i64 %i.az, %i.as
  br i1 %i.ba, label %.critedge.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, !prof !99

.critedge.i:                                      ; preds = %bb.l, %bb.k
  store i32 4, ptr %i.e, align 4, !tbaa !169
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit: ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !171
  %.not64 = icmp eq ptr %i.aw, null
  br i1 %.not64, label %select.unfold, label %bb.m, !prof !143

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit
  switch i32 %.sroa.speculated, label %select.unfold [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bc = shl i64 %3, 2
  %.idx179 = and i64 %i.bc, 17179869180           ; 2 uses
  %.not68168 = icmp samesign eq i64 %.idx179, 0
  br i1 %.not68168, label %._crit_edge174, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %bb.n
  %i.bd = add nsw i64 %.idx179, -4                ; 2 uses
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %xtraiter234 = and i64 %i.bf, 7                 ; 3 uses
  %i.bg = icmp ult i64 %i.bd, 28
  br i1 %i.bg, label %.lr.ph173.epil.preheader, label %.lr.ph173.preheader.new

.lr.ph173.preheader.new:                          ; preds = %.lr.ph173.preheader
  %unroll_iter240 = and i64 %i.bf, 9223372036854775800
  br label %.lr.ph173

._crit_edge174.loopexit.unr-lcssa:                ; preds = %.lr.ph173
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %._crit_edge174.loopexit, label %.lr.ph173.epil.preheader

.lr.ph173.epil.preheader:                         ; preds = %._crit_edge174.loopexit.unr-lcssa, %.lr.ph173.preheader
  %.057171.epil.init = phi i32 [ 1, %.lr.ph173.preheader ], [ %i.cz, %._crit_edge174.loopexit.unr-lcssa ]
  %.060170.epil.init = phi ptr [ %i.z, %.lr.ph173.preheader ], [ %i.cx, %._crit_edge174.loopexit.unr-lcssa ]
  %.061169.epil.init = phi ptr [ %2, %.lr.ph173.preheader ], [ %i.da, %._crit_edge174.loopexit.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter234, 0
  tail call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph173.epil

.lr.ph173.epil:                                   ; preds = %.lr.ph173.epil, %.lr.ph173.epil.preheader
  %.057171.epil = phi i32 [ %i.bk, %.lr.ph173.epil ], [ %.057171.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.060170.epil = phi ptr [ %i.bi, %.lr.ph173.epil ], [ %.060170.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %.061169.epil = phi ptr [ %i.bl, %.lr.ph173.epil ], [ %.061169.epil.init, %.lr.ph173.epil.preheader ] ; 2 uses
  %epil.iter235 = phi i64 [ %epil.iter235.next, %.lr.ph173.epil ], [ 0, %.lr.ph173.epil.preheader ]
  %i.bh = trunc i32 %.057171.epil to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.060170.epil, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.060170.epil, align 1, !tbaa !148
  %i.bj = load i32, ptr %.061169.epil, align 4, !tbaa !101
  %i.bk = add i32 %i.bj, %.057171.epil            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061169.epil, i64 4
  %epil.iter235.next = add i64 %epil.iter235, 1   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.val21.i.i = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 1152921504606846975
  %i.g = and i64 %i.f, 1152921504606846975        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 7
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.h, 2305843009213693944
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01644.i.i = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i.new ], [ %i.z, %.lr.ph.i.i ] ; 9 uses
  %.01743.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.y, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.j = getelementptr i8, ptr %.01644.i.i, i64 4
  %.016.val.i.i = load i32, ptr %i.j, align 4, !tbaa !132
  %i.k = add i32 %.016.val.i.i, %.01743.i.i
  %i.l = getelementptr i8, ptr %.01644.i.i, i64 20
  %.016.val.i.i.1 = load i32, ptr %i.l, align 4, !tbaa !132
  %i.m = add i32 %.016.val.i.i.1, %i.k
  %i.n = getelementptr i8, ptr %.01644.i.i, i64 36
  %.016.val.i.i.2 = load i32, ptr %i.n, align 4, !tbaa !132
  %i.o = add i32 %.016.val.i.i.2, %i.m
  %i.p = getelementptr i8, ptr %.01644.i.i, i64 52
  %.016.val.i.i.3 = load i32, ptr %i.p, align 4, !tbaa !132
  %i.q = add i32 %.016.val.i.i.3, %i.o
  %i.r = getelementptr i8, ptr %.01644.i.i, i64 68
  %.016.val.i.i.4 = load i32, ptr %i.r, align 4, !tbaa !132
  %i.s = add i32 %.016.val.i.i.4, %i.q
  %i.t = getelementptr i8, ptr %.01644.i.i, i64 84
  %.016.val.i.i.5 = load i32, ptr %i.t, align 4, !tbaa !132
  %i.u = add i32 %.016.val.i.i.5, %i.s
  %i.v = getelementptr i8, ptr %.01644.i.i, i64 100
  %.016.val.i.i.6 = load i32, ptr %i.v, align 4, !tbaa !132
  %i.w = add i32 %.016.val.i.i.6, %i.u
  %i.x = getelementptr i8, ptr %.01644.i.i, i64 116
  %.016.val.i.i.7 = load i32, ptr %i.x, align 4, !tbaa !132
  %i.y = add i32 %.016.val.i.i.7, %i.w            ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01644.i.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01644.i.i.epil.init = phi ptr [ %.val21.i.i, %.lr.ph.preheader.i.i ], [ %i.z, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %.01743.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ]
  %lcmp.mod593 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod593)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01644.i.i.epil = phi ptr [ %i.ac, %.lr.ph.i.i.epil ], [ %.01644.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01743.i.i.epil = phi i32 [ %i.ab, %.lr.ph.i.i.epil ], [ %.01743.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aa = getelementptr i8, ptr %.01644.i.i.epil, i64 4
  %.016.val.i.i.epil = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ab = add i32 %.016.val.i.i.epil, %.01743.i.i.epil ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01644.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !827

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa
  %.lcssa591 = phi i32 [ %i.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i.unr-lcssa ], [ %i.ab, %.lr.ph.i.i.epil ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !97

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !169
  %.not.i10.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i10.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, !prof !97

bb.b:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i
  %i.ah = add i32 %.lcssa591, 5
  %i.ai = add i32 %.lcssa591, 1
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 false)
  %i.ak = sub nuw nsw i32 39, %i.aj
  %i.al = lshr i32 %i.ak, 3
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.al)
  %i.am = add i32 %.val.i.i, 1
  %i.an = mul i32 %.sroa.speculated.i.i, %i.am
  %i.ao = add i32 %i.ah, %i.an                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = icmp slt i32 %i.ao, 0
  br i1 %i.aq, label %.critedge.i.i, label %.thread.i, !prof !278

.thread.i:                                        ; preds = %bb.b, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i
  %.01116.i = phi i32 [ %.lcssa591, %bb.b ], [ 0, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %.0.i1215.i = phi i64 [ %i.ap, %bb.b ], [ 4, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ad, %bb.b ], [ %i.af, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !170 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 38 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !171 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp slt i64 %i.ay, %.0.i1215.i
  br i1 %i.az, label %.critedge.i.i, label %bb.c, !prof !99

.critedge.i.i:                                    ; preds = %.thread.i, %bb.b
  %i.ba = phi ptr [ %i.ar, %.thread.i ], [ %i.ad, %bb.b ]
  store i32 4, ptr %i.ba, align 4, !tbaa !169
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.c:                                             ; preds = %.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !172
  %i.bc = sub nsw i64 0, %.0.i1215.i
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc ; 4 uses
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !177
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.val46.i.i = load ptr, ptr %i.bh, align 8, !tbaa !155 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i16.i = zext i32 %.val.i.i to i64 ; 2 uses
  %i.bi = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.bd, ptr noundef nonnull %1, ptr %.val46.i.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, i32 noundef %.01116.i, i32 noundef %i.c)
  br i1 %i.bi, label %bb.d, label %bb.m, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.bj = zext i32 %.01116.i to i64               ; 2 uses
  %i.bk = load i32, ptr %i.ar, align 4, !tbaa !169
  %.not.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.m, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp slt i32 %.01116.i, 0
  br i1 %i.bl, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.f, !prof !99

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !171 ; 4 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp slt i64 %i.bq, %i.bj
  br i1 %i.br, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store ptr %i.bs, ptr %i.au, align 8, !tbaa !171
  %.not43.i.i = icmp eq ptr %i.bn, null
  br i1 %.not43.i.i, label %bb.m, label %bb.g, !prof !143

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i
  %.idx.i17.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i16.i, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 %.idx.i17.i
  br i1 %.not41.i.i, label %.loopexit337, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %bb.g, %bb.l
  %.082.i.i = phi ptr [ %i.cg, %bb.l ], [ %.val46.i.i, %bb.g ] ; 3 uses
  %.03481.i.i = phi i32 [ %.1.ph.i.i, %bb.l ], [ %.01116.i, %bb.g ] ; 3 uses
  %.03580.i.i = phi ptr [ %.136.ph.i.i, %bb.l ], [ %i.bn, %bb.g ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !132 ; 5 uses
  %.not45.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not45.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i18.i
  %i.bw = icmp ugt i32 %i.bv, %.03481.i.i
  br i1 %i.bw, label %bb.i, label %bb.j, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.bx = load i32, ptr %i.ar, align 4, !tbaa !169
  %.not.i.i53.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i53.not.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, label %bb.m, !prof !153

bb.j:                                             ; preds = %bb.h
  %i.by = sub nuw nsw i32 %.03481.i.i, %i.bv      ; 2 uses
  %i.bz = icmp eq i32 %i.bv, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !133 ; 2 uses
  br i1 %i.bz, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !148
  %i.cd = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 1
  store i8 %i.cc, ptr %.03580.i.i, align 1, !tbaa !148
  br label %bb.l

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.j
  %i.ce = zext nneg i32 %i.bv to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i.i, ptr readonly align 1 %i.cb, i64 %i.ce, i1 false), !alias.scope !857
  %i.cf = getelementptr inbounds nuw i8, ptr %.03580.i.i, i64 %i.ce
  br label %bb.l

bb.l:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.k, %.lr.ph.i18.i
  %.136.ph.i.i = phi ptr [ %i.cf, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.cd, %bb.k ], [ %.03580.i.i, %.lr.ph.i18.i ]
  %.1.ph.i.i = phi i32 [ %i.by, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.by, %bb.k ], [ %.03481.i.i, %.lr.ph.i18.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.cg, %i.bt
  br i1 %.not44.i.i, label %.loopexit337, label %.lr.ph.i18.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i: ; preds = %bb.i, %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 4, %bb.e ], [ 4, %bb.f ], [ 8, %bb.i ]
  store i32 %.sink.i.i, ptr %i.ar, align 4, !tbaa !169
  br label %bb.m

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i.i, %bb.i, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i, %bb.d, %bb.c
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

.loopexit337:                                     ; preds = %bb.l, %bb.g
  %i.ch = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !179
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !180 ; 6 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.n, !prof !99

bb.n:                                             ; preds = %.loopexit337
  %.not.i215.not.not = icmp ne i32 %i.ck, 0       ; 3 uses
  br i1 %.not.i215.not.not, label %.preheader.i, label %bb.p, !prof !99

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %.043.i = phi i32 [ %i.co, %.preheader.i ], [ 0, %bb.n ] ; 2 uses
  %i.cm = lshr i32 %.043.i, 1
  %i.cn = add nuw i32 %.043.i, 8
  %i.co = add nuw i32 %i.cn, %i.cm                ; 4 uses
  %i.cp = icmp ugt i32 %i.ck, %i.co
  br i1 %i.cp, label %.preheader.i, label %.thread.i216, !llvm.loop !8

.thread.i216:                                     ; preds = %.preheader.i
  %i.cq = icmp ugt i32 %i.co, 357913941
  br i1 %i.cq, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !99

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i216
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = mul nuw nsw i64 %i.cr, 12
  %i.ct = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.cs) #16 ; 3 uses
  %.not22.i = icmp eq ptr %i.ct, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.o, !prof !100

bb.o:                                             ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.cu = mul nuw i32 %i.ck, 12
  %i.cv = zext i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.cv, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.14262.0.ph = phi ptr [ null, %bb.n ], [ %i.ct, %bb.o ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !202 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %.critedge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 177
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 178
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !203 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.critedge99, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.eb = add nsw i32 %i.cx, -1
  %i.ec = zext nneg i32 %i.eb to i64
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.pr = load ptr, ptr %i.cz, align 8, !tbaa !203
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.splitthread-pre-split, %.lr.ph.split.preheader
  %i.ed = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.dz, %.lr.ph.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ %i.ec, %.lr.ph.split.preheader ] ; 13 uses
  %.not.i.i111 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i111, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32
  %i.ef = mul i32 %i.ee, 506952113
  %i.eg = and i32 %i.ef, 1073741823               ; 2 uses
  %i.eh = load i32, ptr %i.da, align 8, !tbaa !204
  %i.ei = urem i32 %i.eg, %i.eh                   ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ed, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = and i32 %i.em, 2
  %.not15.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not15.i.i.i.i, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.eo = load i32, ptr %i.db, align 4
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !101
  %i.eq = zext i32 %i.ep to i64
  %i.er = icmp eq i64 %indvars.iv, %i.eq
  br i1 %i.er, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.es = load i32, ptr %i.ez, align 4, !tbaa !101
  %i.et = zext i32 %i.es to i64
  %i.eu = icmp eq i64 %indvars.iv, %i.et
  br i1 %i.eu, label %_ZNK14hb_inc_bimap_t3hasEj.exit, label %.lr.ph.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.r
  %.01016.i20.i.i.i = phi i32 [ %i.ex, %bb.r ], [ %i.ei, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.ev, %bb.r ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ev = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.ew = add i32 %i.ev, %.01016.i20.i.i.i
  %i.ex = and i32 %i.ew, %i.eo                    ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.ed, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = and i32 %i.fb, 2
  %.not.i.i.i.i112 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i112, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %bb.r, !llvm.loop !9

_ZNK14hb_inc_bimap_t3hasEj.exit:                  ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.em, %.lr.ph.i.i.i.i ], [ %i.fb, %bb.r ]
  %i.fd = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.fd, label %bb.s, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread

bb.s:                                             ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.fe = load i32, ptr %i.dc, align 4, !tbaa !205
  %i.ff = zext i32 %i.fe to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.ff
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !97

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

bb.u:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.dd, align 8, !tbaa !206
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.fh, %bb.u ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154
  %.not = icmp eq i32 %i.fj, 0
  br i1 %.not, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %i.fk = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.fl = load i32, ptr %i.dc, align 4, !tbaa !205
  %i.fm = zext i32 %i.fl to i64
  %.not.i113 = icmp samesign ult i64 %indvars.iv, %i.fm
  br i1 %.not.i113, label %bb.x, label %bb.w, !prof !97

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

bb.x:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.dd, align 8, !tbaa !206
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115: ; preds = %bb.w, %bb.x
  %.0.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.fo, %bb.x ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i114, i64 4
  %.val.i.i116 = load i32, ptr %i.fp, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i117 = icmp eq i32 %.val.i.i116, 0    ; 2 uses
  br i1 %.not41.i.i117, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge, label %.lr.ph.preheader.i.i118

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge: ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val46.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127

.lr.ph.preheader.i.i118:                          ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115
  %.sroa.2.8.insert.ext.i.i.i.i.i.i119 = zext i32 %.val.i.i116 to i64 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %.val21.i.i120 = load ptr, ptr %i.fq, align 8, !tbaa !155 ; 4 uses
  %i.fr = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i119, 1152921504606846975
  %i.fs = and i64 %i.fr, 1152921504606846975      ; 2 uses
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %xtraiter594 = and i64 %i.ft, 7                 ; 3 uses
  %i.fu = icmp samesign ult i64 %i.fs, 7
  br i1 %i.fu, label %.lr.ph.i.i122.epil.preheader, label %.lr.ph.preheader.i.i118.new

.lr.ph.preheader.i.i118.new:                      ; preds = %.lr.ph.preheader.i.i118
  %unroll_iter599 = and i64 %i.ft, 2305843009213693944
  br label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122, %.lr.ph.preheader.i.i118.new
  %.01644.i.i123 = phi ptr [ %.val21.i.i120, %.lr.ph.preheader.i.i118.new ], [ %i.gl, %.lr.ph.i.i122 ] ; 9 uses
  %.01743.i.i124 = phi i32 [ 0, %.lr.ph.preheader.i.i118.new ], [ %i.gk, %.lr.ph.i.i122 ]
  %niter600 = phi i64 [ 0, %.lr.ph.preheader.i.i118.new ], [ %niter600.next.7, %.lr.ph.i.i122 ]
  %i.fv = getelementptr i8, ptr %.01644.i.i123, i64 4
  %.016.val.i.i125 = load i32, ptr %i.fv, align 4, !tbaa !132
  %i.fw = add i32 %.016.val.i.i125, %.01743.i.i124
  %i.fx = getelementptr i8, ptr %.01644.i.i123, i64 20
  %.016.val.i.i125.1 = load i32, ptr %i.fx, align 4, !tbaa !132
  %i.fy = add i32 %.016.val.i.i125.1, %i.fw
  %i.fz = getelementptr i8, ptr %.01644.i.i123, i64 36
  %.016.val.i.i125.2 = load i32, ptr %i.fz, align 4, !tbaa !132
  %i.ga = add i32 %.016.val.i.i125.2, %i.fy
  %i.gb = getelementptr i8, ptr %.01644.i.i123, i64 52
  %.016.val.i.i125.3 = load i32, ptr %i.gb, align 4, !tbaa !132
  %i.gc = add i32 %.016.val.i.i125.3, %i.ga
  %i.gd = getelementptr i8, ptr %.01644.i.i123, i64 68
  %.016.val.i.i125.4 = load i32, ptr %i.gd, align 4, !tbaa !132
  %i.ge = add i32 %.016.val.i.i125.4, %i.gc
  %i.gf = getelementptr i8, ptr %.01644.i.i123, i64 84
  %.016.val.i.i125.5 = load i32, ptr %i.gf, align 4, !tbaa !132
  %i.gg = add i32 %.016.val.i.i125.5, %i.ge
  %i.gh = getelementptr i8, ptr %.01644.i.i123, i64 100
  %.016.val.i.i125.6 = load i32, ptr %i.gh, align 4, !tbaa !132
  %i.gi = add i32 %.016.val.i.i125.6, %i.gg
  %i.gj = getelementptr i8, ptr %.01644.i.i123, i64 116
  %.016.val.i.i125.7 = load i32, ptr %i.gj, align 4, !tbaa !132
  %i.gk = add i32 %.016.val.i.i125.7, %i.gi       ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.01644.i.i123, i64 128 ; 2 uses
  %niter600.next.7 = add i64 %niter600, 8         ; 2 uses
  %niter600.ncmp.7 = icmp eq i64 %niter600.next.7, %unroll_iter599
  br i1 %niter600.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa, label %.lr.ph.i.i122

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i122
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  br i1 %lcmp.mod596.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127, label %.lr.ph.i.i122.epil.preheader

.lr.ph.i.i122.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa, %.lr.ph.preheader.i.i118
  %.01644.i.i123.epil.init = phi ptr [ %.val21.i.i120, %.lr.ph.preheader.i.i118 ], [ %i.gl, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa ]
  %.01743.i.i124.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i118 ], [ %i.gk, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa ]
  %lcmp.mod598 = icmp ne i64 %xtraiter594, 0
  call void @llvm.assume(i1 %lcmp.mod598)
  br label %.lr.ph.i.i122.epil

.lr.ph.i.i122.epil:                               ; preds = %.lr.ph.i.i122.epil, %.lr.ph.i.i122.epil.preheader
  %.01644.i.i123.epil = phi ptr [ %i.go, %.lr.ph.i.i122.epil ], [ %.01644.i.i123.epil.init, %.lr.ph.i.i122.epil.preheader ] ; 2 uses
  %.01743.i.i124.epil = phi i32 [ %i.gn, %.lr.ph.i.i122.epil ], [ %.01743.i.i124.epil.init, %.lr.ph.i.i122.epil.preheader ]
  %epil.iter595 = phi i64 [ %epil.iter595.next, %.lr.ph.i.i122.epil ], [ 0, %.lr.ph.i.i122.epil.preheader ]
  %i.gm = getelementptr i8, ptr %.01644.i.i123.epil, i64 4
  %.016.val.i.i125.epil = load i32, ptr %i.gm, align 4, !tbaa !132
  %i.gn = add i32 %.016.val.i.i125.epil, %.01743.i.i124.epil ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.01644.i.i123.epil, i64 16
  %epil.iter595.next = add i64 %epil.iter595, 1   ; 2 uses
  %epil.iter595.cmp.not = icmp eq i64 %epil.iter595.next, %xtraiter594
  br i1 %epil.iter595.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127, label %.lr.ph.i.i122.epil, !llvm.loop !831

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa, %.lr.ph.i.i122.epil, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi = phi i64 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i119, %.lr.ph.i.i122.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i119, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i = phi ptr [ %.val46.i.pre, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge ], [ %.val21.i.i120, %.lr.ph.i.i122.epil ], [ %.val21.i.i120, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa ] ; 3 uses
  %.066.i = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit115._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127_crit_edge ], [ %i.gk, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127.loopexit.unr-lcssa ], [ %i.gn, %.lr.ph.i.i122.epil ] ; 4 uses
  %i.gp = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.fk, ptr noundef nonnull %1, ptr %.val46.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, i32 noundef %.066.i, i32 noundef 0)
  br i1 %i.gp, label %bb.y, label %.critedge, !prof !97

bb.y:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127
  %i.gq = zext i32 %.066.i to i64                 ; 2 uses
  %i.gr = load i32, ptr %i.de, align 4, !tbaa !169
  %.not.i.i128 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i128, label %bb.z, label %.critedge, !prof !97

bb.z:                                             ; preds = %bb.y
  %i.gs = icmp slt i32 %.066.i, 0
  br i1 %i.gs, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %bb.aa, !prof !99

bb.aa:                                            ; preds = %bb.z
  %i.gt = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.gu = load ptr, ptr %i.au, align 8, !tbaa !171 ; 4 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = icmp slt i64 %i.gx, %i.gq
  br i1 %i.gy, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i: ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gq
  store ptr %i.gz, ptr %i.au, align 8, !tbaa !171
  %.not43.i = icmp eq ptr %i.gu, null
  br i1 %.not43.i, label %.critedge, label %bb.ab, !prof !143

bb.ab:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.pre-phi, 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %.idx.i
  br i1 %.not41.i.i117, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ag
  %.082.i = phi ptr [ %i.hn, %bb.ag ], [ %.val46.i, %bb.ab ] ; 3 uses
  %.03481.i = phi i32 [ %.1.ph.i, %bb.ag ], [ %.066.i, %bb.ab ] ; 3 uses
  %.03580.i = phi ptr [ %.136.ph.i, %bb.ag ], [ %i.gu, %bb.ab ] ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.082.i, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !132 ; 5 uses
  %.not45.i = icmp eq i32 %i.hc, 0
  br i1 %.not45.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hd = icmp ugt i32 %i.hc, %.03481.i
  br i1 %i.hd, label %bb.ad, label %bb.ae, !prof !99

bb.ad:                                            ; preds = %bb.ac
  %i.he = load i32, ptr %i.de, align 4, !tbaa !169
  %.not.i.i53.not.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i53.not.i, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i, label %.critedge, !prof !153

bb.ae:                                            ; preds = %bb.ac
  %i.hf = sub nuw nsw i32 %.03481.i, %i.hc        ; 2 uses
  %i.hg = icmp eq i32 %i.hc, 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.082.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !133 ; 2 uses
  br i1 %i.hg, label %bb.af, label %_ZL9hb_memcpyPvPKvm.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !148
  %i.hk = getelementptr inbounds nuw i8, ptr %.03580.i, i64 1
  store i8 %i.hj, ptr %.03580.i, align 1, !tbaa !148
  br label %bb.ag

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.ae
  %i.hl = zext nneg i32 %i.hc to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i, ptr readonly align 1 %i.hi, i64 %i.hl, i1 false), !alias.scope !858
  %i.hm = getelementptr inbounds nuw i8, ptr %.03580.i, i64 %i.hl
  br label %bb.ag

bb.ag:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i, %bb.af, %.lr.ph.i
  %.136.ph.i = phi ptr [ %i.hm, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.hk, %bb.af ], [ %.03580.i, %.lr.ph.i ]
  %.1.ph.i = phi i32 [ %i.hf, %_ZL9hb_memcpyPvPKvm.exit.i ], [ %i.hf, %bb.af ], [ %.03481.i, %.lr.ph.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.082.i, i64 16 ; 2 uses
  %.not44.i = icmp eq ptr %i.hn, %i.ha
  br i1 %.not44.i, label %.thread, label %.lr.ph.i

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i: ; preds = %bb.aa, %bb.z, %bb.ad
  %.sink.i = phi i32 [ 8, %bb.ad ], [ 4, %bb.z ], [ 4, %bb.aa ]
  store i32 %.sink.i, ptr %i.de, align 4, !tbaa !169
  br label %.critedge

.thread:                                          ; preds = %bb.ag, %bb.ab
  %i.ho = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  br label %bb.ah

bb.ah:                                            ; preds = %.thread, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit
  %.1 = phi i32 [ 0, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EEixEi.exit ], [ %i.ho, %.thread ]
  %i.hp = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.hq = load i8, ptr %i.df, align 1, !tbaa !207, !range !121, !noundef !122
  %i.hr = load i8, ptr %i.dg, align 8, !tbaa !208, !range !121, !noundef !122
  %i.hs = load i8, ptr %i.dh, align 4, !tbaa !209, !range !121, !noundef !122
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !210
  %i.hu = load i8, ptr %i.dj, align 2, !tbaa !279, !range !121, !noundef !122
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = select i1 %i.hv, ptr %i.dk, ptr null
  store i8 %i.hq, ptr %5, align 8, !tbaa !217
  store i8 %i.hr, ptr %i.dl, align 1, !tbaa !218
  store i8 %i.hs, ptr %i.dm, align 2, !tbaa !219
  store ptr null, ptr %i.dn, align 8, !tbaa !220
  store i8 0, ptr %i.do, align 8, !tbaa !221
  store i32 0, ptr %i.dp, align 4, !tbaa !222
  store i32 0, ptr %i.dq, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  store ptr %i.ht, ptr %i.ds, align 8, !tbaa !224
  store ptr %3, ptr %i.dt, align 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  store ptr %i.hw, ptr %i.du, align 8, !tbaa !859
  %i.hx = load i32, ptr %i.cw, align 4, !tbaa !225
  %i.hy = zext i32 %i.hx to i64
  %.not.i129 = icmp ult i64 %indvars.iv, %i.hy
  %i.hz = load ptr, ptr %i.dw, align 8
  %i.ia = getelementptr inbounds nuw [48 x i8], ptr %i.hz, i64 %indvars.iv
  %.0.i130 = select i1 %.not.i129, ptr %i.ia, ptr @_hb_NullPool, !prof !97 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i130, i64 12 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !226
  %.not12.i = icmp eq i32 %i.ic, 0
  br i1 %.not12.i, label %.loopexit335, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.ah
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i130, i64 16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ie = load i32, ptr %i.ib, align 4, !tbaa !226
  %i.if = zext i32 %i.ie to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.if
  br i1 %.not.not.i, label %bb.aj, label %.loopexit335, !llvm.loop !10

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i131
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i131 ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %i.ig = load ptr, ptr %i.id, align 8
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.ii = call noundef zeroext i1 @_ZNK33cff2_private_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tEj(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(13) %i.ih, i32 noundef %.1)
  br i1 %i.ii, label %bb.ai, label %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit, !prof !97

.loopexit335:                                     ; preds = %bb.ai, %bb.ah
  %i.ij = load ptr, ptr %i.cz, align 8, !tbaa !203 ; 4 uses
  %.not.i.i.i133 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i133, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.ak

bb.ak:                                            ; preds = %.loopexit335
  %i.ik = load i32, ptr %i.da, align 8, !tbaa !204
  %i.il = urem i32 %i.eg, %i.ik                   ; 2 uses
  %i.im = zext nneg i32 %i.il to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4            ; 2 uses
  %i.iq = and i32 %i.ip, 2
  %.not15.i.i.i.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not15.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak
  %i.ir = load i32, ptr %i.db, align 4
  %i.is = load i32, ptr %i.in, align 4, !tbaa !101
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp eq i64 %indvars.iv, %i.it
  br i1 %i.iu, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i134

bb.al:                                            ; preds = %.lr.ph.i.i.i.i134
  %i.iv = load i32, ptr %i.jg, align 4, !tbaa !101
  %i.iw = zext i32 %i.iv to i64
  %i.ix = icmp eq i64 %indvars.iv, %i.iw
  br i1 %i.ix, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i134, !llvm.loop !9

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.lcssa10.i.i.i.i = phi i32 [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %i.ji, %bb.al ]
  %i.iy = phi i64 [ %i.im, %.lr.ph.i.i.i.i.i ], [ %i.jf, %bb.al ]
  %i.iz = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.iy
  %i.ja = trunc i32 %.lcssa10.i.i.i.i to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %spec.select.i.i.i.i = select i1 %i.ja, ptr %i.jb, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i134:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.al
  %.01016.i13.i.i.i.i = phi i32 [ %i.je, %bb.al ], [ %i.il, %.lr.ph.i.i.i.i.i ]
  %.017.i12.i.i.i.i = phi i32 [ %i.jc, %bb.al ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.jc = add i32 %.017.i12.i.i.i.i, 1            ; 2 uses
  %i.jd = add i32 %i.jc, %.01016.i13.i.i.i.i
  %i.je = and i32 %i.jd, %i.ir                    ; 2 uses
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4            ; 2 uses
  %i.jj = and i32 %i.ji, 2
  %.not.i.i.i.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.al, !llvm.loop !9

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i134, %.loopexit335, %bb.ak, %._crit_edge.i.i.i.i
  %.0.i.i.i = phi ptr [ @minus_1, %.loopexit335 ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @minus_1, %bb.ak ], [ @minus_1, %.lr.ph.i.i.i.i134 ]
  %i.jk = load i32, ptr %.0.i.i.i, align 4, !tbaa !101 ; 2 uses
  %i.jl = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %.not.i135 = icmp eq ptr %i.jl, null
  br i1 %.not.i135, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.am, !prof !99

bb.am:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  %i.jm = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !178
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %_ZNK14hb_inc_bimap_tixEj.exit, %bb.am
  %.0.i136 = phi i32 [ %i.jr, %bb.am ], [ 0, %_ZNK14hb_inc_bimap_tixEj.exit ] ; 2 uses
  %.not.i137 = icmp ult i32 %i.jk, %i.ck
  br i1 %.not.i137, label %bb.ao, label %bb.an, !prof !97

bb.an:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  store i32 %.0.i136, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 4), align 4, !tbaa !227
  %i.js = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141

bb.ao:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.jt = zext nneg i32 %i.jk to i64
  %i.ju = getelementptr inbounds nuw [12 x i8], ptr %.sroa.14262.0.ph, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 %.0.i136, ptr %i.jv, align 4, !tbaa !227
  %i.jw = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141

_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141: ; preds = %bb.an, %bb.ao
  %i.jx = phi i32 [ %i.js, %bb.an ], [ %i.jw, %bb.ao ]
  %.0.i140 = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.ju, %bb.ao ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i140, i64 8
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !228
  br label %bb.ap

_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit: ; preds = %bb.aj
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit
  %.not.lcssa.i309 = phi i1 [ true, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EEixEi.exit141 ], [ false, %_ZN3CFF4Dict9serializeINS_31cff2_private_dict_values_base_tINS_8op_str_tEEE33cff2_private_dict_op_serializer_tJRjEEEbP22hb_serialize_context_tRKT_RT0_DpOT1_.exit ]
  %i.jz = load i32, ptr %i.dr, align 8, !tbaa !229
  %i.ka = add i32 %i.jz, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ka, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.aq, label %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dx, align 4, !tbaa !230
  %i.kb = load ptr, ptr %i.dy, align 8, !tbaa !231
  call void @hb_free(ptr noundef %i.kb) #16
  br label %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit

_ZN33cff2_private_dict_op_serializer_tD2Ev.exit:  ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not.lcssa.i309, label %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZNK14hb_inc_bimap_t3hasEj.exit.thread:           ; preds = %.lr.ph.i.i.i, %bb.q, %.lr.ph.split, %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit, %_ZNK14hb_inc_bimap_t3hasEj.exit
  %i.kc = icmp slt i64 %indvars.iv, 1
  br i1 %i.kc, label %.critedge99, label %.lr.ph.splitthread-pre-split, !llvm.loop !835

.critedge:                                        ; preds = %bb.y, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i127, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i, %bb.ad, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.critedge99:                                      ; preds = %_ZNK14hb_inc_bimap_t3hasEj.exit.thread, %.lr.ph, %bb.p
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !248
  %.not95 = icmp eq ptr %i.ke, @_hb_NullPool
  br i1 %.not95, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %.critedge99
  %i.kf = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !96
end_hunk_5
begin_hunk_6_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, %.lr.ph.i173
  %indvars.iv.i174 = phi i64 [ 0, %.lr.ph.i173 ], [ %indvars.iv.next.i177, %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i ] ; 2 uses
  %i.yi = load ptr, ptr %i.yg, align 8
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.yi, i64 %indvars.iv.i174 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !235
  %cond.i.i = icmp eq i32 %i.yl, 24
  br i1 %cond.i.i, label %bb.dd, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i

bb.dd:                                            ; preds = %bb.dc
  %i.ym = load i32, ptr %i.yh, align 4, !tbaa !865 ; 2 uses
  %.not.i.i179 = icmp eq i32 %i.ym, 0
  br i1 %.not.i.i179, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.dd
  %i.yn = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %1, i32 noundef 24, i32 noundef %i.ym, i32 noundef 0)
  br i1 %i.yn, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, label %.critedge101, !prof !866

_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i: ; preds = %bb.dc
  %i.yo = call noundef zeroext i1 @_ZNK3CFF28cff_top_dict_op_serializer_tINS_8op_str_tEE9serializeEP22hb_serialize_context_tRKS1_RKNS_20cff_sub_table_info_tE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(13) %i.yj, ptr noundef nonnull align 4 dereferenceable(24) %2)
  br i1 %i.yo, label %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, label %.critedge101, !prof !866

_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i: ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i, %.split.i, %bb.dd
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.yp = load i32, ptr %i.ye, align 4, !tbaa !226
  %i.yq = zext i32 %i.yp to i64
  %.not.not.i178 = icmp samesign ult i64 %indvars.iv.next.i177, %i.yq
  br i1 %.not.not.i178, label %bb.dc, label %.loopexit, !llvm.loop !852

.loopexit:                                        ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.thread.i, %bb.db
  %i.yr = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yb to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = trunc i64 %i.yu to i16
  %i.yw = getelementptr inbounds nuw i8, ptr %.pre.i.i171, i64 3
  %i.yx = call i16 @llvm.bswap.i16(i16 %i.yv)
  store i16 %i.yx, ptr %i.yw, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.yy = load ptr, ptr %i.au, align 8, !tbaa !171
  %i.yz = getelementptr inbounds nuw i8, ptr %2, i64 148
  %.val.i.i180 = load i32, ptr %i.yz, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i181 = icmp eq i32 %.val.i.i180, 0    ; 2 uses
  br i1 %.not41.i.i181, label %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge, label %.lr.ph.preheader.i.i182

.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge: ; preds = %.loopexit
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val46.i194.pre = load ptr, ptr %.phi.trans.insert422, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191

.lr.ph.preheader.i.i182:                          ; preds = %.loopexit
  %.sroa.2.8.insert.ext.i.i.i.i.i.i183 = zext i32 %.val.i.i180 to i64 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val21.i.i184 = load ptr, ptr %i.za, align 8, !tbaa !155 ; 4 uses
  %i.zb = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i183, 1152921504606846975
  %i.zc = and i64 %i.zb, 1152921504606846975      ; 2 uses
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %xtraiter601 = and i64 %i.zd, 7                 ; 3 uses
  %i.ze = icmp samesign ult i64 %i.zc, 7
  br i1 %i.ze, label %.lr.ph.i.i186.epil.preheader, label %.lr.ph.preheader.i.i182.new

.lr.ph.preheader.i.i182.new:                      ; preds = %.lr.ph.preheader.i.i182
  %unroll_iter606 = and i64 %i.zd, 2305843009213693944
  br label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %.lr.ph.i.i186, %.lr.ph.preheader.i.i182.new
  %.01644.i.i187 = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182.new ], [ %i.zv, %.lr.ph.i.i186 ] ; 9 uses
  %.01743.i.i188 = phi i32 [ 0, %.lr.ph.preheader.i.i182.new ], [ %i.zu, %.lr.ph.i.i186 ]
  %niter607 = phi i64 [ 0, %.lr.ph.preheader.i.i182.new ], [ %niter607.next.7, %.lr.ph.i.i186 ]
  %i.zf = getelementptr i8, ptr %.01644.i.i187, i64 4
  %.016.val.i.i189 = load i32, ptr %i.zf, align 4, !tbaa !132
  %i.zg = add i32 %.016.val.i.i189, %.01743.i.i188
  %i.zh = getelementptr i8, ptr %.01644.i.i187, i64 20
  %.016.val.i.i189.1 = load i32, ptr %i.zh, align 4, !tbaa !132
  %i.zi = add i32 %.016.val.i.i189.1, %i.zg
  %i.zj = getelementptr i8, ptr %.01644.i.i187, i64 36
  %.016.val.i.i189.2 = load i32, ptr %i.zj, align 4, !tbaa !132
  %i.zk = add i32 %.016.val.i.i189.2, %i.zi
  %i.zl = getelementptr i8, ptr %.01644.i.i187, i64 52
  %.016.val.i.i189.3 = load i32, ptr %i.zl, align 4, !tbaa !132
  %i.zm = add i32 %.016.val.i.i189.3, %i.zk
  %i.zn = getelementptr i8, ptr %.01644.i.i187, i64 68
  %.016.val.i.i189.4 = load i32, ptr %i.zn, align 4, !tbaa !132
  %i.zo = add i32 %.016.val.i.i189.4, %i.zm
  %i.zp = getelementptr i8, ptr %.01644.i.i187, i64 84
  %.016.val.i.i189.5 = load i32, ptr %i.zp, align 4, !tbaa !132
  %i.zq = add i32 %.016.val.i.i189.5, %i.zo
  %i.zr = getelementptr i8, ptr %.01644.i.i187, i64 100
  %.016.val.i.i189.6 = load i32, ptr %i.zr, align 4, !tbaa !132
  %i.zs = add i32 %.016.val.i.i189.6, %i.zq
  %i.zt = getelementptr i8, ptr %.01644.i.i187, i64 116
  %.016.val.i.i189.7 = load i32, ptr %i.zt, align 4, !tbaa !132
  %i.zu = add i32 %.016.val.i.i189.7, %i.zs       ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.01644.i.i187, i64 128 ; 2 uses
  %niter607.next.7 = add i64 %niter607, 8         ; 2 uses
  %niter607.ncmp.7 = icmp eq i64 %niter607.next.7, %unroll_iter606
  br i1 %niter607.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, label %.lr.ph.i.i186

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i186
  %lcmp.mod603.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod603.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil.preheader

.lr.ph.i.i186.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.preheader.i.i182
  %.01644.i.i187.epil.init = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182 ], [ %i.zv, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %.01743.i.i188.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i182 ], [ %i.zu, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %lcmp.mod605 = icmp ne i64 %xtraiter601, 0
  call void @llvm.assume(i1 %lcmp.mod605)
  br label %.lr.ph.i.i186.epil

.lr.ph.i.i186.epil:                               ; preds = %.lr.ph.i.i186.epil, %.lr.ph.i.i186.epil.preheader
  %.01644.i.i187.epil = phi ptr [ %i.zy, %.lr.ph.i.i186.epil ], [ %.01644.i.i187.epil.init, %.lr.ph.i.i186.epil.preheader ] ; 2 uses
  %.01743.i.i188.epil = phi i32 [ %i.zx, %.lr.ph.i.i186.epil ], [ %.01743.i.i188.epil.init, %.lr.ph.i.i186.epil.preheader ]
  %epil.iter602 = phi i64 [ %epil.iter602.next, %.lr.ph.i.i186.epil ], [ 0, %.lr.ph.i.i186.epil.preheader ]
  %i.zw = getelementptr i8, ptr %.01644.i.i187.epil, i64 4
  %.016.val.i.i189.epil = load i32, ptr %i.zw, align 4, !tbaa !132
  %i.zx = add i32 %.016.val.i.i189.epil, %.01743.i.i188.epil ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.01644.i.i187.epil, i64 16
  %epil.iter602.next = add i64 %epil.iter602, 1   ; 2 uses
  %epil.iter602.cmp.not = icmp eq i64 %epil.iter602.next, %xtraiter601
  br i1 %epil.iter602.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil, !llvm.loop !853

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.i.i186.epil, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi = phi i64 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %.lr.ph.i.i186.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i194 = phi ptr [ %.val46.i194.pre, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.val21.i.i184, %.lr.ph.i.i186.epil ], [ %.val21.i.i184, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 3 uses
  %.066.i193 = phi i32 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %i.zu, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ], [ %i.zx, %.lr.ph.i.i186.epil ] ; 4 uses
  %i.zz = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.yy, ptr noundef nonnull %1, ptr %.val46.i194, i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, i32 noundef %.066.i193, i32 noundef 0)
  br i1 %i.zz, label %bb.de, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !97

bb.de:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191
  %i.aaa = zext i32 %.066.i193 to i64             ; 2 uses
  %i.aab = load i32, ptr %i.xt, align 4, !tbaa !169
  %.not.i.i197 = icmp eq i32 %i.aab, 0
  br i1 %.not.i.i197, label %bb.df, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !97

bb.df:                                            ; preds = %bb.de
  %i.aac = icmp slt i32 %.066.i193, 0
  br i1 %i.aac, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %bb.dg, !prof !99

bb.dg:                                            ; preds = %bb.df
  %i.aad = load ptr, ptr %i.as, align 8, !tbaa !170
  %i.aae = load ptr, ptr %i.au, align 8, !tbaa !171 ; 4 uses
  %i.aaf = ptrtoint ptr %i.aad to i64
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  %i.aai = icmp slt i64 %i.aah, %i.aaa
  br i1 %i.aai, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198: ; preds = %bb.dg
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aaa
  store ptr %i.aaj, ptr %i.au, align 8, !tbaa !171
  %.not43.i199 = icmp eq ptr %i.aae, null
  br i1 %.not43.i199, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %bb.dh, !prof !143

bb.dh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198
  %.idx.i200 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, 4
  %i.aak = getelementptr inbounds nuw i8, ptr %.val46.i194, i64 %.idx.i200
  br i1 %.not41.i.i181, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.dh, %bb.dm
  %.082.i203 = phi ptr [ %i.aax, %bb.dm ], [ %.val46.i194, %bb.dh ] ; 3 uses
  %.03481.i204 = phi i32 [ %.1.ph.i209, %bb.dm ], [ %.066.i193, %bb.dh ] ; 3 uses
  %.03580.i205 = phi ptr [ %.136.ph.i208, %bb.dm ], [ %i.aae, %bb.dh ] ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.082.i203, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !132 ; 5 uses
  %.not45.i206 = icmp eq i32 %i.aam, 0
  br i1 %.not45.i206, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i202
  %i.aan = icmp ugt i32 %i.aam, %.03481.i204
  br i1 %i.aan, label %bb.dj, label %bb.dk, !prof !99

bb.dj:                                            ; preds = %bb.di
  %i.aao = load i32, ptr %i.xt, align 4, !tbaa !169
  %.not.i.i53.not.i211 = icmp eq i32 %i.aao, 0
  br i1 %.not.i.i53.not.i211, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.dk:                                            ; preds = %bb.di
  %i.aap = sub nuw nsw i32 %.03481.i204, %i.aam   ; 2 uses
  %i.aaq = icmp eq i32 %i.aam, 1
  %i.aar = getelementptr inbounds nuw i8, ptr %.082.i203, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !133 ; 2 uses
  br i1 %i.aaq, label %bb.dl, label %_ZL9hb_memcpyPvPKvm.exit.i207

bb.dl:                                            ; preds = %bb.dk
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !148
  %i.aau = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 1
  store i8 %i.aat, ptr %.03580.i205, align 1, !tbaa !148
  br label %bb.dm

_ZL9hb_memcpyPvPKvm.exit.i207:                    ; preds = %bb.dk
  %i.aav = zext nneg i32 %i.aam to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i205, ptr readonly align 1 %i.aas, i64 %i.aav, i1 false), !alias.scope !867
  %i.aaw = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 %i.aav
  br label %bb.dm

bb.dm:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i207, %bb.dl, %.lr.ph.i202
  %.136.ph.i208 = phi ptr [ %i.aaw, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aau, %bb.dl ], [ %.03580.i205, %.lr.ph.i202 ]
  %.1.ph.i209 = phi i32 [ %i.aap, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aap, %bb.dl ], [ %.03481.i204, %.lr.ph.i202 ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.082.i203, i64 16 ; 2 uses
  %.not44.i210 = icmp eq ptr %i.aax, %i.aak
  br i1 %.not44.i210, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212: ; preds = %bb.dj, %bb.dg, %bb.df
  %.sink.i213 = phi i32 [ 4, %bb.df ], [ 4, %bb.dg ], [ 8, %bb.dj ]
  store i32 %.sink.i213, ptr %i.xt, align 4, !tbaa !169
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.critedge101:                                     ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit, %bb.dm, %bb.cz, %.critedge.i.i172, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit, %.critedge101, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, %bb.de, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, %bb.dh, %bb.dj, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, %bb.cy, %bb.cp, %.critedge, %bb.cv, %bb.at
  %.12 = phi i1 [ false, %bb.cz ], [ true, %bb.dm ], [ false, %bb.cv ], [ false, %bb.cy ], [ false, %bb.cp ], [ false, %bb.at ], [ false, %bb.dj ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212 ], [ false, %.critedge ], [ false, %.critedge101 ], [ true, %bb.dh ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit ], [ false, %bb.de ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191 ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198 ], [ false, %.critedge.i.i172 ], [ false, %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit ] ; 2 uses
  br i1 %.not.i215.not.not, label %bb.dn, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

bb.dn:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14262.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %.thread.i216, %.loopexit337, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, %.critedge.i.i, %bb.m, %bb.dn, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  %.13 = phi i1 [ %.12, %bb.dn ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ], [ %.12, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %bb.m ], [ false, %.critedge.i.i ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %.loopexit337 ], [ false, %.thread.i216 ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  store ptr %i.r, ptr %i.u, align 8, !tbaa !173
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !171
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11CFF2FDArrayEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !99

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !264
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !97

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !266
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !263
  store ptr %i.p, ptr %i.d, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !169
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !169
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !267
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  store ptr %i.r, ptr %i.u, align 8, !tbaa !173
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !171
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF22cff2_instancing_plan_t19serialize_var_storeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_vector_t.171, align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !281  ; 6 uses
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 8                          ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !283  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !284  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not191 = icmp eq i32 %i.i, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph
end_hunk_6
begin_hunk_7_@_ZN3CFF22cff2_instancing_plan_t8finalizeEv:bb.a
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !295 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !290 ; 2 uses
  %i.rw = zext i32 %i.rv to i64
  %.idx806 = mul nuw nsw i64 %i.rw, 48
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 %.idx806
  %.not136775 = icmp eq i32 %i.rv, 0
  br i1 %.not136775, label %.critedge152, label %.lr.ph779

.lr.ph779:                                        ; preds = %.critedge148
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.sc = load i64, ptr @_hb_NullPool, align 16
  %i.sd = load ptr, ptr %i.s, align 8, !tbaa !508 ; 2 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %.critedge152, label %.lr.ph779.split

.lr.ph779.splitthread-pre-split:                  ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !508
  br label %.lr.ph779.split

.lr.ph779.split:                                  ; preds = %.lr.ph779, %.lr.ph779.splitthread-pre-split
  %i.sf = phi ptr [ %.pr, %.lr.ph779.splitthread-pre-split ], [ %i.sd, %.lr.ph779 ]
  %.0115776 = phi ptr [ %i.ut, %.lr.ph779.splitthread-pre-split ], [ %i.rt, %.lr.ph779 ] ; 6 uses
  %.not.i162 = icmp eq ptr %i.sf, null
  br i1 %.not.i162, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph779.split
  %i.sg = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.0115776)
  %i.sh = load ptr, ptr %i.s, align 8, !tbaa !508 ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i164, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.si = and i32 %i.sg, 1073741823               ; 2 uses
  %i.sj = load i32, ptr %i.ry, align 8, !tbaa !517
  %i.sk = urem i32 %i.si, %i.sj                   ; 2 uses
  %i.sl = zext nneg i32 %i.sk to i64              ; 2 uses
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %i.sl ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load i32, ptr %i.sn, align 8            ; 2 uses
  %i.sp = and i32 %i.so, 2
  %.not17.i.i.i165 = icmp eq i32 %i.sp, 0
  br i1 %.not17.i.i.i165, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %bb.ak, %._crit_edge.i.i.i171
  %i.sq = phi ptr [ %i.sz, %._crit_edge.i.i.i171 ], [ %i.sh, %bb.ak ]
  %i.sr = phi i32 [ %i.th, %._crit_edge.i.i.i171 ], [ %i.so, %bb.ak ]
  %i.ss = phi ptr [ %i.tf, %._crit_edge.i.i.i171 ], [ %i.sm, %bb.ak ]
  %i.st = phi i64 [ %i.te, %._crit_edge.i.i.i171 ], [ %i.sl, %bb.ak ]
  %.019.i.i.i167 = phi i32 [ %i.ta, %._crit_edge.i.i.i171 ], [ 0, %bb.ak ]
  %.01218.i.i.i168 = phi i32 [ %i.td, %._crit_edge.i.i.i171 ], [ %i.sk, %bb.ak ]
  %i.su = lshr i32 %i.sr, 2
  %i.sv = icmp eq i32 %i.su, %i.si
  br i1 %i.sv, label %bb.al, label %._crit_edge.i.i.i171

bb.al:                                            ; preds = %.lr.ph.i.i.i166
  %i.sw = load ptr, ptr %i.ss, align 8, !tbaa !519
  %i.sx = call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.sw, ptr noundef nonnull align 8 dereferenceable(48) %.0115776)
  %i.sy = load ptr, ptr %i.s, align 8, !tbaa !508 ; 3 uses
  br i1 %i.sx, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i173, label %._crit_edge.i.i.i171

._crit_edge.i.i.i171:                             ; preds = %bb.al, %.lr.ph.i.i.i166
  %i.sz = phi ptr [ %i.sq, %.lr.ph.i.i.i166 ], [ %i.sy, %bb.al ] ; 2 uses
  %i.ta = add i32 %.019.i.i.i167, 1               ; 2 uses
  %i.tb = add i32 %i.ta, %.01218.i.i.i168
  %i.tc = load i32, ptr %i.rz, align 4, !tbaa !526
  %i.td = and i32 %i.tc, %i.tb                    ; 2 uses
  %i.te = zext i32 %i.td to i64                   ; 2 uses
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.sz, i64 %i.te ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load i32, ptr %i.tg, align 8            ; 2 uses
  %i.ti = and i32 %i.th, 2
  %.not.i.i.i169 = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i.i169, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, label %.lr.ph.i.i.i166, !llvm.loop !25

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i173: ; preds = %bb.al
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.sy, i64 %i.st ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 8
  %i.tm = trunc i32 %i.tl to i1
  %.not9.i.i175.not644 = icmp ne ptr %i.sy, null
  %.not9.i.i175.not.not = and i1 %.not9.i.i175.not644, %i.tm
  br i1 %.not9.i.i175.not.not, label %bb.am, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.am:                                            ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i173
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !101
  %i.tp = icmp eq i32 %i.to, -1
  br i1 %i.tp, label %bb.an, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.0115776, ptr %i.a, align 8, !tbaa !297
  %i.tq = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.0115776)
  %i.tr = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.tq, ptr noundef nonnull align 4 dereferenceable(4) %i.sa, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.tr, label %bb.ao, label %.critedge150, !prof !97

bb.ao:                                            ; preds = %bb.an
  %i.ts = load i32, ptr %i.sa, align 4, !tbaa !296 ; 3 uses
  %i.tt = load i32, ptr %2, align 8, !tbaa !294   ; 6 uses
  %.not.i178 = icmp slt i32 %i.ts, %i.tt
  br i1 %.not.i178, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.tu = add i32 %i.ts, 1                        ; 2 uses
  %i.tv = icmp slt i32 %i.tt, 0
  br i1 %i.tv, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread613, label %bb.aq, !prof !99

bb.aq:                                            ; preds = %bb.ap
  %.not.i258 = icmp ugt i32 %i.tu, %i.tt
  br i1 %.not.i258, label %.preheader.i260, label %..critedge_crit_edge.i, !prof !99

.preheader.i260:                                  ; preds = %bb.aq, %.preheader.i260
  %.043.i = phi i32 [ %i.ty, %.preheader.i260 ], [ %i.tt, %bb.aq ] ; 2 uses
  %i.tw = lshr i32 %.043.i, 1
  %i.tx = add i32 %.043.i, 8
  %i.ty = add i32 %i.tx, %i.tw                    ; 7 uses
  %i.tz = icmp ugt i32 %i.tu, %i.ty
  br i1 %i.tz, label %.preheader.i260, label %.thread.i, !llvm.loop !15

.thread.i:                                        ; preds = %.preheader.i260
  %i.ua = icmp ugt i32 %i.ty, 536870911
  br i1 %i.ua, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread616, label %bb.ar, !prof !99

bb.ar:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.tt, 0
  %i.ub = load ptr, ptr %i.sb, align 8, !tbaa !293 ; 2 uses
  br i1 %.not49.i, label %bb.as, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i

bb.as:                                            ; preds = %bb.ar
  %.not9.i.i.i = icmp eq ptr %i.ub, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.uc = shl nuw i32 %i.ty, 3
  %i.ud = zext i32 %i.uc to i64
  %i.ue = call ptr @hb_malloc(i64 noundef %i.ud) #16 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ue, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %bb.au, !prof !99

bb.au:                                            ; preds = %bb.at
  %i.uf = load i32, ptr %i.sa, align 4, !tbaa !296 ; 2 uses
  %.not.i.i.i.i262 = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i.i.i262, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit, label %bb.av, !prof !99

bb.av:                                            ; preds = %bb.au
  %i.ug = zext i32 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 3
  %i.ui = load ptr, ptr %i.sb, align 8, !tbaa !293
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ue, ptr readonly align 1 %i.ui, i64 %i.uh, i1 false), !alias.scope !1111
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i: ; preds = %bb.as, %bb.ar
  %i.uj = phi ptr [ null, %bb.as ], [ %i.ub, %bb.ar ]
  %i.uk = shl nuw i32 %i.ty, 3
  %i.ul = zext i32 %i.uk to i64
  %i.um = call ptr @hb_realloc(ptr noundef %i.uj, i64 noundef %i.ul) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.um, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit, !prof !100

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, %bb.at
  %i.un = load i32, ptr %2, align 8, !tbaa !294   ; 2 uses
  %.not23.i = icmp ugt i32 %i.ty, %i.un
  br i1 %.not23.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread616, label %..critedge_crit_edge.i, !prof !147

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread616: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.tt, %.thread.i ], [ %i.un, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %2, align 8, !tbaa !294
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread613

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit: ; preds = %bb.au, %bb.av, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.um, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ], [ %i.ue, %bb.av ], [ %i.ue, %bb.au ]
  store ptr %.1.i.i42.i, ptr %i.sb, align 8, !tbaa !293
  store i32 %i.ty, ptr %2, align 8, !tbaa !294
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i, %bb.aq, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit
  %.pre.i = load i32, ptr %i.sa, align 4, !tbaa !296
  br label %.critedge.i

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread613: ; preds = %bb.ap, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread616
  store i64 %i.sc, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.ao
  %i.uo = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ts, %bb.ao ] ; 2 uses
  %i.up = load ptr, ptr %i.sb, align 8, !tbaa !293
  %i.uq = add i32 %i.uo, 1
  store i32 %i.uq, ptr %i.sa, align 4, !tbaa !296
  %i.ur = zext i32 %i.uo to i64
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %i.ur
  store ptr %.0115776, ptr %i.us, align 8, !tbaa !297
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit: ; preds = %._crit_edge.i.i.i171, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i173, %bb.ak, %bb.aj, %.lr.ph779.split, %.critedge.i, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread613, %bb.am
  %i.ut = getelementptr inbounds nuw i8, ptr %.0115776, i64 48 ; 2 uses
  %.not136 = icmp eq ptr %i.ut, %i.rx
  br i1 %.not136, label %.critedge152, label %.lr.ph779.splitthread-pre-split, !llvm.loop !1053

.critedge152:                                     ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, %.lr.ph779, %.critedge148
  %i.uu = load ptr, ptr %i.t, align 8, !tbaa !283 ; 2 uses
  %i.uv = load i32, ptr %i.c, align 4, !tbaa !284 ; 2 uses
  %i.uw = zext i32 %i.uv to i64
  %.idx807 = mul nuw nsw i64 %i.uw, 72
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.idx807
  %.not137786 = icmp eq i32 %i.uv, 0
  br i1 %.not137786, label %.critedge156, label %.lr.ph788

.lr.ph788:                                        ; preds = %.critedge152
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.va = load double, ptr @_hb_NullPool, align 16 ; 2 uses
  %i.vb = load double, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 8), align 8
  %i.vc = load double, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 16), align 16
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph788, %.loopexit
  %.0114787 = phi ptr [ %i.uu, %.lr.ph788 ], [ %i.aea, %.loopexit ] ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.0114787, i64 68
  %i.vg = load i8, ptr %i.vf, align 4, !tbaa !287, !range !121, !noundef !122
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.vi = getelementptr inbounds nuw i8, ptr %.0114787, i64 40
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !295 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0114787, i64 36
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !290 ; 2 uses
  %i.vm = zext i32 %i.vl to i64
  %.idx808 = mul nuw nsw i64 %i.vm, 48
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx808
  %.not138780 = icmp eq i32 %i.vl, 0
  %i.vo = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.vp = icmp eq ptr %i.vo, null
  %or.cond = select i1 %.not138780, i1 true, i1 %i.vp
  br i1 %or.cond, label %.loopexit, label %.lr.ph785.split

.lr.ph785.splitthread-pre-split:                  ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201
  %.pr1029 = load ptr, ptr %i.s, align 8, !tbaa !508
  br label %.lr.ph785.split

.lr.ph785.split:                                  ; preds = %bb.ax, %.lr.ph785.splitthread-pre-split
  %i.vq = phi ptr [ %.pr1029, %.lr.ph785.splitthread-pre-split ], [ %i.vo, %bb.ax ] ; 4 uses
  %.0113781 = phi ptr [ %i.adz, %.lr.ph785.splitthread-pre-split ], [ %i.vj, %bb.ax ] ; 9 uses
  %.not.i180 = icmp eq ptr %i.vq, null
  br i1 %.not.i180, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph785.split
  %i.vr = getelementptr inbounds nuw i8, ptr %.0113781, i64 28 ; 2 uses
  %.val.i346 = load i32, ptr %i.vr, align 4, !tbaa !516
  %i.vs = add i32 %.val.i346, 1                   ; 2 uses
  %.not15.i.i.i.i.i347 = icmp ult i32 %i.vs, 2
  br i1 %.not15.i.i.i.i.i347, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i348

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i348: ; preds = %bb.ay
  %i.vt = getelementptr inbounds nuw i8, ptr %.0113781, i64 40
  %.val1.i349 = load ptr, ptr %i.vt, align 8, !tbaa !438
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i348
  %.sroa.5.sroa.0.0.i351 = phi i32 [ %i.vx, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353 ], [ %i.vs, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i348 ] ; 2 uses
  %.sroa.04.0.i352 = phi ptr [ %i.vy, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353 ], [ %.val1.i349, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i348 ] ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i352, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !noalias !1112 ; 2 uses
  %i.vw = trunc i32 %i.vv to i1
  br i1 %i.vw, label %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350
  %i.vx = add i32 %.sroa.5.sroa.0.0.i351, -1      ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i352, i64 32
  %i.vz = icmp eq i32 %i.vx, 0
  br i1 %i.vz, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350, !llvm.loop !22

"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365"
  %i.wa = phi i32 [ %i.yn, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365" ], [ %i.vv, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350 ]
  %.011.i.i.i356 = phi i32 [ %i.yg, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365" ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350 ]
  %.us-phi4610.i.i.i357 = phi i32 [ %i.yj, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365" ], [ %.sroa.5.sroa.0.0.i351, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350 ]
  %.us-phi79.i.i.i358 = phi ptr [ %i.yl, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365" ], [ %.sroa.04.0.i352, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i350 ] ; 4 uses
  %i.wb = lshr i32 %i.wa, 2
  %i.wc = mul i32 %i.wb, 31
  %i.wd = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i358, i64 8
  %.val8.i.i.i.i.i.i.i.i359 = load i64, ptr %i.wd, align 8, !tbaa !436 ; 2 uses
  %i.we = lshr i64 %.val8.i.i.i.i.i.i.i.i359, 23
  %i.wf = xor i64 %i.we, %.val8.i.i.i.i.i.i.i.i359
  %i.wg = mul i64 %i.wf, 2388976653695081527      ; 2 uses
  %i.wh = lshr i64 %i.wg, 47
  %i.wi = xor i64 %i.wg, %i.wh
  %i.wj = xor i64 %i.wi, 4619197400955696334
  %i.wk = mul i64 %i.wj, -8645972361240307355     ; 2 uses
  %i.wl = lshr i64 %i.wk, 23
  %i.wm = xor i64 %i.wl, %i.wk
  %i.wn = mul i64 %i.wm, 2388976653695081527      ; 3 uses
  %i.wo = lshr i64 %i.wn, 47
  %i.wp = xor i64 %i.wo, %i.wn
  %i.wq = lshr i64 %i.wn, 32
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = trunc i64 %i.wr to i32
  %i.wt = xor i32 %i.ws, -2078137563
  %i.wu = mul i32 %i.wt, 16777619
  %i.wv = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i358, i64 16
  %.val7.i.i.i.i.i.i.i.i360 = load i64, ptr %i.wv, align 8, !tbaa !436 ; 2 uses
  %i.ww = lshr i64 %.val7.i.i.i.i.i.i.i.i360, 23
  %i.wx = xor i64 %i.ww, %.val7.i.i.i.i.i.i.i.i360
  %i.wy = mul i64 %i.wx, 2388976653695081527      ; 2 uses
  %i.wz = lshr i64 %i.wy, 47
  %i.xa = xor i64 %i.wy, %i.wz
  %i.xb = xor i64 %i.xa, 4619197400955696334
  %i.xc = mul i64 %i.xb, -8645972361240307355     ; 2 uses
  %i.xd = lshr i64 %i.xc, 23
  %i.xe = xor i64 %i.xd, %i.xc
  %i.xf = mul i64 %i.xe, 2388976653695081527      ; 3 uses
  %i.xg = lshr i64 %i.xf, 47
  %i.xh = xor i64 %i.xg, %i.xf
  %i.xi = lshr i64 %i.xf, 32
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = xor i32 %i.wu, %i.xk
  %i.xm = mul i32 %i.xl, 16777619
  %i.xn = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i358, i64 24
  %.val.i.i.i.i.i.i.i.i361 = load i64, ptr %i.xn, align 8, !tbaa !436 ; 2 uses
  %i.xo = lshr i64 %.val.i.i.i.i.i.i.i.i361, 23
  %i.xp = xor i64 %i.xo, %.val.i.i.i.i.i.i.i.i361
  %i.xq = mul i64 %i.xp, 2388976653695081527      ; 2 uses
  %i.xr = lshr i64 %i.xq, 47
  %i.xs = xor i64 %i.xq, %i.xr
  %i.xt = xor i64 %i.xs, 4619197400955696334
  %i.xu = mul i64 %i.xt, -8645972361240307355     ; 2 uses
  %i.xv = lshr i64 %i.xu, 23
  %i.xw = xor i64 %i.xv, %i.xu
  %i.xx = mul i64 %i.xw, 2388976653695081527      ; 3 uses
  %i.xy = lshr i64 %i.xx, 47
  %i.xz = xor i64 %i.xy, %i.xx
  %i.ya = lshr i64 %i.xx, 32
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = trunc i64 %i.yb to i32
  %i.yd = xor i32 %i.xm, %i.yc
  %i.ye = mul i32 %i.yd, 16777619
  %i.yf = add i32 %i.ye, %i.wc
  %i.yg = xor i32 %i.yf, %.011.i.i.i356           ; 2 uses
  %i.yh = add i32 %.us-phi4610.i.i.i357, -1       ; 2 uses
  %.not.i.i.us.i.i.i3631308 = icmp eq i32 %i.yh, 0
  br i1 %.not.i.i.us.i.i.i3631308, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i364

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i364
  %i.yi = add i32 %i.yj, -1                       ; 2 uses
  %.not.i.i.us.i.i.i363 = icmp eq i32 %i.yi, 0
  br i1 %.not.i.i.us.i.i.i363, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i364, !llvm.loop !23

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i364: ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362
  %i.yj = phi i32 [ %i.yi, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362 ], [ %i.yh, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355" ] ; 2 uses
  %i.yk = phi ptr [ %i.yl, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362 ], [ %.us-phi79.i.i.i358, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355" ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 32 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 36
  %i.yn = load i32, ptr %i.ym, align 4            ; 2 uses
  %i.yo = trunc i32 %i.yn to i1
  br i1 %i.yo, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362, !llvm.loop !23

"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i365": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i364
  br label %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355", !llvm.loop !24

_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366.loopexit: ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i355", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i362
  %i.yp = and i32 %i.yg, 1073741823
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366

_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366:  ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366.loopexit, %bb.ay
  %.0.lcssa.i.i.i354 = phi i32 [ %i.yp, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366.loopexit ], [ 0, %bb.ay ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i353 ] ; 2 uses
  %i.yq = load i32, ptr %i.uy, align 8, !tbaa !517
  %i.yr = urem i32 %.0.lcssa.i.i.i354, %i.yq      ; 2 uses
  %i.ys = zext nneg i32 %i.yr to i64              ; 2 uses
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.ys ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load i32, ptr %i.yu, align 8            ; 2 uses
  %i.yw = and i32 %i.yv, 2
  %.not17.i.i.i183 = icmp eq i32 %i.yw, 0
  br i1 %.not17.i.i.i183, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201, label %.lr.ph.i.i.i184

.lr.ph.i.i.i184:                                  ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366
  %i.yx = getelementptr inbounds nuw i8, ptr %.0113781, i64 20
  %i.yy = getelementptr inbounds nuw i8, ptr %.0113781, i64 40
  %i.yz = getelementptr inbounds nuw i8, ptr %.0113781, i64 32
  %i.za = load i32, ptr %i.uz, align 4
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i189, %.lr.ph.i.i.i184
  %i.zb = phi i32 [ %i.yv, %.lr.ph.i.i.i184 ], [ %i.acn, %._crit_edge.i.i.i189 ]
  %i.zc = phi ptr [ %i.yt, %.lr.ph.i.i.i184 ], [ %i.acl, %._crit_edge.i.i.i189 ]
  %i.zd = phi i64 [ %i.ys, %.lr.ph.i.i.i184 ], [ %i.ack, %._crit_edge.i.i.i189 ]
  %.019.i.i.i185 = phi i32 [ 0, %.lr.ph.i.i.i184 ], [ %i.ach, %._crit_edge.i.i.i189 ]
  %.01218.i.i.i186 = phi i32 [ %i.yr, %.lr.ph.i.i.i184 ], [ %i.acj, %._crit_edge.i.i.i189 ]
  %i.ze = lshr i32 %i.zb, 2
  %i.zf = icmp eq i32 %i.ze, %.0.lcssa.i.i.i354
  br i1 %i.zf, label %bb.ba, label %._crit_edge.i.i.i189

end_hunk_7
begin_hunk_8_@_ZN3CFF22cff2_instancing_plan_t8finalizeEv:bb.a
  %i.abg = add i32 %.017.i12.i.i.i292, 1          ; 2 uses
  %i.abh = add i32 %i.abg, %.01016.i13.i.i.i291
  %i.abi = and i32 %i.abh, %i.aax                 ; 2 uses
  %i.abj = zext i32 %i.abi to i64                 ; 2 uses
  %i.abk = getelementptr inbounds nuw [32 x i8], ptr %i.zw, i64 %i.abj ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abm = load i32, ptr %i.abl, align 4          ; 2 uses
  %i.abn = and i32 %i.abm, 2
  %.not.i.i.i15.i293 = icmp eq i32 %i.abn, 0
  br i1 %.not.i.i.i15.i293, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit.i297, label %bb.bf, !llvm.loop !18

_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit.i297: ; preds = %.lr.ph.i.i.i290, %._crit_edge.i.i.i294, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i281"
  %.0.i.i298 = phi ptr [ @_hb_NullPool, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i281" ], [ %spec.select.i.i.i296, %._crit_edge.i.i.i294 ], [ @_hb_NullPool, %.lr.ph.i.i.i290 ] ; 3 uses
  %i.abo = load double, ptr %.0.i.i298, align 8, !tbaa !523
  %i.abp = fcmp oeq double %i.abo, %.sroa.565.8.copyload.i283
  br i1 %i.abp, label %bb.bg, label %._crit_edge.i.i.i189

bb.bg:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit.i297
  %i.abq = getelementptr inbounds nuw i8, ptr %.0.i.i298, i64 8
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !524
  %i.abs = fcmp oeq double %i.abr, %.sroa.7.8.copyload.i285
  br i1 %i.abs, label %_ZNK6TripleneES_.exit.i299, label %._crit_edge.i.i.i189

_ZNK6TripleneES_.exit.i299:                       ; preds = %bb.bg
  %i.abt = getelementptr inbounds nuw i8, ptr %.0.i.i298, i64 16
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !441
  %i.abv = fcmp oeq double %i.abu, %.sroa.8.8.copyload.i287
  br i1 %i.abv, label %.preheader.preheader.i300, label %._crit_edge.i.i.i189

.preheader.preheader.i300:                        ; preds = %_ZNK6TripleneES_.exit.i299
  %i.abw = zext i32 %.sroa.718.044.i279 to i64
  %i.abx = shl nuw nsw i64 %i.abw, 5
  %scevgep.i301 = getelementptr i8, ptr %.sroa.017.045.i278, i64 %i.abx
  %scevgep81.i302 = getelementptr i8, ptr %.sroa.017.045.i278, i64 32
  %i.aby = add i32 %.sroa.718.044.i279, -1
  %i.abz = zext i32 %i.aby to i64
  %i.aca = shl nuw nsw i64 %i.abz, 5
  %scevgep82.i303 = getelementptr i8, ptr %scevgep81.i302, i64 %i.aca
  %.not.i.i.i.i.i.i16.i3071311 = icmp eq i32 %.sroa.718.044.i279, 0
  br i1 %.not.i.i.i.i.i.i16.i3071311, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308, !prof !115

.preheader.i304:                                  ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308, !llvm.loop !23

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308: ; preds = %.preheader.preheader.i300, %.preheader.i304
  %.sroa.017.1.i3061313 = phi ptr [ %i.acc, %.preheader.i304 ], [ %.sroa.017.045.i278, %.preheader.preheader.i300 ] ; 2 uses
  %.sroa.718.1.i3051312 = phi i32 [ %i.acb, %.preheader.i304 ], [ %.sroa.718.044.i279, %.preheader.preheader.i300 ]
  %i.acb = add i32 %.sroa.718.1.i3051312, -1      ; 3 uses
  %.not.i.i.i.i.i309 = icmp eq i32 %i.acb, 0
  br i1 %.not.i.i.i.i.i309, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311", label %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310"

"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i3061313, i64 32 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i3061313, i64 36
  %i.ace = load i32, ptr %i.acd, align 4
  %i.acf = trunc i32 %i.ace to i1
  br i1 %i.acf, label %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311_crit_edge", label %.preheader.i304, !llvm.loop !23

"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311", !llvm.loop !23

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311_crit_edge", %.preheader.preheader.i300
  %.sroa.718.2.i312 = phi i32 [ 0, %.preheader.preheader.i300 ], [ %i.acb, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308 ] ; 2 uses
  %.sroa.017.2.i313 = phi ptr [ %scevgep.i301, %.preheader.preheader.i300 ], [ %i.acc, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i310._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311_crit_edge" ], [ %scevgep82.i303, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i308 ] ; 2 uses
  %.not.i.i.i.i314 = icmp eq ptr %.sroa.017.2.i313, %i.zv
  %i.acg = icmp eq i32 %.sroa.718.2.i312, 0
  %.not36.i315 = and i1 %i.acg, %.not.i.i.i.i314
  br i1 %.not36.i315, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i191, label %bb.bd

._crit_edge.i.i.i189:                             ; preds = %bb.bg, %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit.i297, %_ZNK6TripleneES_.exit.i299, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.us.i320", %bb.ba, %bb.az
  %i.ach = add i32 %.019.i.i.i185, 1              ; 2 uses
  %i.aci = add i32 %i.ach, %.01218.i.i.i186
  %i.acj = and i32 %i.za, %i.aci                  ; 2 uses
  %i.ack = zext i32 %i.acj to i64                 ; 2 uses
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.ack ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load i32, ptr %i.acm, align 8          ; 2 uses
  %i.aco = and i32 %i.acn, 2
  %.not.i.i.i187 = icmp eq i32 %i.aco, 0
  br i1 %.not.i.i.i187, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201, label %bb.az, !llvm.loop !25

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i191: ; preds = %bb.bb, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i274, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i311", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.us.i340"
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.zd ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load i32, ptr %i.acq, align 8
  %i.acs = trunc i32 %i.acr to i1
  br i1 %i.acs, label %bb.bh, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201

bb.bh:                                            ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i191
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !101
  %i.acv = icmp eq i32 %i.acu, -1
  br i1 %i.acv, label %bb.bi, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %.0113781, ptr %i.b, align 8, !tbaa !297
  %i.acw = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.0113781)
  %i.acx = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.acw, ptr noundef nonnull align 4 dereferenceable(4) %i.vd, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %i.acx, label %bb.bj, label %.critedge150, !prof !97

bb.bj:                                            ; preds = %bb.bi
  %i.acy = load i32, ptr %i.vd, align 4, !tbaa !296 ; 3 uses
  %i.acz = load i32, ptr %2, align 8, !tbaa !294  ; 6 uses
  %.not.i196 = icmp slt i32 %i.acy, %i.acz
  br i1 %.not.i196, label %.critedge.i200, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ada = add i32 %i.acy, 1                      ; 2 uses
  %i.adb = icmp slt i32 %i.acz, 0
  br i1 %i.adb, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread623, label %bb.bl, !prof !99

bb.bl:                                            ; preds = %bb.bk
  %.not.i367 = icmp ugt i32 %i.ada, %i.acz
  br i1 %.not.i367, label %.preheader.i369, label %..critedge_crit_edge.i198, !prof !99

.preheader.i369:                                  ; preds = %bb.bl, %.preheader.i369
  %.043.i370 = phi i32 [ %i.ade, %.preheader.i369 ], [ %i.acz, %bb.bl ] ; 2 uses
  %i.adc = lshr i32 %.043.i370, 1
  %i.add = add i32 %.043.i370, 8
  %i.ade = add i32 %i.add, %i.adc                 ; 7 uses
  %i.adf = icmp ugt i32 %i.ada, %i.ade
  br i1 %i.adf, label %.preheader.i369, label %.thread.i371, !llvm.loop !15

.thread.i371:                                     ; preds = %.preheader.i369
  %i.adg = icmp ugt i32 %i.ade, 536870911
  br i1 %i.adg, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread626, label %bb.bm, !prof !99

bb.bm:                                            ; preds = %.thread.i371
  %.not49.i373 = icmp eq i32 %i.acz, 0
  %i.adh = load ptr, ptr %i.ve, align 8, !tbaa !293 ; 2 uses
  br i1 %.not49.i373, label %bb.bn, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374

bb.bn:                                            ; preds = %bb.bm
  %.not9.i.i.i383 = icmp eq ptr %i.adh, null
  br i1 %.not9.i.i.i383, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.adi = shl nuw i32 %i.ade, 3
  %i.adj = zext i32 %i.adi to i64
  %i.adk = call ptr @hb_malloc(i64 noundef %i.adj) #16 ; 4 uses
  %.not10.i.i.i384 = icmp eq ptr %i.adk, null
  br i1 %.not10.i.i.i384, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381, label %bb.bp, !prof !99

bb.bp:                                            ; preds = %bb.bo
  %i.adl = load i32, ptr %i.vd, align 4, !tbaa !296 ; 2 uses
  %.not.i.i.i.i385 = icmp eq i32 %i.adl, 0
  br i1 %.not.i.i.i.i385, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387, label %bb.bq, !prof !99

bb.bq:                                            ; preds = %bb.bp
  %i.adm = zext i32 %i.adl to i64
  %i.adn = shl nuw nsw i64 %i.adm, 3
  %i.ado = load ptr, ptr %i.ve, align 8, !tbaa !293
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adk, ptr readonly align 1 %i.ado, i64 %i.adn, i1 false), !alias.scope !1116
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374: ; preds = %bb.bn, %bb.bm
  %i.adp = phi ptr [ null, %bb.bn ], [ %i.adh, %bb.bm ]
  %i.adq = shl nuw i32 %i.ade, 3
  %i.adr = zext i32 %i.adq to i64
  %i.ads = call ptr @hb_realloc(ptr noundef %i.adp, i64 noundef %i.adr) #16 ; 2 uses
  %.not22.i375 = icmp eq ptr %i.ads, null
  br i1 %.not22.i375, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387, !prof !100

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374, %bb.bo
  %i.adt = load i32, ptr %2, align 8, !tbaa !294  ; 2 uses
  %.not23.i382 = icmp ugt i32 %i.ade, %i.adt
  br i1 %.not23.i382, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread626, label %..critedge_crit_edge.i198, !prof !147

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread626: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381, %.thread.i371
  %.sink.i379.ph.in = phi i32 [ %i.acz, %.thread.i371 ], [ %i.adt, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381 ]
  %.sink.i379.ph = xor i32 %.sink.i379.ph.in, -1
  store i32 %.sink.i379.ph, ptr %2, align 8, !tbaa !294
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread623

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387: ; preds = %bb.bp, %bb.bq, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374
  %.1.i.i42.i377 = phi ptr [ %i.ads, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i374 ], [ %i.adk, %bb.bq ], [ %i.adk, %bb.bp ]
  store ptr %.1.i.i42.i377, ptr %i.ve, align 8, !tbaa !293
  store i32 %i.ade, ptr %2, align 8, !tbaa !294
  br label %..critedge_crit_edge.i198

..critedge_crit_edge.i198:                        ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i381, %bb.bl, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387
  %.pre.i199 = load i32, ptr %i.vd, align 4, !tbaa !296
  br label %.critedge.i200

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread623: ; preds = %bb.bk, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread626
  store double %i.va, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201

.critedge.i200:                                   ; preds = %..critedge_crit_edge.i198, %bb.bj
  %i.adu = phi i32 [ %.pre.i199, %..critedge_crit_edge.i198 ], [ %i.acy, %bb.bj ] ; 2 uses
  %i.adv = load ptr, ptr %i.ve, align 8, !tbaa !293
  %i.adw = add i32 %i.adu, 1
  store i32 %i.adw, ptr %i.vd, align 4, !tbaa !296
  %i.adx = zext i32 %i.adu to i64
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %i.adx
  store ptr %.0113781, ptr %i.ady, align 8, !tbaa !297
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201: ; preds = %._crit_edge.i.i.i189, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i191, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit366, %.lr.ph785.split, %.critedge.i200, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit387.thread623, %bb.bh
  %i.adz = getelementptr inbounds nuw i8, ptr %.0113781, i64 48 ; 2 uses
  %.not138 = icmp eq ptr %i.adz, %i.vn
  br i1 %.not138, label %.loopexit, label %.lr.ph785.splitthread-pre-split, !llvm.loop !1077

.loopexit:                                        ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit201, %bb.ax, %bb.aw
  %i.aea = getelementptr inbounds nuw i8, ptr %.0114787, i64 72 ; 2 uses
  %.not137 = icmp eq ptr %i.aea, %i.ux
  br i1 %.not137, label %.critedge156, label %bb.aw

.critedge156:                                     ; preds = %.loopexit, %.critedge152
  %i.aeb = load i32, ptr %2, align 8, !tbaa !294
  %i.aec = icmp slt i32 %i.aeb, 0
  br i1 %i.aec, label %.critedge150, label %bb.br, !prof !99

bb.br:                                            ; preds = %.critedge156
  %i.aed = load ptr, ptr %i.t, align 8, !tbaa !283 ; 2 uses
  %i.aee = load i32, ptr %i.c, align 4, !tbaa !284 ; 2 uses
  %i.aef = zext i32 %i.aee to i64
  %.idx809 = mul nuw nsw i64 %i.aef, 72
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx809
  %.not139793 = icmp eq i32 %i.aee, 0
  br i1 %.not139793, label %.critedge160, label %.lr.ph797

.lr.ph797:                                        ; preds = %bb.br
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aej = load double, ptr @_hb_NullPool, align 16 ; 2 uses
  %i.aek = load double, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 8), align 8
  %i.ael = load double, ptr getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 16), align 16
  %i.aem = bitcast double %i.aej to i64
  %i.aen = trunc i64 %i.aem to i32
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph797, %bb.cm
  %.0112794 = phi ptr [ %i.aed, %.lr.ph797 ], [ %i.ank, %bb.cm ] ; 8 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0112794, i64 68
  %i.aep = load i8, ptr %i.aeo, align 4, !tbaa !287, !range !121, !noundef !122
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %bb.bt, label %bb.cm

bb.bt:                                            ; preds = %bb.bs
  %i.aer = getelementptr inbounds nuw i8, ptr %.0112794, i64 40
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !295 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.0112794, i64 36
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !290 ; 2 uses
  %i.aev = zext i32 %i.aeu to i64
  %.idx810 = mul nuw nsw i64 %i.aev, 48
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aes, i64 %.idx810
  %.not140789 = icmp eq i32 %i.aeu, 0
  br i1 %.not140789, label %.critedge158.thread, label %.lr.ph792

.lr.ph792:                                        ; preds = %bb.bt
  %i.aex = getelementptr inbounds nuw i8, ptr %.0112794, i64 48 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.0112794, i64 52 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.0112794, i64 56 ; 4 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph792, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %.0111790 = phi ptr [ %i.aes, %.lr.ph792 ], [ %i.ang, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %i.afa = load ptr, ptr %i.s, align 8, !tbaa !508 ; 4 uses
  %.not.i202 = icmp eq ptr %i.afa, null
  br i1 %.not.i202, label %.critedge150, label %bb.bv, !prof !530

bb.bv:                                            ; preds = %bb.bu
  %i.afb = getelementptr inbounds nuw i8, ptr %.0111790, i64 28 ; 2 uses
  %.val.i470 = load i32, ptr %i.afb, align 4, !tbaa !516
  %i.afc = add i32 %.val.i470, 1                  ; 2 uses
  %.not15.i.i.i.i.i471 = icmp ult i32 %i.afc, 2
  br i1 %.not15.i.i.i.i.i471, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i472

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i472: ; preds = %bb.bv
  %i.afd = getelementptr inbounds nuw i8, ptr %.0111790, i64 40
  %.val1.i473 = load ptr, ptr %i.afd, align 8, !tbaa !438
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i472
  %.sroa.5.sroa.0.0.i475 = phi i32 [ %i.afh, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477 ], [ %i.afc, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i472 ] ; 2 uses
  %.sroa.04.0.i476 = phi ptr [ %i.afi, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477 ], [ %.val1.i473, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i472 ] ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i476, i64 4
  %i.aff = load i32, ptr %i.afe, align 4, !noalias !1117 ; 2 uses
  %i.afg = trunc i32 %i.aff to i1
  br i1 %i.afg, label %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474
  %i.afh = add i32 %.sroa.5.sroa.0.0.i475, -1     ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i476, i64 32
  %i.afj = icmp eq i32 %i.afh, 0
  br i1 %i.afj, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474, !llvm.loop !22

"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489"
  %i.afk = phi i32 [ %i.ahx, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489" ], [ %i.aff, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474 ]
  %.011.i.i.i480 = phi i32 [ %i.ahq, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489" ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474 ]
  %.us-phi4610.i.i.i481 = phi i32 [ %i.aht, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489" ], [ %.sroa.5.sroa.0.0.i475, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474 ]
  %.us-phi79.i.i.i482 = phi ptr [ %i.ahv, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489" ], [ %.sroa.04.0.i476, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i474 ] ; 4 uses
  %i.afl = lshr i32 %i.afk, 2
  %i.afm = mul i32 %i.afl, 31
  %i.afn = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i482, i64 8
  %.val8.i.i.i.i.i.i.i.i483 = load i64, ptr %i.afn, align 8, !tbaa !436 ; 2 uses
  %i.afo = lshr i64 %.val8.i.i.i.i.i.i.i.i483, 23
  %i.afp = xor i64 %i.afo, %.val8.i.i.i.i.i.i.i.i483
  %i.afq = mul i64 %i.afp, 2388976653695081527    ; 2 uses
  %i.afr = lshr i64 %i.afq, 47
  %i.afs = xor i64 %i.afq, %i.afr
  %i.aft = xor i64 %i.afs, 4619197400955696334
  %i.afu = mul i64 %i.aft, -8645972361240307355   ; 2 uses
  %i.afv = lshr i64 %i.afu, 23
  %i.afw = xor i64 %i.afv, %i.afu
  %i.afx = mul i64 %i.afw, 2388976653695081527    ; 3 uses
  %i.afy = lshr i64 %i.afx, 47
  %i.afz = xor i64 %i.afy, %i.afx
  %i.aga = lshr i64 %i.afx, 32
  %i.agb = sub i64 %i.afz, %i.aga
  %i.agc = trunc i64 %i.agb to i32
  %i.agd = xor i32 %i.agc, -2078137563
  %i.age = mul i32 %i.agd, 16777619
  %i.agf = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i482, i64 16
  %.val7.i.i.i.i.i.i.i.i484 = load i64, ptr %i.agf, align 8, !tbaa !436 ; 2 uses
  %i.agg = lshr i64 %.val7.i.i.i.i.i.i.i.i484, 23
  %i.agh = xor i64 %i.agg, %.val7.i.i.i.i.i.i.i.i484
  %i.agi = mul i64 %i.agh, 2388976653695081527    ; 2 uses
  %i.agj = lshr i64 %i.agi, 47
  %i.agk = xor i64 %i.agi, %i.agj
  %i.agl = xor i64 %i.agk, 4619197400955696334
  %i.agm = mul i64 %i.agl, -8645972361240307355   ; 2 uses
  %i.agn = lshr i64 %i.agm, 23
  %i.ago = xor i64 %i.agn, %i.agm
  %i.agp = mul i64 %i.ago, 2388976653695081527    ; 3 uses
  %i.agq = lshr i64 %i.agp, 47
  %i.agr = xor i64 %i.agq, %i.agp
  %i.ags = lshr i64 %i.agp, 32
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = trunc i64 %i.agt to i32
  %i.agv = xor i32 %i.age, %i.agu
  %i.agw = mul i32 %i.agv, 16777619
  %i.agx = getelementptr inbounds nuw i8, ptr %.us-phi79.i.i.i482, i64 24
  %.val.i.i.i.i.i.i.i.i485 = load i64, ptr %i.agx, align 8, !tbaa !436 ; 2 uses
  %i.agy = lshr i64 %.val.i.i.i.i.i.i.i.i485, 23
  %i.agz = xor i64 %i.agy, %.val.i.i.i.i.i.i.i.i485
  %i.aha = mul i64 %i.agz, 2388976653695081527    ; 2 uses
  %i.ahb = lshr i64 %i.aha, 47
  %i.ahc = xor i64 %i.aha, %i.ahb
  %i.ahd = xor i64 %i.ahc, 4619197400955696334
  %i.ahe = mul i64 %i.ahd, -8645972361240307355   ; 2 uses
  %i.ahf = lshr i64 %i.ahe, 23
  %i.ahg = xor i64 %i.ahf, %i.ahe
  %i.ahh = mul i64 %i.ahg, 2388976653695081527    ; 3 uses
  %i.ahi = lshr i64 %i.ahh, 47
  %i.ahj = xor i64 %i.ahi, %i.ahh
  %i.ahk = lshr i64 %i.ahh, 32
  %i.ahl = sub i64 %i.ahj, %i.ahk
  %i.ahm = trunc i64 %i.ahl to i32
  %i.ahn = xor i32 %i.agw, %i.ahm
  %i.aho = mul i32 %i.ahn, 16777619
  %i.ahp = add i32 %i.aho, %i.afm
  %i.ahq = xor i32 %i.ahp, %.011.i.i.i480         ; 2 uses
  %i.ahr = add i32 %.us-phi4610.i.i.i481, -1      ; 2 uses
  %.not.i.i.us.i.i.i4871329 = icmp eq i32 %i.ahr, 0
  br i1 %.not.i.i.us.i.i.i4871329, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i488

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i488
  %i.ahs = add i32 %i.aht, -1                     ; 2 uses
  %.not.i.i.us.i.i.i487 = icmp eq i32 %i.ahs, 0
  br i1 %.not.i.i.us.i.i.i487, label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i488, !llvm.loop !23

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i488: ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486
  %i.aht = phi i32 [ %i.ahs, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486 ], [ %i.ahr, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479" ] ; 2 uses
  %i.ahu = phi ptr [ %i.ahv, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486 ], [ %.us-phi79.i.i.i482, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479" ] ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 32 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 36
  %i.ahx = load i32, ptr %i.ahw, align 4          ; 2 uses
  %i.ahy = trunc i32 %i.ahx to i1
  br i1 %i.ahy, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486, !llvm.loop !23

"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EppEv.exit.i.i.i489": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.i.us.i.i.i488
  br label %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479", !llvm.loop !24

_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490.loopexit: ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i479", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.us.i.i.i486
  %i.ahz = and i32 %i.ahq, 1073741823
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490

_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490:  ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490.loopexit, %bb.bv
  %.0.lcssa.i.i.i478 = phi i32 [ %i.ahz, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490.loopexit ], [ 0, %bb.bv ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i477 ] ; 2 uses
  %i.aia = load i32, ptr %i.aeh, align 8, !tbaa !517
  %i.aib = urem i32 %.0.lcssa.i.i.i478, %i.aia    ; 2 uses
  %i.aic = zext nneg i32 %i.aib to i64            ; 2 uses
  %i.aid = getelementptr inbounds nuw [16 x i8], ptr %i.afa, i64 %i.aic ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aif = load i32, ptr %i.aie, align 8          ; 2 uses
  %i.aig = and i32 %i.aif, 2
  %.not17.i.i.i205 = icmp eq i32 %i.aig, 0
  br i1 %.not17.i.i.i205, label %.critedge150, label %.lr.ph.i.i.i206, !prof !530

.lr.ph.i.i.i206:                                  ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490
  %i.aih = getelementptr inbounds nuw i8, ptr %.0111790, i64 20
  %i.aii = getelementptr inbounds nuw i8, ptr %.0111790, i64 40
  %i.aij = getelementptr inbounds nuw i8, ptr %.0111790, i64 32
  %i.aik = load i32, ptr %i.aei, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i.i.i211, %.lr.ph.i.i.i206
end_hunk_8
begin_hunk_9_@_ZN3CFF22cff2_instancing_plan_t8finalizeEv:bb.a
_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i432: ; preds = %.preheader.preheader.i424, %.preheader.i428
  %.sroa.017.1.i4301334 = phi ptr [ %i.alm, %.preheader.i428 ], [ %.sroa.017.045.i402, %.preheader.preheader.i424 ] ; 2 uses
  %.sroa.718.1.i4291333 = phi i32 [ %i.all, %.preheader.i428 ], [ %.sroa.718.044.i403, %.preheader.preheader.i424 ]
  %i.all = add i32 %.sroa.718.1.i4291333, -1      ; 3 uses
  %.not.i.i.i.i.i433 = icmp eq i32 %i.all, 0
  br i1 %.not.i.i.i.i.i433, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435", label %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434"

"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i432
  %i.alm = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i4301334, i64 32 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i4301334, i64 36
  %i.alo = load i32, ptr %i.aln, align 4
  %i.alp = trunc i32 %i.alo to i1
  br i1 %i.alp, label %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435_crit_edge", label %.preheader.i428, !llvm.loop !23

"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435_crit_edge": ; preds = %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435", !llvm.loop !23

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i432, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435_crit_edge", %.preheader.preheader.i424
  %.sroa.718.2.i436 = phi i32 [ 0, %.preheader.preheader.i424 ], [ %i.all, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i432 ] ; 2 uses
  %.sroa.017.2.i437 = phi ptr [ %scevgep.i425, %.preheader.preheader.i424 ], [ %i.alm, %"_ZNK4$_25clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i434._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435_crit_edge" ], [ %scevgep82.i427, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i432 ] ; 2 uses
  %.not.i.i.i.i438 = icmp eq ptr %.sroa.017.2.i437, %i.ajf
  %i.alq = icmp eq i32 %.sroa.718.2.i436, 0
  %.not36.i439 = and i1 %i.alq, %.not.i.i.i.i438
  br i1 %.not36.i439, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i213, label %bb.ca

._crit_edge.i.i.i211:                             ; preds = %bb.cd, %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit.i421, %_ZNK6TripleneES_.exit.i423, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.us.i444", %bb.bx, %bb.bw
  %i.alr = add i32 %.019.i.i.i207, 1              ; 2 uses
  %i.als = add i32 %i.alr, %.01218.i.i.i208
  %i.alt = and i32 %i.aik, %i.als                 ; 2 uses
  %i.alu = zext i32 %i.alt to i64                 ; 2 uses
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.afa, i64 %i.alu ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.alx = load i32, ptr %i.alw, align 8          ; 2 uses
  %i.aly = and i32 %i.alx, 2
  %.not.i.i.i209 = icmp eq i32 %i.aly, 0
  br i1 %.not.i.i.i209, label %.critedge150, label %bb.bw, !prof !530, !llvm.loop !25

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i213: ; preds = %bb.by, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i398, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i435", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.us.i464"
  %i.alz = getelementptr inbounds nuw [16 x i8], ptr %i.afa, i64 %i.ain ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 8
  %i.amb = load i32, ptr %i.ama, align 8
  %i.amc = trunc i32 %i.amb to i1
  br i1 %i.amc, label %bb.ce, label %.critedge150

bb.ce:                                            ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i213
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alz, i64 12
  %i.ame = load i32, ptr %i.aey, align 4, !tbaa !108 ; 3 uses
  %i.amf = load i32, ptr %i.aex, align 8, !tbaa !106 ; 6 uses
  %.not.i217 = icmp slt i32 %i.ame, %i.amf
  br i1 %.not.i217, label %.critedge.i221, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.amg = add i32 %i.ame, 1                      ; 2 uses
  %i.amh = icmp slt i32 %i.amf, 0
  br i1 %i.amh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread634, label %bb.cg, !prof !99

bb.cg:                                            ; preds = %bb.cf
  %.not.i491 = icmp ugt i32 %i.amg, %i.amf
  br i1 %.not.i491, label %.preheader.i493, label %..critedge_crit_edge.i219, !prof !99

.preheader.i493:                                  ; preds = %bb.cg, %.preheader.i493
  %.043.i494 = phi i32 [ %i.amk, %.preheader.i493 ], [ %i.amf, %bb.cg ] ; 2 uses
  %i.ami = lshr i32 %.043.i494, 1
  %i.amj = add i32 %.043.i494, 8
  %i.amk = add i32 %i.amj, %i.ami                 ; 7 uses
  %i.aml = icmp ugt i32 %i.amg, %i.amk
  br i1 %i.aml, label %.preheader.i493, label %.thread.i495, !llvm.loop !0

.thread.i495:                                     ; preds = %.preheader.i493
  %i.amm = icmp ugt i32 %i.amk, 1073741823
  br i1 %i.amm, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread637, label %bb.ch, !prof !99

bb.ch:                                            ; preds = %.thread.i495
  %.not49.i497 = icmp eq i32 %i.amf, 0
  %i.amn = load ptr, ptr %i.aez, align 8, !tbaa !107 ; 2 uses
  br i1 %.not49.i497, label %bb.ci, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.ci:                                            ; preds = %bb.ch
  %.not9.i.i.i504 = icmp eq ptr %i.amn, null
  br i1 %.not9.i.i.i504, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.amo = shl nuw i32 %i.amk, 2
  %i.amp = zext i32 %i.amo to i64
  %i.amq = call ptr @hb_malloc(i64 noundef %i.amp) #16 ; 4 uses
  %.not10.i.i.i505 = icmp eq ptr %i.amq, null
  br i1 %.not10.i.i.i505, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.ck, !prof !99

bb.ck:                                            ; preds = %bb.cj
  %i.amr = load i32, ptr %i.aey, align 4, !tbaa !108 ; 2 uses
  %.not.i.i.i.i506 = icmp eq i32 %i.amr, 0
  br i1 %.not.i.i.i.i506, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.cl, !prof !99

bb.cl:                                            ; preds = %bb.ck
  %i.ams = zext i32 %i.amr to i64
  %i.amt = shl nuw nsw i64 %i.ams, 2
  %i.amu = load ptr, ptr %i.aez, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amq, ptr readonly align 1 %i.amu, i64 %i.amt, i1 false), !alias.scope !1121
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.ci, %bb.ch
  %i.amv = phi ptr [ null, %bb.ci ], [ %i.amn, %bb.ch ]
  %i.amw = shl nuw i32 %i.amk, 2
  %i.amx = zext i32 %i.amw to i64
  %i.amy = call ptr @hb_realloc(ptr noundef %i.amv, i64 noundef %i.amx) #16 ; 2 uses
  %.not22.i498 = icmp eq ptr %i.amy, null
  br i1 %.not22.i498, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !100

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.cj
  %i.amz = load i32, ptr %i.aex, align 8, !tbaa !106 ; 2 uses
  %.not23.i503 = icmp ugt i32 %i.amk, %i.amz
  br i1 %.not23.i503, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread637, label %..critedge_crit_edge.i219, !prof !147

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread637:  ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.thread.i495
  %.sink.i501.ph.in = phi i32 [ %i.amf, %.thread.i495 ], [ %i.amz, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i501.ph = xor i32 %.sink.i501.ph.in, -1
  store i32 %.sink.i501.ph, ptr %i.aex, align 8, !tbaa !106
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread634

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.ck, %bb.cl, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.1.i.i42.i499 = phi ptr [ %i.amy, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.amq, %bb.cl ], [ %i.amq, %bb.ck ]
  store ptr %.1.i.i42.i499, ptr %i.aez, align 8, !tbaa !107
  store i32 %i.amk, ptr %i.aex, align 8, !tbaa !106
  br label %..critedge_crit_edge.i219

..critedge_crit_edge.i219:                        ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %bb.cg, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %.pre.i220 = load i32, ptr %i.aey, align 4, !tbaa !108
  br label %.critedge.i221

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread634:  ; preds = %bb.cf, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread637
  store i32 %i.aen, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i221:                                   ; preds = %..critedge_crit_edge.i219, %bb.ce
  %i.ana = phi i32 [ %.pre.i220, %..critedge_crit_edge.i219 ], [ %i.ame, %bb.ce ] ; 2 uses
  %i.anb = load ptr, ptr %i.aez, align 8, !tbaa !107
  %i.anc = add i32 %i.ana, 1
  store i32 %i.anc, ptr %i.aey, align 4, !tbaa !108
  %i.and = zext i32 %i.ana to i64
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.and
  %i.anf = load i32, ptr %i.amd, align 4, !tbaa !101
  store i32 %i.anf, ptr %i.ane, align 4, !tbaa !101
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread634, %.critedge.i221
  %i.ang = getelementptr inbounds nuw i8, ptr %.0111790, i64 48 ; 2 uses
  %.not140 = icmp eq ptr %i.ang, %i.aew
  br i1 %.not140, label %.critedge158.thread, label %bb.bu

.critedge158.thread:                              ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, %bb.bt
  %i.anh = getelementptr inbounds nuw i8, ptr %.0112794, i64 48
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !106
  %i.anj = icmp slt i32 %i.ani, 0
  br i1 %i.anj, label %.critedge150, label %bb.cm, !prof !99

bb.cm:                                            ; preds = %bb.bs, %.critedge158.thread
  %i.ank = getelementptr inbounds nuw i8, ptr %.0112794, i64 72 ; 2 uses
  %.not139 = icmp eq ptr %i.ank, %i.aeg
  br i1 %.not139, label %.critedge160, label %bb.bs

.critedge160:                                     ; preds = %bb.cm, %bb.br
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !296
  %i.ano = call noundef zeroext i1 @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.anl, i32 noundef %i.ann, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ano, label %.preheader, label %.critedge150

.preheader:                                       ; preds = %.critedge160
  %i.anp = load i32, ptr %i.anm, align 4, !tbaa !296
  %.not141798 = icmp eq i32 %i.anp, 0
  br i1 %.not141798, label %.critedge150, label %.lr.ph800

.lr.ph800:                                        ; preds = %.preheader
  %i.anq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre940 = load ptr, ptr %i.anr, align 8, !tbaa !1122
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %indvars.iv.next933 = add nuw nsw i64 %indvars.iv932, 1 ; 2 uses
  %i.ans = load i32, ptr %i.anm, align 4, !tbaa !296
  %i.ant = zext i32 %i.ans to i64
  %.not141.not = icmp samesign ult i64 %indvars.iv.next933, %i.ant
  br i1 %.not141.not, label %bb.co, label %.critedge150, !llvm.loop !1101

bb.co:                                            ; preds = %.lr.ph800, %bb.cn
  %i.anu = phi ptr [ %.pre940, %.lr.ph800 ], [ %i.aoa, %bb.cn ]
  %indvars.iv932 = phi i64 [ 0, %.lr.ph800 ], [ %indvars.iv.next933, %bb.cn ] ; 4 uses
  %i.anv = load ptr, ptr %i.anq, align 8, !tbaa !293
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv932
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !297
  %i.any = getelementptr inbounds nuw [48 x i8], ptr %i.anu, i64 %indvars.iv932
  %i.anz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12hb_hashmap_tIj6TripleLb0EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.any, ptr noundef nonnull align 8 dereferenceable(48) %i.anx) ; 0 uses
  %i.aoa = load ptr, ptr %i.anr, align 8, !tbaa !1122 ; 2 uses
  %i.aob = getelementptr inbounds nuw [48 x i8], ptr %i.aoa, i64 %indvars.iv932
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  %i.aod = load i8, ptr %i.aoc, align 8, !tbaa !451, !range !121, !noundef !122
  %i.aoe = trunc nuw i8 %i.aod to i1              ; 3 uses
  br i1 %i.aoe, label %bb.cn, label %.critedge150, !prof !97

.critedge150:                                     ; preds = %bb.x, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit257, %bb.an, %bb.bi, %.critedge158.thread, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i213, %bb.bu, %._crit_edge.i.i.i211, %bb.co, %bb.cn, %.preheader, %.critedge160, %.critedge156
  %.22 = phi i1 [ false, %bb.an ], [ false, %.critedge160 ], [ false, %.critedge158.thread ], [ false, %.critedge156 ], [ %i.aoe, %bb.co ], [ false, %._crit_edge.i.i.i211 ], [ false, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit490 ], [ true, %.preheader ], [ false, %bb.bi ], [ %i.aoe, %bb.cn ], [ false, %bb.bu ], [ false, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i213 ], [ false, %_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv.exit257 ], [ false, %bb.x ]
  %i.aof = load i32, ptr %2, align 8, !tbaa !294
  %i.aog = add i32 %i.aof, -1
  %spec.select.i.i.i222 = icmp ult i32 %i.aog, -2
  br i1 %spec.select.i.i.i222, label %bb.cp, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

bb.cp:                                            ; preds = %.critedge150
  %i.aoh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.aoh, align 4, !tbaa !296
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !293
  call void @hb_free(ptr noundef %i.aoj) #16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit: ; preds = %.critedge150, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store atomic i32 -57005, ptr %1 monotonic, align 8
  %i.aok = load atomic ptr, ptr %i.p acquire, align 8 ; 5 uses
  %.not.i.i.i223 = icmp eq ptr %i.aok, null
  br i1 %.not.i.i.i223, label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aol, ptr noundef nonnull align 8 dereferenceable(56) %i.aok)
  %i.aom = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.aok) #16 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.aok) #16
  store atomic ptr null, ptr %i.p monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i: ; preds = %bb.cq, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit
  %i.aon = load ptr, ptr %i.s, align 8, !tbaa !508 ; 2 uses
  %.not.i.i224 = icmp eq ptr %i.aon, null
  br i1 %.not.i.i224, label %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EED2Ev.exit, label %bb.cr, !prof !99

bb.cr:                                            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.aon) #16
  br label %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EED2Ev.exit

_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EED2Ev.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 %.22
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #16
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !531
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !532
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !533
  tail call void @hb_free(ptr noundef %i.j) #16
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !534
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !535
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !536
  tail call void @hb_free(ptr noundef %i.p) #16
  %.pre = load i32, ptr %i.e, align 8, !tbaa !531
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !532
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533
  tail call void @hb_free(ptr noundef %i.u) #16
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16subr_flattener_tIKN2OT4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE23cff2_cs_opset_flatten_tLj65535EE7flattenER11hb_vector_tISA_IhLb0EELb0EEPSA_ISA_INS_12cs_command_tELb0EELb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_array_t.51, align 8      ; 6 uses
  %4 = alloca %"struct.CFF::cff2_cs_interp_env_t", align 8 ; 20 uses
  %5 = alloca %"struct.CFF::flatten_param_t", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !343  ; 10 uses
  %i.e = icmp slt i32 %i.d, 0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %.sroa.gep37 = getelementptr inbounds nuw i8, ptr %4, i64 16484
  %.sroa.gep40 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.sroa.gep43 = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.gep46 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.gep49 = getelementptr inbounds nuw i8, ptr %4, i64 16833 ; 2 uses
  %.sroa.gep52 = getelementptr inbounds nuw i8, ptr %4, i64 16834
  %.sroa.gep55 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sink4.i.i.i.sroa.gep80 = getelementptr inbounds nuw i8, ptr %4, i64 16804
  br i1 %i.e, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IhLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.d, i1 noundef zeroext true)
  br i1 %i.f, label %bb.c, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !154  ; 6 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw nsw i32 %i.d, %i.h
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread94, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155
  %i.n = zext nneg i32 %i.h to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  %i.p = zext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.p, i1 false)
  br label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread94

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i32 %i.d, %i.h
  br i1 %i.q, label %.lr.ph.preheader.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.r = sub nuw i32 %i.h, %i.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155
  %i.u = zext i32 %i.h to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.x, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.w, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i ]
  %i.w = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !131
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.g, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.aa, align 4, !tbaa !132
  %i.ab = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133
  tail call void @hb_free(ptr noundef %i.ac) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i:           ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread94: ; preds = %bb.d, %bb.e
  store i32 %i.d, ptr %i.g, align 4, !tbaa !154
  br label %.lr.ph

_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit: ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i, %bb.f
  store i32 %i.d, ptr %i.g, align 4, !tbaa !154
  %.not2470 = icmp eq i32 %i.d, 0
  br i1 %.not2470, label %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit.thread94, %_ZN11hb_vector_tIS_IhLb0EELb0EE12resize_exactEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not23 = icmp eq ptr %2, null
end_hunk_9
begin_hunk_10_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22merge_tuple_variationsEP22contour_point_vector_t:bb.a
  %.sroa.13.0200 = phi i32 [ 0, %.lr.ph ], [ %.sroa.13.3, %.critedge34 ] ; 13 uses
  %.sroa.080.0199 = phi i32 [ %.sroa.080.7.ph, %.lr.ph ], [ %.sroa.080.3, %.critedge34 ] ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.030202, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !520
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %.not32, label %.critedge34, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.030202, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !231 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.030202, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !230 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.af to i64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.030202, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.030202, i64 84
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !230
  %i.ak = getelementptr inbounds nuw i8, ptr %.030202, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !455 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.030202, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !456 ; 3 uses
  %.not.i43 = icmp eq i32 %i.an, %i.af
  %.not12.i = icmp eq i32 %i.an, %i.aj
  %or.cond.i = select i1 %.not.i43, i1 %.not12.i, i1 false ; 2 uses
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond14.i = and i1 %i.ao, %or.cond.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ap = load ptr, ptr %i.y, align 8             ; 3 uses
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  %i.aq = icmp eq i32 %i.af, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !346, !range !121, !noundef !122
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.i ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !462
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !462
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !462
  %i.ba = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ay, i64 1
  %i.bc = fadd <2 x float> %i.bb, %i.az
  store <2 x float> %i.bc, ptr %i.au, align 4, !tbaa !462
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !346, !range !121, !noundef !122
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !462
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !462
  %i.bl = load <2 x float>, ptr %i.bg, align 4, !tbaa !462
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bk, i64 1
  %i.bo = fadd <2 x float> %i.bn, %i.bl
  store <2 x float> %i.bo, ptr %i.bg, align 4, !tbaa !462
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1208

_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod296 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.epil.init
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !346, !range !121, !noundef !122
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

bb.j:                                             ; preds = %.epil.preheader
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.epil.init
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !462
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.epil.init
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !462
  %i.bx = load <2 x float>, ptr %i.bs, align 4, !tbaa !462
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bw, i64 1
  %i.ca = fadd <2 x float> %i.bz, %i.bx
  store <2 x float> %i.ca, ptr %i.bs, align 4, !tbaa !462
  br label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit: ; preds = %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, %bb.j, %.epil.preheader, %bb.d
  br i1 %or.cond.i, label %.critedge34, label %.loopexit174

bb.k:                                             ; preds = %bb.b
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !508
  %.not.i44 = icmp eq ptr %i.cb, null
  br i1 %.not.i44, label %.loopexit.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.030202)
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !508 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %.loopexit.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = and i32 %i.cc, 1073741823               ; 2 uses
  %i.cf = load i32, ptr %i.w, align 8, !tbaa !517
  %i.cg = urem i32 %i.ce, %i.cf                   ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cl = and i32 %i.ck, 2
  %.not17.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not17.i.i.i, label %.loopexit.a, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %._crit_edge.i.i.i
  %i.cm = phi ptr [ %i.cv, %._crit_edge.i.i.i ], [ %i.cd, %bb.m ]
  %i.cn = phi i32 [ %i.dd, %._crit_edge.i.i.i ], [ %i.ck, %bb.m ]
  %i.co = phi ptr [ %i.db, %._crit_edge.i.i.i ], [ %i.ci, %bb.m ]
  %i.cp = phi i64 [ %i.da, %._crit_edge.i.i.i ], [ %i.ch, %bb.m ]
  %.019.i.i.i = phi i32 [ %i.cw, %._crit_edge.i.i.i ], [ 0, %bb.m ]
  %.01218.i.i.i = phi i32 [ %i.cz, %._crit_edge.i.i.i ], [ %i.cg, %bb.m ]
  %i.cq = lshr i32 %i.cn, 2
  %i.cr = icmp eq i32 %i.cq, %i.ce
  br i1 %i.cr, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !519
  %i.ct = call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %.030202)
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !508 ; 3 uses
  br i1 %i.ct, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cv = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %i.cu, %bb.n ] ; 2 uses
  %i.cw = add i32 %.019.i.i.i, 1                  ; 2 uses
  %i.cx = add i32 %i.cw, %.01218.i.i.i
  %i.cy = load i32, ptr %i.x, align 4, !tbaa !526
  %i.cz = and i32 %i.cy, %i.cx                    ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.de = and i32 %i.dd, 2
  %.not.i.i.i45 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i45, label %.loopexit.a, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %bb.n
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cp ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = trunc i32 %i.dh to i1
  %.not9.i.i.not171 = icmp ne ptr %i.cu, null
  %.not9.i.i.not.not = and i1 %.not9.i.i.not171, %i.di
  br i1 %.not9.i.i.not.not, label %bb.o, label %.loopexit.a

bb.o:                                             ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !101 ; 2 uses
  %.not.i46 = icmp ult i32 %i.dk, %.sroa.13.0200
  br i1 %.not.i46, label %bb.q, label %bb.p, !prof !97

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit

bb.q:                                             ; preds = %bb.o
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [160 x i8], ptr %.sroa.26.0201, i64 %i.dl
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit: ; preds = %bb.p, %bb.q
  %.0.i47 = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.dm, %bb.q ]
  %i.dn = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN2OT13tuple_delta_tpLERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %.0.i47, ptr noundef nonnull align 8 dereferenceable(160) %.030202) ; 0 uses
  br label %.critedge34

.loopexit.a:                                      ; preds = %._crit_edge.i.i.i, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %bb.m, %bb.l, %bb.k
  %i.do = add i32 %.sroa.13.0200, 1               ; 4 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit, label %bb.r, !prof !99

bb.r:                                             ; preds = %.loopexit.a
  %i.dq = icmp slt i32 %.sroa.080.0199, 0
  br i1 %i.dq, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153, label %bb.s, !prof !99

bb.s:                                             ; preds = %bb.r
  %.not.i58 = icmp samesign ugt i32 %i.do, %.sroa.080.0199
  br i1 %.not.i58, label %.preheader.i60, label %bb.y, !prof !99

.preheader.i60:                                   ; preds = %bb.s, %.preheader.i60
  %.043.i61 = phi i32 [ %i.dt, %.preheader.i60 ], [ %.sroa.080.0199, %bb.s ] ; 2 uses
  %i.dr = lshr i32 %.043.i61, 1
  %i.ds = add nuw i32 %.043.i61, 8
  %i.dt = add nuw i32 %i.ds, %i.dr                ; 8 uses
  %i.du = icmp ugt i32 %i.do, %i.dt
  br i1 %i.du, label %.preheader.i60, label %.thread.i62, !llvm.loop !20

.thread.i62:                                      ; preds = %.preheader.i60
  %i.dv = icmp ugt i32 %i.dt, 26843545
  br i1 %i.dv, label %.critedge.i77, label %bb.t, !prof !99

.critedge.i77:                                    ; preds = %.thread.i62
  %i.dw = xor i32 %.sroa.080.0199, -1
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153

bb.t:                                             ; preds = %.thread.i62
  %.not49.i64 = icmp eq i32 %.sroa.080.0199, 0
  br i1 %.not49.i64, label %bb.u, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i74 = icmp eq ptr %.sroa.26.0201, null
  br i1 %.not9.i.i.i74, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = zext nneg i32 %i.dt to i64
  %i.dy = mul nuw nsw i64 %i.dx, 160
  %i.dz = call ptr @hb_malloc(i64 noundef %i.dy) #16 ; 4 uses
  %.not10.i.i.i75 = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i75, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72, label %bb.w, !prof !99

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i76 = icmp eq i32 %.sroa.13.0200, 0
  br i1 %.not.i.i.i.i76, label %.thread, label %bb.x, !prof !99

bb.x:                                             ; preds = %bb.w
  %i.ea = zext nneg i32 %.sroa.13.0200 to i64
  %i.eb = mul nuw nsw i64 %i.ea, 160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 1 %.sroa.26.0201, i64 %i.eb, i1 false), !alias.scope !1214
  br label %.thread

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65: ; preds = %bb.u, %bb.t
  %i.ec = phi ptr [ null, %bb.u ], [ %.sroa.26.0201, %bb.t ]
  %i.ed = zext nneg i32 %i.dt to i64
  %i.ee = mul nuw nsw i64 %i.ed, 160
  %i.ef = call ptr @hb_realloc(ptr noundef %i.ec, i64 noundef %i.ee) #16 ; 2 uses
  %.not22.i66 = icmp eq ptr %i.ef, null
  br i1 %.not22.i66, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72, label %.thread, !prof !100

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72: ; preds = %bb.v, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65
  %i.eg = xor i32 %.sroa.080.0199, -1
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153

bb.y:                                             ; preds = %bb.s
  %.not172 = icmp eq i32 %.sroa.13.0200, -1
  br i1 %.not172, label %.lr.ph.preheader.i.i.i.i, label %.thread

.thread:                                          ; preds = %bb.x, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65, %bb.w, %bb.y
  %.sroa.26.12.ph141 = phi ptr [ %.sroa.26.0201, %bb.y ], [ %i.dz, %bb.w ], [ %i.ef, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65 ], [ %i.dz, %bb.x ] ; 2 uses
  %.sroa.080.10.ph138 = phi i32 [ %.sroa.080.0199, %bb.y ], [ %i.dt, %bb.w ], [ %i.dt, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65 ], [ %i.dt, %bb.x ]
  %i.eh = zext nneg i32 %.sroa.13.0200 to i64     ; 2 uses
  %i.ei = getelementptr inbounds nuw [160 x i8], ptr %.sroa.26.12.ph141, i64 %i.eh ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store atomic i32 1, ptr %i.ei monotonic, align 4
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i8 1, ptr %i.el, align 8, !tbaa !451
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 18
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.en, i8 0, i64 120, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.26.0201, i64 687194767200
  br label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i15.i.i.i ], [ %i.eo, %.lr.ph.preheader.i.i.i.i ]
  %.046.i.i.i.i = phi i32 [ %i.ep, %.lr.ph.i15.i.i.i ], [ -1, %.lr.ph.preheader.i.i.i.i ]
  %i.ep = add i32 %.046.i.i.i.i, -1               ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -160 ; 2 uses
  call void @_ZN2OT13tuple_delta_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.eq) #16
  %.not.i.i.i.i49 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i.i.i49, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread, label %.lr.ph.i15.i.i.i, !llvm.loop !30

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread: ; preds = %.lr.ph.i15.i.i.i, %.thread
  %.pre-phi = phi i64 [ %i.eh, %.thread ], [ 4294967295, %.lr.ph.i15.i.i.i ]
  %.sroa.26.12.ph140 = phi ptr [ %.sroa.26.12.ph141, %.thread ], [ %.sroa.26.0201, %.lr.ph.i15.i.i.i ] ; 2 uses
  %.sroa.080.10.ph136 = phi i32 [ %.sroa.080.10.ph138, %.thread ], [ %.sroa.080.0199, %.lr.ph.i15.i.i.i ]
  %i.er = getelementptr inbounds nuw [160 x i8], ptr %.sroa.26.12.ph140, i64 %.pre-phi
  br label %bb.z

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153: ; preds = %bb.r, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72, %.critedge.i77
  %.sroa.080.8.ph = phi i32 [ %i.dw, %.critedge.i77 ], [ %i.eg, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72 ], [ %.sroa.080.0199, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %.loopexit174

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit: ; preds = %.loopexit.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  %i.es = icmp slt i32 %.sroa.080.0199, 0
  br i1 %i.es, label %.loopexit174, label %bb.z, !prof !143

bb.z:                                             ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit
  %.0.i48152 = phi ptr [ %i.er, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ] ; 3 uses
  %.sroa.26.10151 = phi ptr [ %.sroa.26.12.ph140, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread ], [ %.sroa.26.0201, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ] ; 2 uses
  %.sroa.13.8150 = phi i32 [ %i.do, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread ], [ %.sroa.13.0200, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ] ; 3 uses
  %.sroa.080.9149 = phi i32 [ %.sroa.080.10.ph136, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread ], [ %.sroa.080.0199, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ] ; 2 uses
  call void @_ZN2OT4swapERNS_13tuple_delta_tES1_(ptr noundef nonnull align 8 dereferenceable(160) %.0.i48152, ptr noundef nonnull align 8 dereferenceable(160) %.030202) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.0.i48152, ptr %i.a, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.et = add i32 %.sroa.13.8150, -1
  store i32 %i.et, ptr %i.b, align 4, !tbaa !101
  %i.eu = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i48152)
  %i.ev = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_jEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.eu, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.ev, label %.critedge34, label %.loopexit174

.critedge34:                                      ; preds = %bb.z, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit, %bb.c, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit
  %.sroa.080.3 = phi i32 [ %.sroa.080.0199, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ], [ %.sroa.080.0199, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit ], [ %.sroa.080.0199, %bb.c ], [ %.sroa.080.9149, %bb.z ] ; 2 uses
  %.sroa.13.3 = phi i32 [ %.sroa.13.0200, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ], [ %.sroa.13.0200, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit ], [ %.sroa.13.0200, %bb.c ], [ %.sroa.13.8150, %bb.z ] ; 2 uses
  %.sroa.26.3 = phi ptr [ %.sroa.26.0201, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ], [ %.sroa.26.0201, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit ], [ %.sroa.26.0201, %bb.c ], [ %.sroa.26.10151, %bb.z ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.030202, i64 160 ; 2 uses
  %.not = icmp eq ptr %i.ew, %i.v
  br i1 %.not, label %.critedge36, label %bb.b

.critedge36:                                      ; preds = %.critedge34, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i
  %.sroa.080.0.lcssa = phi i32 [ %.sroa.080.7.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i ], [ %.sroa.080.3, %.critedge34 ]
  %.sroa.13.0.lcssa = phi i32 [ 0, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i ], [ %.sroa.13.3, %.critedge34 ]
  %.sroa.26.0.lcssa = phi ptr [ %.sroa.26.8.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i ], [ %.sroa.26.3, %.critedge34 ]
  store atomic i32 -57005, ptr %2 monotonic, align 8
  %i.ex = load atomic ptr, ptr %i.o acquire, align 8 ; 5 uses
  %.not.i.i51 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i51, label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge36
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(56) %i.ex)
  %i.ez = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ex) #16 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.ex) #16
  store atomic ptr null, ptr %i.o monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i

_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i: ; preds = %bb.aa, %.critedge36
  %i.fa = load ptr, ptr %i.r, align 8, !tbaa !508 ; 2 uses
  %.not.i52 = icmp eq ptr %i.fa, null
  br i1 %.not.i52, label %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit, label %bb.ab, !prof !99

bb.ab:                                            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i
  call void @hb_free(ptr noundef nonnull %i.fa) #16
  store ptr null, ptr %i.r, align 8, !tbaa !508
  br label %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit

_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i, %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.fb, align 8, !tbaa !525
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.fc, align 4, !tbaa !527
  %i.fd = load i32, ptr %0, align 8, !tbaa !101
  store i32 %.sroa.080.0.lcssa, ptr %0, align 8, !tbaa !101
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !101
  store i32 %.sroa.13.0.lcssa, ptr %i.c, align 4, !tbaa !101
  %i.ff = load ptr, ptr %i.s, align 8, !tbaa !590
  store ptr %.sroa.26.0.lcssa, ptr %i.s, align 8, !tbaa !590
  br label %.loopexit174

.loopexit174:                                     ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit, %bb.z, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153, %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit
  %.not181 = phi i1 [ true, %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit ], [ false, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153 ], [ false, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ], [ false, %bb.z ], [ false, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ] ; 2 uses
  %.sroa.080.5 = phi i32 [ %i.fd, %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit ], [ %.sroa.080.8.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153 ], [ %.sroa.080.0199, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ], [ %.sroa.080.9149, %bb.z ], [ %.sroa.080.0199, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ]
  %.sroa.13.5 = phi i32 [ %i.fe, %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit ], [ %.sroa.13.0200, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153 ], [ %.sroa.13.0200, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ], [ %.sroa.13.8150, %bb.z ], [ %.sroa.13.0200, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ] ; 3 uses
  %.sroa.26.5 = phi ptr [ %i.ff, %_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE4finiEv.exit ], [ %.sroa.26.0201, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153 ], [ %.sroa.26.0201, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit ], [ %.sroa.26.10151, %bb.z ], [ %.sroa.26.0201, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit ] ; 2 uses
  store atomic i32 -57005, ptr %2 monotonic, align 8
  %i.fg = load atomic ptr, ptr %i.o acquire, align 8 ; 5 uses
  %.not.i.i.i53 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i53, label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.loopexit174
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(56) %i.fg)
  %i.fi = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.fg) #16 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.fg) #16
  store atomic ptr null, ptr %i.o monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIPKS0_Ij6TripleLb0EEjLb0EEEvPT_.exit.i.i

end_hunk_10
