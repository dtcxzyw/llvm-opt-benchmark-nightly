Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.05?download=true
inline.NumInlined: 664
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs5XgW7KoffLW_12opendal_core:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !900, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !range !32, !noalias !900, !noundef !11 ; 2 uses
  store i64 %i.ba, ptr %i.b, align 8, !noalias !900
  %i.bb = icmp eq i64 %i.ba, %i.p
  br i1 %i.bb, label %bb.j, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #28
          to label %bb.p unwind label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !900
  store ptr %i.au, ptr %i.a, align 8, !noalias !902
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !901, !noalias !900, !noundef !11 ; 5 uses
  %i.bf = icmp eq ptr %i.be, %i.au
  br i1 %i.bf, label %bb.l, label %bb.k, !prof !903

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !902, !noundef !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.be, ptr %i.bj, align 8, !noalias !902
  %i.bk = load ptr, ptr %i.av, align 8, !noalias !902, !nonnull !11, !align !13, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !902, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !noalias !902
  %.not1.i.i = icmp eq ptr %i.be, null
  br i1 %.not1.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core6HeaderEEBM_ECs5XgW7KoffLW_12opendal_core(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #32
          to label %.noexc.i unwind label %bb.h, !noalias !900

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !902, !nonnull !11, !align !13, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !noalias !902, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.br
  store ptr %i.au, ptr %i.bs, align 8, !noalias !902
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  store ptr %i.au, ptr %i.bd, align 8, !alias.scope !901, !noalias !900
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !901, !noalias !900, !noundef !11
  %.not2.i.i = icmp eq ptr %i.bu, null
  br i1 %.not2.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store ptr %i.au, ptr %i.bt, align 8, !alias.scope !901, !noalias !900
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !900
  %i.bv = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !900 ; 0 uses
  %i.bw = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8, !noalias !900 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !900
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.by = trunc nuw i8 %i.ao to i1
  br i1 %i.by, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !900
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.cc = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %bb.s
  br i1 %i.cc, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc13
  store atomic i8 1, ptr %i.bx monotonic, align 4, !noalias !900
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.t, %.noexc13, %bb.r, %bb.q
  %i.cd = atomicrmw xchg ptr %i.am, i32 0 release, align 4, !noalias !900
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.u, label %bb.ac, !prof !12

bb.u:                                             ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.am)
          to label %bb.ac unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.v, %bb.h
  %i.cf = phi { ptr, i32 } [ %i.bc, %bb.h ], [ %i.cg, %bb.v ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %i.am, i8 %i.ao) #29
          to label %.body unwind label %bb.w

bb.v:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.x:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.cj = trunc nuw i8 %i.ao to i1
  br i1 %i.cj, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cl = and i64 %i.ck, 9223372036854775807
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  %i.cn = invoke noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.z
  br i1 %i.cn, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc15
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.aa, %.noexc15, %bb.y, %bb.x
  %i.co = atomicrmw xchg ptr %i.am, i32 0 release, align 4
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit, !prof !12

bb.ab:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.am)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.ac:                                            ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cq = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0 = phi ptr [ %i.cq, %bb.ac ], [ null, %bb.ad ]
  ret ptr %.sroa.0.0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.ab
  %i.cr = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  invoke void @_RNvMs_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.cr)
          to label %bb.ad unwind label %bb.e

bb.ad:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core.exit
  call void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit18

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body
  br i1 %.sroa.02.0, label %bb.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit

bb.ae:                                            ; preds = %bb.af, %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.af, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8NotifiedINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXsd_NtNtCs9k1U6oT1TZJ_5tokio7runtime4taskINtB5_4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4TaskINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer5count(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.e = getelementptr [32 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.g, -1
  %.not.i.i = icmp uge i64 %i.m, %i.c             ; 2 uses
  %i.n = getelementptr [32 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -32
  %storemerge.i.i = select i1 %.not.i.i, ptr %i.e, ptr %i.n
  %.not56.i = icmp eq ptr %i.o, null
  %.not5.i = or i1 %.not.i.i, %.not56.i
  br i1 %.not5.i, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %storemerge.i.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 5                         ; 3 uses
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.u, 576460752303423486
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1, %.new
  %.sroa.05.0.i.i = phi i64 [ 0, %.new ], [ %i.ai, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.l, %.new ], [ %.sroa.3.0.i.i.i.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i.i.i.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1 ]
  %i.w = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %i.w, label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.05.0.i.i
  %i.y = add i64 %.sroa.02.0.i.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !906, !noundef !11
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i, i64 %i.aa)
  br label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i

_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.3.0.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ %.sroa.02.0.i.i, %bb.e ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ac, label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.05.0.i.i
  %i.ae = add i64 %.sroa.0.0.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !noalias !906, !noundef !11
  %i.ah = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.3.0.i.i.i, i64 %i.ag)
  br label %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1

_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1: ; preds = %bb.g, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i
  %.sroa.3.0.i.i.i.1 = phi i64 [ %i.ah, %bb.g ], [ 0, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.1 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i.i, %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.05.0.i.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, label %bb.e

_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa: ; preds = %_RNCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB7_6Buffer5count0Bb_.exit.i.i.1
  %i.aj = and i64 %i.t, 32
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, %bb.d
  %.sroa.6.0.i.i.epil.init = phi i64 [ %i.l, %bb.d ], [ %.sroa.3.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %.sroa.0.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.ak = icmp eq i64 %.sroa.6.0.i.i.epil.init, 0
  %i.al = add i64 %.sroa.02.0.i.i.epil.init, 1
  %.sroa.0.0.i.i.i.epil = select i1 %i.ak, i64 %.sroa.02.0.i.i.epil.init, i64 %i.al
  br label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit

_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa, %._crit_edge.i, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %._crit_edge.i ], [ %.sroa.0.0.i.i.i.1, %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesEENtNtNtB9_6traits8iterator8Iterator4foldTjjENCNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB2P_6Buffer5count0EB2T_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.epil, %.epil.preheader ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer6chunks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @96, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !noalias !909, !noundef !11 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !909
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !909, !nonnull !11, !align !13, !noundef !11
  %i.h = load ptr, ptr %i.g, align 8, !noalias !909, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !909, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !909, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void %i.h(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noundef nonnull align 8 %i.i, ptr noundef %i.k, i64 noundef %i.m), !inline_history !0
  store ptr null, ptr %i.a, align 8
  %.pre = load ptr, ptr %1, align 8
  %i.o = icmp eq ptr %.pre, null
  %i.p = select i1 %i.o, i64 24, i64 16
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %1, align 8, !noalias !909, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load <2 x i64>, ptr %i.q, align 8, !noalias !909
  store <2 x i64> %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = load <2 x i64>, ptr %i.s, align 8, !noalias !909
  store <2 x i64> %i.w, ptr %i.v, align 8
  br label %_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsl_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_5InnerNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.f
  %.not = phi i64 [ %i.p, %bb.e ], [ 16, %bb.f ]
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.not
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.z, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer7current(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !nonnull !11, !align !13, !noundef !11
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !11
  tail call void %i.h(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.i, ptr noundef %i.k, i64 noundef %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !11 ; 3 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !11
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.t)
  %i.w = add i64 %.sroa.0.0.i, %i.s
  tail call void @_RINvMNtCsk2Y6yuwWMc1_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.o, i64 noundef %i.s, i64 noundef %i.w)
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6Buffer8split_to(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
