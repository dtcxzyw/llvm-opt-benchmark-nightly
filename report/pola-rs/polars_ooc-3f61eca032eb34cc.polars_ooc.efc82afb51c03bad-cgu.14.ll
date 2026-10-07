Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.14?download=true
inline.NumInlined: 896
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs1_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4sendCskAlUH1kY1DR_10polars_ooc:bb.a

bb.am:                                            ; preds = %bb.al
  %i.ct = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !dbg !10199, !noalias !10056
  %i.cu = icmp eq i64 %i.ct, 1, !dbg !10200
  br i1 %i.cu, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !10200

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !10201
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %bb.ao, !dbg !10202, !noalias !10041

bb.ao:                                            ; preds = %bb.an
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10057), !dbg !10203
  %i.cw = load i64, ptr %i.d, align 8, !dbg !10204, !range !557, !alias.scope !10057, !noalias !10041, !noundef !496
  %i.cx = icmp eq i64 %i.cw, 2, !dbg !10204
  br i1 %i.cx, label %.body.i, label %bb.ap, !dbg !10204

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !10058), !dbg !10204
  call void @llvm.experimental.noalias.scope.decl(metadata !10059), !dbg !10205
  call void @llvm.experimental.noalias.scope.decl(metadata !10060), !dbg !10206
  %i.cy = load ptr, ptr %i.cq, align 8, !dbg !10207, !alias.scope !10061, !noalias !10041, !nonnull !496, !noundef !496
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !dbg !10208, !noalias !10062
  %i.da = icmp eq i64 %i.cz, 1, !dbg !10209
  br i1 %i.da, label %bb.aq, label %.body.i, !dbg !10209

bb.aq:                                            ; preds = %bb.ap
  fence acquire, !dbg !10210
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEE9drop_slowCs2TTqCHgArKm_11signal_hook(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cq) #31
          to label %.body.i unwind label %bb.ah, !dbg !10211, !noalias !10041

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10212, !noalias !10041
  %i.db = load i64, ptr %i.d, align 8, !dbg !10213, !range !557, !noalias !10041, !noundef !496
  %i.dc = load ptr, ptr %i.cq, align 8, !dbg !10213, !noalias !10041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10203, !noalias !10041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10214, !noalias !10041
  %i.dd = insertvalue { i64, ptr } poison, i64 %i.db, 0, !dbg !10215
  %i.de = insertvalue { i64, ptr } %i.dd, ptr %i.dc, 1, !dbg !10215
  br label %bb.au, !dbg !10215

bb.ar:                                            ; preds = %bb.ak, %bb.aj
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !dbg !10216, !noalias !10063
  %i.dh = icmp eq i64 %i.dg, 1, !dbg !10217
  br i1 %i.dh, label %bb.as, label %.body.i, !dbg !10217

bb.as:                                            ; preds = %bb.ar
  fence acquire, !dbg !10218
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #31
          to label %.body.i unwind label %bb.ah, !dbg !10219, !noalias !10041

bb.at:                                            ; preds = %.thread.i, %bb.ag, %bb.z, %_RNvYNCNKNvNvMNtCslovz2ii29zg_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !10220

.body.i:                                          ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ad, %bb.ac
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.di, %bb.at ], [ %i.cv, %bb.aq ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.ad ], [ %i.cv, %bb.ao ], [ %i.cv, %bb.ap ], [ %i.df, %bb.as ], [ %i.df, %bb.ar ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMs1_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB1a_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEE4send0EECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(48) %i.g) #34
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.ax, !dbg !10220, !noalias !10041

bb.au:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc.exit26.i.i.i
  %.merged.i.i.i = phi { i64, ptr } [ %i.de, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i ], [ %i.cc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc.exit26.i.i.i ], !dbg !10221 ; 2 uses
  %i.dj = extractvalue { i64, ptr } %.merged.i.i.i, 0, !dbg !10222 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 3, !dbg !10223
  br i1 %i.dk, label %.thread.i, label %bb.av, !dbg !10224

.thread.i:                                        ; preds = %bb.au, %.noexc.i
  %i.dl = invoke fastcc { i64, ptr } @_RNCINvMNtCslovz2ii29zg_17crossbeam_channel7contextNtB5_7Context4withNCNvMs1_NtNtB7_7flavors4zeroINtB1c_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4send0INtNtB2q_6result6ResultuINtNtB7_3err16SendTimeoutErrorB1L_EEEs0_0CskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.g)
          to label %bb.aw unwind label %bb.at, !dbg !10225, !noalias !10041 ; 2 uses

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.pn.i = phi { i64, ptr } [ %i.dl, %bb.aw ], [ %.merged.i.i.i, %bb.au ]
  %.sroa.0.0.i23 = phi i64 [ %i.dm, %bb.aw ], [ %i.dj, %bb.au ], !dbg !10226
  %.sroa.3.0.i = extractvalue { i64, ptr } %.pn.i, 1, !dbg !10227
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMs1_NtNtCslovz2ii29zg_17crossbeam_channel7flavors4zeroINtB1a_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEE4send0EECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef align 8 dereferenceable(48) %i.g), !dbg !10220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10220, !noalias !10041
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECskAlUH1kY1DR_10polars_ooc.exit30, !dbg !10082

bb.aw:                                            ; preds = %.thread.i
  %i.dm = extractvalue { i64, ptr } %i.dl, 0, !dbg !10225
  br label %bb.av, !dbg !10228

bb.ax:                                            ; preds = %.body.i
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10229, !noalias !10041
  unreachable, !dbg !10229

bb.ay:                                            ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.ao, i64 4, !dbg !10230
  br i1 %i.ar, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.az, !dbg !10231

bb.az:                                            ; preds = %bb.ay
  %i.dp = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10232
  %i.dq = and i64 %i.dp, 9223372036854775807, !dbg !10233
  %i.dr = icmp eq i64 %i.dq, 0, !dbg !10233
  br i1 %i.dr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %.noexc28, !dbg !10233, !prof !531

.noexc28:                                         ; preds = %bb.az
  %i.ds = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !10234
  br i1 %i.ds, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.ba, !dbg !10235

bb.ba:                                            ; preds = %.noexc28
  store atomic i8 1, ptr %i.do monotonic, align 4, !dbg !10236
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, !dbg !10237

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27: ; preds = %bb.ba, %.noexc28, %bb.az, %bb.ay
  %i.dt = atomicrmw xchg ptr %i.ao, i32 0 release, align 4, !dbg !10238
  %i.du = icmp eq i32 %i.dt, 2, !dbg !10239
  br i1 %i.du, label %bb.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECskAlUH1kY1DR_10polars_ooc.exit30, !dbg !10239, !prof !559

bb.bb:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ao), !dbg !10240
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECskAlUH1kY1DR_10polars_ooc.exit30, !dbg !10240

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECskAlUH1kY1DR_10polars_ooc.exit30: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECskAlUH1kY1DR_10polars_ooc.exit22, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, %bb.bb, %bb.av
  %.sroa.0.0.pn = phi i64 [ %.sroa.0.0.i23, %bb.av ], [ 2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECskAlUH1kY1DR_10polars_ooc.exit22 ], [ 1, %bb.bb ], [ 1, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27 ]
  %.sroa.4.0.pn = phi ptr [ %.sroa.3.0.i, %bb.av ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel5waker5EntryECskAlUH1kY1DR_10polars_ooc.exit22 ], [ %i.bg, %bb.bb ], [ %i.bg, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10082
  %.pn = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.pn, 0, !dbg !10112
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.sroa.4.0.pn, 1, !dbg !10112
  ret { i64, ptr } %.merged, !dbg !10241

bb.bc:                                            ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4zero5InnerEECskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.ao, i8 %i.aq) #34
          to label %.body.thread unwind label %bb.x, !dbg !10242

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc.exit: ; preds = %.body.i, %.body.thread, %bb.bd, %.body
  %.pn.pn57 = phi { ptr, i32 } [ %.pn.pn58, %.body.thread ], [ %.pn.pn58, %bb.bd ], [ %i.bh, %.body ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn.pn57, !dbg !10143

.body.thread:                                     ; preds = %.split.thread, %bb.e, %bb.bc, %.body
  %.pn.pn58 = phi { ptr, i32 } [ %i.bh, %.body ], [ %i.al, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.bc ], [ %lpad.thr_comm, %.split.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10064), !dbg !10082
  call void @llvm.experimental.noalias.scope.decl(metadata !10065), !dbg !10243
  %i.dv = load ptr, ptr %i.o, align 8, !dbg !10244, !alias.scope !10066, !nonnull !496, !noundef !496
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !dbg !10245, !noalias !10066
  %i.dx = icmp eq i64 %i.dw, 1, !dbg !10246
  br i1 %i.dx, label %bb.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc.exit, !dbg !10246

bb.bd:                                            ; preds = %.body.thread
  fence acquire, !dbg !10247
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEE9drop_slowCs2TTqCHgArKm_11signal_hook(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #31
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECskAlUH1kY1DR_10polars_ooc.exit unwind label %bb.x, !dbg !10248
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE18disconnect_sendersB10_(ptr noundef nonnull align 128 %0) unnamed_addr #0 !dbg !10249 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10259
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10260
  %i.c = and i64 %i.b, 1, !dbg !10261
  %i.d = icmp eq i64 %i.c, 0, !dbg !10261         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !10261

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !10262
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #35, !dbg !10263
  br label %bb.c, !dbg !10264

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d, !dbg !10265
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20disconnect_receiversB10_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10266 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10374 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10375
  %i.c = and i64 %i.b, 1, !dbg !10376
  %i.d = icmp eq i64 %i.c, 0, !dbg !10376         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o, !dbg !10376

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128, !dbg !10377 ; 2 uses
  %i.f = and i64 %i.e, 62, !dbg !10378
  %i.g = icmp eq i64 %i.f, 62, !dbg !10378
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !dbg !10378

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7, !dbg !10379
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !10379

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10380
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !10380

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0, !dbg !10381
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10382

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw i32 %.sroa.0.04042.i, %.sroa.0.04042.i, !dbg !10383 ; 2 uses
  %xtraiter = and i32 %i.i, 7, !dbg !10382        ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3, !dbg !10382
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10382

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56, !dbg !10382
  br label %.lr.ph.i.i, !dbg !10382

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  %niter.next.7 = add i32 %niter, 8, !dbg !10382  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10382
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10382

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10382
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10382

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0, !dbg !10382
  tail call void @llvm.assume(i1 %lcmp.mod21), !dbg !10382
  br label %.lr.ph.i.i.epil, !dbg !10382

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10384
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10382 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10382
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10382, !llvm.loop !10287

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1, !dbg !10385 ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128, !dbg !10386 ; 2 uses
  %i.m = and i64 %i.l, 62, !dbg !10378
  %i.n = icmp eq i64 %i.m, 62, !dbg !10378
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !10378

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10387
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128, !dbg !10388 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10389 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10390 ; 2 uses
  %i.s = lshr i64 %i.p, 1, !dbg !10391            ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o, !dbg !10391      ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !10391
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i, !dbg !10391

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], !dbg !10392 ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i, !dbg !10393

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ], !dbg !10387 ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7, !dbg !10394
  br i1 %i.v, label %bb.f, label %bb.e, !dbg !10394

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10395
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, !dbg !10395

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0, !dbg !10396
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader, !dbg !10397

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i, !dbg !10398 ; 2 uses
  %xtraiter22 = and i32 %i.w, 7, !dbg !10397      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3, !dbg !10397
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new, !dbg !10397

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56, !dbg !10397
  br label %.lr.ph.i22.i, !dbg !10397

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  %niter27.next.7 = add i32 %niter27, 8, !dbg !10397 ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26, !dbg !10397
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i, !dbg !10397

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0, !dbg !10397
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader, !dbg !10397

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0, !dbg !10397
  tail call void @llvm.assume(i1 %lcmp.mod25), !dbg !10397
  br label %.lr.ph.i22.i.epil, !dbg !10397

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10399
  %epil.iter23.next = add i32 %epil.iter23, 1, !dbg !10397 ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22, !dbg !10397
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !dbg !10397, !llvm.loop !10311

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1, !dbg !10400
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10401 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null, !dbg !10402
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i, !dbg !10402

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ], !dbg !10401 ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.az, %bb.n ], !dbg !10403
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null, !dbg !10404
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_.exit, label %bb.g, !dbg !10404

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.ab = phi i64 [ %i.ba, %bb.n ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.az, %bb.n ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ac = and i64 %i.ab, 31, !dbg !10405          ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31, !dbg !10406
  br i1 %.not19.i, label %bb.h, label %bb.k, !dbg !10406

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10407
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_.exit, !dbg !10408

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10409
  %i.ae = icmp eq ptr %i.ad, null, !dbg !10410
  br i1 %i.ae, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i, !dbg !10410

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.ai, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.af = icmp ult i32 %.sroa.0.02.i27.i, 7, !dbg !10411
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !10411

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10412
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !10412

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0, !dbg !10413
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10414

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ag = mul nuw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i, !dbg !10415 ; 2 uses
  %xtraiter34 = and i32 %i.ag, 7, !dbg !10414     ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i27.i, 3, !dbg !10414
  br i1 %i.ah, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10414

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ag, 56, !dbg !10414
  br label %.lr.ph.i.i.i, !dbg !10414

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  %niter39.next.7 = add i32 %niter39, 8, !dbg !10414 ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38, !dbg !10414
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10414

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0, !dbg !10414
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10414

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0, !dbg !10414
  tail call void @llvm.assume(i1 %lcmp.mod37), !dbg !10414
  br label %.lr.ph.i.i.i.epil, !dbg !10414

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10416
  %epil.iter35.next = add i32 %epil.iter35, 1, !dbg !10414 ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34, !dbg !10414
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10414, !llvm.loop !10333

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ai = add i32 %.sroa.0.02.i27.i, 1, !dbg !10417
  %i.aj = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10409
  %i.ak = icmp eq ptr %i.aj, null, !dbg !10410
  br i1 %i.ak, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i, !dbg !10410

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.al = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10418
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10419
  br label %bb.n, !dbg !10420

bb.k:                                             ; preds = %.lr.ph48.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8, !dbg !10421
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ac, !dbg !10422 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !dbg !10423
  %i.aq = and i64 %i.ap, 1, !dbg !10424
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !10424
  br i1 %i.ar, label %.lr.ph.i28.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i, !dbg !10424

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i29.i, 7, !dbg !10425
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !10425

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10426
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, !dbg !10426

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0, !dbg !10427
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader, !dbg !10428

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.at = mul nuw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i, !dbg !10429 ; 2 uses
  %xtraiter28 = and i32 %i.at, 7, !dbg !10428     ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i29.i, 3, !dbg !10428
  br i1 %i.au, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new, !dbg !10428

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.at, 56, !dbg !10428
  br label %.lr.ph.i.i32.i, !dbg !10428

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  %niter33.next.7 = add i32 %niter33, 8, !dbg !10428 ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32, !dbg !10428
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i, !dbg !10428

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0, !dbg !10428
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader, !dbg !10428

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0, !dbg !10428
  tail call void @llvm.assume(i1 %lcmp.mod31), !dbg !10428
  br label %.lr.ph.i.i32.i.epil, !dbg !10428

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10430
  %epil.iter29.next = add i32 %epil.iter29, 1, !dbg !10428 ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28, !dbg !10428
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !dbg !10428, !llvm.loop !10360

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.av = add i32 %.sroa.0.02.i29.i, 1, !dbg !10431
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8, !dbg !10423
  %i.ax = and i64 %i.aw, 1, !dbg !10424
  %i.ay = icmp eq i64 %i.ax, 0, !dbg !10424
  br i1 %i.ay, label %.lr.ph.i28.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i, !dbg !10424

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.an), !dbg !10432
  br label %bb.n, !dbg !10420

bb.n:                                             ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i ], [ %i.al, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i ], !dbg !10433 ; 2 uses
  %i.az = add i64 %.sroa.05.046.i, 2, !dbg !10434 ; 3 uses
  %i.ba = lshr i64 %i.az, 1, !dbg !10393          ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %i.o, !dbg !10393
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !dbg !10393

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !10435
  store atomic i64 %i.bb, ptr %0 release, align 128, !dbg !10436
  br label %bb.o, !dbg !10437

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE20discard_all_messagesB10_.exit
  ret i1 %i.d, !dbg !10438
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE18disconnect_sendersCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %0) unnamed_addr #0 !dbg !10439 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10449
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10450
  %i.c = and i64 %i.b, 1, !dbg !10451
  %i.d = icmp eq i64 %i.c, 0, !dbg !10451         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !10451

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !10452
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #35, !dbg !10453
  br label %bb.c, !dbg !10454

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d, !dbg !10455
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20disconnect_receiversCskAlUH1kY1DR_10polars_ooc(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10456 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10561 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10562
  %i.c = and i64 %i.b, 1, !dbg !10563
  %i.d = icmp eq i64 %i.c, 0, !dbg !10563         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.n, !dbg !10563

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128, !dbg !10564 ; 2 uses
  %i.f = and i64 %i.e, 62, !dbg !10565
  %i.g = icmp eq i64 %i.f, 62, !dbg !10565
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !dbg !10565

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7, !dbg !10566
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !10566

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10567
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !10567

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0, !dbg !10568
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10569

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw i32 %.sroa.0.04042.i, %.sroa.0.04042.i, !dbg !10570 ; 2 uses
  %xtraiter = and i32 %i.i, 7, !dbg !10569        ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3, !dbg !10569
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10569

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56, !dbg !10569
  br label %.lr.ph.i.i, !dbg !10569

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  %niter.next.7 = add i32 %niter, 8, !dbg !10569  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10569
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10569

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10569
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10569

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0, !dbg !10569
  tail call void @llvm.assume(i1 %lcmp.mod21), !dbg !10569
  br label %.lr.ph.i.i.epil, !dbg !10569

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10571
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10569 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10569
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10569, !llvm.loop !10477

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1, !dbg !10572 ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128, !dbg !10573 ; 2 uses
  %i.m = and i64 %i.l, 62, !dbg !10565
  %i.n = icmp eq i64 %i.m, 62, !dbg !10565
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !10565

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10574
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128, !dbg !10575 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10576 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10577 ; 2 uses
  %i.s = lshr i64 %i.p, 1, !dbg !10578            ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o, !dbg !10578      ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !10578
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i, !dbg !10578

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], !dbg !10579 ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i, !dbg !10580

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ], !dbg !10574 ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7, !dbg !10581
  br i1 %i.v, label %bb.f, label %bb.e, !dbg !10581

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10582
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, !dbg !10582

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0, !dbg !10583
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader, !dbg !10584

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i, !dbg !10585 ; 2 uses
  %xtraiter22 = and i32 %i.w, 7, !dbg !10584      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3, !dbg !10584
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new, !dbg !10584

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56, !dbg !10584
  br label %.lr.ph.i22.i, !dbg !10584

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  %niter27.next.7 = add i32 %niter27, 8, !dbg !10584 ; 2 uses
  %niter27.ncmp.7 = icmp eq i32 %niter27.next.7, %unroll_iter26, !dbg !10584
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i, !dbg !10584

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0, !dbg !10584
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader, !dbg !10584

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0, !dbg !10584
  tail call void @llvm.assume(i1 %lcmp.mod25), !dbg !10584
  br label %.lr.ph.i22.i.epil, !dbg !10584

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10586
  %epil.iter23.next = add i32 %epil.iter23, 1, !dbg !10584 ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22, !dbg !10584
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !dbg !10584, !llvm.loop !10501

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1, !dbg !10587
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10588 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null, !dbg !10589
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i, !dbg !10589

._crit_edge49.i:                                  ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i ], !dbg !10588 ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.ay, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i ], !dbg !10590
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null, !dbg !10591
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit, label %bb.g, !dbg !10591

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i
  %i.ab = phi i64 [ %i.az, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.ay, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.ac = and i64 %i.ab, 31, !dbg !10592          ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31, !dbg !10593
  br i1 %.not19.i, label %bb.h, label %bb.k, !dbg !10593

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 256, i64 noundef 8) #23, !dbg !10594
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit, !dbg !10595

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10596
  %i.ae = icmp eq ptr %i.ad, null, !dbg !10597
  br i1 %i.ae, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10597

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.ai, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.af = icmp ult i32 %.sroa.0.02.i27.i, 7, !dbg !10598
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !10598

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10599
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !10599

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0, !dbg !10600
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10601

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ag = mul nuw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i, !dbg !10602 ; 2 uses
  %xtraiter34 = and i32 %i.ag, 7, !dbg !10601     ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i27.i, 3, !dbg !10601
  br i1 %i.ah, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10601

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ag, 56, !dbg !10601
  br label %.lr.ph.i.i.i, !dbg !10601

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  %niter39.next.7 = add i32 %niter39, 8, !dbg !10601 ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38, !dbg !10601
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10601

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0, !dbg !10601
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10601

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0, !dbg !10601
  tail call void @llvm.assume(i1 %lcmp.mod37), !dbg !10601
  br label %.lr.ph.i.i.i.epil, !dbg !10601

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10603
  %epil.iter35.next = add i32 %epil.iter35, 1, !dbg !10601 ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34, !dbg !10601
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10601, !llvm.loop !10523

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ai = add i32 %.sroa.0.02.i27.i, 1, !dbg !10604
  %i.aj = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10596
  %i.ak = icmp eq ptr %i.aj, null, !dbg !10597
  br i1 %i.ak, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10597

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.al = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8, !dbg !10605
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 256, i64 noundef 8) #23, !dbg !10606
  br label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10607

bb.k:                                             ; preds = %.lr.ph48.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8, !dbg !10608
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ac, !dbg !10609 ; 2 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8, !dbg !10610
  %i.ap = and i64 %i.ao, 1, !dbg !10611
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !10611
  br i1 %i.aq, label %.lr.ph.i28.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10611

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.ar = icmp ult i32 %.sroa.0.02.i29.i, 7, !dbg !10612
  br i1 %i.ar, label %bb.m, label %bb.l, !dbg !10612

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !10613
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, !dbg !10613

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0, !dbg !10614
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader, !dbg !10615

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.as = mul nuw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i, !dbg !10616 ; 2 uses
  %xtraiter28 = and i32 %i.as, 7, !dbg !10615     ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02.i29.i, 3, !dbg !10615
  br i1 %i.at, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new, !dbg !10615

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.as, 56, !dbg !10615
  br label %.lr.ph.i.i32.i, !dbg !10615

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i32.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  %niter33.next.7 = add i32 %niter33, 8, !dbg !10615 ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32, !dbg !10615
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i, !dbg !10615

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0, !dbg !10615
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader, !dbg !10615

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0, !dbg !10615
  tail call void @llvm.assume(i1 %lcmp.mod31), !dbg !10615
  br label %.lr.ph.i.i32.i.epil, !dbg !10615

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10617
  %epil.iter29.next = add i32 %epil.iter29, 1, !dbg !10615 ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28, !dbg !10615
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !dbg !10615, !llvm.loop !10550

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.au = add i32 %.sroa.0.02.i29.i, 1, !dbg !10618
  %i.av = load atomic i64, ptr %i.an acquire, align 8, !dbg !10610
  %i.aw = and i64 %i.av, 1, !dbg !10611
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !10611
  br i1 %i.ax, label %.lr.ph.i28.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !10611

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i
  %.sroa.011.2.i = phi ptr [ %i.al, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i ], [ %.sroa.011.145.i, %bb.k ], [ %.sroa.011.145.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], !dbg !10619 ; 2 uses
  %i.ay = add i64 %.sroa.05.046.i, 2, !dbg !10620 ; 3 uses
  %i.az = lshr i64 %i.ay, 1, !dbg !10580          ; 2 uses
  %.not.i = icmp eq i64 %i.az, %i.o, !dbg !10580
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i, !dbg !10580

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.ba = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !10621
  store atomic i64 %i.ba, ptr %0 release, align 128, !dbg !10622
  br label %bb.n, !dbg !10623

bb.n:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCskAlUH1kY1DR_10polars_ooc.exit
  ret i1 %i.d, !dbg !10624
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10625 {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 10 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10786
  %i.f = load i64, ptr %1, align 8, !dbg !10787, !range !557, !noundef !496
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10787
  %i.h = load ptr, ptr %i.g, align 8, !dbg !10788, !noundef !496 ; 6 uses
  switch i64 %i.f, label %default.unreachable41 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.w
  ], !dbg !10786

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10789
  call void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull align 128 %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, i64 undef, i32 noundef 1000000000), !dbg !10790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10791
  br label %bb.x, !dbg !10792

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10772), !dbg !10794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10773), !dbg !10794
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128, !dbg !10795 ; 5 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !dbg !10796, !noalias !10774 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136, !dbg !10797 ; 5 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10798, !noalias !10774
  %i.m = and i64 %i.j, 1, !dbg !10799
  %i.n = icmp eq i64 %i.m, 0, !dbg !10799
  br i1 %i.n, label %.lr.ph.lr.ph.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i, !dbg !10799

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10801
  %.sroa.011.0.copyload28.i = load i64, ptr %i.c, align 8, !dbg !10801, !alias.scope !10773, !noalias !10772
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx29.i, i64 24, i1 false), !dbg !10801, !noalias !10772
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, !dbg !10802

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %.lr.ph.i.i, !dbg !10799

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.j, %.lr.ph.lr.ph.i.i ], [ %i.aq, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.l, %.lr.ph.lr.ph.i.i ], [ %i.ar, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.p = lshr exact i64 %.sroa.03.0.ph78.i.i, 1, !dbg !10803
  %i.q = and i64 %i.p, 31, !dbg !10803            ; 2 uses
  %i.r = icmp eq i64 %i.q, 31, !dbg !10804
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !dbg !10804

bb.d:                                             ; preds = %.loopexit.i.i
  %i.s = add i32 %.sroa.0.071.i64.i, 1, !dbg !10805 ; 2 uses
  %i.t = lshr exact i64 %i.aa, 1, !dbg !10803
  %i.u = and i64 %i.t, 31, !dbg !10803            ; 2 uses
  %i.v = icmp eq i64 %i.u, 31, !dbg !10804
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !dbg !10804

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i64.i = phi i32 [ %i.s, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.w = icmp ult i32 %.sroa.0.071.i64.i, 7, !dbg !10806
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !10806

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !dbg !10807, !noalias !10774

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i64.i, 0, !dbg !10808
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10809

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.x = mul nuw i32 %.sroa.0.071.i64.i, %.sroa.0.071.i64.i, !dbg !10810 ; 2 uses
  %xtraiter = and i32 %i.x, 7, !dbg !10809        ; 3 uses
  %i.y = icmp ult i32 %.sroa.0.071.i64.i, 3, !dbg !10809
  br i1 %i.y, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10809

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.x, 56, !dbg !10809
  br label %.lr.ph.i.i.i, !dbg !10809

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  %niter.next.7 = add i32 %niter, 8, !dbg !10809  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10809
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10809

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.u, %bb.d ], !dbg !10803 ; 2 uses
  %i.z = icmp eq i64 %.lcssa.i, 30, !dbg !10812   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.z, i1 %.not.i.i, i1 false, !dbg !10812
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i, !dbg !10812

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10809
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10809

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter, 0, !dbg !10809
  tail call void @llvm.assume(i1 %lcmp.mod99), !dbg !10809
  br label %.lr.ph.i.i.i.epil, !dbg !10809

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10811, !noalias !10774
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10809 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10809
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10809, !llvm.loop !10666

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.aa = load atomic i64, ptr %i.i acquire, align 8, !dbg !10813, !noalias !10774 ; 3 uses
  %i.ab = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10814, !noalias !10774
  %i.ac = and i64 %i.aa, 1, !dbg !10799
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !10799
  br i1 %i.ad, label %bb.d, label %.outer._crit_edge.i.i, !dbg !10799

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.af, %bb.g ], !dbg !10815 ; 9 uses
  %i.ae = icmp eq ptr %.sroa.07.072.i.lcssa.i, null, !dbg !10816
  br i1 %i.ae, label %bb.h, label %bb.m, !dbg !10816

bb.g:                                             ; preds = %._crit_edge.i
  %i.af = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13new_zeroed_inB1w_()
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i unwind label %.body.thread23.loopexit.i, !dbg !10817, !noalias !10775

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEE13new_zeroed_inB1w_()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !dbg !10818, !noalias !10774 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = cmpxchg ptr %i.k, ptr null, ptr %i.ag release monotonic, align 8, !dbg !10819, !noalias !10774
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1, !dbg !10819
  br i1 %i.ai, label %bb.j, label %bb.k, !dbg !10820

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ag, ptr %i.o release, align 8, !dbg !10821, !noalias !10774
  br label %bb.m, !dbg !10822

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !10823
  br i1 %i.aj, label %.outer.backedge.i.i, label %bb.l, !dbg !10823

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10824, !noalias !10774
  br label %.outer.backedge.i.i, !dbg !10823

bb.m:                                             ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEEEEB2r_.exit.i.i ], [ %i.ag, %bb.j ], !dbg !10825 ; 3 uses
  %i.ak = add i64 %.sroa.03.073.i.lcssa.i, 2, !dbg !10826
  %i.al = cmpxchg weak ptr %i.i, i64 %.sroa.03.073.i.lcssa.i, i64 %i.ak seq_cst acquire, align 8, !dbg !10827, !noalias !10774
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.al, 1, !dbg !10828
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n, !dbg !10829

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6), !dbg !10830 ; 2 uses
  %i.am = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !10831 ; 2 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0, !dbg !10832
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader, !dbg !10833

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter100 = and i32 %i.am, 5, !dbg !10833    ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3, !dbg !10833
  br i1 %i.an, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new, !dbg !10833

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter104 = and i32 %i.am, 56, !dbg !10833
  br label %.lr.ph.i25.i.i, !dbg !10833

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod102.not = icmp eq i32 %xtraiter100, 0, !dbg !10833
  br i1 %lcmp.mod102.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader, !dbg !10833

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod103 = icmp ne i32 %xtraiter100, 0, !dbg !10833
  tail call void @llvm.assume(i1 %lcmp.mod103), !dbg !10833
  br label %.lr.ph.i25.i.i.epil, !dbg !10833

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter101 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter101.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  %epil.iter101.next = add i32 %epil.iter101, 1, !dbg !10833 ; 2 uses
  %epil.iter101.cmp.not = icmp eq i32 %epil.iter101.next, %xtraiter100, !dbg !10833
  br i1 %epil.iter101.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !dbg !10833, !llvm.loop !10705

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.ao = add i32 %.sroa.0.071.i.lcssa.i, 1, !dbg !10835
  br label %.outer.backedge.i.i, !dbg !10836

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter105 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter105.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  tail call void @llvm.x86.sse2.pause(), !dbg !10834, !noalias !10774
  %niter105.next.7 = add i32 %niter105, 8, !dbg !10833 ; 2 uses
  %niter105.ncmp.7 = icmp eq i32 %niter105.next.7, %unroll_iter104, !dbg !10833
  br i1 %niter105.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i, !dbg !10833

bb.o:                                             ; preds = %bb.m
  br i1 %i.z, label %bb.p, label %.outer._crit_edge.i.i, !dbg !10837

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !10838
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i, !dbg !10839, !prof !559

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #32
          to label %.noexc5.i unwind label %.body.thread23.loopexit.split-lp.i, !dbg !10840, !noalias !10775

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.k release, align 8, !dbg !10841, !noalias !10774
  %i.ap = atomicrmw add ptr %i.i, i64 2 release, align 8, !dbg !10842, !noalias !10774 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.1.i.i release, align 8, !dbg !10843, !noalias !10774
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10801
  %.sroa.011.0.copyload34.i = load i64, ptr %i.c, align 8, !dbg !10801, !alias.scope !10773, !noalias !10772
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx35.i, i64 24, i1 false), !dbg !10801, !noalias !10772
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i, !dbg !10802

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.ao, %._crit_edge.loopexit.i.i.i ]
  %i.aq = load atomic i64, ptr %i.i acquire, align 8, !dbg !10844, !noalias !10774 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.k acquire, align 8, !dbg !10845, !noalias !10774
  %i.as = and i64 %i.aq, 1, !dbg !10799
  %i.at = icmp eq i64 %i.as, 0, !dbg !10799
  br i1 %i.at, label %.lr.ph.i.i, label %.outer._crit_edge.i.i, !dbg !10799

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.au = icmp eq ptr %.sroa.035.1.ph.i.i, null, !dbg !10846
  br i1 %i.au, label %.body.thread.i, label %.thread47.i.i, !dbg !10846

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10847, !noalias !10774
  br label %.body.thread.i, !dbg !10846

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ], !dbg !10848
  %.sroa.47.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ], !dbg !10849 ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ], !dbg !10815 ; 2 uses
  %i.av = icmp eq ptr %.sroa.035.3.i.i, null, !dbg !10850
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendBS_:bb.a
bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 1248, i64 noundef 8) #23, !dbg !10851, !noalias !10774
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, !dbg !10850

.body.thread23.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread23.loopexit.split-lp.i:               ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i: ; preds = %bb.s, %.outer._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !10801
  %.sroa.011.0.copyload.i = load i64, ptr %i.c, align 8, !dbg !10801, !alias.scope !10773, !noalias !10772 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, i64 24, i1 false), !dbg !10801, !noalias !10772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10777), !dbg !10852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10778), !dbg !10852
  %i.aw = icmp eq ptr %.sroa.47.0.i, null, !dbg !10802
  br i1 %i.aw, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i, !dbg !10802

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i
  %.sroa.011.0.copyload38.i = phi i64 [ %.sroa.011.0.copyload34.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.011.0.copyload.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ]
  %.sroa.47.137.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.47.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ]
  %.sroa.9.136.i = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread31.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.47.137.i, i64 8, !dbg !10853
  %i.ay = icmp samesign ult i64 %.sroa.9.136.i, 31, !dbg !10854
  tail call void @llvm.assume(i1 %i.ay), !dbg !10855
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.sroa.9.136.i, !dbg !10856 ; 3 uses
  store i64 %.sroa.011.0.copyload38.i, ptr %i.az, align 8, !dbg !10857, !noalias !10779
  %.sroa.5.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !10857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx13.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !dbg !10857, !noalias !10779
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !10858
  %i.bb = atomicrmw or ptr %i.ba, i64 1 release, align 8, !dbg !10859, !noalias !10780 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 256, !dbg !10860
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bc) #35, !dbg !10861, !noalias !10775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !10862
  br label %bb.u, !dbg !10863

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i
  %.sroa.011.0.copyload30.i = phi i64 [ %.sroa.011.0.copyload28.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.thread.i ], [ %.sroa.011.0.copyload.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_sendB10_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !dbg !10864, !alias.scope !10781, !noalias !10775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !10862
  %.not.i = icmp eq i64 %.sroa.011.0.copyload30.i, -9223372036854775806, !dbg !10865
  br i1 %.not.i, label %bb.u, label %bb.t, !dbg !10863

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !10866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !dbg !10867, !noalias !10773
  store i64 1, ptr %i.e, align 8, !dbg !10866, !alias.scope !10772, !noalias !10773
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10866
  store i64 %.sroa.011.0.copyload30.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !10866, !alias.scope !10772, !noalias !10773
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, !dbg !10868

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE5writeB10_.exit.thread.i
  store i64 2, ptr %i.e, align 8, !dbg !10869, !alias.scope !10772, !noalias !10773
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, !dbg !10870

common.resume:                                    ; preds = %bb.ab, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body.thread.i ], [ %i.bh, %bb.ab ]
  resume { ptr, i32 } %common.resume.op, !dbg !10788

.body.thread.i:                                   ; preds = %.body.thread23.loopexit.split-lp.i, %.body.thread23.loopexit.i, %.thread47.i.i, %bb.r
  %eh.lpad-body21.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.r ], [ %lpad.phi.i.i, %.thread47.i.i ], [ %lpad.loopexit.i, %.body.thread23.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread23.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #34
          to label %common.resume unwind label %bb.v, !dbg !10871, !noalias !10772

bb.v:                                             ; preds = %.body.thread.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10872, !noalias !10772
  unreachable, !dbg !10872

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !10873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10874
  br label %bb.x, !dbg !10875

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !10876
  call void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 undef, i32 noundef 1000000000), !dbg !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10878
  br label %bb.x, !dbg !10879

bb.x:                                             ; preds = %bb.w, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4sendB10_.exit, %bb.b
  %i.be = load i64, ptr %i.e, align 8, !dbg !10880, !range !557, !noundef !496
  %.not = icmp eq i64 %i.be, 2, !dbg !10880
  br i1 %.not, label %bb.ad, label %bb.y, !dbg !10881

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !dbg !10883
  call void @llvm.experimental.noalias.scope.decl(metadata !10783), !dbg !10882
  %i.bf = load i64, ptr %i.a, align 8, !dbg !10884, !range !532, !alias.scope !10783, !noalias !10784, !noundef !496
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !10885
  br i1 %i.bg, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit, label %bb.z, !dbg !10885, !prof !531

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.aa unwind label %bb.ab, !dbg !10886, !noalias !10785

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10887
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.bi)
          to label %common.resume unwind label %bb.ac, !dbg !10887, !noalias !10784

bb.ac:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10888, !noalias !10784
  unreachable, !dbg !10888

_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit: ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !10889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false), !dbg !10889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10890
  br label %bb.ae, !dbg !10891

bb.ad:                                            ; preds = %bb.x
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !10892
  br label %bb.ae, !dbg !10893

bb.ae:                                            ; preds = %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4send0BU_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10894
  ret void, !dbg !10895
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderuE4sendCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10896 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !11023, !range !557, !noundef !496
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11023
  %i.c = load ptr, ptr %i.b, align 8, !dbg !11024, !noundef !496 ; 6 uses
  switch i64 %i.a, label %default.unreachable49 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.t
  ], !dbg !11025

default.unreachable49:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %i.c, i64 undef, i32 noundef 1000000000), !dbg !11026
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit, !dbg !11027

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 128, !dbg !11028 ; 5 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8, !dbg !11029, !noalias !11019 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 136, !dbg !11030 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8, !dbg !11031, !noalias !11019
  %i.i = and i64 %i.f, 1, !dbg !11032
  %i.j = icmp eq i64 %i.i, 0, !dbg !11032
  br i1 %i.j, label %.lr.ph.lr.ph.i.i, label %_RNCNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB7_6SenderuE4send0CskAlUH1kY1DR_10polars_ooc.exit, !dbg !11032

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph.i.i, !dbg !11032

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.f, %.lr.ph.lr.ph.i.i ], [ %i.am, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.h, %.lr.ph.lr.ph.i.i ], [ %i.an, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.l = lshr exact i64 %.sroa.03.0.ph78.i.i, 1, !dbg !11033
  %i.m = and i64 %i.l, 31, !dbg !11033            ; 2 uses
  %i.n = icmp eq i64 %i.m, 31, !dbg !11034
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !11034

bb.d:                                             ; preds = %.loopexit.i.i
  %i.o = add i32 %.sroa.0.071.i35.i, 1, !dbg !11035 ; 2 uses
  %i.p = lshr exact i64 %i.w, 1, !dbg !11033
  %i.q = and i64 %i.p, 31, !dbg !11033            ; 2 uses
  %i.r = icmp eq i64 %i.q, 31, !dbg !11034
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !dbg !11034

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i35.i = phi i32 [ %i.o, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.s = icmp ult i32 %.sroa.0.071.i35.i, 7, !dbg !11036
  br i1 %i.s, label %bb.f, label %bb.e, !dbg !11036

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !dbg !11037, !noalias !11019

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i35.i, 0, !dbg !11038
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !11039

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.t = mul nuw i32 %.sroa.0.071.i35.i, %.sroa.0.071.i35.i, !dbg !11040 ; 2 uses
  %xtraiter = and i32 %i.t, 7, !dbg !11039        ; 3 uses
  %i.u = icmp ult i32 %.sroa.0.071.i35.i, 3, !dbg !11039
  br i1 %i.u, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !11039

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.t, 56, !dbg !11039
  br label %.lr.ph.i.i.i, !dbg !11039

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  %niter.next.7 = add i32 %niter, 8, !dbg !11039  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11039
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !11039

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.q, %bb.d ], !dbg !11033 ; 2 uses
  %i.v = icmp eq i64 %.lcssa.i, 30, !dbg !11042   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.v, i1 %.not.i.i, i1 false, !dbg !11042
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !11042

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11039
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !11039

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter, 0, !dbg !11039
  tail call void @llvm.assume(i1 %lcmp.mod98), !dbg !11039
  br label %.lr.ph.i.i.i.epil, !dbg !11039

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11041, !noalias !11019
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11039 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11039
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !dbg !11039, !llvm.loop !10932

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.w = load atomic i64, ptr %i.e acquire, align 8, !dbg !11043, !noalias !11019 ; 3 uses
  %i.x = load atomic ptr, ptr %i.g acquire, align 8, !dbg !11044, !noalias !11019
  %i.y = and i64 %i.w, 1, !dbg !11032
  %i.z = icmp eq i64 %i.y, 0, !dbg !11032
  br i1 %i.z, label %bb.d, label %.outer._crit_edge.i.i, !dbg !11032

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.ab, %bb.g ], !dbg !11045 ; 9 uses
  %i.aa = icmp eq ptr %.sroa.07.072.i.lcssa.i, null, !dbg !11046
  br i1 %i.aa, label %bb.h, label %bb.m, !dbg !11046

bb.g:                                             ; preds = %._crit_edge.i
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCskAlUH1kY1DR_10polars_ooc(), !dbg !11047, !noalias !11019
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !11047

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCskAlUH1kY1DR_10polars_ooc()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !dbg !11048, !noalias !11019 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = cmpxchg ptr %i.g, ptr null, ptr %i.ac release monotonic, align 8, !dbg !11049, !noalias !11019
  %i.ae = extractvalue { ptr, i1 } %i.ad, 1, !dbg !11049
  br i1 %i.ae, label %bb.j, label %bb.k, !dbg !11050

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ac, ptr %i.k release, align 8, !dbg !11051, !noalias !11019
  br label %bb.m, !dbg !11052

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !11053
  br i1 %i.af, label %.outer.backedge.i.i, label %bb.l, !dbg !11053

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !11054, !noalias !11019
  br label %.outer.backedge.i.i, !dbg !11053

bb.m:                                             ; preds = %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit.i.i ], [ %i.ac, %bb.j ], !dbg !11055 ; 3 uses
  %i.ag = add i64 %.sroa.03.073.i.lcssa.i, 2, !dbg !11056
  %i.ah = cmpxchg weak ptr %i.e, i64 %.sroa.03.073.i.lcssa.i, i64 %i.ag seq_cst acquire, align 8, !dbg !11057, !noalias !11019
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ah, 1, !dbg !11058
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n, !dbg !11059

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6), !dbg !11060 ; 2 uses
  %i.ai = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !11061 ; 2 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0, !dbg !11062
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader, !dbg !11063

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter99 = and i32 %i.ai, 5, !dbg !11063     ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3, !dbg !11063
  br i1 %i.aj, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new, !dbg !11063

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter103 = and i32 %i.ai, 56, !dbg !11063
  br label %.lr.ph.i25.i.i, !dbg !11063

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0, !dbg !11063
  br i1 %lcmp.mod101.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader, !dbg !11063

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0, !dbg !11063
  tail call void @llvm.assume(i1 %lcmp.mod102), !dbg !11063
  br label %.lr.ph.i25.i.i.epil, !dbg !11063

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  %epil.iter100.next = add i32 %epil.iter100, 1, !dbg !11063 ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99, !dbg !11063
  br i1 %epil.iter100.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !dbg !11063, !llvm.loop !10971

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.ak = add i32 %.sroa.0.071.i.lcssa.i, 1, !dbg !11065
  br label %.outer.backedge.i.i, !dbg !11066

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  tail call void @llvm.x86.sse2.pause(), !dbg !11064, !noalias !11019
  %niter104.next.7 = add i32 %niter104, 8, !dbg !11063 ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103, !dbg !11063
  br i1 %niter104.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i, !dbg !11063

bb.o:                                             ; preds = %bb.m
  br i1 %i.v, label %bb.p, label %.outer._crit_edge.i.i, !dbg !11067

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null, !dbg !11068
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i, !dbg !11069, !prof !559

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #32, !dbg !11070, !noalias !11019
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.thread10.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.g release, align 8, !dbg !11071, !noalias !11019
  %i.al = atomicrmw add ptr %i.e, i64 2 release, align 8, !dbg !11072, !noalias !11019 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.1.i.i release, align 8, !dbg !11073, !noalias !11019
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4sendCskAlUH1kY1DR_10polars_ooc.exit.thread10, !dbg !11074

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.ak, %._crit_edge.loopexit.i.i.i ]
  %i.am = load atomic i64, ptr %i.e acquire, align 8, !dbg !11075, !noalias !11019 ; 2 uses
  %i.an = load atomic ptr, ptr %i.g acquire, align 8, !dbg !11076, !noalias !11019
  %i.ao = and i64 %i.am, 1, !dbg !11032
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !11032
  br i1 %i.ap, label %.lr.ph.i.i, label %.outer._crit_edge.i.i, !dbg !11032

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i: ; preds = %.thread47.i.i, %bb.r
  resume { ptr, i32 } %lpad.phi.i.i, !dbg !11077

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.aq = icmp eq ptr %.sroa.035.1.ph.i.i, null, !dbg !11078
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i, label %.thread47.i.i, !dbg !11078

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !11079, !noalias !11019
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockuEEEECskAlUH1kY1DR_10polars_ooc.exit30.i.i, !dbg !11078

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ], !dbg !11080
  %.sroa.4.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ], !dbg !11081 ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ], !dbg !11045 ; 2 uses
  %i.ar = icmp eq ptr %.sroa.035.3.i.i, null, !dbg !11082
  br i1 %i.ar, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.s, !dbg !11082

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 256, i64 noundef 8) #23, !dbg !11083, !noalias !11019
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !11082
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4sendCskAlUH1kY1DR_10polars_ooc:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.fh = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !dbg !11825, !noalias !11621
  %i.fi = icmp eq i64 %i.fh, 1, !dbg !11826
  br i1 %i.fi, label %bb.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !11826

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !dbg !11827
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i unwind label %.body.thread39.loopexit.split-lp.loopexit.split-lp, !dbg !11828

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11829, !noalias !11607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11830, !noalias !11607
  br label %bb.bf, !dbg !11831

bb.az:                                            ; preds = %bb.av
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = atomicrmw sub ptr %i.et, i64 1 release, align 8, !dbg !11832, !noalias !11622
  %i.fl = icmp eq i64 %i.fk, 1, !dbg !11833
  br i1 %i.fl, label %bb.ba, label %.body.thread, !dbg !11833

bb.ba:                                            ; preds = %bb.az
  fence acquire, !dbg !11834
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslovz2ii29zg_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #31
          to label %.body.thread unwind label %bb.au, !dbg !11835, !noalias !11607

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtBZ_4sync6atomic6AtomicjEEE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %.noexc17
  invoke fastcc void @_RNCINvMNtCslovz2ii29zg_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE4send0uEs0_0CskAlUH1kY1DR_10polars_ooc(ptr nonnull %i.f)
          to label %bb.bf unwind label %.body.thread39.loopexit.split-lp.loopexit.split-lp, !dbg !11836

bb.bb:                                            ; preds = %bb.am
  %i.fm = extractvalue { i64, i32 } %i.eo, 0, !dbg !11623 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, %i.en, !dbg !11837
  br i1 %i.fn, label %.split, label %bb.bc, !dbg !11837

.split:                                           ; preds = %bb.bb
  %i.fo = extractvalue { i64, i32 } %i.eo, 1, !dbg !11623 ; 2 uses
  %i.fp = icmp ult i32 %i.fo, 1000000000, !dbg !11838
  call void @llvm.assume(i1 %i.fp), !dbg !11838
  %.not48 = icmp samesign ult i32 %i.fo, %i.em, !dbg !11839
  br i1 %.not48, label %bb.an, label %bb.bd, !dbg !11623

bb.bc:                                            ; preds = %bb.bb
  %.not47 = icmp slt i64 %i.fm, %i.en, !dbg !11839
  br i1 %.not47, label %bb.an, label %bb.bd, !dbg !11623

bb.bd:                                            ; preds = %.split, %bb.bc
  %i.fq = load ptr, ptr %i.l, align 8, !dbg !11840, !nonnull !496, !noundef !496
  br label %bb.be, !dbg !11841

bb.be:                                            ; preds = %_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc.exit, %bb.bd
  %.sroa.4.0 = phi ptr [ %.sroa.0.0.i10, %_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc.exit ], [ %i.fq, %bb.bd ]
  %.sroa.0.0 = phi i64 [ %.8, %_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc.exit ], [ 0, %bb.bd ], !dbg !11842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11843
  %i.fr = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11844
  %i.fs = insertvalue { i64, ptr } %i.fr, ptr %.sroa.4.0, 1, !dbg !11844
  ret { i64, ptr } %i.fs, !dbg !11844

bb.bf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtCslovz2ii29zg_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtBZ_4sync6atomic6AtomicjEEE4send0uEs_0uECskAlUH1kY1DR_10polars_ooc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11845, !noalias !11607
  %i.ft = load atomic i64, ptr %i.r monotonic, align 128, !dbg !11642, !noalias !11636 ; 2 uses
  %i.fu = load i64, ptr %i.s, align 16, !dbg !11643, !noalias !11636, !noundef !496 ; 2 uses
  %i.fv = and i64 %i.fu, %i.ft, !dbg !11644
  %i.fw = icmp eq i64 %i.fv, 0, !dbg !11644
  br i1 %i.fw, label %.lr.ph.i.backedge, label %.loopexit, !dbg !11644

_RNvMs_NtNtCslovz2ii29zg_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEEE5writeCskAlUH1kY1DR_10polars_ooc.exit: ; preds = %bb.ah, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.o, %.loopexit
  %.sroa.0.0.i10 = phi ptr [ %i.by, %.loopexit ], [ null, %bb.o ], [ null, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ], [ null, %bb.ah ], !dbg !11846 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.0.0.i10, null, !dbg !11847
  %.8 = select i1 %.not7, i64 2, i64 1, !dbg !11848
  br label %bb.be, !dbg !11848

.body.thread36:                                   ; preds = %.body.thread, %bb.bg, %bb.v, %bb.s
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.da, %bb.v ], [ %eh.lpad-body35, %.body.thread ], [ %i.cy, %bb.s ], [ %eh.lpad-body35, %bb.bg ]
  resume { ptr, i32 } %eh.lpad-body34, !dbg !11849

.body.thread:                                     ; preds = %.body.thread39.loopexit, %.body.thread39.loopexit.split-lp.loopexit.split-lp, %.body.thread39.loopexit.split-lp.loopexit, %bb.ba, %bb.az, %bb.ar, %bb.aq
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.fj, %bb.ba ], [ %i.ev, %bb.aq ], [ %i.fj, %bb.az ], [ %i.ev, %bb.ar ], [ %lpad.loopexit, %.body.thread39.loopexit ], [ %lpad.loopexit50, %.body.thread39.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp51, %.body.thread39.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11638), !dbg !11843
  call void @llvm.experimental.noalias.scope.decl(metadata !11639), !dbg !11850
  %i.fx = load ptr, ptr %i.l, align 8, !dbg !11851, !alias.scope !11640, !nonnull !496, !noundef !496
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !dbg !11852, !noalias !11640
  %i.fz = icmp eq i64 %i.fy, 1, !dbg !11853
  br i1 %i.fz, label %bb.bg, label %.body.thread36, !dbg !11853

bb.bg:                                            ; preds = %.body.thread
  fence acquire, !dbg !11854
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicjEE9drop_slowCs2TTqCHgArKm_11signal_hook(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #31
          to label %.body.thread36 unwind label %bb.bh, !dbg !11855

bb.bh:                                            ; preds = %bb.bg
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !11849
  unreachable, !dbg !11849
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsa_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_23LeastRecentSpillContext3new(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 !dbg !11856 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvMs1_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_18StrongSpillContext3new(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, i8 noundef 1), !dbg !11858
  ret ptr %i.a, !dbg !11859
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsd_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_18RandomSpillContext3new(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 !dbg !11860 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 8 ptr @_RNvMs1_NtCskAlUH1kY1DR_10polars_ooc13spill_contextNtB5_18StrongSpillContext3new(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, i8 noundef 2), !dbg !11862
  ret ptr %i.a, !dbg !11863
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEE3newB1K_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !11864 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11875
  %i.b = load atomic i8, ptr %i.a monotonic, align 8, !dbg !11876
  %i.c = icmp ne i8 %i.b, 0, !dbg !11877
  tail call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCskAlUH1kY1DR_10polars_ooc13spill_context16WeakSpillContextEENCNvMsd_BQ_BN_3new0EB1U_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.c, ptr noundef nonnull align 8 %1), !dbg !11878
  ret void, !dbg !11879
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiverNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11880 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419.i = alloca [24 x i8], align 8        ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12219
  %i.j = load i64, ptr %1, align 8, !dbg !12220, !range !557, !noundef !496
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12220
  %i.l = load ptr, ptr %i.k, align 8, !dbg !12221, !noundef !496 ; 10 uses
  switch i64 %i.j, label %default.unreachable31 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.aw
  ], !dbg !12219

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 128 %i.l, i64 undef, i32 noundef 1000000000), !dbg !12222
  br label %thread-pre-split, !dbg !12223

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12194), !dbg !12224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.m, align 8, !noalias !12194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12225, !noalias !12194
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12226
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12226
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !12226, !noalias !12194
  br label %bb.d, !dbg !12227

bb.d:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !12195), !dbg !12228
  br label %.backedge.i.i, !dbg !12229

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.d
  %.sroa.0.034.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.be, %.backedge.i.i.backedge ], !dbg !12230 ; 16 uses
  %i.t = load atomic i64, ptr %i.l acquire, align 8, !dbg !12231, !noalias !12196 ; 5 uses
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !dbg !12232, !noalias !12196 ; 9 uses
  %i.v = lshr i64 %i.t, 1, !dbg !12233            ; 2 uses
  %i.w = and i64 %i.v, 31, !dbg !12233            ; 6 uses
  %i.x = icmp eq i64 %i.w, 31, !dbg !12234
  br i1 %i.x, label %bb.e, label %bb.h, !dbg !12234

bb.e:                                             ; preds = %.backedge.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12235
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !12235

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12236, !noalias !12196
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !12236

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12237
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !12238

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12239 ; 2 uses
  %xtraiter66 = and i32 %i.z, 7, !dbg !12238      ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12238
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !12238

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter70 = and i32 %i.z, 56, !dbg !12238
  br label %.lr.ph.i.i.i, !dbg !12238

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  %niter71.next.7 = add i32 %niter71, 8, !dbg !12238 ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70, !dbg !12238
  br i1 %niter71.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !12238

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0, !dbg !12238
  br i1 %lcmp.mod68.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !12238

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0, !dbg !12238
  call void @llvm.assume(i1 %lcmp.mod69), !dbg !12238
  br label %.lr.ph.i.i.i.epil, !dbg !12238

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12240, !noalias !12196
  %epil.iter67.next = add i32 %epil.iter67, 1, !dbg !12238 ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66, !dbg !12238
  br i1 %epil.iter67.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !12238, !llvm.loop !11911

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.g, %bb.f
  %i.ab = add i32 %.sroa.0.034.i.i, 1, !dbg !12241
  br label %.backedge.i.i.backedge, !dbg !12242

bb.h:                                             ; preds = %.backedge.i.i
  %i.ac = add i64 %i.t, 2, !dbg !12243            ; 2 uses
  %i.ad = and i64 %i.t, 1, !dbg !12244
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !12244
  br i1 %i.ae, label %bb.i, label %bb.l, !dbg !12244

bb.i:                                             ; preds = %bb.h
  fence seq_cst, !dbg !12245
  %i.af = load atomic i64, ptr %i.q monotonic, align 8, !dbg !12246, !noalias !12196 ; 3 uses
  %i.ag = lshr i64 %i.af, 1, !dbg !12247
  %i.ah = icmp eq i64 %i.v, %i.ag, !dbg !12248
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !12248

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i = xor i64 %i.af, %i.t, !dbg !12249
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63, !dbg !12249
  %i.ai = zext i1 %.not.i.i to i64, !dbg !12249
  %spec.select.i.i = or disjoint i64 %i.ac, %i.ai, !dbg !12249
  br label %bb.l, !dbg !12249

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1, !dbg !12250
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !12250
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i, !dbg !12250

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i, %bb.j ], !dbg !12251 ; 2 uses
  %i.al = icmp eq ptr %i.u, null, !dbg !12252
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !12252

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12253
  br i1 %i.am, label %bb.o, label %bb.n, !dbg !12253

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12254, !noalias !12196
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, !dbg !12254

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12255
  br i1 %.not.i18.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.preheader, !dbg !12256

.lr.ph.i19.i.i.preheader:                         ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12257 ; 2 uses
  %xtraiter60 = and i32 %i.an, 7, !dbg !12256     ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12256
  br i1 %i.ao, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new, !dbg !12256

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter64 = and i32 %i.an, 56, !dbg !12256
  br label %.lr.ph.i19.i.i, !dbg !12256

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i, %.lr.ph.i19.i.i.preheader.new
  %niter65 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter65.next.7, %.lr.ph.i19.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  %niter65.next.7 = add i32 %niter65, 8, !dbg !12256 ; 2 uses
  %niter65.ncmp.7 = icmp eq i32 %niter65.next.7, %unroll_iter64, !dbg !12256
  br i1 %niter65.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !dbg !12256

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i
  %lcmp.mod62.not = icmp eq i32 %xtraiter60, 0, !dbg !12256
  br i1 %lcmp.mod62.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil.preheader, !dbg !12256

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %lcmp.mod63 = icmp ne i32 %xtraiter60, 0, !dbg !12256
  call void @llvm.assume(i1 %lcmp.mod63), !dbg !12256
  br label %.lr.ph.i19.i.i.epil, !dbg !12256

.lr.ph.i19.i.i.epil:                              ; preds = %.lr.ph.i19.i.i.epil, %.lr.ph.i19.i.i.epil.preheader
  %epil.iter61 = phi i32 [ 0, %.lr.ph.i19.i.i.epil.preheader ], [ %epil.iter61.next, %.lr.ph.i19.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12258, !noalias !12196
  %epil.iter61.next = add i32 %epil.iter61, 1, !dbg !12256 ; 2 uses
  %epil.iter61.cmp.not = icmp eq i32 %epil.iter61.next, %xtraiter60, !dbg !12256
  br i1 %epil.iter61.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil, !dbg !12256, !llvm.loop !11924

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.epil, %bb.o, %bb.n
  %i.ap = add i32 %.sroa.0.034.i.i, 1, !dbg !12259
  br label %.backedge.i.i.backedge, !dbg !12242

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %i.l, i64 %i.t, i64 %.sroa.01.0.i.i seq_cst acquire, align 8, !dbg !12260, !noalias !12196
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aq, 1, !dbg !12261
  br i1 %.sroa.18.0.in.i.i.i, label %bb.r, label %bb.q, !dbg !12262

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i, i32 6), !dbg !12263 ; 2 uses
  %i.ar = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !12264 ; 2 uses
  %.not.i23.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12265
  br i1 %.not.i23.i.i, label %.backedge.i.i.backedge, label %.lr.ph.i24.i.i.preheader, !dbg !12266

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.q
  %xtraiter = and i32 %i.ar, 5, !dbg !12266       ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12266
  br i1 %i.as, label %.lr.ph.i24.i.i.epil.preheader, label %.lr.ph.i24.i.i.preheader.new, !dbg !12266

.lr.ph.i24.i.i.preheader.new:                     ; preds = %.lr.ph.i24.i.i.preheader
  %unroll_iter = and i32 %i.ar, 56, !dbg !12266
  br label %.lr.ph.i24.i.i, !dbg !12266

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i24.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !12266
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil.preheader, !dbg !12266

.lr.ph.i24.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.preheader
  %lcmp.mod59 = icmp ne i32 %xtraiter, 0, !dbg !12266
  call void @llvm.assume(i1 %lcmp.mod59), !dbg !12266
  br label %.lr.ph.i24.i.i.epil, !dbg !12266

.lr.ph.i24.i.i.epil:                              ; preds = %.lr.ph.i24.i.i.epil, %.lr.ph.i24.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !12266 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !12266
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil, !dbg !12266, !llvm.loop !11936

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i24.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.at = add i32 %.sroa.0.034.i.i, 1, !dbg !12268
  br label %.backedge.i.i.backedge, !dbg !12269

.backedge.i.i.backedge:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.034.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i ], [ %i.at, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i, !dbg !12231

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.i24.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12267, !noalias !12196
  %niter.next.7 = add i32 %niter, 8, !dbg !12266  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !12266
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i, !dbg !12266

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.w, 30, !dbg !12270
  br i1 %i.au, label %bb.s, label %bb.v, !dbg !12270

bb.s:                                             ; preds = %bb.r
  %i.av = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12271, !noalias !12196 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null, !dbg !12272
  br i1 %i.aw, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, !dbg !12272

.lr.ph.i27.i.i:                                   ; preds = %bb.s, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i28.i.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i28.i.i, 7, !dbg !12273
  br i1 %i.ax, label %bb.u, label %bb.t, !dbg !12273

bb.t:                                             ; preds = %.lr.ph.i27.i.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12274, !noalias !12196
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, !dbg !12274

bb.u:                                             ; preds = %.lr.ph.i27.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i, 0, !dbg !12275
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !12276

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %i.ay = mul nuw i32 %.sroa.0.02.i28.i.i, %.sroa.0.02.i28.i.i, !dbg !12277 ; 2 uses
  %xtraiter72 = and i32 %i.ay, 7, !dbg !12276     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i28.i.i, 3, !dbg !12276
  br i1 %i.az, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !12276

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter76 = and i32 %i.ay, 56, !dbg !12276
  br label %.lr.ph.i.i.i.i, !dbg !12276

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  %niter77.next.7 = add i32 %niter77, 8, !dbg !12276 ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76, !dbg !12276
  br i1 %niter77.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !12276

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0, !dbg !12276
  br i1 %lcmp.mod74.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !12276

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0, !dbg !12276
  call void @llvm.assume(i1 %lcmp.mod75), !dbg !12276
  br label %.lr.ph.i.i.i.i.epil, !dbg !12276

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12278, !noalias !12196
  %epil.iter73.next = add i32 %epil.iter73, 1, !dbg !12276 ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72, !dbg !12276
  br i1 %epil.iter73.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !12276, !llvm.loop !11948

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.u, %bb.t
  %i.ba = add i32 %.sroa.0.02.i28.i.i, 1, !dbg !12279
  %i.bb = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12271, !noalias !12196 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null, !dbg !12272
  br i1 %i.bc, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, !dbg !12272

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.s
  %.lcssa.i.i.i = phi ptr [ %i.av, %bb.s ], [ %i.bb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], !dbg !12271 ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i.i, -2, !dbg !12280
  %i.be = add i64 %i.bd, 2, !dbg !12281
  %i.bf = load atomic ptr, ptr %.lcssa.i.i.i monotonic, align 8, !dbg !12282, !noalias !12196
  %i.bg = icmp ne ptr %i.bf, null, !dbg !12283
  %i.bh = zext i1 %i.bg to i64, !dbg !12283
  %spec.select17.i.i = or disjoint i64 %i.be, %i.bh, !dbg !12283
  store atomic ptr %.lcssa.i.i.i, ptr %i.p release, align 8, !dbg !12284, !noalias !12196
  store atomic i64 %spec.select17.i.i, ptr %i.l release, align 8, !dbg !12285, !noalias !12196
  br label %bb.v, !dbg !12286

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i: ; preds = %bb.k
  %i.bi = load i32, ptr %i.m, align 8, !dbg !12287, !range !768, !noalias !12194, !noundef !496 ; 2 uses
  %.not.i = icmp eq i32 %i.bi, 1000000000, !dbg !12287
  br i1 %.not.i, label %bb.ag, label %bb.af, !dbg !12288

bb.v:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE9wait_nextBX_.exit.i.i, %bb.r
  store ptr %i.u, ptr %i.n, align 8, !dbg !12289, !alias.scope !12195, !noalias !12194
  store i64 %i.w, ptr %i.o, align 8, !dbg !12290, !alias.scope !12195, !noalias !12194
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !12291
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.w, !dbg !12292 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !dbg !12293, !noalias !12198
  %i.bn = and i64 %i.bm, 1, !dbg !12294
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !12294
  br i1 %i.bo, label %.lr.ph.i.i3.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, !dbg !12294

.lr.ph.i.i3.i:                                    ; preds = %bb.v, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i
  %.sroa.0.02.i.i4.i = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i ], [ 0, %bb.v ] ; 6 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4.i, 7, !dbg !12295
  br i1 %i.bp, label %bb.x, label %bb.w, !dbg !12295

bb.w:                                             ; preds = %.lr.ph.i.i3.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12296, !noalias !12198
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, !dbg !12296

bb.x:                                             ; preds = %.lr.ph.i.i3.i
  %.not.i.i.i6.i = icmp eq i32 %.sroa.0.02.i.i4.i, 0, !dbg !12297
  br i1 %.not.i.i.i6.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.preheader, !dbg !12298

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.x
  %i.bq = mul nuw i32 %.sroa.0.02.i.i4.i, %.sroa.0.02.i.i4.i, !dbg !12299 ; 2 uses
  %xtraiter78 = and i32 %i.bq, 7, !dbg !12298     ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i4.i, 3, !dbg !12298
  br i1 %i.br, label %.lr.ph.i.i.i7.i.epil.preheader, label %.lr.ph.i.i.i7.i.preheader.new, !dbg !12298

.lr.ph.i.i.i7.i.preheader.new:                    ; preds = %.lr.ph.i.i.i7.i.preheader
  %unroll_iter82 = and i32 %i.bq, 56, !dbg !12298
  br label %.lr.ph.i.i.i7.i, !dbg !12298

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i, %.lr.ph.i.i.i7.i.preheader.new
  %niter83 = phi i32 [ 0, %.lr.ph.i.i.i7.i.preheader.new ], [ %niter83.next.7, %.lr.ph.i.i.i7.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  %niter83.next.7 = add i32 %niter83, 8, !dbg !12298 ; 2 uses
  %niter83.ncmp.7 = icmp eq i32 %niter83.next.7, %unroll_iter82, !dbg !12298
  br i1 %niter83.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i, !dbg !12298

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i
  %lcmp.mod80.not = icmp eq i32 %xtraiter78, 0, !dbg !12298
  br i1 %lcmp.mod80.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.epil.preheader, !dbg !12298

.lr.ph.i.i.i7.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter78, 0, !dbg !12298
  call void @llvm.assume(i1 %lcmp.mod81), !dbg !12298
  br label %.lr.ph.i.i.i7.i.epil, !dbg !12298

.lr.ph.i.i.i7.i.epil:                             ; preds = %.lr.ph.i.i.i7.i.epil, %.lr.ph.i.i.i7.i.epil.preheader
  %epil.iter79 = phi i32 [ 0, %.lr.ph.i.i.i7.i.epil.preheader ], [ %epil.iter79.next, %.lr.ph.i.i.i7.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12300, !noalias !12198
  %epil.iter79.next = add i32 %epil.iter79, 1, !dbg !12298 ; 2 uses
  %epil.iter79.cmp.not = icmp eq i32 %epil.iter79.next, %xtraiter78, !dbg !12298
  br i1 %epil.iter79.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, label %.lr.ph.i.i.i7.i.epil, !dbg !12298, !llvm.loop !11983

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.epil, %bb.x, %bb.w
  %i.bs = add i32 %.sroa.0.02.i.i4.i, 1, !dbg !12301
  %i.bt = load atomic i64, ptr %i.bl acquire, align 8, !dbg !12293, !noalias !12198
  %i.bu = and i64 %i.bt, 1, !dbg !12294
  %i.bv = icmp eq i64 %i.bu, 0, !dbg !12294
  br i1 %i.bv, label %.lr.ph.i.i3.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, !dbg !12294

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i, %bb.v
  %.sroa.018.0.copyload.i = load i64, ptr %i.bk, align 8, !dbg !12302, !noalias !12198 ; 2 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !12302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, i64 24, i1 false), !dbg !12302, !noalias !12194
  %i.bw = add nuw nsw i64 %i.w, 1, !dbg !12303    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 31, !dbg !12303
  br i1 %i.bx, label %.lr.ph.i2.i.i, label %bb.ab, !dbg !12303

.lr.ph.i2.i.i:                                    ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i, %bb.aa
  %.sroa.0.04.i.i.i = phi i64 [ %i.cg, %bb.aa ], [ 0, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i, !dbg !12304
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40, !dbg !12305 ; 2 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !dbg !12306, !noalias !12198
  %i.cb = and i64 %i.ca, 2, !dbg !12307
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !12307
  br i1 %i.cc, label %bb.y, label %.lr.ph.i2.i.i.1, !dbg !12307

bb.y:                                             ; preds = %.lr.ph.i2.i.i
  %i.cd = atomicrmw or ptr %i.bz, i64 4 acq_rel, align 8, !dbg !12308, !noalias !12198
  %i.ce = and i64 %i.cd, 2, !dbg !12309
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !12309
  br i1 %i.cf, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %.lr.ph.i2.i.i.1, !dbg !12309

.lr.ph.i2.i.i.1:                                  ; preds = %bb.y, %.lr.ph.i2.i.i
  %i.cg = add nuw nsw i64 %.sroa.0.04.i.i.i, 2, !dbg !12310 ; 2 uses
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i, !dbg !12304
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80, !dbg !12305 ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8, !dbg !12306, !noalias !12198
  %i.ck = and i64 %i.cj, 2, !dbg !12307
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !12307
  br i1 %i.cl, label %bb.z, label %bb.aa, !dbg !12307

bb.z:                                             ; preds = %.lr.ph.i2.i.i.1
  %i.cm = atomicrmw or ptr %i.ci, i64 4 acq_rel, align 8, !dbg !12308, !noalias !12198
  %i.cn = and i64 %i.cm, 2, !dbg !12309
  %i.co = icmp eq i64 %i.cn, 0, !dbg !12309
  br i1 %i.co, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %bb.aa, !dbg !12309

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i2.i.i.1
  %exitcond.not.i.i2.i.1 = icmp eq i64 %i.cg, 30, !dbg !12311
  br i1 %exitcond.not.i.i2.i.1, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i, label %.lr.ph.i2.i.i, !dbg !12312

bb.ab:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10wait_writeBU_.exit.i.i
  %i.cp = atomicrmw or ptr %i.bl, i64 2 acq_rel, align 8, !dbg !12313, !noalias !12198
  %i.cq = and i64 %i.cp, 4, !dbg !12314
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !12314
  br i1 %i.cr, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %bb.ac, !dbg !12314

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i: ; preds = %bb.ae, %bb.aa, %bb.ac
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 1248, i64 noundef 8) #23, !dbg !12315, !noalias !12198
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, !dbg !12316

bb.ac:                                            ; preds = %bb.ab
  %i.cs = icmp samesign ult i64 %i.w, 29, !dbg !12317
  br i1 %i.cs, label %.lr.ph.i4.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i, !dbg !12318

.lr.ph.i4.i.i:                                    ; preds = %bb.ac, %bb.ae
  %.sroa.0.04.i5.i.i = phi i64 [ %i.ct, %bb.ae ], [ %i.bw, %bb.ac ] ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.04.i5.i.i, 1, !dbg !12319 ; 2 uses
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.04.i5.i.i, !dbg !12320
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40, !dbg !12321 ; 2 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8, !dbg !12322, !noalias !12198
  %i.cx = and i64 %i.cw, 2, !dbg !12323
  %i.cy = icmp eq i64 %i.cx, 0, !dbg !12323
  br i1 %i.cy, label %bb.ad, label %bb.ae, !dbg !12323

bb.ad:                                            ; preds = %.lr.ph.i4.i.i
  %i.cz = atomicrmw or ptr %i.cv, i64 4 acq_rel, align 8, !dbg !12324, !noalias !12198
  %i.da = and i64 %i.cz, 2, !dbg !12325
  %i.db = icmp eq i64 %i.da, 0, !dbg !12325
  br i1 %i.db, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i, label %bb.ae, !dbg !12325

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i4.i.i
  %exitcond.not.i6.i.i = icmp eq i64 %i.ct, 30, !dbg !12317
  br i1 %exitcond.not.i6.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i, label %.lr.ph.i4.i.i, !dbg !12318

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i: ; preds = %bb.ad, %bb.y, %bb.z, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE7destroyBX_.exit.sink.split.i.i, %bb.ab
  %i.dc = icmp eq i64 %.sroa.018.0.copyload.i, -9223372036854775806, !dbg !12326
  br i1 %i.dc, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i, label %bb.av, !dbg !12327

bb.af:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i
  %i.dd = load i64, ptr %i.h, align 8, !dbg !12328, !noalias !12194, !noundef !496 ; 2 uses
  %i.de = call { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now(), !dbg !12329, !noalias !12194 ; 2 uses
  %i.df = extractvalue { i64, i32 } %i.de, 0, !dbg !12329 ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.dd, !dbg !12330
  br i1 %i.dg, label %.split.i, label %bb.at, !dbg !12330

bb.ag:                                            ; preds = %bb.at, %.split.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE10start_recvB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12331, !noalias !12200
  store ptr %i.g, ptr %i.f, align 8, !dbg !12332, !noalias !12194
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12332, !noalias !12194
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !12332, !noalias !12194
  %i.dh = load i8, ptr %i.s, align 8, !dbg !12333, !range !671, !noalias !12201, !noundef !496
  %i.di = icmp eq i8 %i.dh, 1, !dbg !12334
  br i1 %i.di, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i.i, !dbg !12334, !prof !531

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i.i: ; preds = %bb.ag
  %i.dj = call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 8 %i.r, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !12335, !noalias !12200 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null, !dbg !12336
  br i1 %i.dk, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i.i, !dbg !12336

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i.i, %bb.ag
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.dj, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i.i ], [ %i.r, %bb.ag ] ; 4 uses
  %i.dl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12337, !noalias !12200, !noundef !496 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12338, !noalias !12200
  %.not.i.i.i10.i = icmp eq ptr %i.dl, null, !dbg !12339
  br i1 %.not.i.i.i10.i, label %bb.ah, label %bb.an, !dbg !12340, !prof !559

bb.ah:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12341, !noalias !12200
  %i.dm = call noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !12341, !noalias !12200 ; 2 uses
  store ptr %i.dm, ptr %i.e, align 8, !dbg !12341, !noalias !12200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12342, !noalias !12200
  store ptr %i.g, ptr %i.c, align 8, !dbg !12343, !noalias !12200
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !dbg !12343, !noalias !12194
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !dbg !12343, !noalias !12194
  invoke fastcc void @_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB7_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dm)
          to label %bb.ak unwind label %bb.ai, !dbg !12344, !noalias !12200

bb.ai:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12202), !dbg !12345
  call void @llvm.experimental.noalias.scope.decl(metadata !12203), !dbg !12346
  call void @llvm.experimental.noalias.scope.decl(metadata !12204), !dbg !12347
  %i.do = load ptr, ptr %i.e, align 8, !dbg !12348, !alias.scope !12205, !noalias !12200, !nonnull !496, !noundef !496
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !dbg !12349, !noalias !12206
  %i.dq = icmp eq i64 %i.dp, 1, !dbg !12350
  br i1 %i.dq, label %bb.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !12350

bb.aj:                                            ; preds = %bb.ai
  fence acquire, !dbg !12351
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #31
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i unwind label %bb.am, !dbg !12352, !noalias !12200

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12342, !noalias !12200
  call void @llvm.experimental.noalias.scope.decl(metadata !12207), !dbg !12345
  call void @llvm.experimental.noalias.scope.decl(metadata !12208), !dbg !12353
  call void @llvm.experimental.noalias.scope.decl(metadata !12209), !dbg !12354
  %i.dr = load ptr, ptr %i.e, align 8, !dbg !12355, !alias.scope !12210, !noalias !12200, !nonnull !496, !noundef !496
  %i.ds = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !dbg !12356, !noalias !12211
  %i.dt = icmp eq i64 %i.ds, 1, !dbg !12357
  br i1 %i.dt, label %bb.al, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i.i, !dbg !12357

bb.al:                                            ; preds = %bb.ak
  fence acquire, !dbg !12358
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #31, !dbg !12359, !noalias !12200
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i.i, !dbg !12359

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12345, !noalias !12200
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i, !dbg !12345

bb.am:                                            ; preds = %bb.as, %bb.aj
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !12360, !noalias !12200
  unreachable, !dbg !12360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i: ; preds = %bb.as, %bb.ar, %bb.aj, %bb.ai
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %i.eb, %bb.ar ], [ %i.dn, %bb.aj ], [ %i.eb, %bb.as ]
  resume { ptr, i32 } %.pn.pn.i.i.i.i, !dbg !12360

bb.an:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12361, !noalias !12200
  store ptr %i.dl, ptr %i.d, align 8, !dbg !12361, !noalias !12200
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 24, !dbg !12362
  store atomic i64 0, ptr %i.dv release, align 8, !dbg !12363, !noalias !12200
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 32, !dbg !12364
  store atomic ptr null, ptr %i.dw release, align 8, !dbg !12365, !noalias !12200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12366, !noalias !12200
  store ptr %i.g, ptr %i.b, align 8, !dbg !12367, !noalias !12200
  store ptr %i.l, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !dbg !12367, !noalias !12194
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !dbg !12367, !noalias !12194
  invoke fastcc void @_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB7_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dl)
          to label %bb.ao unwind label %bb.ar, !dbg !12368, !noalias !12200

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12366, !noalias !12200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12369, !noalias !12200
  %i.dx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12370, !noalias !12200, !noundef !496 ; 3 uses
  store ptr %i.dx, ptr %i.a, align 8, !dbg !12370, !noalias !12200
  store ptr %i.dl, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12371, !noalias !12200
  %i.dy = icmp eq ptr %i.dx, null, !dbg !12372
  br i1 %i.dy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, label %bb.ap, !dbg !12372

bb.ap:                                            ; preds = %bb.ao
  %i.dz = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !dbg !12373, !noalias !12214
  %i.ea = icmp eq i64 %i.dz, 1, !dbg !12374
  br i1 %i.ea, label %bb.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !12374

bb.aq:                                            ; preds = %bb.ap
  fence acquire, !dbg !12375
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #31, !dbg !12376, !noalias !12200
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !12376

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12377, !noalias !12200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12378, !noalias !12200
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i, !dbg !12379

bb.ar:                                            ; preds = %bb.an
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !dbg !12380, !noalias !12215
  %i.ed = icmp eq i64 %i.ec, 1, !dbg !12381
  br i1 %i.ed, label %bb.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, !dbg !12381

bb.as:                                            ; preds = %bb.ar
  fence acquire, !dbg !12382
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #31
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i unwind label %bb.am, !dbg !12383, !noalias !12200

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCskAlUH1kY1DR_10polars_ooc.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs0_0B1E_(ptr nonnull %i.f), !dbg !12384, !noalias !12200
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i, !dbg !12384

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvs_0uEs_0uEB3w_.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECskAlUH1kY1DR_10polars_ooc.exit.i.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECskAlUH1kY1DR_10polars_ooc.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12385, !noalias !12200
  br label %bb.d, !dbg !12227

.split.i:                                         ; preds = %bb.af
  %i.ee = extractvalue { i64, i32 } %i.de, 1, !dbg !12329 ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 1000000000, !dbg !12386
  call void @llvm.assume(i1 %i.ef), !dbg !12386
  %.not26.i = icmp samesign ult i32 %i.ee, %i.bi, !dbg !12387
  br i1 %.not26.i, label %bb.ag, label %bb.au, !dbg !12329

bb.at:                                            ; preds = %bb.af
  %.not25.i = icmp slt i64 %i.df, %i.dd, !dbg !12387
  br i1 %.not25.i, label %bb.ag, label %bb.au, !dbg !12329

bb.au:                                            ; preds = %bb.at, %.split.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12388
  store i8 0, ptr %i.eg, align 8, !dbg !12388, !alias.scope !12194
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit, !dbg !12389

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i: ; preds = %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12390
  store i8 1, ptr %i.eh, align 8, !dbg !12390, !alias.scope !12194
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit, !dbg !12391

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.i
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.i, i64 24, i1 false), !dbg !12393
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit, !dbg !12394

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i, %bb.av, %bb.au
  %storemerge.i = phi i64 [ -9223372036854775806, %bb.au ], [ %.sroa.018.0.copyload.i, %bb.av ], [ -9223372036854775806, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4readB10_.exit.thread.i ], !dbg !12395 ; 2 uses
  store i64 %storemerge.i, ptr %i.i, align 8, !dbg !12395, !alias.scope !12194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12396, !noalias !12194
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i), !dbg !12397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12397
  br label %bb.ax, !dbg !12398

bb.aw:                                            ; preds = %bb.a
  call void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.l, i64 undef, i32 noundef 1000000000), !dbg !12399
  br label %thread-pre-split, !dbg !12400

thread-pre-split:                                 ; preds = %bb.b, %bb.aw
  %.pr = load i64, ptr %i.i, align 8, !dbg !12401
  br label %bb.ax, !dbg !12218

bb.ax:                                            ; preds = %thread-pre-split, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit
  %i.ei = phi i64 [ %.pr, %thread-pre-split ], [ %storemerge.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelNtNtCskAlUH1kY1DR_10polars_ooc10spill_file12CleanRequestE4recvB10_.exit ], !dbg !12401
  %i.ej = icmp eq i64 %i.ei, -9223372036854775806, !dbg !12401
  br i1 %i.ej, label %bb.ay, label %bb.az, !dbg !12402

bb.ay:                                            ; preds = %bb.ax
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !12403
  br label %bb.ba, !dbg !12404

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !12405
  br label %bb.ba, !dbg !12406

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12407
  ret void, !dbg !12408
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiveruE4recvCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12409 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = load i64, ptr %0, align 8, !dbg !12720, !range !557, !noundef !496
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12720
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12721, !noundef !496 ; 10 uses
  switch i64 %i.i, label %default.unreachable30 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.bv
  ], !dbg !12722

default.unreachable30:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i8 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc(ptr noundef nonnull align 128 %i.k, i64 undef, i32 noundef 1000000000), !dbg !12723
  br label %bb.bw, !dbg !12724

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12725
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12726
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12726
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !12726
  br label %bb.d, !dbg !12727

bb.d:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECskAlUH1kY1DR_10polars_ooc.exit.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !12699), !dbg !12728
  br label %.backedge.i.i, !dbg !12729

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.d
  %.sroa.0.034.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.be, %.backedge.i.i.backedge ], !dbg !12730 ; 16 uses
  %i.t = load atomic i64, ptr %i.k acquire, align 8, !dbg !12731, !noalias !12699 ; 5 uses
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !dbg !12732, !noalias !12699 ; 35 uses
  %i.v = lshr i64 %i.t, 1, !dbg !12733            ; 2 uses
  %i.w = and i64 %i.v, 31, !dbg !12733            ; 6 uses
  %i.x = icmp eq i64 %i.w, 31, !dbg !12734
  br i1 %i.x, label %bb.e, label %bb.h, !dbg !12734

bb.e:                                             ; preds = %.backedge.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12735
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !12735

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12736, !noalias !12699
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !12736

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12737
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !12738

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12739 ; 2 uses
  %xtraiter62 = and i32 %i.z, 7, !dbg !12738      ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12738
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !12738

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter66 = and i32 %i.z, 56, !dbg !12738
  br label %.lr.ph.i.i.i, !dbg !12738

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter67 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  %niter67.next.7 = add i32 %niter67, 8, !dbg !12738 ; 2 uses
  %niter67.ncmp.7 = icmp eq i32 %niter67.next.7, %unroll_iter66, !dbg !12738
  br i1 %niter67.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !12738

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod64.not = icmp eq i32 %xtraiter62, 0, !dbg !12738
  br i1 %lcmp.mod64.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !12738

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter62, 0, !dbg !12738
  call void @llvm.assume(i1 %lcmp.mod65), !dbg !12738
  br label %.lr.ph.i.i.i.epil, !dbg !12738

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter63 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter63.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12740, !noalias !12699
  %epil.iter63.next = add i32 %epil.iter63, 1, !dbg !12738 ; 2 uses
  %epil.iter63.cmp.not = icmp eq i32 %epil.iter63.next, %xtraiter62, !dbg !12738
  br i1 %epil.iter63.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !12738, !llvm.loop !12438

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.g, %bb.f
  %i.ab = add i32 %.sroa.0.034.i.i, 1, !dbg !12741
  br label %.backedge.i.i.backedge, !dbg !12742

bb.h:                                             ; preds = %.backedge.i.i
  %i.ac = add i64 %i.t, 2, !dbg !12743            ; 2 uses
  %i.ad = and i64 %i.t, 1, !dbg !12744
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !12744
  br i1 %i.ae, label %bb.i, label %bb.l, !dbg !12744

bb.i:                                             ; preds = %bb.h
  fence seq_cst, !dbg !12745
  %i.af = load atomic i64, ptr %i.q monotonic, align 8, !dbg !12746, !noalias !12699 ; 3 uses
  %i.ag = lshr i64 %i.af, 1, !dbg !12747
  %i.ah = icmp eq i64 %i.v, %i.ag, !dbg !12748
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !12748

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i = xor i64 %i.af, %i.t, !dbg !12749
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63, !dbg !12749
  %i.ai = zext i1 %.not.i.i to i64, !dbg !12749
  %spec.select.i.i = or disjoint i64 %i.ac, %i.ai, !dbg !12749
  br label %bb.l, !dbg !12749

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1, !dbg !12750
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !12750
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, !dbg !12750

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i, %bb.j ], !dbg !12751 ; 2 uses
  %i.al = icmp eq ptr %i.u, null, !dbg !12752
  br i1 %i.al, label %bb.m, label %bb.p, !dbg !12752

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i, 7, !dbg !12753
  br i1 %i.am, label %bb.o, label %bb.n, !dbg !12753

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12754, !noalias !12699
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, !dbg !12754

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12755
  br i1 %.not.i18.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.preheader, !dbg !12756

.lr.ph.i19.i.i.preheader:                         ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i, %.sroa.0.034.i.i, !dbg !12757 ; 2 uses
  %xtraiter56 = and i32 %i.an, 7, !dbg !12756     ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12756
  br i1 %i.ao, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new, !dbg !12756

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter60 = and i32 %i.an, 56, !dbg !12756
  br label %.lr.ph.i19.i.i, !dbg !12756

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i, %.lr.ph.i19.i.i.preheader.new
  %niter61 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter61.next.7, %.lr.ph.i19.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  %niter61.next.7 = add i32 %niter61, 8, !dbg !12756 ; 2 uses
  %niter61.ncmp.7 = icmp eq i32 %niter61.next.7, %unroll_iter60, !dbg !12756
  br i1 %niter61.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !dbg !12756

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i
  %lcmp.mod58.not = icmp eq i32 %xtraiter56, 0, !dbg !12756
  br i1 %lcmp.mod58.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil.preheader, !dbg !12756

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %lcmp.mod59 = icmp ne i32 %xtraiter56, 0, !dbg !12756
  call void @llvm.assume(i1 %lcmp.mod59), !dbg !12756
  br label %.lr.ph.i19.i.i.epil, !dbg !12756

.lr.ph.i19.i.i.epil:                              ; preds = %.lr.ph.i19.i.i.epil, %.lr.ph.i19.i.i.epil.preheader
  %epil.iter57 = phi i32 [ 0, %.lr.ph.i19.i.i.epil.preheader ], [ %epil.iter57.next, %.lr.ph.i19.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12758, !noalias !12699
  %epil.iter57.next = add i32 %epil.iter57, 1, !dbg !12756 ; 2 uses
  %epil.iter57.cmp.not = icmp eq i32 %epil.iter57.next, %xtraiter56, !dbg !12756
  br i1 %epil.iter57.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, label %.lr.ph.i19.i.i.epil, !dbg !12756, !llvm.loop !12451

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.epil, %bb.o, %bb.n
  %i.ap = add i32 %.sroa.0.034.i.i, 1, !dbg !12759
  br label %.backedge.i.i.backedge, !dbg !12742

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %i.k, i64 %i.t, i64 %.sroa.01.0.i.i seq_cst acquire, align 8, !dbg !12760, !noalias !12699
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aq, 1, !dbg !12761
  br i1 %.sroa.18.0.in.i.i.i, label %bb.r, label %bb.q, !dbg !12762

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i, i32 6), !dbg !12763 ; 2 uses
  %i.ar = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !12764 ; 2 uses
  %.not.i23.i.i = icmp eq i32 %.sroa.0.034.i.i, 0, !dbg !12765
  br i1 %.not.i23.i.i, label %.backedge.i.i.backedge, label %.lr.ph.i24.i.i.preheader, !dbg !12766

.lr.ph.i24.i.i.preheader:                         ; preds = %bb.q
  %xtraiter = and i32 %i.ar, 5, !dbg !12766       ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.034.i.i, 3, !dbg !12766
  br i1 %i.as, label %.lr.ph.i24.i.i.epil.preheader, label %.lr.ph.i24.i.i.preheader.new, !dbg !12766

.lr.ph.i24.i.i.preheader.new:                     ; preds = %.lr.ph.i24.i.i.preheader
  %unroll_iter = and i32 %i.ar, 56, !dbg !12766
  br label %.lr.ph.i24.i.i, !dbg !12766

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i24.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !12766
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil.preheader, !dbg !12766

.lr.ph.i24.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.preheader
  %lcmp.mod55 = icmp ne i32 %xtraiter, 0, !dbg !12766
  call void @llvm.assume(i1 %lcmp.mod55), !dbg !12766
  br label %.lr.ph.i24.i.i.epil, !dbg !12766

.lr.ph.i24.i.i.epil:                              ; preds = %.lr.ph.i24.i.i.epil, %.lr.ph.i24.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !12766 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !12766
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i24.i.i.epil, !dbg !12766, !llvm.loop !12463

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i24.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.at = add i32 %.sroa.0.034.i.i, 1, !dbg !12768
  br label %.backedge.i.i.backedge, !dbg !12769

.backedge.i.i.backedge:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.034.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i ], [ %i.at, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i, !dbg !12731

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.i24.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12767, !noalias !12699
  %niter.next.7 = add i32 %niter, 8, !dbg !12766  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !12766
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i, !dbg !12766

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.w, 30, !dbg !12770
  br i1 %i.au, label %bb.s, label %bb.v, !dbg !12770

bb.s:                                             ; preds = %bb.r
  %i.av = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12771, !noalias !12699 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null, !dbg !12772
  br i1 %i.aw, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12772

.lr.ph.i27.i.i:                                   ; preds = %bb.s, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i28.i.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i28.i.i, 7, !dbg !12773
  br i1 %i.ax, label %bb.u, label %bb.t, !dbg !12773

bb.t:                                             ; preds = %.lr.ph.i27.i.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12774, !noalias !12699
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, !dbg !12774

bb.u:                                             ; preds = %.lr.ph.i27.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i, 0, !dbg !12775
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !12776

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.u
  %i.ay = mul nuw i32 %.sroa.0.02.i28.i.i, %.sroa.0.02.i28.i.i, !dbg !12777 ; 2 uses
  %xtraiter68 = and i32 %i.ay, 7, !dbg !12776     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i28.i.i, 3, !dbg !12776
  br i1 %i.az, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !12776

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter72 = and i32 %i.ay, 56, !dbg !12776
  br label %.lr.ph.i.i.i.i, !dbg !12776

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  %niter73.next.7 = add i32 %niter73, 8, !dbg !12776 ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72, !dbg !12776
  br i1 %niter73.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !12776

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0, !dbg !12776
  br i1 %lcmp.mod70.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !12776

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0, !dbg !12776
  call void @llvm.assume(i1 %lcmp.mod71), !dbg !12776
  br label %.lr.ph.i.i.i.i.epil, !dbg !12776

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12778, !noalias !12699
  %epil.iter69.next = add i32 %epil.iter69, 1, !dbg !12776 ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68, !dbg !12776
  br i1 %epil.iter69.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !12776, !llvm.loop !12475

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.u, %bb.t
  %i.ba = add i32 %.sroa.0.02.i28.i.i, 1, !dbg !12779
  %i.bb = load atomic ptr, ptr %i.u acquire, align 8, !dbg !12771, !noalias !12699 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null, !dbg !12772
  br i1 %i.bc, label %.lr.ph.i27.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12772

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.s
  %.lcssa.i.i.i = phi ptr [ %i.av, %bb.s ], [ %i.bb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], !dbg !12771 ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i.i, -2, !dbg !12780
  %i.be = add i64 %i.bd, 2, !dbg !12781
  %i.bf = load atomic ptr, ptr %.lcssa.i.i.i monotonic, align 8, !dbg !12782, !noalias !12699
  %i.bg = icmp ne ptr %i.bf, null, !dbg !12783
  %i.bh = zext i1 %i.bg to i64, !dbg !12783
  %spec.select17.i.i = or disjoint i64 %i.be, %i.bh, !dbg !12783
  store atomic ptr %.lcssa.i.i.i, ptr %i.p release, align 8, !dbg !12784, !noalias !12699
  store atomic i64 %spec.select17.i.i, ptr %i.k release, align 8, !dbg !12785, !noalias !12699
  br label %bb.v, !dbg !12786

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.k
  %i.bi = load i32, ptr %i.m, align 8, !dbg !12787, !range !768, !noundef !496 ; 2 uses
  %.not.i = icmp eq i32 %i.bi, 1000000000, !dbg !12787
  br i1 %.not.i, label %bb.bh, label %bb.bg, !dbg !12788

bb.v:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCskAlUH1kY1DR_10polars_ooc.exit.i.i, %bb.r
  store ptr %i.u, ptr %i.n, align 8, !dbg !12789, !alias.scope !12699
  store i64 %i.w, ptr %i.o, align 8, !dbg !12790, !alias.scope !12699
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !12791 ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.w, !dbg !12792 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !dbg !12793
  %i.bm = and i64 %i.bl, 1, !dbg !12794
  %i.bn = icmp eq i64 %i.bm, 0, !dbg !12794
  br i1 %i.bn, label %.lr.ph.i.i4.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12794

.lr.ph.i.i4.i:                                    ; preds = %bb.v, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i
  %.sroa.0.02.i.i5.i = phi i32 [ %i.br, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i ], [ 0, %bb.v ] ; 6 uses
  %i.bo = icmp ult i32 %.sroa.0.02.i.i5.i, 7, !dbg !12795
  br i1 %i.bo, label %bb.x, label %bb.w, !dbg !12795

bb.w:                                             ; preds = %.lr.ph.i.i4.i
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !12796
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, !dbg !12796

bb.x:                                             ; preds = %.lr.ph.i.i4.i
  %.not.i.i.i7.i = icmp eq i32 %.sroa.0.02.i.i5.i, 0, !dbg !12797
  br i1 %.not.i.i.i7.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.preheader, !dbg !12798

.lr.ph.i.i.i8.i.preheader:                        ; preds = %bb.x
  %i.bp = mul nuw i32 %.sroa.0.02.i.i5.i, %.sroa.0.02.i.i5.i, !dbg !12799 ; 2 uses
  %xtraiter74 = and i32 %i.bp, 7, !dbg !12798     ; 3 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i5.i, 3, !dbg !12798
  br i1 %i.bq, label %.lr.ph.i.i.i8.i.epil.preheader, label %.lr.ph.i.i.i8.i.preheader.new, !dbg !12798

.lr.ph.i.i.i8.i.preheader.new:                    ; preds = %.lr.ph.i.i.i8.i.preheader
  %unroll_iter78 = and i32 %i.bp, 56, !dbg !12798
  br label %.lr.ph.i.i.i8.i, !dbg !12798

.lr.ph.i.i.i8.i:                                  ; preds = %.lr.ph.i.i.i8.i, %.lr.ph.i.i.i8.i.preheader.new
  %niter79 = phi i32 [ 0, %.lr.ph.i.i.i8.i.preheader.new ], [ %niter79.next.7, %.lr.ph.i.i.i8.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  call void @llvm.x86.sse2.pause(), !dbg !12800
  %niter79.next.7 = add i32 %niter79, 8, !dbg !12798 ; 2 uses
  %niter79.ncmp.7 = icmp eq i32 %niter79.next.7, %unroll_iter78, !dbg !12798
  br i1 %niter79.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i8.i, !dbg !12798

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8.i
  %lcmp.mod76.not = icmp eq i32 %xtraiter74, 0, !dbg !12798
  br i1 %lcmp.mod76.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil.preheader, !dbg !12798

.lr.ph.i.i.i8.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter74, 0, !dbg !12798
  call void @llvm.assume(i1 %lcmp.mod77), !dbg !12798
  br label %.lr.ph.i.i.i8.i.epil, !dbg !12798

.lr.ph.i.i.i8.i.epil:                             ; preds = %.lr.ph.i.i.i8.i.epil, %.lr.ph.i.i.i8.i.epil.preheader
  %epil.iter75 = phi i32 [ 0, %.lr.ph.i.i.i8.i.epil.preheader ], [ %epil.iter75.next, %.lr.ph.i.i.i8.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12800
  %epil.iter75.next = add i32 %epil.iter75, 1, !dbg !12798 ; 2 uses
  %epil.iter75.cmp.not = icmp eq i32 %epil.iter75.next, %xtraiter74, !dbg !12798
  br i1 %epil.iter75.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, label %.lr.ph.i.i.i8.i.epil, !dbg !12798, !llvm.loop !12508

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i.loopexit.unr-lcssa, %.lr.ph.i.i.i8.i.epil, %bb.x, %bb.w
  %i.br = add i32 %.sroa.0.02.i.i5.i, 1, !dbg !12801
  %i.bs = load atomic i64, ptr %i.bk acquire, align 8, !dbg !12793
  %i.bt = and i64 %i.bs, 1, !dbg !12794
  %i.bu = icmp eq i64 %i.bt, 0, !dbg !12794
  br i1 %i.bu, label %.lr.ph.i.i4.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i, !dbg !12794

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.i, %bb.v
  %i.bv = add nuw nsw i64 %i.w, 1, !dbg !12802    ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 31, !dbg !12802
  br i1 %i.bw, label %.preheader.preheader.i.i, label %bb.bc, !dbg !12802

.preheader.preheader.i.i:                         ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCskAlUH1kY1DR_10polars_ooc.exit.i.i
  %i.bx = load atomic i64, ptr %i.bj acquire, align 8, !dbg !12803
  %i.by = and i64 %i.bx, 2, !dbg !12804
  %i.bz = icmp eq i64 %i.by, 0, !dbg !12804
  br i1 %i.bz, label %bb.y, label %.preheader.1.i.i, !dbg !12804

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockuE7destroyCskAlUH1kY1DR_10polars_ooc.exit.sink.split.i.i: ; preds = %bb.bf, %bb.bd, %bb.bb, %.preheader.29.i.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 256, i64 noundef 8) #23, !dbg !12805
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, !dbg !12806

bb.y:                                             ; preds = %.preheader.preheader.i.i
  %i.ca = atomicrmw or ptr %i.bj, i64 4 acq_rel, align 8, !dbg !12807
  %i.cb = and i64 %i.ca, 2, !dbg !12808
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !12808
  br i1 %i.cc, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.1.i.i, !dbg !12808

.preheader.1.i.i:                                 ; preds = %bb.y, %.preheader.preheader.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !12809 ; 2 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8, !dbg !12803
  %i.cf = and i64 %i.ce, 2, !dbg !12804
  %i.cg = icmp eq i64 %i.cf, 0, !dbg !12804
  br i1 %i.cg, label %bb.z, label %.preheader.2.i.i, !dbg !12804

bb.z:                                             ; preds = %.preheader.1.i.i
  %i.ch = atomicrmw or ptr %i.cd, i64 4 acq_rel, align 8, !dbg !12807
  %i.ci = and i64 %i.ch, 2, !dbg !12808
  %i.cj = icmp eq i64 %i.ci, 0, !dbg !12808
  br i1 %i.cj, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.2.i.i, !dbg !12808

.preheader.2.i.i:                                 ; preds = %bb.z, %.preheader.1.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !12809 ; 2 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8, !dbg !12803
  %i.cm = and i64 %i.cl, 2, !dbg !12804
  %i.cn = icmp eq i64 %i.cm, 0, !dbg !12804
  br i1 %i.cn, label %bb.aa, label %.preheader.3.i.i, !dbg !12804

bb.aa:                                            ; preds = %.preheader.2.i.i
  %i.co = atomicrmw or ptr %i.ck, i64 4 acq_rel, align 8, !dbg !12807
  %i.cp = and i64 %i.co, 2, !dbg !12808
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !12808
  br i1 %i.cq, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.3.i.i, !dbg !12808

.preheader.3.i.i:                                 ; preds = %bb.aa, %.preheader.2.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !12809 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !dbg !12803
  %i.ct = and i64 %i.cs, 2, !dbg !12804
  %i.cu = icmp eq i64 %i.ct, 0, !dbg !12804
  br i1 %i.cu, label %bb.ab, label %.preheader.4.i.i, !dbg !12804

bb.ab:                                            ; preds = %.preheader.3.i.i
  %i.cv = atomicrmw or ptr %i.cr, i64 4 acq_rel, align 8, !dbg !12807
  %i.cw = and i64 %i.cv, 2, !dbg !12808
  %i.cx = icmp eq i64 %i.cw, 0, !dbg !12808
  br i1 %i.cx, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.4.i.i, !dbg !12808

.preheader.4.i.i:                                 ; preds = %bb.ab, %.preheader.3.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !12809 ; 2 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !dbg !12803
  %i.da = and i64 %i.cz, 2, !dbg !12804
  %i.db = icmp eq i64 %i.da, 0, !dbg !12804
  br i1 %i.db, label %bb.ac, label %.preheader.5.i.i, !dbg !12804

bb.ac:                                            ; preds = %.preheader.4.i.i
  %i.dc = atomicrmw or ptr %i.cy, i64 4 acq_rel, align 8, !dbg !12807
  %i.dd = and i64 %i.dc, 2, !dbg !12808
  %i.de = icmp eq i64 %i.dd, 0, !dbg !12808
  br i1 %i.de, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.5.i.i, !dbg !12808

.preheader.5.i.i:                                 ; preds = %bb.ac, %.preheader.4.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !12809 ; 2 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8, !dbg !12803
  %i.dh = and i64 %i.dg, 2, !dbg !12804
  %i.di = icmp eq i64 %i.dh, 0, !dbg !12804
  br i1 %i.di, label %bb.ad, label %.preheader.6.i.i, !dbg !12804

bb.ad:                                            ; preds = %.preheader.5.i.i
  %i.dj = atomicrmw or ptr %i.df, i64 4 acq_rel, align 8, !dbg !12807
  %i.dk = and i64 %i.dj, 2, !dbg !12808
  %i.dl = icmp eq i64 %i.dk, 0, !dbg !12808
  br i1 %i.dl, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.6.i.i, !dbg !12808

.preheader.6.i.i:                                 ; preds = %bb.ad, %.preheader.5.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 56, !dbg !12809 ; 2 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8, !dbg !12803
  %i.do = and i64 %i.dn, 2, !dbg !12804
  %i.dp = icmp eq i64 %i.do, 0, !dbg !12804
  br i1 %i.dp, label %bb.ae, label %.preheader.7.i.i, !dbg !12804

bb.ae:                                            ; preds = %.preheader.6.i.i
  %i.dq = atomicrmw or ptr %i.dm, i64 4 acq_rel, align 8, !dbg !12807
  %i.dr = and i64 %i.dq, 2, !dbg !12808
  %i.ds = icmp eq i64 %i.dr, 0, !dbg !12808
  br i1 %i.ds, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.7.i.i, !dbg !12808

.preheader.7.i.i:                                 ; preds = %bb.ae, %.preheader.6.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 64, !dbg !12809 ; 2 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8, !dbg !12803
  %i.dv = and i64 %i.du, 2, !dbg !12804
  %i.dw = icmp eq i64 %i.dv, 0, !dbg !12804
  br i1 %i.dw, label %bb.af, label %.preheader.8.i.i, !dbg !12804

bb.af:                                            ; preds = %.preheader.7.i.i
  %i.dx = atomicrmw or ptr %i.dt, i64 4 acq_rel, align 8, !dbg !12807
  %i.dy = and i64 %i.dx, 2, !dbg !12808
  %i.dz = icmp eq i64 %i.dy, 0, !dbg !12808
  br i1 %i.dz, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.8.i.i, !dbg !12808

.preheader.8.i.i:                                 ; preds = %bb.af, %.preheader.7.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 72, !dbg !12809 ; 2 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !dbg !12803
  %i.ec = and i64 %i.eb, 2, !dbg !12804
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !12804
  br i1 %i.ed, label %bb.ag, label %.preheader.9.i.i, !dbg !12804

bb.ag:                                            ; preds = %.preheader.8.i.i
  %i.ee = atomicrmw or ptr %i.ea, i64 4 acq_rel, align 8, !dbg !12807
  %i.ef = and i64 %i.ee, 2, !dbg !12808
  %i.eg = icmp eq i64 %i.ef, 0, !dbg !12808
  br i1 %i.eg, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.9.i.i, !dbg !12808

.preheader.9.i.i:                                 ; preds = %bb.ag, %.preheader.8.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 80, !dbg !12809 ; 2 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8, !dbg !12803
  %i.ej = and i64 %i.ei, 2, !dbg !12804
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !12804
  br i1 %i.ek, label %bb.ah, label %.preheader.10.i.i, !dbg !12804

bb.ah:                                            ; preds = %.preheader.9.i.i
  %i.el = atomicrmw or ptr %i.eh, i64 4 acq_rel, align 8, !dbg !12807
  %i.em = and i64 %i.el, 2, !dbg !12808
  %i.en = icmp eq i64 %i.em, 0, !dbg !12808
  br i1 %i.en, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.10.i.i, !dbg !12808

.preheader.10.i.i:                                ; preds = %bb.ah, %.preheader.9.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 88, !dbg !12809 ; 2 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8, !dbg !12803
  %i.eq = and i64 %i.ep, 2, !dbg !12804
  %i.er = icmp eq i64 %i.eq, 0, !dbg !12804
  br i1 %i.er, label %bb.ai, label %.preheader.11.i.i, !dbg !12804

bb.ai:                                            ; preds = %.preheader.10.i.i
  %i.es = atomicrmw or ptr %i.eo, i64 4 acq_rel, align 8, !dbg !12807
  %i.et = and i64 %i.es, 2, !dbg !12808
  %i.eu = icmp eq i64 %i.et, 0, !dbg !12808
  br i1 %i.eu, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChanneluE4recvCskAlUH1kY1DR_10polars_ooc.exit, label %.preheader.11.i.i, !dbg !12808

.preheader.11.i.i:                                ; preds = %bb.ai, %.preheader.10.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 96, !dbg !12809 ; 2 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8, !dbg !12803
  %i.ex = and i64 %i.ew, 2, !dbg !12804
end_hunk_2
