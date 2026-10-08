Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNvCs44SRMMtlaHN_9uu_csplit6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.rr = load ptr, ptr %i.in, align 8, !alias.scope !28032, !noalias !28023, !nonnull !12, !noundef !12
  call void %i.rq(ptr noundef nonnull %i.rr) #51, !noalias !28033, !inline_history !27478
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !range !19, !invariant.load !12, !noalias !28033 ; 2 uses
  %i.ru = icmp eq i64 %i.rt, 0
  br i1 %i.ru, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ee
  %.val.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !alias.scope !28032, !noalias !28023, !nonnull !12, !noundef !12
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !range !25, !invariant.load !12, !noalias !28033
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.rt, i64 noundef range(i64 1, -9223372036854775807) %i.rw) #45, !noalias !28033
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.ee, %bb.eb, %bb.ea, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !27986
  br label %bb.ef

bb.ef:                                            ; preds = %bb.es, %bb.er, %bb.eo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.dx, %bb.dw, %.thread353.i.i.i
  %.sroa.21.3.i.i = phi i64 [ %.sroa.21.4.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i ], [ %.sroa.21.0.copyload138.i.i, %bb.dw ], [ undef, %.thread353.i.i.i ], [ %.sroa.21.0.copyload140.i.i, %bb.eo ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ undef, %bb.dx ], [ %i.sh, %bb.es ], [ %i.sh, %bb.er ] ; 2 uses
  %.sroa.0128.3.i.i = phi i64 [ %.sroa.0128.4.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i ], [ %.sroa.0128.0.copyload131.i.i, %bb.dw ], [ -1, %.thread353.i.i.i ], [ %i.sa, %bb.eo ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ -1, %bb.dx ], [ 1, %bb.es ], [ 1, %bb.er ] ; 2 uses
  %.sroa.33.3.i.i = phi ptr [ %.sroa.33.4.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i ], [ %.sroa.33.0.copyload146.i.i, %bb.dw ], [ undef, %.thread353.i.i.i ], [ %.sroa.33.0.copyload148.i.i, %bb.eo ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ undef, %bb.dx ], [ %i.sj, %bb.es ], [ %i.sj, %bb.er ] ; 2 uses
  %.sroa.099.0.not344.i.i.i = phi i1 [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i ], [ %.sroa.099.0.not345352.i.i.i, %bb.dw ], [ %.sroa.099.0.not.ph.i.i.i, %.thread353.i.i.i ], [ false, %bb.eo ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ false, %bb.dx ], [ false, %bb.es ], [ false, %bb.er ]
  %i.rx = phi <2 x i64> [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i ], [ %i.rl, %bb.dw ], [ undef, %.thread353.i.i.i ], [ %i.se, %bb.eo ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ undef, %bb.dx ], [ %i.mn, %bb.es ], [ <i64 0, i64 undef>, %bb.er ] ; 2 uses
  %i.ry = icmp eq i64 %i.qh, 0
  %or.cond.i.i.i52 = or i1 %i.ry, %.sroa.099.0.not344.i.i.i
  br i1 %or.cond.i.i.i52, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i, label %bb.et

bb.eg:                                            ; preds = %.lr.ph224.i.i.i
  %.sroa.635.0.copyload.i.i.i = load ptr, ptr %.sroa.635.0..sroa_idx.i.i.i, align 8, !noalias !27986 ; 5 uses
  %.sroa.738.0.copyload.i.i.i = load ptr, ptr %.sroa.738.0..sroa_idx.i.i.i, align 8, !noalias !27986 ; 3 uses
  %i.rz = icmp eq i64 %i.rk, -1
  br i1 %i.rz, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %.lr.ph224.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !27986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !27986
  call void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter12finish_split(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cx) #45, !noalias !27987
  %i.sa = load i64, ptr %i.bv, align 8, !range !27924, !noalias !27986, !noundef !12 ; 2 uses
  %.not203.i.i.i = icmp eq i64 %i.sa, -1
  br i1 %.not203.i.i.i, label %bb.ep, label %bb.eo

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.635.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.738.0.copyload.i.i.i) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i

bb.ej:                                            ; preds = %bb.eg
  %.cast205.i.i.i = ptrtoint ptr %.sroa.738.0.copyload.i.i.i to i64
  %i.sb = call noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter7writeln(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.635.0.copyload.i.i.i, i64 noundef %.cast205.i.i.i) #45, !noalias !27987 ; 3 uses
  %.not206.i.i.i = icmp eq ptr %i.sb, null
  %i.sc = icmp eq i64 %i.rk, 0                    ; 2 uses
  br i1 %.not206.i.i.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.sc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.copyload.i.i.i, i64 noundef %i.rk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28034
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i

bb.em:                                            ; preds = %bb.ej
  br i1 %i.sc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.copyload.i.i.i, i64 noundef %i.rk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28035
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i: ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !27986
  %i.sd = icmp samesign ugt i32 %.sroa.0.0222.in.i.i.i, 2
  br i1 %i.sd, label %.lr.ph224.i.i.i, label %._crit_edge225.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i: ; preds = %bb.el, %bb.ek, %bb.ei
  %.sroa.21.4.in.i.i = phi ptr [ %.sroa.635.0.copyload.i.i.i, %bb.ei ], [ %i.sb, %bb.ek ], [ %i.sb, %bb.el ]
  %.sroa.0128.4.i.i = phi i64 [ 12, %bb.ei ], [ 0, %bb.ek ], [ 0, %bb.el ]
  %.sroa.33.4.i.i = phi ptr [ %.sroa.738.0.copyload.i.i.i, %bb.ei ], [ undef, %bb.ek ], [ undef, %bb.el ]
  %.sroa.21.4.i.i = ptrtoint ptr %.sroa.21.4.in.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !27986
  br label %bb.ef

bb.eo:                                            ; preds = %bb.eh
  %.sroa.21.0.copyload140.i.i = load i64, ptr %.sroa.21.0..sroa_idx139.i.i, align 8, !noalias !28010
  %.sroa.33.0.copyload148.i.i = load ptr, ptr %.sroa.33.0..sroa_idx147.i.i, align 8, !noalias !28010
  %i.se = load <2 x i64>, ptr %.sroa.39.0..sroa_idx155.i.i, align 8, !noalias !28010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !27986
  br label %bb.ef

bb.ep:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !27986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !27986
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bf, i64 noundef %.sroa.12.0.copyload125.fr.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #45, !noalias !27987
  %i.sf = load i64, ptr %i.bf, align 8, !range !16, !noalias !27986, !noundef !12
  %i.sg = trunc nuw i64 %i.sf to i1
  %i.sh = load i64, ptr %i.ip, align 8, !range !17, !noalias !27986, !noundef !12 ; 4 uses
  br i1 %i.sg, label %bb.eq, label %bb.er, !prof !18

bb.eq:                                            ; preds = %bb.ep
  %i.si = load i64, ptr %i.iq, align 8, !noalias !27986
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.sh, i64 %i.si) #52, !noalias !27987
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.sj = load ptr, ptr %i.iq, align 8, !noalias !27986, !nonnull !12, !noundef !12 ; 3 uses
  %i.sk = icmp ule i64 %.sroa.12.0.copyload125.fr.i.i, %i.sh
  call void @llvm.assume(i1 %i.sk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !27986
  br i1 %i.ml, label %bb.ef, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sj, ptr nonnull readonly align 1 %.sroa.8116.0.copyload120.i.i, i64 %.sroa.12.0.copyload125.fr.i.i, i1 false), !noalias !28012
  br label %bb.ef

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i: ; preds = %bb.et, %.loopexit.i.i, %bb.ef, %bb.dh
  %.sroa.21.2.i.i = phi i64 [ %i.qk, %bb.dh ], [ %i.sm, %.loopexit.i.i ], [ %.sroa.21.1.i.i, %bb.et ], [ %.sroa.21.3.i.i, %bb.ef ]
  %.sroa.0128.2.i.i = phi i64 [ 12, %bb.dh ], [ 0, %.loopexit.i.i ], [ %.sroa.0128.1.i.i, %bb.et ], [ %.sroa.0128.3.i.i, %bb.ef ]
  %.sroa.33.2.i.i = phi ptr [ %.sroa.7.0.copyload.i99.i.i, %bb.dh ], [ undef, %.loopexit.i.i ], [ %.sroa.33.1.i.i, %bb.et ], [ %.sroa.33.3.i.i, %bb.ef ]
  %i.sl = phi <2 x i64> [ undef, %bb.dh ], [ undef, %.loopexit.i.i ], [ %i.sn, %bb.et ], [ %i.rx, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !27986
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.dl, %bb.dv, %bb.ds
  %.sink.i.i.i = phi ptr [ %i.rh, %bb.dv ], [ %i.rg, %bb.ds ], [ %i.qy, %bb.dl ]
  %i.sm = ptrtoint ptr %.sink.i.i.i to i64        ; 2 uses
  %.old.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.old.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i, label %bb.et

bb.et:                                            ; preds = %.loopexit.i.i, %bb.ef
  %.sroa.21.1.i.i = phi i64 [ %i.sm, %.loopexit.i.i ], [ %.sroa.21.3.i.i, %bb.ef ]
  %.sroa.0128.1.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %.sroa.0128.3.i.i, %bb.ef ]
  %.sroa.33.1.i.i = phi ptr [ undef, %.loopexit.i.i ], [ %.sroa.33.3.i.i, %bb.ef ]
  %i.sn = phi <2 x i64> [ undef, %.loopexit.i.i ], [ %i.rx, %bb.ef ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %i.qh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28036
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i

bb.eu:                                            ; preds = %bb.db
  %.sroa.21.0.copyload136.i.i = load i64, ptr %.sroa.21.0..sroa_idx135.i.i, align 8, !noalias !28010
  %.sroa.33.0.copyload144.i.i = load ptr, ptr %.sroa.33.0..sroa_idx143.i.i, align 8, !noalias !28010
  %i.so = load <2 x i64>, ptr %.sroa.39.0..sroa_idx151.i.i, align 8, !noalias !28010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !27986
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ev:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !27986
  br i1 %.not.i106.i.i, label %bb.ey, label %bb.ew, !prof !27

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.ml, label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28037
  %i.sp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0.copyload125.fr.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !28037 ; 3 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex, %bb.ev
  %.sroa.495.0.ph.i.i.i = phi i64 [ 1, %bb.ex ], [ 0, %bb.ev ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.495.0.ph.i.i.i, i64 %.sroa.12.0.copyload125.fr.i.i) #52, !noalias !27987
  unreachable

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sp, ptr nonnull readonly align 1 %.sroa.8116.0.copyload120.i.i, i64 %.sroa.12.0.copyload125.fr.i.i, i1 false), !noalias !28012
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.ez, %bb.ew, %bb.eu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i
  %.sroa.21.5.i.i = phi i64 [ %.sroa.21.0.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i ], [ %.sroa.21.0.copyload136.i.i, %bb.eu ], [ %.sroa.21.2.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i ], [ %i.qd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i ], [ %i.pr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i ], [ %.sroa.12.0.copyload125.fr.i.i, %bb.ez ], [ 0, %bb.ew ] ; 2 uses
  %.sroa.0128.5.i.i = phi i64 [ %.sroa.0128.0.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i ], [ %i.pv, %bb.eu ], [ %.sroa.0128.2.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i ], [ 3, %bb.ez ], [ 3, %bb.ew ] ; 5 uses
  %.sroa.33.5.i.i = phi ptr [ %.sroa.33.0.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i ], [ %.sroa.33.0.copyload144.i.i, %bb.eu ], [ %.sroa.33.2.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i ], [ %i.sp, %bb.ez ], [ inttoptr (i64 1 to ptr), %bb.ew ] ; 2 uses
  %i.sr = phi <2 x i64> [ %i.oz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i ], [ %i.so, %bb.eu ], [ %i.sl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i ], [ %i.mn, %bb.ez ], [ <i64 0, i64 undef>, %bb.ew ] ; 3 uses
  store i64 %.sroa.0128.5.i.i, ptr %i.ck, align 8, !noalias !27929
  store i64 %.sroa.21.5.i.i, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !27929
  store ptr %.sroa.33.5.i.i, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !noalias !27929
  store <2 x i64> %i.sr, ptr %.sroa.39.0..sroa_idx.i.i, align 8, !noalias !27929
  store i64 %.sroa.021.0.i.i, ptr %i.ir, align 8, !noalias !27929
  store i64 %.sroa.723.0.i.i, ptr %i.is, align 8, !noalias !27929
  %.not67.i.i = icmp eq i64 %.sroa.0128.5.i.i, -1
  br i1 %.not67.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ss = ptrtoint ptr %.sroa.33.5.i.i to i64
  %i.st = extractelement <2 x i64> %i.sr, i64 0
  %i.su = inttoptr i64 %i.st to ptr
  %i.sv = trunc nuw i64 %.sroa.021.0.i.i to i1    ; 2 uses
  br i1 %i.sv, label %bb.fc, label %bb.fd

bb.fb:                                            ; preds = %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !27929
  br label %bb.bg

bb.fc:                                            ; preds = %bb.fa
  %i.sw = icmp ne i64 %.sroa.0128.5.i.i, 3
  %i.sx = icmp eq i64 %.sroa.723.0.i.i, 1
  %or.cond4.i.i = select i1 %i.sw, i1 true, i1 %i.sx
  %i.sy = icmp eq i64 %.sroa.061.1.i.i, 0
  %or.cond5.i.i = or i1 %i.sy, %or.cond4.i.i
  br i1 %or.cond5.i.i, label %.critedge75.i.i, label %bb.ff

bb.fd:                                            ; preds = %bb.fa
  %i.sz = icmp eq i64 %.sroa.0128.5.i.i, 3
  br i1 %i.sz, label %bb.ff, label %.critedge75.i.i

.critedge75.i.i:                                  ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !27929
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5RegexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm) #45, !noalias !27930
  call void @llvm.experimental.noalias.scope.decl(metadata !28038)
  call void @llvm.experimental.noalias.scope.decl(metadata !28039)
  %i.ta = load ptr, ptr %i.it, align 8, !alias.scope !28040, !noalias !27929, !nonnull !12, !noundef !12
  %i.tb = atomicrmw sub ptr %i.ta, i64 1 release, align 8, !noalias !28041
  %i.tc = icmp eq i64 %i.tb, 1
  br i1 %i.tc, label %bb.fe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i

bb.fe:                                            ; preds = %.critedge75.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArceE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.it) #53, !noalias !27930
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i: ; preds = %bb.fe, %.critedge75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !27929
  %i.td = extractelement <2 x i64> %i.sr, i64 1
  br label %.critedge.i.i

bb.ff:                                            ; preds = %bb.fc, %bb.fd
  %.sroa.0588.3 = phi i64 [ -1, %bb.fd ], [ 4, %bb.fc ] ; 2 uses
  %.sroa.16.3 = phi i64 [ undef, %bb.fd ], [ %.sroa.061.1.i.i, %bb.fc ] ; 2 uses
  %.sroa.18.3 = phi i64 [ undef, %bb.fd ], [ %.sroa.0113.0.copyload115.i.i, %bb.fc ] ; 2 uses
  %.sroa.20609.3 = phi ptr [ undef, %bb.fd ], [ %.sroa.8116.0.copyload120.i.i, %bb.fc ] ; 2 uses
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ck) #45, !noalias !27930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !27929
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5RegexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm) #45, !noalias !27930
  call void @llvm.experimental.noalias.scope.decl(metadata !28042)
  call void @llvm.experimental.noalias.scope.decl(metadata !28043)
  %i.te = load ptr, ptr %i.it, align 8, !alias.scope !28044, !noalias !27929, !nonnull !12, !noundef !12
  %i.tf = atomicrmw sub ptr %i.te, i64 1 release, align 8, !noalias !28045
  %i.tg = icmp eq i64 %i.tf, 1
  br i1 %i.tg, label %bb.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArceE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.it) #53, !noalias !27930
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !27929
  %i.th = icmp eq i64 %.sroa.0113.0.copyload115.i.i, 0
  %or.cond186.i.i = select i1 %i.sv, i1 true, i1 %i.th
  br i1 %or.cond186.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i, label %bb.fh

.critedge.i.i:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i, %bb.ba, %.split.us.i.i
  %.sroa.0588.0 = phi i64 [ %.sroa.0588.0.copyload591, %.split.us.i.i ], [ %i.ld, %bb.ba ], [ %.sroa.0128.5.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i ], [ %i.ms, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i ] ; 2 uses
  %.sroa.16.0 = phi i64 [ %.sroa.16.0.copyload598, %.split.us.i.i ], [ %.sroa.16.0.copyload600, %bb.ba ], [ %.sroa.21.5.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i ], [ %.sroa.16.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i ] ; 2 uses
  %.sroa.18.0 = phi i64 [ %.sroa.18.0.copyload606, %.split.us.i.i ], [ %.sroa.18.0.copyload608, %bb.ba ], [ %i.ss, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i ], [ %.sroa.18.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i ] ; 2 uses
  %.sroa.20609.0 = phi ptr [ %.sroa.20609.0.copyload615, %.split.us.i.i ], [ %.sroa.20609.0.copyload617, %bb.ba ], [ %i.su, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i ], [ %.sroa.20609.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i ] ; 2 uses
  %.sroa.22.0 = phi i64 [ %.sroa.22.0.copyload623, %.split.us.i.i ], [ %.sroa.22.0.copyload625, %bb.ba ], [ %i.td, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i ], [ %.sroa.22.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i ] ; 2 uses
  %.old.i.i = icmp eq i64 %.sroa.0113.0.copyload115.i.i, 0
  br i1 %.old.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i, label %bb.fh

bb.fh:                                            ; preds = %.critedge.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i
  %.sroa.0588.1 = phi i64 [ %.sroa.0588.0, %.critedge.i.i ], [ %.sroa.0588.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i ]
  %.sroa.16.1 = phi i64 [ %.sroa.16.0, %.critedge.i.i ], [ %.sroa.16.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i ]
  %.sroa.18.1 = phi i64 [ %.sroa.18.0, %.critedge.i.i ], [ %.sroa.18.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i ]
  %.sroa.20609.1 = phi ptr [ %.sroa.20609.0, %.critedge.i.i ], [ %.sroa.20609.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i ]
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %.critedge.i.i ], [ %.sroa.12.0.copyload125.fr.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8116.0.copyload120.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8116.0.copyload120.i.i, i64 noundef %.sroa.0113.0.copyload115.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28046
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i

_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternECsl8pJiQOn4hA_9coreutils.exit.i.i86.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !27922
  %i.ti = icmp eq i64 %.sroa.0588.2, -1
  br i1 %i.ti, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i
  store i64 %.sroa.0588.2, ptr %i.cv, align 8, !noalias !27922
  %.sroa.16.0..sroa_idx593 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %.sroa.16.2, ptr %.sroa.16.0..sroa_idx593, align 8, !noalias !27922
  %.sroa.18.0..sroa_idx601 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %.sroa.18.2, ptr %.sroa.18.0..sroa_idx601, align 8, !noalias !27922
  %.sroa.20609.0..sroa_idx610 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %.sroa.20609.2, ptr %.sroa.20609.0..sroa_idx610, align 8, !noalias !27922
  %.sroa.22.0..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i64 %.sroa.22.2, ptr %.sroa.22.0..sroa_idx618, align 8, !noalias !27922
  br label %bb.fk

bb.fj:                                            ; preds = %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.thread.i
  store i8 1, ptr %i.hk, align 8, !noalias !27922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !27922
  call fastcc void @_RNvXs4_Cs44SRMMtlaHN_9uu_csplitINtB5_13InputSplitterINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBT_3map3MapINtB5_17LinesWithNewlinesNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENCINvB5_6csplitB2t_E0EEENtNtNtBV_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.cu, ptr noalias nofree noundef align 8 dereferenceable(64) %i.cy) #45, !noalias !27923
  %i.tj = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !range !20, !noalias !27922, !noundef !12 ; 8 uses
  %.not102.i = icmp eq i64 %i.tk, -2
  br i1 %.not102.i, label %bb.fm, label %bb.fl

bb.fk:                                            ; preds = %bb.gj, %bb.gh, %._crit_edge.i, %bb.fi
  %.sroa.063.0.i = phi i1 [ false, %._crit_edge.i ], [ true, %bb.gj ], [ true, %bb.gh ], [ true, %bb.fi ] ; 2 uses
  %i.tl = load i64, ptr %i.cv, align 8, !range !27924, !noalias !27922, !noundef !12 ; 4 uses
  %i.tm = icmp eq i64 %i.tl, -1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.to = load i8, ptr %i.tn, align 8, !range !21, !alias.scope !27921, !noalias !28047
  %i.tp = trunc nuw i8 %i.to to i1
  %or.cond5.i = select i1 %i.tm, i1 true, i1 %i.tp
  br i1 %or.cond5.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit127.i, label %bb.gk

bb.fl:                                            ; preds = %bb.fj
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.7.0.copyload.i48 = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !27922 ; 11 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !27922 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !27922
  call void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter10new_writer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cx) #45, !noalias !27923
  %i.tq = load i64, ptr %i.ct, align 8, !range !27924, !noalias !27922, !noundef !12 ; 5 uses
  %.not104.i = icmp eq i64 %i.tq, -1
  br i1 %.not104.i, label %bb.fs, label %bb.fn

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !27922
  %i.tr = getelementptr inbounds nuw i8, ptr %i.do, i64 107
  %i.ts = load i8, ptr %i.tr, align 1, !range !21, !alias.scope !27921, !noalias !28047
  %i.tt = trunc nuw i8 %i.ts to i1
  %or.cond.i = select i1 %.lcssa2587, i1 %i.tt, i1 false
  br i1 %or.cond.i, label %bb.gi, label %bb.gh

bb.fn:                                            ; preds = %bb.fl
  %.sroa.14.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.14.0.copyload477 = load i64, ptr %.sroa.14.0..sroa_idx476, align 8, !noalias !28048 ; 4 uses
  %.sroa.20.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.20.0.copyload483 = load ptr, ptr %.sroa.20.0..sroa_idx482, align 8, !noalias !28048 ; 4 uses
  %.sroa.23.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.tu = load <2 x i64>, ptr %.sroa.23.0..sroa_idx488, align 8, !noalias !28048 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !27922
  switch i64 %i.tk, label %bb.fo [
    i64 -1, label %bb.fp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i
  ]

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i48) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i48, i64 noundef %i.tk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28049
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i) ]
  %i.tv = load ptr, ptr %.sroa.11.0.copyload.i, align 8, !invariant.load !12, !noalias !28050 ; 2 uses
  %.not.i.i113.i = icmp eq ptr %i.tv, null
  br i1 %.not.i.i113.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i48) ]
  call void %i.tv(ptr noundef nonnull %.sroa.7.0.copyload.i48) #51, !noalias !28050, !inline_history !27517
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload.i, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !range !19, !invariant.load !12, !noalias !28050 ; 2 uses
  %i.ty = icmp eq i64 %i.tx, 0
  br i1 %i.ty, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i48) ]
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload.i, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !range !25, !invariant.load !12, !noalias !28050
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i48, i64 noundef %i.tx, i64 noundef range(i64 1, -9223372036854775807) %i.ua) #45, !noalias !28050
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.fs:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !27922
  %i.ub = icmp eq i64 %i.tk, -1
  br i1 %i.ub, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i48) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i) ]
  %i.uc = ptrtoint ptr %.sroa.7.0.copyload.i48 to i64
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.fu:                                            ; preds = %bb.fs
  %.cast.i = ptrtoint ptr %.sroa.11.0.copyload.i to i64
  %i.ud = call noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter7writeln(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i48, i64 noundef %.cast.i) #45, !noalias !27923 ; 2 uses
  %.not105.i = icmp eq ptr %i.ud, null
  br i1 %.not105.i, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ue = ptrtoint ptr %i.ud to i64               ; 2 uses
  %i.uf = icmp eq i64 %i.tk, 0
  br i1 %i.uf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i48, i64 noundef %i.tk, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28051
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.fx:                                            ; preds = %bb.fu
  %i.ug = icmp eq i64 %i.tk, 0
  br i1 %i.ug, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit117.i, label %bb.fy

end_hunk_0
begin_hunk_1_@_RINvNvCs44SRMMtlaHN_9uu_csplit6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.not.i.i.i.i.i.i355 = icmp eq ptr %i.ahn, null
  br i1 %.not.i.i.i.i.i.i355, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aho = load ptr, ptr %i.yk, align 8, !alias.scope !28200, !noalias !28191, !nonnull !12, !noundef !12
  call void %i.ahn(ptr noundef nonnull %i.aho) #51, !noalias !28201, !inline_history !27752
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahq = load i64, ptr %i.ahp, align 8, !range !19, !invariant.load !12, !noalias !28201 ; 2 uses
  %i.ahr = icmp eq i64 %i.ahq, 0
  br i1 %i.ahr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i356

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i356: ; preds = %bb.lr
  %.val.i.i.i.i.i.i357 = load ptr, ptr %i.yk, align 8, !alias.scope !28200, !noalias !28191, !nonnull !12, !noundef !12
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aht = load i64, ptr %i.ahs, align 8, !range !25, !invariant.load !12, !noalias !28201
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i357, i64 noundef %i.ahq, i64 noundef range(i64 1, -9223372036854775807) %i.aht) #45, !noalias !28201
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i356, %bb.lr, %bb.lo, %bb.ln, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !28154
  br label %bb.ls

bb.ls:                                            ; preds = %bb.mf, %bb.me, %bb.mb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354, %bb.lk, %bb.lj, %.thread353.i.i.i382
  %.sroa.21.3.i.i345 = phi i64 [ %.sroa.21.4.i.i370, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366 ], [ %.sroa.21.0.copyload138.i.i341, %bb.lj ], [ undef, %.thread353.i.i.i382 ], [ %.sroa.21.0.copyload140.i.i373, %bb.mb ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354 ], [ undef, %bb.lk ], [ %i.aie, %bb.mf ], [ %i.aie, %bb.me ] ; 2 uses
  %.sroa.0128.3.i.i346 = phi i64 [ %.sroa.0128.4.i.i368, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366 ], [ %.sroa.0128.0.copyload131.i.i339, %bb.lj ], [ -1, %.thread353.i.i.i382 ], [ %i.ahx, %bb.mb ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354 ], [ -1, %bb.lk ], [ 1, %bb.mf ], [ 1, %bb.me ] ; 2 uses
  %.sroa.33.3.i.i347 = phi ptr [ %.sroa.33.4.i.i369, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366 ], [ %.sroa.33.0.copyload146.i.i342, %bb.lj ], [ undef, %.thread353.i.i.i382 ], [ %.sroa.33.0.copyload148.i.i374, %bb.mb ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354 ], [ undef, %bb.lk ], [ %i.aig, %bb.mf ], [ %i.aig, %bb.me ] ; 2 uses
  %.sroa.099.0.not344.i.i.i350 = phi i1 [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366 ], [ %.sroa.099.0.not345352.i.i.i340, %bb.lj ], [ %.sroa.099.0.not.ph.i.i.i380, %.thread353.i.i.i382 ], [ false, %bb.mb ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354 ], [ false, %bb.lk ], [ false, %bb.mf ], [ false, %bb.me ]
  %i.ahu = phi <2 x i64> [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366 ], [ %i.ahi, %bb.lj ], [ undef, %.thread353.i.i.i382 ], [ %i.aib, %bb.mb ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringINtNtB1p_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i354 ], [ undef, %bb.lk ], [ %i.ack, %bb.mf ], [ <i64 0, i64 undef>, %bb.me ] ; 2 uses
  %i.ahv = icmp eq i64 %i.age, 0
  %or.cond.i.i.i351 = or i1 %i.ahv, %.sroa.099.0.not344.i.i.i350
  br i1 %or.cond.i.i.i351, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331, label %bb.mg

bb.lt:                                            ; preds = %.lr.ph224.i.i.i358
  %.sroa.635.0.copyload.i.i.i362 = load ptr, ptr %.sroa.635.0..sroa_idx.i.i.i118, align 8, !noalias !28154 ; 5 uses
  %.sroa.738.0.copyload.i.i.i363 = load ptr, ptr %.sroa.738.0..sroa_idx.i.i.i119, align 8, !noalias !28154 ; 3 uses
  %i.ahw = icmp eq i64 %i.ahh, -1
  br i1 %i.ahw, label %bb.lv, label %bb.lw

bb.lu:                                            ; preds = %.lr.ph224.i.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !28154
  call void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter12finish_split(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ay) #45, !noalias !28155
  %i.ahx = load i64, ptr %i.w, align 8, !range !27924, !noalias !28154, !noundef !12 ; 2 uses
  %.not203.i.i.i372 = icmp eq i64 %i.ahx, -1
  br i1 %.not203.i.i.i372, label %bb.mc, label %bb.mb

bb.lv:                                            ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.635.0.copyload.i.i.i362) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.738.0.copyload.i.i.i363) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366

bb.lw:                                            ; preds = %bb.lt
  %.cast205.i.i.i364 = ptrtoint ptr %.sroa.738.0.copyload.i.i.i363 to i64
  %i.ahy = call noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter7writeln(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.635.0.copyload.i.i.i362, i64 noundef %.cast205.i.i.i364) #45, !noalias !28155 ; 3 uses
  %.not206.i.i.i365 = icmp eq ptr %i.ahy, null
  %i.ahz = icmp eq i64 %i.ahh, 0                  ; 2 uses
  br i1 %.not206.i.i.i365, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  br i1 %i.ahz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.copyload.i.i.i362, i64 noundef %i.ahh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28202
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366

bb.lz:                                            ; preds = %bb.lw
  br i1 %i.ahz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i371, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.copyload.i.i.i362, i64 noundef %i.ahh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28203
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i371

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit267.i.i.i371: ; preds = %bb.ma, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28154
  %i.aia = icmp samesign ugt i32 %.sroa.0.0222.in.i.i.i359, 2
  br i1 %i.aia, label %.lr.ph224.i.i.i358, label %._crit_edge225.i.i.i337

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit264.i.i.i366: ; preds = %bb.ly, %bb.lx, %bb.lv
  %.sroa.21.4.in.i.i367 = phi ptr [ %.sroa.635.0.copyload.i.i.i362, %bb.lv ], [ %i.ahy, %bb.lx ], [ %i.ahy, %bb.ly ]
  %.sroa.0128.4.i.i368 = phi i64 [ 12, %bb.lv ], [ 0, %bb.lx ], [ 0, %bb.ly ]
  %.sroa.33.4.i.i369 = phi ptr [ %.sroa.738.0.copyload.i.i.i363, %bb.lv ], [ undef, %bb.lx ], [ undef, %bb.ly ]
  %.sroa.21.4.i.i370 = ptrtoint ptr %.sroa.21.4.in.i.i367 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28154
  br label %bb.ls

bb.mb:                                            ; preds = %bb.lu
  %.sroa.21.0.copyload140.i.i373 = load i64, ptr %.sroa.21.0..sroa_idx139.i.i120, align 8, !noalias !28178
  %.sroa.33.0.copyload148.i.i374 = load ptr, ptr %.sroa.33.0..sroa_idx147.i.i121, align 8, !noalias !28178
  %i.aib = load <2 x i64>, ptr %.sroa.39.0..sroa_idx155.i.i122, align 8, !noalias !28178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28154
  br label %bb.ls

bb.mc:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !28154
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.12.0.copyload125.fr.i.i156, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #45, !noalias !28155
  %i.aic = load i64, ptr %i.g, align 8, !range !16, !noalias !28154, !noundef !12
  %i.aid = trunc nuw i64 %i.aic to i1
  %i.aie = load i64, ptr %i.ym, align 8, !range !17, !noalias !28154, !noundef !12 ; 4 uses
  br i1 %i.aid, label %bb.md, label %bb.me, !prof !18

bb.md:                                            ; preds = %bb.mc
  %i.aif = load i64, ptr %i.yn, align 8, !noalias !28154
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.aie, i64 %i.aif) #52, !noalias !28155
  unreachable

bb.me:                                            ; preds = %bb.mc
  %i.aig = load ptr, ptr %i.yn, align 8, !noalias !28154, !nonnull !12, !noundef !12 ; 3 uses
  %i.aih = icmp ule i64 %.sroa.12.0.copyload125.fr.i.i156, %i.aie
  call void @llvm.assume(i1 %i.aih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !28154
  br i1 %i.aci, label %bb.ls, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aig, ptr nonnull readonly align 1 %.sroa.8116.0.copyload120.i.i154, i64 %.sroa.12.0.copyload125.fr.i.i156, i1 false), !noalias !28180
  br label %bb.ls

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331: ; preds = %bb.mg, %.loopexit.i.i323, %bb.ls, %bb.ku
  %.sroa.21.2.i.i332 = phi i64 [ %i.agh, %bb.ku ], [ %i.aij, %.loopexit.i.i323 ], [ %.sroa.21.1.i.i326, %bb.mg ], [ %.sroa.21.3.i.i345, %bb.ls ]
  %.sroa.0128.2.i.i333 = phi i64 [ 12, %bb.ku ], [ 0, %.loopexit.i.i323 ], [ %.sroa.0128.1.i.i327, %bb.mg ], [ %.sroa.0128.3.i.i346, %bb.ls ]
  %.sroa.33.2.i.i334 = phi ptr [ %.sroa.7.0.copyload.i99.i.i311, %bb.ku ], [ undef, %.loopexit.i.i323 ], [ %.sroa.33.1.i.i328, %bb.mg ], [ %.sroa.33.3.i.i347, %bb.ls ]
  %i.aii = phi <2 x i64> [ undef, %bb.ku ], [ undef, %.loopexit.i.i323 ], [ %i.aik, %bb.mg ], [ %i.ahu, %bb.ls ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !28154
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

.loopexit.i.i323:                                 ; preds = %bb.ky, %bb.li, %bb.lf
  %.sink.i.i.i324 = phi ptr [ %i.ahe, %bb.li ], [ %i.ahd, %bb.lf ], [ %i.agv, %bb.ky ]
  %i.aij = ptrtoint ptr %.sink.i.i.i324 to i64    ; 2 uses
  %.old.i.i.i325 = icmp eq i64 %i.age, 0
  br i1 %.old.i.i.i325, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331, label %bb.mg

bb.mg:                                            ; preds = %.loopexit.i.i323, %bb.ls
  %.sroa.21.1.i.i326 = phi i64 [ %i.aij, %.loopexit.i.i323 ], [ %.sroa.21.3.i.i345, %bb.ls ]
  %.sroa.0128.1.i.i327 = phi i64 [ 0, %.loopexit.i.i323 ], [ %.sroa.0128.3.i.i346, %bb.ls ]
  %.sroa.33.1.i.i328 = phi ptr [ undef, %.loopexit.i.i323 ], [ %.sroa.33.3.i.i347, %bb.ls ]
  %i.aik = phi <2 x i64> [ undef, %.loopexit.i.i323 ], [ %i.ahu, %bb.ls ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i310) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i310, i64 noundef %i.age, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28204
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331

bb.mh:                                            ; preds = %bb.ko
  %.sroa.21.0.copyload136.i.i288 = load i64, ptr %.sroa.21.0..sroa_idx135.i.i128, align 8, !noalias !28178
  %.sroa.33.0.copyload144.i.i289 = load ptr, ptr %.sroa.33.0..sroa_idx143.i.i129, align 8, !noalias !28178
  %i.ail = load <2 x i64>, ptr %.sroa.39.0..sroa_idx151.i.i130, align 8, !noalias !28178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28154
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.mi:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !28154
  br i1 %.not.i106.i.i157, label %bb.ml, label %bb.mj, !prof !27

bb.mj:                                            ; preds = %bb.mi
  br i1 %i.aci, label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28205
  %i.aim = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0.copyload125.fr.i.i156, i64 noundef range(i64 1, 9) 1) #45, !noalias !28205 ; 3 uses
  %i.ain = icmp eq ptr %i.aim, null
  br i1 %i.ain, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk, %bb.mi
  %.sroa.495.0.ph.i.i.i292 = phi i64 [ 1, %bb.mk ], [ 0, %bb.mi ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.495.0.ph.i.i.i292, i64 %.sroa.12.0.copyload125.fr.i.i156) #52, !noalias !28155
  unreachable

bb.mm:                                            ; preds = %bb.mk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aim, ptr nonnull readonly align 1 %.sroa.8116.0.copyload120.i.i154, i64 %.sroa.12.0.copyload125.fr.i.i156, i1 false), !noalias !28180
  br label %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.mm, %bb.mj, %bb.mh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i304, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i283, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i229
  %.sroa.21.5.i.i235 = phi i64 [ %.sroa.21.0.i.i230, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i229 ], [ %.sroa.21.0.copyload136.i.i288, %bb.mh ], [ %.sroa.21.2.i.i332, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331 ], [ %i.aga, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i304 ], [ %i.afo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i283 ], [ %.sroa.12.0.copyload125.fr.i.i156, %bb.mm ], [ 0, %bb.mj ] ; 2 uses
  %.sroa.0128.5.i.i236 = phi i64 [ %.sroa.0128.0.i.i231, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i229 ], [ %i.afs, %bb.mh ], [ %.sroa.0128.2.i.i333, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i304 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i283 ], [ 3, %bb.mm ], [ 3, %bb.mj ] ; 5 uses
  %.sroa.33.5.i.i237 = phi ptr [ %.sroa.33.0.i.i232, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i229 ], [ %.sroa.33.0.copyload144.i.i289, %bb.mh ], [ %.sroa.33.2.i.i334, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i304 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i283 ], [ %i.aim, %bb.mm ], [ inttoptr (i64 1 to ptr), %bb.mj ] ; 2 uses
  %i.aio = phi <2 x i64> [ %i.aew, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit226.i.i.i229 ], [ %i.ail, %bb.mh ], [ %i.aii, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit270.i.i.i331 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit240.i.i.i304 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit234.i.i.i283 ], [ %i.ack, %bb.mm ], [ <i64 0, i64 undef>, %bb.mj ] ; 3 uses
  store i64 %.sroa.0128.5.i.i236, ptr %i.al, align 8, !noalias !28097
  store i64 %.sroa.21.5.i.i235, ptr %.sroa.21.0..sroa_idx.i.i132, align 8, !noalias !28097
  store ptr %.sroa.33.5.i.i237, ptr %.sroa.33.0..sroa_idx.i.i133, align 8, !noalias !28097
  store <2 x i64> %i.aio, ptr %.sroa.39.0..sroa_idx.i.i134, align 8, !noalias !28097
  store i64 %.sroa.021.0.i.i161, ptr %i.yo, align 8, !noalias !28097
  store i64 %.sroa.723.0.i.i160, ptr %i.yp, align 8, !noalias !28097
  %.not67.i.i240 = icmp eq i64 %.sroa.0128.5.i.i236, -1
  br i1 %.not67.i.i240, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.aip = ptrtoint ptr %.sroa.33.5.i.i237 to i64
  %i.aiq = extractelement <2 x i64> %i.aio, i64 0
  %i.air = inttoptr i64 %i.aiq to ptr
  %i.ais = trunc nuw i64 %.sroa.021.0.i.i161 to i1 ; 2 uses
  br i1 %i.ais, label %bb.mp, label %bb.mq

bb.mo:                                            ; preds = %_RINvMs2_Cs44SRMMtlaHN_9uu_csplitNtB6_11SplitWriter11do_to_matchINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtB14_3map3MapINtB6_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB6_6csplitB2F_E0EEECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28097
  br label %bb.it

bb.mp:                                            ; preds = %bb.mn
  %i.ait = icmp ne i64 %.sroa.0128.5.i.i236, 3
  %i.aiu = icmp eq i64 %.sroa.723.0.i.i160, 1
  %or.cond4.i.i245 = select i1 %i.ait, i1 true, i1 %i.aiu
  %i.aiv = icmp eq i64 %.sroa.061.1.i.i159, 0
  %or.cond5.i.i246 = or i1 %i.aiv, %or.cond4.i.i245
  br i1 %or.cond5.i.i246, label %.critedge75.i.i241, label %bb.ms

bb.mq:                                            ; preds = %bb.mn
  %i.aiw = icmp eq i64 %.sroa.0128.5.i.i236, 3
  br i1 %i.aiw, label %bb.ms, label %.critedge75.i.i241

.critedge75.i.i241:                               ; preds = %bb.mq, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28097
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5RegexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an) #45, !noalias !28098
  call void @llvm.experimental.noalias.scope.decl(metadata !28206)
  call void @llvm.experimental.noalias.scope.decl(metadata !28207)
  %i.aix = load ptr, ptr %i.yq, align 8, !alias.scope !28208, !noalias !28097, !nonnull !12, !noundef !12
  %i.aiy = atomicrmw sub ptr %i.aix, i64 1 release, align 8, !noalias !28209
  %i.aiz = icmp eq i64 %i.aiy, 1
  br i1 %i.aiz, label %bb.mr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242

bb.mr:                                            ; preds = %.critedge75.i.i241
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArceE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yq) #53, !noalias !28098
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242: ; preds = %bb.mr, %.critedge75.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !28097
  %i.aja = extractelement <2 x i64> %i.aio, i64 1
  br label %.critedge.i.i166

bb.ms:                                            ; preds = %bb.mp, %bb.mq
  %.sroa.0626.3 = phi i64 [ -1, %bb.mq ], [ 4, %bb.mp ] ; 2 uses
  %.sroa.16631.3 = phi i64 [ undef, %bb.mq ], [ %.sroa.061.1.i.i159, %bb.mp ] ; 2 uses
  %.sroa.18640.3 = phi i64 [ undef, %bb.mq ], [ %.sroa.0113.0.copyload115.i.i153, %bb.mp ] ; 2 uses
  %.sroa.20649.3 = phi ptr [ undef, %bb.mq ], [ %.sroa.8116.0.copyload120.i.i154, %bb.mp ] ; 2 uses
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al) #45, !noalias !28098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28097
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5RegexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an) #45, !noalias !28098
  call void @llvm.experimental.noalias.scope.decl(metadata !28210)
  call void @llvm.experimental.noalias.scope.decl(metadata !28211)
  %i.ajb = load ptr, ptr %i.yq, align 8, !alias.scope !28212, !noalias !28097, !nonnull !12, !noundef !12
  %i.ajc = atomicrmw sub ptr %i.ajb, i64 1 release, align 8, !noalias !28213
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.mt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243

bb.mt:                                            ; preds = %bb.ms
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArceE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yq) #53, !noalias !28098
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243: ; preds = %bb.mt, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !28097
  %i.aje = icmp eq i64 %.sroa.0113.0.copyload115.i.i153, 0
  %or.cond186.i.i244 = select i1 %i.ais, i1 true, i1 %i.aje
  br i1 %or.cond186.i.i244, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i168, label %bb.mu

.critedge.i.i166:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165, %bb.in, %.split.us.i.i401
  %.sroa.0626.0 = phi i64 [ %.sroa.0626.0.copyload629, %.split.us.i.i401 ], [ %i.aba, %bb.in ], [ %.sroa.0128.5.i.i236, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242 ], [ %i.acp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165 ] ; 2 uses
  %.sroa.16631.0 = phi i64 [ %.sroa.16631.0.copyload637, %.split.us.i.i401 ], [ %.sroa.16631.0.copyload639, %bb.in ], [ %.sroa.21.5.i.i235, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242 ], [ %.sroa.16631.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165 ] ; 2 uses
  %.sroa.18640.0 = phi i64 [ %.sroa.18640.0.copyload646, %.split.us.i.i401 ], [ %.sroa.18640.0.copyload648, %bb.in ], [ %i.aip, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242 ], [ %.sroa.18640.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165 ] ; 2 uses
  %.sroa.20649.0 = phi ptr [ %.sroa.20649.0.copyload655, %.split.us.i.i401 ], [ %.sroa.20649.0.copyload657, %bb.in ], [ %i.air, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242 ], [ %.sroa.20649.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165 ] ; 2 uses
  %.sroa.22658.0 = phi i64 [ %.sroa.22658.0.copyload664, %.split.us.i.i401 ], [ %.sroa.22658.0.copyload666, %bb.in ], [ %i.aja, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit100.i.i242 ], [ %.sroa.22658.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit90.i.i165 ] ; 2 uses
  %.old.i.i167 = icmp eq i64 %.sroa.0113.0.copyload115.i.i153, 0
  br i1 %.old.i.i167, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i168, label %bb.mu

bb.mu:                                            ; preds = %.critedge.i.i166, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243
  %.sroa.0626.1 = phi i64 [ %.sroa.0626.0, %.critedge.i.i166 ], [ %.sroa.0626.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243 ]
  %.sroa.16631.1 = phi i64 [ %.sroa.16631.0, %.critedge.i.i166 ], [ %.sroa.16631.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243 ]
  %.sroa.18640.1 = phi i64 [ %.sroa.18640.0, %.critedge.i.i166 ], [ %.sroa.18640.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243 ]
  %.sroa.20649.1 = phi ptr [ %.sroa.20649.0, %.critedge.i.i166 ], [ %.sroa.20649.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243 ]
  %.sroa.22658.1 = phi i64 [ %.sroa.22658.0, %.critedge.i.i166 ], [ %.sroa.12.0.copyload125.fr.i.i156, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsl8pJiQOn4hA_9coreutils.exit101.i.i243 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8116.0.copyload120.i.i154) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8116.0.copyload120.i.i154, i64 noundef %.sroa.0113.0.copyload115.i.i153, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28214
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit104.i.i168

_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ir, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternECsl8pJiQOn4hA_9coreutils.exit.i.i86.i.i172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !28089
  %i.ajf = icmp eq i64 %.sroa.0626.2, -1
  br i1 %i.ajf, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i
  store i64 %.sroa.0626.2, ptr %i.aw, align 8, !noalias !28089
  %.sroa.16631.0..sroa_idx632 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.sroa.16631.2, ptr %.sroa.16631.0..sroa_idx632, align 8, !noalias !28089
  %.sroa.18640.0..sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.18640.2, ptr %.sroa.18640.0..sroa_idx641, align 8, !noalias !28089
  %.sroa.20649.0..sroa_idx650 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %.sroa.20649.2, ptr %.sroa.20649.0..sroa_idx650, align 8, !noalias !28089
  %.sroa.22658.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %.sroa.22658.2, ptr %.sroa.22658.0..sroa_idx659, align 8, !noalias !28089
  br label %bb.mx

bb.mw:                                            ; preds = %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvCs44SRMMtlaHN_9uu_csplit9do_csplitINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBF_3map3MapINtB2_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB2_6csplitB2f_E0EEECsl8pJiQOn4hA_9coreutils.exit.thread.i
  store i8 1, ptr %i.xh, align 8, !noalias !28089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !28089
  call fastcc void @_RNvXs4_Cs44SRMMtlaHN_9uu_csplitINtB5_13InputSplitterINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerate9EnumerateINtNtBT_3map3MapINtB5_17LinesWithNewlinesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEENCINvB5_6csplitB2t_E0EEENtNtNtBV_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.av, ptr noalias nofree noundef align 8 dereferenceable(96) %i.az) #45, !noalias !28092
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ajh = load i64, ptr %i.ajg, align 8, !range !20, !noalias !28089, !noundef !12 ; 8 uses
  %.not100.i = icmp eq i64 %i.ajh, -2
  br i1 %.not100.i, label %bb.mz, label %bb.my

bb.mx:                                            ; preds = %bb.nw, %bb.nu, %._crit_edge.i198, %bb.mv
  %.sroa.061.0.i = phi i1 [ false, %._crit_edge.i198 ], [ true, %bb.nw ], [ true, %bb.nu ], [ true, %bb.mv ] ; 2 uses
  %i.aji = load i64, ptr %i.aw, align 8, !range !27924, !noalias !28089, !noundef !12 ; 4 uses
  %i.ajj = icmp eq i64 %i.aji, -1
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.ajl = load i8, ptr %i.ajk, align 8, !range !21, !alias.scope !28090, !noalias !28215
  %i.ajm = trunc nuw i8 %i.ajl to i1
  %or.cond5.i174 = select i1 %i.ajj, i1 true, i1 %i.ajm
  br i1 %or.cond5.i174, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit126.i, label %bb.nx

bb.my:                                            ; preds = %bb.mw
  %.sroa.7.0..sroa_idx159.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.7.0.copyload160.i = load ptr, ptr %.sroa.7.0..sroa_idx159.i, align 8, !noalias !28089 ; 11 uses
  %.sroa.11.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.11.0.copyload.i189 = load ptr, ptr %.sroa.11.0..sroa_idx.i188, align 8, !noalias !28089 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !28089
  call void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter10new_writer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ay) #45, !noalias !28092
  %i.ajn = load i64, ptr %i.au, align 8, !range !27924, !noalias !28089, !noundef !12 ; 5 uses
  %.not102.i190 = icmp eq i64 %i.ajn, -1
  br i1 %.not102.i190, label %bb.nf, label %bb.na

bb.mz:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !28089
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.do, i64 107
  %i.ajp = load i8, ptr %i.ajo, align 1, !range !21, !alias.scope !28090, !noalias !28215
  %i.ajq = trunc nuw i8 %i.ajp to i1
  %or.cond.i199 = select i1 %.lcssa2832, i1 %i.ajq, i1 false
  br i1 %or.cond.i199, label %bb.nv, label %bb.nu

bb.na:                                            ; preds = %bb.my
  %.sroa.14504.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.14504.0.copyload508 = load i64, ptr %.sroa.14504.0..sroa_idx507, align 8, !noalias !28216 ; 4 uses
  %.sroa.20511.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.20511.0.copyload515 = load ptr, ptr %.sroa.20511.0..sroa_idx514, align 8, !noalias !28216 ; 4 uses
  %.sroa.23518.0..sroa_idx521 = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ajr = load <2 x i64>, ptr %.sroa.23518.0..sroa_idx521, align 8, !noalias !28216 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !28089
  switch i64 %i.ajh, label %bb.nb [
    i64 -1, label %bb.nc
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191
  ]

bb.nb:                                            ; preds = %bb.na
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload160.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload160.i, i64 noundef %i.ajh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28217
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191

bb.nc:                                            ; preds = %bb.na
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i189) ]
  %i.ajs = load ptr, ptr %.sroa.11.0.copyload.i189, align 8, !invariant.load !12, !noalias !28218 ; 2 uses
  %.not.i.i111.i = icmp eq ptr %i.ajs, null
  br i1 %.not.i.i111.i, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload160.i) ]
  call void %i.ajs(ptr noundef nonnull %.sroa.7.0.copyload160.i) #51, !noalias !28218, !inline_history !27791
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload.i189, i64 8
  %i.aju = load i64, ptr %i.ajt, align 8, !range !19, !invariant.load !12, !noalias !28218 ; 2 uses
  %i.ajv = icmp eq i64 %i.aju, 0
  br i1 %i.ajv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i192

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i192: ; preds = %bb.ne
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload160.i) ]
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload.i189, i64 16
  %i.ajx = load i64, ptr %i.ajw, align 8, !range !25, !invariant.load !12, !noalias !28218
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload160.i, i64 noundef %i.aju, i64 noundef range(i64 1, -9223372036854775807) %i.ajx) #45, !noalias !28218
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191

bb.nf:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !28089
  %i.ajy = icmp eq i64 %i.ajh, -1
  br i1 %i.ajy, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload160.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload.i189) ]
  %i.ajz = ptrtoint ptr %.sroa.7.0.copyload160.i to i64
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191

bb.nh:                                            ; preds = %bb.nf
  %.cast.i193 = ptrtoint ptr %.sroa.11.0.copyload.i189 to i64
  %i.aka = call noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter7writeln(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload160.i, i64 noundef %.cast.i193) #45, !noalias !28092 ; 2 uses
  %.not103.i194 = icmp eq ptr %i.aka, null
  br i1 %.not103.i194, label %bb.nk, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.akb = ptrtoint ptr %i.aka to i64             ; 2 uses
  %i.akc = icmp eq i64 %i.ajh, 0
  br i1 %i.akc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload160.i, i64 noundef %i.ajh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28219
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorEECsl8pJiQOn4hA_9coreutils.exit.thread.i191

bb.nk:                                            ; preds = %bb.nh
  %i.akd = icmp eq i64 %i.ajh, 0
  br i1 %i.akd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit115.i, label %bb.nl

end_hunk_1
