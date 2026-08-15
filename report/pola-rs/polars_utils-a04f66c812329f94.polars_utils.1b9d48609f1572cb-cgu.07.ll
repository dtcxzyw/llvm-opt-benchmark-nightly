inline.NumInlined: 146
inline.NumDeleted: 76
begin_hunk_0_@_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvXNtCs2mZqlW55729_12polars_utils4mmapNtB1e_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop0EB1g_:bb.a
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, i64 8) acquire, align 8, !dbg !69, !noalias !108
  %i.h = icmp eq i32 %i.g, 0, !dbg !109
  br i1 %i.h, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i, label %bb.b, !dbg !109, !prof !110

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !111, !noalias !108
  store ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, ptr %i.c, align 8, !dbg !112, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !113, !noalias !108
  store ptr %i.c, ptr %i.b, align 8, !dbg !113, !noalias !108
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !115, !noalias !108

.noexc.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !116, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !117, !noalias !108
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !117

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.i = load i64, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, align 8, !dbg !118, !noalias !108, !noundef !13 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !119
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !119

bb.c:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i
  %i.k = urem i64 33554432, %i.i, !dbg !119       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !125
  %i.m = add i64 %i.i, 33554432, !dbg !125
  %i.n = sub i64 %i.m, %i.k, !dbg !125
  %.sroa.0.0.i.i.i = select i1 %i.l, i64 33554432, i64 %i.n, !dbg !125 ; 3 uses
  %i.o = load i64, ptr %.sroa.9.0..sroa_idx15, align 16, !dbg !126, !alias.scope !66, !noalias !56, !noundef !13 ; 3 uses
  %i.p = icmp ugt i64 %i.o, %.sroa.0.0.i.i.i, !dbg !126
  br i1 %i.p, label %.lr.ph.preheader.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !126

bb.d:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.e unwind label %bb.f, !dbg !119, !noalias !108

bb.e:                                             ; preds = %bb.d
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !128, !noalias !108
  %i.q = load ptr, ptr %i.e, align 16, !dbg !128, !alias.scope !66, !noalias !56, !noundef !13
  %i.r = load i64, ptr %.sroa.7.0..sroa_idx13, align 8, !dbg !128, !alias.scope !66, !noalias !56, !noundef !13
  store ptr %i.q, ptr %i.d, align 8, !dbg !128, !noalias !108
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !128
  store i64 %i.r, ptr %i.s, align 8, !dbg !128, !noalias !108
  invoke void @_RNvXs_NtCs61SnqI2q75L_7memmap22osNtB4_9MmapInnerNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc unwind label %bb.h, !dbg !129

.noexc:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !137, !noalias !108
  br label %.loopexit, !dbg !138

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.t = load ptr, ptr %i.e, align 16, !dbg !139, !alias.scope !66, !noalias !56, !noundef !13
  br label %.lr.ph.i.i.i, !dbg !140

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.03.018.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.u = sub nuw i64 %i.o, %.sroa.03.018.i.i.i, !dbg !144
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i, i64 %i.u), !dbg !145
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.03.018.i.i.i, !dbg !152
  %i.w = call noundef i32 @munmap(ptr noundef %i.v, i64 noundef %.sroa.0.0.i.i.i.i) #23, !dbg !158, !noalias !108 ; 0 uses
  %i.x = add i64 %.sroa.03.018.i.i.i, %.sroa.0.0.i.i.i, !dbg !159 ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.o, !dbg !140
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit, !dbg !140

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs_NtCs61SnqI2q75L_7memmap22osNtB4_9MmapInnerNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.g, !dbg !160, !noalias !56

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !163, !noalias !56
  unreachable, !dbg !163

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null, !dbg !164
  br label %.body, !dbg !164

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %lpad.thr_comm.i.i.i, %bb.f ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0, !dbg !164
  %i.ac = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ab)
          to label %bb.j unwind label %bb.i, !dbg !165 ; 2 uses

bb.i:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer, !dbg !164 ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #24, !dbg !170
  unreachable, !dbg !170

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !171, !noalias !56
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, !dbg !172

bb.j:                                             ; preds = %.body
  %i.ae = extractvalue { ptr, ptr } %i.ac, 0, !dbg !165 ; 6 uses
  %i.af = extractvalue { ptr, ptr } %i.ac, 1, !dbg !165 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !173
  %i.ah = load ptr, ptr %i.ag, align 32, !dbg !173, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.ah, null, !dbg !173
  br i1 %.not, label %bb.l, label %bb.k, !dbg !176

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.q, %bb.p, %bb.k, %.loopexit
  ret void, !dbg !177

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !173
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !178, !nonnull !13, !align !185, !noundef !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40, !dbg !186
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !186, !invariant.load !13, !nonnull !13
  invoke void %i.al(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit unwind label %bb.m, !dbg !186

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXNtCs4BcJZGCY6Ba_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit unwind label %bb.t, !dbg !187

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs4BcJZGCY6Ba_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %common.resume unwind label %bb.n, !dbg !190

bb.n:                                             ; preds = %bb.m, %bb.t
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !192
  unreachable, !dbg !192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.l
  %i.ao = load ptr, ptr %i.af, align 8, !dbg !193, !invariant.load !13 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null, !dbg !193
  br i1 %.not.i, label %bb.p, label %bb.o, !dbg !193

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit
  invoke void %i.ao(ptr noundef nonnull %i.ae)
          to label %bb.p unwind label %bb.r, !dbg !193

bb.p:                                             ; preds = %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !196
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !196, !range !209, !invariant.load !13 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !210
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, label %bb.q, !dbg !210

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !196
  %i.at = load i64, ptr %i.as, align 8, !dbg !212, !range !220, !invariant.load !13
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #23, !dbg !221
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, !dbg !234

bb.r:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !235
  %i.aw = load i64, ptr %i.av, align 8, !dbg !235, !range !209, !invariant.load !13 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !239
  br i1 %i.ax, label %common.resume, label %bb.s, !dbg !239

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !235
  %i.az = load i64, ptr %i.ay, align 8, !dbg !240, !range !220, !invariant.load !13
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #23, !dbg !243
  br label %common.resume, !dbg !248

common.resume:                                    ; preds = %bb.t, %bb.m, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.au, %bb.s ], [ %i.ba, %bb.t ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !249

bb.t:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils(ptr nonnull %i.ae, ptr nonnull %i.af) #25
          to label %common.resume unwind label %bb.n, !dbg !250
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !251 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [640 x i8], align 128             ; 19 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  %i.g = alloca [384 x i8], align 128             ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 16              ; 14 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [88 x i8], align 8                ; 16 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.537 = alloca [27 x i8], align 1          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [1 x i8], align 1                 ; 4 uses
  %i.z = invoke noundef i64 @_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.d unwind label %bb.c, !dbg !252

bb.b:                                             ; preds = %bb.bi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils.exit, %bb.g, %.thread145, %bb.c
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn99148, %.thread145 ], [ %i.aa, %bb.c ], [ %.pn47.pn.pn.pn, %bb.bi ], [ %.pn47.pn.pn.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils.exit ], [ %i.ap, %bb.g ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(96) %1) #25
          to label %bb.bs unwind label %bb.bm, !dbg !253

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 65535), !dbg !254 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !256
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 89, !dbg !258
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !258, !range !263, !noundef !13
  store i8 %i.ac, ptr %i.y, align 1, !dbg !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !266
  store i64 0, ptr %i.ad, align 8, !dbg !266
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !266
  store i64 %.sroa.0.0.i, ptr %i.ae, align 8, !dbg !266
  store ptr %i.y, ptr %i.u, align 8, !dbg !266
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.e unwind label %bb.c, !dbg !280

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !283
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !285
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, i64 noundef 0, i64 noundef %.sroa.0.0.i)
          to label %bb.f unwind label %bb.br, !dbg !287

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !289
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !293
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !293
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !293, !nonnull !13, !noundef !13 ; 3 uses
  %i.aj = load i64, ptr %i.w, align 8, !dbg !293, !range !209, !noundef !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !293
  %i.al = load i64, ptr %i.ak, align 8, !dbg !293, !noundef !13 ; 2 uses
  %i.am = icmp ult i64 %i.al, 576460752303423488, !dbg !294
  call void @llvm.assume(i1 %i.am), !dbg !308
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.al, !dbg !309
  store ptr %i.ai, ptr %i.o, align 8, !dbg !315
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !315
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !315
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !315
  store i64 %i.aj, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !315
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !315
  store ptr %i.an, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !315
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.h unwind label %.thread118, !dbg !321

.thread118:                                       ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.thread100, !dbg !333

bb.g:                                             ; preds = %bb.bk
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.b, !dbg !333

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !334
  invoke void @_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, i64 noundef %.sroa.0.0.i)
          to label %bb.k unwind label %bb.j, !dbg !334

bb.i:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.aq, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24) %i.p) #25
          to label %.thread100 unwind label %bb.bm, !dbg !335

bb.j:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !336
  %i.ar = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #23, !dbg !351 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null, !dbg !352
  br i1 %i.as, label %bb.l, label %_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils.exit, !dbg !352, !prof !354

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #22
          to label %.noexc unwind label %bb.m, !dbg !355

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !355

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core5sleep5SleepECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(32) %i.n) #25
          to label %bb.i unwind label %bb.bm, !dbg !335

_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537), !dbg !356
  %.sroa.537.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.537, i64 3, !dbg !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.537.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !357
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !363 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !373 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !381 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 504, !dbg !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !393
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 472, !dbg !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !393
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 389, !dbg !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.537, i64 27, i1 false), !dbg !393
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537), !dbg !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !335
  store i64 1, ptr %i.d, align 128, !dbg !387
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !387
  store i64 1, ptr %i.ax, align 8, !dbg !387
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !387
  store i64 0, ptr %i.ay, align 128, !dbg !387
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !387
  store ptr %i.ar, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !387
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256, !dbg !387
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128, !dbg !387
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 264, !dbg !387
  store ptr %i.ar, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !dbg !387
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 384, !dbg !387
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128, !dbg !387
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 388, !dbg !387
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4, !dbg !387
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 416, !dbg !387
  %i.az = load <2 x ptr>, ptr %i.au, align 8, !dbg !363
  store ptr null, ptr %i.au, align 8, !dbg !394
  store <2 x ptr> %i.az, ptr %.sroa.5.0..sroa_idx, align 32, !dbg !387
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 432, !dbg !387
  %i.ba = load <2 x ptr>, ptr %i.av, align 8, !dbg !373
  store ptr null, ptr %i.av, align 8, !dbg !396
  store <2 x ptr> %i.ba, ptr %.sroa.7.0..sroa_idx, align 16, !dbg !387
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 448, !dbg !387
  %i.bb = load <2 x ptr>, ptr %i.aw, align 8, !dbg !381
  store ptr null, ptr %i.aw, align 8, !dbg !398
  store <2 x ptr> %i.bb, ptr %.sroa.9.0..sroa_idx, align 64, !dbg !387
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 464, !dbg !387
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16, !dbg !387
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !400, !noalias !415
  %i.bc = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 641) 640, i64 noundef range(i64 8, 129) 128) #23, !dbg !418, !noalias !415 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !419
  br i1 %i.bd, label %bb.n, label %bb.r, !dbg !420, !prof !354

bb.n:                                             ; preds = %_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #22
          to label %.noexc57 unwind label %bb.o, !dbg !421

.noexc57:                                         ; preds = %bb.n
  unreachable, !dbg !421

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.d) #25
          to label %.thread100 unwind label %bb.p, !dbg !422

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !423
  unreachable, !dbg !423

.body61:                                          ; preds = %bb.be, %bb.x, %bb.q, %.critedge
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %.critedge ], [ %i.cr, %bb.x ], [ %i.bg, %bb.q ], [ %i.ep, %bb.be ]
  invoke void @_RNvXs3_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_10TerminatorNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils.exit unwind label %bb.bm, !dbg !424

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECs2mZqlW55729_12polars_utils.exit.i73, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECs2mZqlW55729_12polars_utils.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.r:                                             ; preds = %_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.bc, ptr noundef nonnull align 128 dereferenceable(640) %i.d, i64 640, i1 false), !dbg !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !430
  store ptr %i.bc, ptr %i.q, align 8, !dbg !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !437
  store ptr %i.q, ptr %i.m, align 8, !dbg !438
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !439
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !439, !nonnull !13, !noundef !13 ; 4 uses
  %i.bj = load i64, ptr %i.x, align 8, !dbg !439, !range !209, !noundef !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !439
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !439, !noundef !13 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 288230376151711744, !dbg !441
  call void @llvm.assume(i1 %i.bm), !dbg !452
  %.idx = shl nuw nsw i64 %i.bl, 5, !dbg !453
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx, !dbg !453
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8, !dbg !456
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !456
  %.sroa.489.0.copyload = load ptr, ptr %.sroa.489.0..sroa_idx, align 8, !dbg !456, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !456
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 8, !dbg !456 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.590.0.copyload, 576460752303423488, !dbg !457
  call void @llvm.assume(i1 %i.bo), !dbg !469
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.489.0.copyload, i64 %.sroa.590.0.copyload, !dbg !470
  %.sroa.06.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64, !dbg !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !473
  store ptr %i.bi, ptr %i.l, align 8, !dbg !439
  %.sroa.06.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !439 ; 3 uses
  store ptr %i.bi, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !439
  store i64 %i.bj, ptr %.sroa.06.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !439 ; 2 uses
  store ptr %i.bn, ptr %.sroa.06.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !439 ; 5 uses
  store ptr %.sroa.489.0.copyload, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !439 ; 3 uses
  store ptr %.sroa.489.0.copyload, ptr %.sroa.06.sroa.3.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !439
  store i64 %.sroa.0.0.copyload, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8, !dbg !439
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56, !dbg !439 ; 2 uses
  store ptr %i.bp, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8, !dbg !439
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80, !dbg !439 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !482, !noalias !494
  %i.bq = icmp eq i64 %i.bl, 0, !dbg !504
  br i1 %i.bq, label %.loopexit, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i.lr.ph, !dbg !515

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i.lr.ph: ; preds = %bb.r
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.4.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.1293.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !515

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i.lr.ph, %.backedge
  %i.cc = phi ptr [ %i.bi, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i.lr.ph ], [ %i.en, %.backedge ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !516), !dbg !518
  call void @llvm.experimental.noalias.scope.decl(metadata !519), !dbg !521
  call void @llvm.experimental.noalias.scope.decl(metadata !522), !dbg !524
  call void @llvm.experimental.noalias.scope.decl(metadata !525), !dbg !528
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32, !dbg !529
  store ptr %i.cd, ptr %.sroa.06.sroa.0.sroa.2.0..sroa_idx, align 8, !dbg !534, !alias.scope !535, !noalias !536
  %.sroa.5.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !538
  %.sroa.5.0.copyload13.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i, align 8, !dbg !538, !noalias !544 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i, 2, !dbg !545
  br i1 %.not.i.i.i, label %.loopexit, label %bb.s, !dbg !549

bb.s:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils.exit.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 25, !dbg !538 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !550, !noalias !551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !dbg !550, !noalias !551
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.4.0..sroa_idx21.i.i.i, align 8, !dbg !552, !noalias !551
  call void @llvm.experimental.noalias.scope.decl(metadata !555), !dbg !558
  %i.ce = load ptr, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8, !dbg !560, !alias.scope !564, !noalias !565, !nonnull !13, !noundef !13
  %i.cf = load ptr, ptr %.sroa.06.sroa.3.0..sroa_idx, align 8, !dbg !566, !alias.scope !564, !noalias !565, !nonnull !13, !noundef !13 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, %i.ce, !dbg !566
  br i1 %i.cg, label %bb.t, label %bb.w, !dbg !569

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !570), !dbg !573
  call void @llvm.experimental.noalias.scope.decl(metadata !574), !dbg !577
  call void @llvm.experimental.noalias.scope.decl(metadata !580), !dbg !583
  %i.ch = load ptr, ptr %i.c, align 8, !dbg !586, !alias.scope !594, !noalias !551, !nonnull !13, !noundef !13
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !dbg !595, !noalias !600
  %i.cj = icmp eq i64 %i.ci, 1, !dbg !601
  br i1 %i.cj, label %bb.u, label %.loopexit, !dbg !601

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !602
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #26
          to label %.loopexit unwind label %bb.v, !dbg !605

.critedge:                                        ; preds = %.body55.thread137.loopexit, %.body55.thread137.loopexit.split-lp, %bb.ar, %bb.au, %bb.al, %bb.bl, %.noexc83, %bb.bp, %bb.z, %bb.v
  %.pn47.pn = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %i.fa, %.noexc83 ], [ %i.ck, %bb.v ], [ %i.fa, %bb.bp ], [ %lpad.thr_comm.split-lp, %bb.bl ], [ %i.ec, %bb.au ], [ %i.dj, %bb.al ], [ %i.dw, %bb.ar ], [ %lpad.loopexit, %.body55.thread137.loopexit ], [ %lpad.loopexit.split-lp, %.body55.thread137.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1H_INtB2x_7StealerB3h_EEEEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(88) %i.l) #25
          to label %.body61 unwind label %bb.bm, !dbg !606

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.w:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !607
  store ptr %i.cl, ptr %.sroa.06.sroa.3.0..sroa_idx, align 8, !dbg !611, !alias.scope !564, !noalias !565
  %i.cm = load ptr, ptr %i.cf, align 8, !dbg !612, !noalias !618, !nonnull !13, !noundef !13 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !612
  %i.co = load i8, ptr %i.cn, align 8, !dbg !612, !range !263, !noalias !618, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !dbg !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1293.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !dbg !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !573, !noalias !551
  %i.cp = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !622, !alias.scope !516, !noalias !624, !noundef !13 ; 4 uses
  %i.cq = add i64 %i.cp, 1, !dbg !625
  store i64 %i.cq, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !625, !alias.scope !516, !noalias !624
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !627
  store ptr %i.cm, ptr %i.j, align 8, !dbg !627
  store i8 %i.co, ptr %i.br, align 8, !dbg !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !630
  invoke void @_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cp)
          to label %bb.aa unwind label %bb.bn, !dbg !631

end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!156 = !DINamespace(name: "const_ptr", scope: !62)
!157 = distinct !DILocation(line: 73, column: 41, scope: !151, inlinedAt: !107)
!158 = !DILocation(line: 72, column: 33, scope: !151, inlinedAt: !107)
!159 = !DILocation(line: 76, column: 33, scope: !151, inlinedAt: !107)
!160 = !DILocation(line: 810, column: 1, scope: !130, inlinedAt: !161)
!161 = distinct !DILocation(line: 810, column: 1, scope: !132, inlinedAt: !162)
!162 = distinct !DILocation(line: 82, column: 17, scope: !101, inlinedAt: !107)
!163 = !DILocation(line: 59, column: 34, scope: !101, inlinedAt: !107)
!164 = !DILocation(line: 544, column: 19, scope: !54, inlinedAt: !31)
!165 = !DILocation(line: 607, column: 23, scope: !166, inlinedAt: !169)
!166 = distinct !DILexicalBlock(scope: !167, file: !28, line: 606, column: 13)
!167 = distinct !DILexicalBlock(scope: !168, file: !28, line: 605, column: 13)
!168 = distinct !DISubprogram(name: "do_catch<core::panic::unwind_safe::AssertUnwindSafe<polars_utils::mmap::{impl#0}::drop::{closure_env#0}>, ()>", linkageName: "_RINvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind8do_catchINtNtNtCscgRAwXFJnXP_4core5panic11unwind_safe16AssertUnwindSafeNCNvXNtCs2mZqlW55729_12polars_utils4mmapNtB21_13MMapSemaphoreNtNtNtB12_3ops4drop4Drop4drop0EuEB23_", scope: !52, file: !28, line: 598, type: !12, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!169 = distinct !DILocation(line: 544, column: 19, scope: !54, inlinedAt: !31)
!170 = !DILocation(line: 598, column: 5, scope: !168, inlinedAt: !169)
!171 = !DILocation(line: 275, column: 18, scope: !42, inlinedAt: !47)
!172 = !DILocation(line: 376, column: 16, scope: !40)
!173 = !DILocation(line: 379, column: 40, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !8, line: 379, column: 59)
!175 = distinct !DILexicalBlock(scope: !40, file: !8, line: 378, column: 13)
!176 = !DILocation(line: 379, column: 20, scope: !174)
!177 = !DILocation(line: 384, column: 6, scope: !7)
!178 = !DILocation(line: 2254, column: 31, scope: !179, inlinedAt: !184)
!179 = distinct !DISubprogram(name: "call<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), (dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXsv_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_EIBJ_B1o_E4callCs2mZqlW55729_12polars_utils", scope: !181, file: !180, line: 2253, type: !12, scopeLine: 2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!180 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c2c961396e00891ae9e97f5dc112a35a")
!181 = !DINamespace(name: "{impl#33}", scope: !182)
!182 = !DINamespace(name: "boxed", scope: !183)
!183 = !DINamespace(name: "alloc", scope: null)
!184 = !DILocation(line: 380, column: 17, scope: !174)
!185 = !{i64 8}
!186 = !DILocation(line: 2254, column: 9, scope: !179, inlinedAt: !184)
!187 = !DILocation(line: 810, column: 1, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "drop_in_place<rayon_core::unwind::AbortIfPanic>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!189 = distinct !DILocation(line: 383, column: 9, scope: !40)
!190 = !DILocation(line: 810, column: 1, scope: !188, inlinedAt: !191)
!191 = distinct !DILocation(line: 383, column: 9, scope: !40)
!192 = !DILocation(line: 375, column: 5, scope: !7)
!193 = !DILocation(line: 810, column: 1, scope: !194, inlinedAt: !195)
!194 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!195 = distinct !DILocation(line: 383, column: 9, scope: !7)
!196 = !DILocation(line: 457, column: 14, scope: !197, inlinedAt: !198)
!197 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_ECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 455, type: !12, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!198 = distinct !DILocation(line: 255, column: 43, scope: !199, inlinedAt: !204)
!199 = distinct !DISubprogram(name: "for_value_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_ECs2mZqlW55729_12polars_utils", scope: !201, file: !200, line: 253, type: !12, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!200 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!201 = !DINamespace(name: "Layout", scope: !202)
!202 = !DINamespace(name: "layout", scope: !203)
!203 = !DINamespace(name: "alloc", scope: !20)
!204 = distinct !DILocation(line: 1919, column: 26, scope: !205, inlinedAt: !208)
!205 = distinct !DILexicalBlock(scope: !206, file: !180, line: 1916, column: 9)
!206 = distinct !DISubprogram(name: "drop<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !207, file: !180, line: 1913, type: !74, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!207 = !DINamespace(name: "{impl#10}", scope: !182)
!208 = distinct !DILocation(line: 810, column: 1, scope: !194, inlinedAt: !195)
!209 = !{i64 0, i64 -9223372036854775808}
!210 = !DILocation(line: 1920, column: 16, scope: !211, inlinedAt: !208)
!211 = distinct !DILexicalBlock(scope: !205, file: !180, line: 1919, column: 13)
!212 = !DILocation(line: 596, column: 14, scope: !213, inlinedAt: !214)
!213 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_ECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 594, type: !12, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!214 = distinct !DILocation(line: 125, column: 30, scope: !215, inlinedAt: !219)
!215 = distinct !DISubprogram(name: "of_val_raw<(dyn core::any::Any + core::marker::Send)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_ECs2mZqlW55729_12polars_utils", scope: !217, file: !216, line: 123, type: !12, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!216 = !DIFile(filename: "library/core/src/mem/alignment.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "04a3a61c673b016abd85a06a152fa744")
!217 = !DINamespace(name: "Alignment", scope: !218)
!218 = !DINamespace(name: "alignment", scope: !19)
!219 = distinct !DILocation(line: 255, column: 68, scope: !199, inlinedAt: !204)
!220 = !{i64 1, i64 536870913}
!221 = !DILocation(line: 128, column: 14, scope: !222, inlinedAt: !225)
!222 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !224, file: !223, line: 127, type: !12, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!223 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "860ce4ea2346d0773913a27b0b87ad79")
!224 = !DINamespace(name: "alloc", scope: !183)
!225 = distinct !DILocation(line: 229, column: 22, scope: !226, inlinedAt: !228)
!226 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !227, file: !223, line: 219, type: !12, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!227 = !DINamespace(name: "Global", scope: !224)
!228 = distinct !DILocation(line: 344, column: 9, scope: !229, inlinedAt: !230)
!229 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !227, file: !223, line: 343, type: !12, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!230 = distinct !DILocation(line: 462, column: 23, scope: !231, inlinedAt: !233)
!231 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !232, file: !223, line: 460, type: !74, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!232 = !DINamespace(name: "{impl#1}", scope: !224)
!233 = distinct !DILocation(line: 1921, column: 24, scope: !211, inlinedAt: !208)
!234 = !DILocation(line: 1920, column: 13, scope: !211, inlinedAt: !208)
!235 = !DILocation(line: 457, column: 14, scope: !197, inlinedAt: !236)
!236 = distinct !DILocation(line: 255, column: 43, scope: !199, inlinedAt: !237)
!237 = distinct !DILocation(line: 1919, column: 26, scope: !205, inlinedAt: !238)
!238 = distinct !DILocation(line: 810, column: 1, scope: !194, inlinedAt: !195)
!239 = !DILocation(line: 1920, column: 16, scope: !211, inlinedAt: !238)
!240 = !DILocation(line: 596, column: 14, scope: !213, inlinedAt: !241)
!241 = distinct !DILocation(line: 125, column: 30, scope: !215, inlinedAt: !242)
!242 = distinct !DILocation(line: 255, column: 68, scope: !199, inlinedAt: !237)
!243 = !DILocation(line: 128, column: 14, scope: !222, inlinedAt: !244)
!244 = distinct !DILocation(line: 229, column: 22, scope: !226, inlinedAt: !245)
!245 = distinct !DILocation(line: 344, column: 9, scope: !229, inlinedAt: !246)
!246 = distinct !DILocation(line: 462, column: 23, scope: !231, inlinedAt: !247)
!247 = distinct !DILocation(line: 1921, column: 24, scope: !211, inlinedAt: !238)
!248 = !DILocation(line: 1920, column: 13, scope: !211, inlinedAt: !238)
!249 = !DILocation(line: 0, scope: !7)
!250 = !DILocation(line: 383, column: 9, scope: !7)
!251 = distinct !DISubprogram(name: "new<rayon_core::registry::DefaultSpawn>", linkageName: "_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 239, type: !12, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!252 = !DILocation(line: 246, column: 42, scope: !251)
!253 = !DILocation(line: 322, column: 5, scope: !251)
!254 = !DILocation(line: 1077, column: 12, scope: !146, inlinedAt: !255)
!255 = distinct !DILocation(line: 246, column: 25, scope: !251)
!256 = !DILocation(line: 248, column: 13, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !8, line: 246, column: 9)
!258 = !DILocation(line: 624, column: 9, scope: !259, inlinedAt: !262)
!259 = distinct !DISubprogram(name: "get_breadth_first<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder17get_breadth_firstCs2mZqlW55729_12polars_utils", scope: !261, file: !260, line: 623, type: !12, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!260 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "693deb1f54744a90d534271d3bd0b44e")
!261 = !DINamespace(name: "ThreadPoolBuilder", scope: !11)
!262 = !DILocation(line: 248, column: 37, scope: !257)
!263 = !{i8 0, i8 2}
!264 = !DILocation(line: 250, column: 53, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !8, line: 248, column: 9)
!266 = !DILocation(line: 69, column: 9, scope: !267, inlinedAt: !273)
!267 = distinct !DISubprogram(name: "new<core::ops::range::Range<usize>, rayon_core::registry::{impl#6}::new::{closure_env#0}<rayon_core::registry::DefaultSpawn>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB2_3MapINtNtNtB8_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1u_8Registry3newNtB1u_12DefaultSpawnE0E3newCs2mZqlW55729_12polars_utils", scope: !269, file: !268, line: 68, type: !12, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!268 = !DIFile(filename: "library/core/src/iter/adapters/map.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "47fd4c3c8424e034238ec6bb5a169812")
!269 = !DINamespace(name: "Map", scope: !270)
!270 = !DINamespace(name: "map", scope: !271)
!271 = !DINamespace(name: "adapters", scope: !272)
!272 = !DINamespace(name: "iter", scope: !20)
!273 = !DILocation(line: 836, column: 9, scope: !274, inlinedAt: !279)
!274 = distinct !DISubprogram(name: "map<core::ops::range::Range<usize>, (crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>), rayon_core::registry::{impl#6}::new::{closure_env#0}<rayon_core::registry::DefaultSpawn>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB1y_7StealerB2i_EENCINvMs4_NtB2m_8registryNtB3s_8Registry3newNtB3s_12DefaultSpawnE0ECs2mZqlW55729_12polars_utils", scope: !276, file: !275, line: 831, type: !12, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!275 = !DIFile(filename: "library/core/src/iter/traits/iterator.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d5544ea6028134339a685b720f104b0d")
!276 = !DINamespace(name: "Iterator", scope: !277)
!277 = !DINamespace(name: "iterator", scope: !278)
!278 = !DINamespace(name: "traits", scope: !272)
!279 = !DILocation(line: 251, column: 14, scope: !265)
!280 = !DILocation(line: 261, column: 14, scope: !265)
!281 = !DILocation(line: 261, column: 20, scope: !265)
!282 = !DILocation(line: 250, column: 14, scope: !265)
!283 = !DILocation(line: 250, column: 23, scope: !265)
!284 = !DILocation(line: 261, column: 21, scope: !265)
!285 = !DILocation(line: 263, column: 66, scope: !286)
!286 = distinct !DILexicalBlock(scope: !265, file: !8, line: 250, column: 9)
!287 = !DILocation(line: 269, column: 14, scope: !286)
!288 = !DILocation(line: 263, column: 14, scope: !286)
!289 = !DILocation(line: 263, column: 26, scope: !286)
!290 = !DILocation(line: 269, column: 21, scope: !286)
!291 = !DILocation(line: 271, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !8, line: 263, column: 9)
!293 = !DILocation(line: 272, column: 27, scope: !292)
!294 = !DILocation(line: 3029, column: 37, scope: !295, inlinedAt: !300)
!295 = distinct !DILexicalBlock(scope: !297, file: !296, line: 3024, column: 9)
!296 = !DIFile(filename: "library/alloc/src/vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "798a33fa32aec5b8561311078a20d89c")
!297 = distinct !DISubprogram(name: "len<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE3lenCs2mZqlW55729_12polars_utils", scope: !298, file: !296, line: 3023, type: !12, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!298 = !DINamespace(name: "Vec", scope: !299)
!299 = !DINamespace(name: "vec", scope: !183)
!300 = !DILocation(line: 3927, column: 30, scope: !301, inlinedAt: !307)
!301 = distinct !DILexicalBlock(scope: !302, file: !296, line: 3923, column: 13)
!302 = distinct !DILexicalBlock(scope: !303, file: !296, line: 3922, column: 13)
!303 = distinct !DILexicalBlock(scope: !304, file: !296, line: 3921, column: 13)
!304 = distinct !DILexicalBlock(scope: !305, file: !296, line: 3920, column: 13)
!305 = distinct !DISubprogram(name: "into_iter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCs2mZqlW55729_12polars_utils", scope: !306, file: !296, line: 3918, type: !12, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!306 = !DINamespace(name: "{impl#17}", scope: !299)
!307 = !DILocation(line: 272, column: 36, scope: !292)
!308 = !DILocation(line: 3029, column: 18, scope: !295, inlinedAt: !300)
!309 = !DILocation(line: 961, column: 18, scope: !310, inlinedAt: !314)
!310 = distinct !DISubprogram(name: "add<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3addCs2mZqlW55729_12polars_utils", scope: !312, file: !311, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!311 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7c03c8e0ae695174f7f10881dc49d2cb")
!312 = !DINamespace(name: "{impl#0}", scope: !313)
!313 = !DINamespace(name: "mut_ptr", scope: !62)
!314 = !DILocation(line: 3927, column: 23, scope: !301, inlinedAt: !307)
!315 = !DILocation(line: 69, column: 9, scope: !316, inlinedAt: !317)
!316 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>, fn(crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>) -> rayon_core::registry::ThreadInfo>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB2_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENvMs5_NtB2z_8registryNtB3i_10ThreadInfo3newE3newCs2mZqlW55729_12polars_utils", scope: !269, file: !268, line: 68, type: !12, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!317 = !DILocation(line: 836, column: 9, scope: !318, inlinedAt: !320)
!318 = !DILexicalBlockFile(scope: !319, file: !275, discriminator: 4)
!319 = distinct !DISubprogram(name: "map<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>, rayon_core::registry::ThreadInfo, fn(crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>) -> rayon_core::registry::ThreadInfo>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3mapNtNtB1J_8registry10ThreadInfoNvMs5_B3n_B3l_3newECs2mZqlW55729_12polars_utils", scope: !276, file: !275, line: 831, type: !12, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!320 = !DILocation(line: 272, column: 48, scope: !292)
!321 = !DILocation(line: 245, column: 9, scope: !322, inlinedAt: !327)
!322 = distinct !DILexicalBlock(scope: !324, file: !323, line: 234, column: 9)
!323 = !DIFile(filename: "library/alloc/src/vec/in_place_collect.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5328f28a8b387d303b28ba72a1ff43c1")
!324 = distinct !DISubprogram(name: "from_iter<rayon_core::registry::ThreadInfo, core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>, fn(crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>) -> rayon_core::registry::ThreadInfo>>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collectINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtB12_3job6JobRefEENvMs5_B10_BY_3newEE9from_iterCs2mZqlW55729_12polars_utils", scope: !325, file: !323, line: 232, type: !12, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!325 = !DINamespace(name: "{impl#1}", scope: !326)
!326 = !DINamespace(name: "in_place_collect", scope: !299)
!327 = !DILocation(line: 3892, column: 9, scope: !328, inlinedAt: !330)
!328 = distinct !DISubprogram(name: "from_iter<rayon_core::registry::ThreadInfo, core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>, fn(crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>) -> rayon_core::registry::ThreadInfo>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1D_8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtBK_3job6JobRefEENvMs5_BI_BG_3newEECs2mZqlW55729_12polars_utils", scope: !329, file: !296, line: 3891, type: !12, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!329 = !DINamespace(name: "{impl#16}", scope: !299)
!330 = !DILocation(line: 2104, column: 9, scope: !331, inlinedAt: !332)
!331 = distinct !DISubprogram(name: "collect<core::iter::adapters::map::Map<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>, fn(crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>) -> rayon_core::registry::ThreadInfo>, alloc::vec::Vec<rayon_core::registry::ThreadInfo, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENvMs5_NtB2x_8registryNtB3g_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3v_EECs2mZqlW55729_12polars_utils", scope: !276, file: !275, line: 2091, type: !12, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!332 = !DILocation(line: 272, column: 69, scope: !292)
!333 = !DILocation(line: 322, column: 5, scope: !286)
!334 = !DILocation(line: 273, column: 20, scope: !292)
!335 = !DILocation(line: 280, column: 9, scope: !292)
!336 = !DILocation(line: 196, column: 9, scope: !337, inlinedAt: !338)
!337 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc12alloc_zeroed", scope: !224, file: !223, line: 192, type: !12, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!338 = distinct !DILocation(line: 1240, column: 28, scope: !339, inlinedAt: !344)
!339 = distinct !DISubprogram(name: "new<rayon_core::job::JobRef>", linkageName: "_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils", scope: !341, file: !340, line: 1238, type: !12, scopeLine: 1238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!340 = !DIFile(filename: "src/deque.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/crossbeam-deque-0.8.6", checksumkind: CSK_MD5, checksum: "b8d32914b88fa199b7cde34030e7042f")
!341 = !DINamespace(name: "Block", scope: !342)
!342 = !DINamespace(name: "deque", scope: !343)
!343 = !DINamespace(name: "crossbeam_deque", scope: null)
!344 = distinct !DILocation(line: 1331, column: 35, scope: !345, inlinedAt: !347)
!345 = distinct !DISubprogram(name: "default<rayon_core::job::JobRef>", linkageName: "_RNvXsf_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_8InjectorNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs2mZqlW55729_12polars_utils", scope: !346, file: !340, line: 1330, type: !12, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!346 = !DINamespace(name: "{impl#17}", scope: !342)
!347 = !DILocation(line: 1357, column: 9, scope: !348, inlinedAt: !350)
!348 = distinct !DISubprogram(name: "new<rayon_core::job::JobRef>", linkageName: "_RNvMsg_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_8InjectorNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils", scope: !349, file: !340, line: 1356, type: !12, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!349 = !DINamespace(name: "Injector", scope: !342)
!350 = !DILocation(line: 274, column: 28, scope: !292)
!351 = !DILocation(line: 198, column: 9, scope: !337, inlinedAt: !338)
!352 = !DILocation(line: 1242, column: 12, scope: !353, inlinedAt: !344)
!353 = distinct !DILexicalBlock(scope: !339, file: !340, line: 1240, column: 9)
!354 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!355 = !DILocation(line: 1243, column: 13, scope: !353, inlinedAt: !344)
!356 = !DILocation(line: 275, column: 25, scope: !292)
!357 = !DILocation(line: 351, column: 9, scope: !358, inlinedAt: !356)
!358 = distinct !DISubprogram(name: "new<alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEE3newCs2mZqlW55729_12polars_utils", scope: !360, file: !359, line: 350, type: !12, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!359 = !DIFile(filename: "library/std/src/sync/poison/mutex.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "78bfced6bc07033bbd081e9ae0e8ed7e")
!360 = !DINamespace(name: "Mutex", scope: !361)
!361 = !DINamespace(name: "mutex", scope: !362)
!362 = !DINamespace(name: "poison", scope: !91)
!363 = !DILocation(line: 929, column: 22, scope: !364, inlinedAt: !365)
!364 = distinct !DISubprogram(name: "replace<core::option::Option<alloc::boxed::Box<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBW_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2g_NtB2i_4SyncEL_EEECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 915, type: !12, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!365 = !DILocation(line: 1901, column: 9, scope: !366, inlinedAt: !370)
!366 = distinct !DISubprogram(name: "take<alloc::boxed::Box<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB22_NtB24_4SyncEL_EE4takeCs2mZqlW55729_12polars_utils", scope: !368, file: !367, line: 1899, type: !12, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!367 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fddbcef1524c4b01c55888c6c3823b51")
!368 = !DINamespace(name: "Option", scope: !369)
!369 = !DINamespace(name: "option", scope: !20)
!370 = !DILocation(line: 554, column: 28, scope: !371, inlinedAt: !372)
!371 = distinct !DISubprogram(name: "take_panic_handler<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder18take_panic_handlerCs2mZqlW55729_12polars_utils", scope: !261, file: !260, line: 553, type: !12, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!372 = !DILocation(line: 277, column: 36, scope: !292)
!373 = !DILocation(line: 929, column: 22, scope: !374, inlinedAt: !375)
!374 = distinct !DISubprogram(name: "replace<core::option::Option<alloc::boxed::Box<(dyn core::ops::function::Fn<(usize), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2a_4SyncEL_EEECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 915, type: !12, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!375 = !DILocation(line: 1901, column: 9, scope: !376, inlinedAt: !378)
!376 = !DILexicalBlockFile(scope: !377, file: !367, discriminator: 2)
!377 = distinct !DISubprogram(name: "take<alloc::boxed::Box<(dyn core::ops::function::Fn<(usize), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1W_4SyncEL_EE4takeCs2mZqlW55729_12polars_utils", scope: !368, file: !367, line: 1899, type: !12, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!378 = !DILocation(line: 629, column: 28, scope: !379, inlinedAt: !380)
!379 = distinct !DISubprogram(name: "take_start_handler<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder18take_start_handlerCs2mZqlW55729_12polars_utils", scope: !261, file: !260, line: 628, type: !12, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!380 = !DILocation(line: 278, column: 36, scope: !292)
!381 = !DILocation(line: 929, column: 22, scope: !374, inlinedAt: !382)
!382 = !DILocation(line: 1901, column: 9, scope: !383, inlinedAt: !384)
!383 = !DILexicalBlockFile(scope: !377, file: !367, discriminator: 4)
!384 = !DILocation(line: 648, column: 27, scope: !385, inlinedAt: !386)
!385 = distinct !DISubprogram(name: "take_exit_handler<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder17take_exit_handlerCs2mZqlW55729_12polars_utils", scope: !261, file: !260, line: 647, type: !12, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!386 = !DILocation(line: 279, column: 35, scope: !292)
!387 = !DILocation(line: 422, column: 34, scope: !388, inlinedAt: !392)
!388 = distinct !DISubprogram(name: "new<rayon_core::registry::Registry>", linkageName: "_RNvMse_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE3newCs2mZqlW55729_12polars_utils", scope: !390, file: !389, line: 419, type: !12, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!389 = !DIFile(filename: "library/alloc/src/sync.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "31e6877a7610d12a2aea9713b050cee7")
!390 = !DINamespace(name: "Arc", scope: !391)
!391 = !DINamespace(name: "sync", scope: !183)
!392 = !DILocation(line: 271, column: 24, scope: !292)
!393 = !DILocation(line: 271, column: 33, scope: !292)
!394 = !DILocation(line: 930, column: 49, scope: !395, inlinedAt: !365)
!395 = distinct !DILexicalBlock(scope: !364, file: !135, line: 929, column: 9)
!396 = !DILocation(line: 930, column: 49, scope: !397, inlinedAt: !375)
!397 = distinct !DILexicalBlock(scope: !374, file: !135, line: 929, column: 9)
!398 = !DILocation(line: 930, column: 49, scope: !399, inlinedAt: !382)
!399 = distinct !DILexicalBlock(scope: !374, file: !135, line: 929, column: 9)
!400 = !DILocation(line: 99, column: 9, scope: !401, inlinedAt: !402)
!401 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc5alloc", scope: !224, file: !223, line: 95, type: !12, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!402 = distinct !DILocation(line: 210, column: 73, scope: !403, inlinedAt: !405)
!403 = distinct !DILexicalBlock(scope: !404, file: !223, line: 209, column: 13)
!404 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime", scope: !227, file: !223, line: 205, type: !12, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!405 = distinct !DILocation(line: 332, column: 9, scope: !406, inlinedAt: !407)
!406 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global10alloc_impl", scope: !227, file: !223, line: 331, type: !12, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!407 = distinct !DILocation(line: 449, column: 14, scope: !408, inlinedAt: !409)
!408 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate", scope: !232, file: !223, line: 448, type: !12, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!409 = distinct !DILocation(line: 248, column: 18, scope: !410, inlinedAt: !411)
!410 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit", scope: !182, file: !180, line: 247, type: !12, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!411 = distinct !DILocation(line: 286, column: 19, scope: !412, inlinedAt: !414)
!412 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<rayon_core::registry::Registry>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE3newCs2mZqlW55729_12polars_utils", scope: !413, file: !180, line: 284, type: !12, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!413 = !DINamespace(name: "{impl#0}", scope: !182)
!414 = distinct !DILocation(line: 422, column: 25, scope: !388, inlinedAt: !392)
!415 = !{!416}
!416 = distinct !{!416, !417, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE3newCs2mZqlW55729_12polars_utils: argument 0"}
!417 = distinct !{!417, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE3newCs2mZqlW55729_12polars_utils"}
!418 = !DILocation(line: 101, column: 9, scope: !401, inlinedAt: !402)
!419 = !DILocation(line: 248, column: 11, scope: !410, inlinedAt: !411)
!420 = !DILocation(line: 248, column: 5, scope: !410, inlinedAt: !411)
!421 = !DILocation(line: 250, column: 19, scope: !410, inlinedAt: !411)
!422 = !DILocation(line: 292, column: 5, scope: !412, inlinedAt: !414)
!423 = !DILocation(line: 284, column: 5, scope: !412, inlinedAt: !414)
!424 = !DILocation(line: 810, column: 1, scope: !425, inlinedAt: !426)
!425 = distinct !DISubprogram(name: "drop_in_place<rayon_core::registry::Terminator>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!426 = distinct !DILocation(line: 322, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !292, file: !8, line: 271, column: 9)
!428 = !DILocation(line: 289, column: 56, scope: !429, inlinedAt: !414)
!429 = distinct !DILexicalBlock(scope: !412, file: !180, line: 286, column: 9)
!430 = !DILocation(line: 426, column: 10, scope: !388, inlinedAt: !392)
!431 = !DILocation(line: 310, column: 9, scope: !432, inlinedAt: !433)
!432 = distinct !DISubprogram(name: "from_inner_in<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE13from_inner_inCs2mZqlW55729_12polars_utils", scope: !390, file: !389, line: 309, type: !12, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!433 = !DILocation(line: 293, column: 18, scope: !434, inlinedAt: !435)
!434 = distinct !DISubprogram(name: "from_inner<rayon_core::registry::Registry>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE10from_innerCs2mZqlW55729_12polars_utils", scope: !390, file: !389, line: 292, type: !12, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!435 = !DILocation(line: 427, column: 18, scope: !436, inlinedAt: !392)
!436 = distinct !DILexicalBlock(scope: !388, file: !389, line: 422, column: 9)
!437 = !DILocation(line: 283, column: 13, scope: !427)
!438 = !DILocation(line: 283, column: 21, scope: !427)
!439 = !DILocation(line: 285, column: 43, scope: !440)
!440 = distinct !DILexicalBlock(scope: !427, file: !8, line: 283, column: 9)
!441 = !DILocation(line: 3029, column: 37, scope: !442, inlinedAt: !444)
!442 = distinct !DILexicalBlock(scope: !443, file: !296, line: 3024, column: 9)
!443 = distinct !DISubprogram(name: "len<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE3lenCs2mZqlW55729_12polars_utils", scope: !298, file: !296, line: 3023, type: !12, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!444 = !DILocation(line: 3927, column: 30, scope: !445, inlinedAt: !451)
!445 = !DILexicalBlockFile(scope: !446, file: !296, discriminator: 2)
!446 = distinct !DILexicalBlock(scope: !447, file: !296, line: 3923, column: 13)
!447 = distinct !DILexicalBlock(scope: !448, file: !296, line: 3922, column: 13)
!448 = distinct !DILexicalBlock(scope: !449, file: !296, line: 3921, column: 13)
!449 = distinct !DILexicalBlock(scope: !450, file: !296, line: 3920, column: 13)
!450 = distinct !DISubprogram(name: "into_iter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCs2mZqlW55729_12polars_utils", scope: !306, file: !296, line: 3918, type: !12, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!451 = !DILocation(line: 285, column: 51, scope: !440)
!452 = !DILocation(line: 3029, column: 18, scope: !442, inlinedAt: !444)
!453 = !DILocation(line: 961, column: 18, scope: !454, inlinedAt: !455)
!454 = distinct !DISubprogram(name: "add<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3addCs2mZqlW55729_12polars_utils", scope: !312, file: !311, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!455 = !DILocation(line: 3927, column: 23, scope: !445, inlinedAt: !451)
!456 = !DILocation(line: 285, column: 67, scope: !440)
!457 = !DILocation(line: 3029, column: 37, scope: !458, inlinedAt: !460)
!458 = distinct !DILexicalBlock(scope: !459, file: !296, line: 3024, column: 9)
!459 = distinct !DISubprogram(name: "len<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE3lenCs2mZqlW55729_12polars_utils", scope: !298, file: !296, line: 3023, type: !12, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!460 = distinct !DILocation(line: 3927, column: 30, scope: !461, inlinedAt: !466)
!461 = distinct !DILexicalBlock(scope: !462, file: !296, line: 3923, column: 13)
!462 = distinct !DILexicalBlock(scope: !463, file: !296, line: 3922, column: 13)
!463 = distinct !DILexicalBlock(scope: !464, file: !296, line: 3921, column: 13)
!464 = distinct !DILexicalBlock(scope: !465, file: !296, line: 3920, column: 13)
!465 = distinct !DISubprogram(name: "into_iter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvXsf_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iterCs2mZqlW55729_12polars_utils", scope: !306, file: !296, line: 3918, type: !12, scopeLine: 3918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!466 = distinct !DILocation(line: 631, column: 30, scope: !467, inlinedAt: !468)
!467 = distinct !DISubprogram(name: "zip<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3zipINtB8_3VecINtBU_7StealerB1E_EEECs2mZqlW55729_12polars_utils", scope: !276, file: !275, line: 626, type: !12, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!468 = distinct !DILocation(line: 285, column: 63, scope: !440)
!469 = !DILocation(line: 3029, column: 18, scope: !458, inlinedAt: !460)
!470 = !DILocation(line: 961, column: 18, scope: !471, inlinedAt: !472)
!471 = distinct !DISubprogram(name: "add<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3addCs2mZqlW55729_12polars_utils", scope: !312, file: !311, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!472 = distinct !DILocation(line: 3927, column: 23, scope: !461, inlinedAt: !466)
!473 = !DILocation(line: 155, column: 13, scope: !474, inlinedAt: !478)
!474 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E3newCs2mZqlW55729_12polars_utils", scope: !476, file: !475, line: 154, type: !12, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!475 = !DIFile(filename: "library/core/src/iter/adapters/zip.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b799775cfe5a249b4485e2512707a77")
!476 = !DINamespace(name: "{impl#3}", scope: !477)
!477 = !DINamespace(name: "zip", scope: !271)
!478 = distinct !DILocation(line: 24, column: 9, scope: !479, inlinedAt: !481)
!479 = distinct !DISubprogram(name: "new<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBU_INtB1K_7StealerB2u_EEE3newCs2mZqlW55729_12polars_utils", scope: !480, file: !475, line: 23, type: !12, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!480 = !DINamespace(name: "Zip", scope: !477)
!481 = distinct !DILocation(line: 631, column: 9, scope: !467, inlinedAt: !468)
!482 = !DILocation(line: 165, column: 17, scope: !483, inlinedAt: !484)
!483 = distinct !DISubprogram(name: "next<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils", scope: !476, file: !475, line: 164, type: !12, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!484 = distinct !DILocation(line: 85, column: 9, scope: !485, inlinedAt: !487)
!485 = distinct !DISubprogram(name: "next<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !486, file: !475, line: 84, type: !12, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!486 = !DINamespace(name: "{impl#1}", scope: !477)
!487 = distinct !DILocation(line: 80, column: 27, scope: !488, inlinedAt: !492)
!488 = distinct !DISubprogram(name: "next<core::iter::adapters::zip::Zip<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !490, file: !489, line: 79, type: !12, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!489 = !DIFile(filename: "library/core/src/iter/adapters/enumerate.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "be8a5e8de3bc6e50de6cd50459716008")
!490 = !DINamespace(name: "{impl#1}", scope: !491)
!491 = !DINamespace(name: "enumerate", scope: !271)
!492 = distinct !DILocation(line: 285, column: 43, scope: !493)
!493 = distinct !DILexicalBlock(scope: !440, file: !8, line: 285, column: 9)
!494 = !{!495, !497, !498, !500, !501, !503}
!495 = distinct !{!495, !496, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils: argument 0"}
!496 = distinct !{!496, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils"}
!497 = distinct !{!497, !496, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils: argument 1:pre.rot"}
!498 = distinct !{!498, !499, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 0"}
!499 = distinct !{!499, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils"}
!500 = distinct !{!500, !499, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1:pre.rot"}
!501 = distinct !{!501, !502, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 0"}
!502 = distinct !{!502, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils"}
!503 = distinct !{!503, !502, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1:pre.rot"}
!504 = !DILocation(line: 1717, column: 9, scope: !505, inlinedAt: !509)
!505 = distinct !DISubprogram(name: "eq<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtB9_3cmp9PartialEq2eqCs2mZqlW55729_12polars_utils", scope: !507, file: !506, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!506 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!507 = !DINamespace(name: "{impl#15}", scope: !508)
!508 = !DINamespace(name: "non_null", scope: !62)
!509 = distinct !DILocation(line: 223, column: 16, scope: !510, inlinedAt: !514)
!510 = distinct !DISubprogram(name: "next<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !512, file: !511, line: 213, type: !12, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!511 = !DIFile(filename: "library/alloc/src/vec/into_iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "67afe9548c17103ef643b1b8003217a3")
!512 = !DINamespace(name: "{impl#6}", scope: !513)
!513 = !DINamespace(name: "into_iter", scope: !299)
!514 = distinct !DILocation(line: 165, column: 28, scope: !483, inlinedAt: !484)
!515 = !DILocation(line: 223, column: 16, scope: !510, inlinedAt: !514)
!516 = !{!517}
!517 = distinct !{!517, !502, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1"}
!518 = !DILocation(line: 285, column: 43, scope: !493)
!519 = !{!520}
!520 = distinct !{!520, !499, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1"}
!521 = !DILocation(line: 80, column: 27, scope: !488, inlinedAt: !492)
!522 = !{!523}
!523 = distinct !{!523, !496, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils: argument 1"}
!524 = !DILocation(line: 85, column: 9, scope: !485, inlinedAt: !487)
!525 = !{!526}
!526 = distinct !{!526, !527, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1"}
!527 = distinct !{!527, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils"}
!528 = !DILocation(line: 165, column: 28, scope: !483, inlinedAt: !484)
!529 = !DILocation(line: 659, column: 28, scope: !530, inlinedAt: !532)
!530 = distinct !DISubprogram(name: "add<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE3addCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!531 = !DINamespace(name: "NonNull", scope: !508)
!532 = distinct !DILocation(line: 227, column: 37, scope: !533, inlinedAt: !514)
!533 = distinct !DILexicalBlock(scope: !510, file: !511, line: 226, column: 13)
!534 = !DILocation(line: 227, column: 13, scope: !533, inlinedAt: !514)
!535 = !{!526, !523, !520, !517}
!536 = !{!537, !495, !498, !501}
!537 = distinct !{!537, !527, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 0"}
!538 = !DILocation(line: 1721, column: 9, scope: !539, inlinedAt: !540)
!539 = distinct !DISubprogram(name: "read<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 1682, type: !12, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!540 = distinct !DILocation(line: 990, column: 18, scope: !541, inlinedAt: !542)
!541 = distinct !DISubprogram(name: "read<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE4readCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 985, type: !12, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!542 = distinct !DILocation(line: 230, column: 27, scope: !543, inlinedAt: !514)
!543 = distinct !DILexicalBlock(scope: !510, file: !511, line: 214, column: 9)
!544 = !{!526, !495, !523, !498, !520, !501, !517}
!545 = !DILocation(line: 2778, column: 15, scope: !546, inlinedAt: !548)
!546 = distinct !DISubprogram(name: "branch<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>>", linkageName: "_RNvXsJ_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !547, file: !367, line: 2777, type: !12, scopeLine: 2777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!547 = !DINamespace(name: "{impl#47}", scope: !369)
!548 = distinct !DILocation(line: 165, column: 21, scope: !483, inlinedAt: !484)
!549 = !DILocation(line: 2778, column: 9, scope: !546, inlinedAt: !548)
!550 = !DILocation(line: 2779, column: 18, scope: !546, inlinedAt: !548)
!551 = !{!495, !523, !498, !520, !501, !517}
!552 = !DILocation(line: 165, column: 21, scope: !553, inlinedAt: !484)
!553 = distinct !DILexicalBlock(scope: !554, file: !475, line: 165, column: 21)
!554 = distinct !DILexicalBlock(scope: !483, file: !475, line: 165, column: 34)
!555 = !{!556}
!556 = distinct !{!556, !557, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 0"}
!557 = distinct !{!557, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils"}
!558 = !DILocation(line: 166, column: 28, scope: !559, inlinedAt: !484)
!559 = distinct !DILexicalBlock(scope: !483, file: !475, line: 165, column: 13)
!560 = !DILocation(line: 28, column: 18, scope: !561, inlinedAt: !563)
!561 = distinct !DILexicalBlock(scope: !562, file: !511, line: 26, column: 33)
!562 = distinct !DISubprogram(name: "next<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>", linkageName: "_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !512, file: !511, line: 213, type: !12, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!592 = !DINamespace(name: "{impl#41}", scope: !391)
!593 = distinct !DILocation(line: 810, column: 1, scope: !584, inlinedAt: !585)
!594 = !{!581, !575, !571}
!595 = !DILocation(line: 3956, column: 24, scope: !596, inlinedAt: !597)
!596 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3950, type: !12, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!597 = distinct !DILocation(line: 3193, column: 26, scope: !598, inlinedAt: !599)
!598 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !77, file: !71, line: 3191, type: !12, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!599 = distinct !DILocation(line: 2814, column: 32, scope: !591, inlinedAt: !593)
!600 = !{!581, !575, !571, !495, !523, !498, !520, !501, !517}
!601 = !DILocation(line: 2814, column: 12, scope: !591, inlinedAt: !593)
!602 = !DILocation(line: 4387, column: 24, scope: !603, inlinedAt: !604)
!603 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4sync6atomic5fence", scope: !72, file: !71, line: 4383, type: !12, scopeLine: 4383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!604 = distinct !DILocation(line: 64, column: 9, scope: !591, inlinedAt: !593)
!605 = !DILocation(line: 2857, column: 18, scope: !591, inlinedAt: !593)
!606 = !DILocation(line: 316, column: 9, scope: !440)
!607 = !DILocation(line: 659, column: 28, scope: !608, inlinedAt: !609)
!608 = distinct !DISubprogram(name: "add<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE3addCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 651, type: !12, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!609 = distinct !DILocation(line: 227, column: 37, scope: !610, inlinedAt: !563)
!610 = distinct !DILexicalBlock(scope: !562, file: !511, line: 226, column: 13)
!611 = !DILocation(line: 227, column: 13, scope: !610, inlinedAt: !563)
!612 = !DILocation(line: 1721, column: 9, scope: !613, inlinedAt: !614)
!613 = distinct !DISubprogram(name: "read<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 1682, type: !12, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!614 = distinct !DILocation(line: 990, column: 18, scope: !615, inlinedAt: !616)
!615 = distinct !DISubprogram(name: "read<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE4readCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 985, type: !12, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!616 = distinct !DILocation(line: 230, column: 27, scope: !617, inlinedAt: !563)
!617 = distinct !DILexicalBlock(scope: !562, file: !511, line: 214, column: 9)
!618 = !{!556, !495, !523, !498, !520, !501, !517}
!619 = !DILocation(line: 285, column: 22, scope: !493)
!620 = !DILocation(line: 167, column: 19, scope: !621, inlinedAt: !484)
!621 = distinct !DILexicalBlock(scope: !559, file: !475, line: 166, column: 13)
!622 = !DILocation(line: 81, column: 17, scope: !623, inlinedAt: !492)
!623 = distinct !DILexicalBlock(scope: !488, file: !489, line: 80, column: 9)
!624 = !{!501}
!625 = !DILocation(line: 82, column: 9, scope: !626, inlinedAt: !492)
!626 = distinct !DILexicalBlock(scope: !623, file: !489, line: 81, column: 9)
!627 = !DILocation(line: 285, column: 30, scope: !493)
!628 = !DILocation(line: 286, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !493, file: !8, line: 285, column: 9)
!630 = !DILocation(line: 287, column: 23, scope: !629)
!631 = !DILocation(line: 287, column: 31, scope: !629)
!632 = !DILocation(line: 810, column: 1, scope: !633, inlinedAt: !634)
!633 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!634 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !636)
!635 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::zip::Zip<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!636 = distinct !DILocation(line: 810, column: 1, scope: !637, inlinedAt: !638)
!637 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::enumerate::Enumerate<core::iter::adapters::zip::Zip<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1H_INtB2x_7StealerB3h_EEEEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!638 = distinct !DILocation(line: 316, column: 9, scope: !440)
!639 = !DILocation(line: 810, column: 1, scope: !640, inlinedAt: !641)
!640 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::IntoIter<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!641 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !636)
!642 = !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !636)
!643 = !DILocation(line: 810, column: 1, scope: !640, inlinedAt: !644)
!644 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !636)
!645 = !DILocation(line: 321, column: 12, scope: !440)
!646 = !DILocation(line: 321, column: 9, scope: !440)
!647 = !DILocation(line: 322, column: 5, scope: !427)
!648 = !DILocation(line: 322, column: 5, scope: !292)
!649 = !DILocation(line: 322, column: 5, scope: !265)
!650 = !DILocation(line: 322, column: 5, scope: !257)
!651 = !DILocation(line: 322, column: 6, scope: !251)
!652 = !DILocation(line: 316, column: 9, scope: !493)
!653 = !DILocation(line: 581, column: 9, scope: !654, inlinedAt: !655)
!654 = distinct !DISubprogram(name: "get_stack_size<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder14get_stack_sizeCs2mZqlW55729_12polars_utils", scope: !261, file: !260, line: 580, type: !12, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!655 = !DILocation(line: 288, column: 37, scope: !629)
!656 = !DILocation(line: 444, column: 20, scope: !657, inlinedAt: !658)
!657 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<rayon_core::registry::Registry>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE6as_refCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 440, type: !12, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!658 = !DILocation(line: 2110, column: 27, scope: !659, inlinedAt: !660)
!659 = distinct !DISubprogram(name: "inner<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE5innerCs2mZqlW55729_12polars_utils", scope: !390, file: !389, line: 2104, type: !12, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!660 = !DILocation(line: 2394, column: 29, scope: !661, inlinedAt: !663)
!661 = distinct !DISubprogram(name: "clone<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2mZqlW55729_12polars_utils", scope: !662, file: !389, line: 2382, type: !12, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!662 = !DINamespace(name: "{impl#32}", scope: !391)
!663 = !DILocation(line: 289, column: 27, scope: !629)
!664 = !DILocation(line: 3937, column: 24, scope: !665, inlinedAt: !666)
!665 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3933, type: !12, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!666 = !DILocation(line: 3162, column: 26, scope: !667, inlinedAt: !668)
!667 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !77, file: !71, line: 3160, type: !12, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!668 = !DILocation(line: 2394, column: 44, scope: !661, inlinedAt: !663)
!669 = !DILocation(line: 2411, column: 12, scope: !670, inlinedAt: !663)
!670 = distinct !DILexicalBlock(scope: !661, file: !389, line: 2394, column: 9)
!671 = !DILocation(line: 2415, column: 38, scope: !670, inlinedAt: !663)
!672 = !DILocation(line: 290, column: 17, scope: !629)
!673 = !DILocation(line: 286, column: 26, scope: !629)
!674 = !DILocation(line: 293, column: 13, scope: !629)
!675 = !DILocation(line: 295, column: 16, scope: !676)
!676 = distinct !DILexicalBlock(scope: !629, file: !8, line: 286, column: 13)
!677 = !DILocation(line: 2412, column: 13, scope: !670, inlinedAt: !663)
!678 = !DILocation(line: 295, column: 30, scope: !676)
!679 = !DILocation(line: 313, column: 63, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !8, line: 313, column: 71)
!681 = !DILocation(line: 313, column: 57, scope: !680)
!682 = !DILocation(line: 559, column: 14, scope: !683, inlinedAt: !688)
!683 = distinct !DISubprogram(name: "get<*const rayon_core::registry::WorkerThread>", linkageName: "_RNvMs3_NtNtCsh8eZTKRCwoO_3std6thread5localINtB5_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellPNtNtCs4BcJZGCY6Ba_10rayon_core8registry12WorkerThreadEE3getCs2mZqlW55729_12polars_utils", scope: !685, file: !684, line: 555, type: !12, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!684 = !DIFile(filename: "library/std/src/thread/local.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "a9256a1d70f734e1147910659b28fa84")
!685 = !DINamespace(name: "LocalKey", scope: !686)
!686 = !DINamespace(name: "local", scope: !687)
!687 = !DINamespace(name: "thread", scope: !30)
!688 = !DILocation(line: 703, column: 29, scope: !689, inlinedAt: !691)
!689 = distinct !DISubprogram(name: "current", linkageName: "_RNvMs8_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_12WorkerThread7current", scope: !690, file: !8, line: 702, type: !12, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!690 = !DINamespace(name: "WorkerThread", scope: !10)
!691 = !DILocation(line: 296, column: 21, scope: !676)
!692 = !DILocation(line: 304, column: 60, scope: !676)
!693 = !DILocation(line: 304, column: 79, scope: !676)
!694 = !DILocation(line: 297, column: 28, scope: !676)
!695 = !DILocation(line: 316, column: 9, scope: !629)
!696 = !DILocation(line: 304, column: 85, scope: !676)
!697 = !DILocation(line: 99, column: 9, scope: !401, inlinedAt: !698)
!698 = distinct !DILocation(line: 210, column: 73, scope: !403, inlinedAt: !699)
!699 = distinct !DILocation(line: 332, column: 9, scope: !406, inlinedAt: !700)
!700 = distinct !DILocation(line: 449, column: 14, scope: !408, inlinedAt: !701)
!701 = distinct !DILocation(line: 248, column: 18, scope: !410, inlinedAt: !702)
!702 = distinct !DILocation(line: 286, column: 19, scope: !703, inlinedAt: !704)
!703 = distinct !DISubprogram(name: "new<rayon_core::registry::WorkerThread>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs4BcJZGCY6Ba_10rayon_core8registry12WorkerThreadE3newCs2mZqlW55729_12polars_utils", scope: !413, file: !180, line: 284, type: !12, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!704 = distinct !DILocation(line: 304, column: 51, scope: !676)
!705 = !{!706}
!706 = distinct !{!706, !707, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs4BcJZGCY6Ba_10rayon_core8registry12WorkerThreadE3newCs2mZqlW55729_12polars_utils: argument 0"}
!707 = distinct !{!707, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs4BcJZGCY6Ba_10rayon_core8registry12WorkerThreadE3newCs2mZqlW55729_12polars_utils"}
!708 = !DILocation(line: 101, column: 9, scope: !401, inlinedAt: !698)
!709 = !DILocation(line: 248, column: 11, scope: !410, inlinedAt: !702)
!710 = !DILocation(line: 248, column: 5, scope: !410, inlinedAt: !702)
!711 = !DILocation(line: 250, column: 19, scope: !410, inlinedAt: !702)
!712 = !DILocation(line: 292, column: 5, scope: !703, inlinedAt: !704)
!713 = !DILocation(line: 284, column: 5, scope: !703, inlinedAt: !704)
!714 = !DILocation(line: 289, column: 56, scope: !715, inlinedAt: !704)
!715 = distinct !DILexicalBlock(scope: !703, file: !180, line: 286, column: 9)
!716 = !DILocation(line: 304, column: 86, scope: !676)
!717 = !DILocation(line: 307, column: 21, scope: !718)
!718 = distinct !DILexicalBlock(scope: !676, file: !8, line: 304, column: 17)
!719 = !DILocation(line: 444, column: 20, scope: !657, inlinedAt: !720)
!720 = !DILocation(line: 2110, column: 27, scope: !721, inlinedAt: !722)
!721 = !DILexicalBlockFile(scope: !659, file: !389, discriminator: 2)
!722 = !DILocation(line: 2428, column: 15, scope: !723, inlinedAt: !725)
!723 = distinct !DISubprogram(name: "deref<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2mZqlW55729_12polars_utils", scope: !724, file: !389, line: 2427, type: !12, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!724 = !DINamespace(name: "{impl#34}", scope: !391)
!725 = !DILocation(line: 308, column: 33, scope: !718)
!726 = !DILocation(line: 1841, column: 86, scope: !727, inlinedAt: !728)
!727 = distinct !DISubprogram(name: "as_slice<rayon_core::registry::ThreadInfo, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoE8as_sliceCs2mZqlW55729_12polars_utils", scope: !298, file: !296, line: 1824, type: !12, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!728 = !DILocation(line: 3756, column: 14, scope: !729, inlinedAt: !731)
!729 = distinct !DISubprogram(name: "deref<rayon_core::registry::ThreadInfo, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2mZqlW55729_12polars_utils", scope: !730, file: !296, line: 3755, type: !12, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!730 = !DINamespace(name: "{impl#9}", scope: !299)
!731 = !DILocation(line: 3831, column: 23, scope: !732, inlinedAt: !734)
!732 = distinct !DISubprogram(name: "index<rayon_core::registry::ThreadInfo, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCs2mZqlW55729_12polars_utils", scope: !733, file: !296, line: 3830, type: !12, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!733 = !DINamespace(name: "{impl#14}", scope: !299)
!734 = !DILocation(line: 308, column: 54, scope: !718)
!735 = !DILocation(line: 272, column: 10, scope: !736, inlinedAt: !741)
!736 = distinct !DISubprogram(name: "index<rayon_core::registry::ThreadInfo>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoE5indexCs2mZqlW55729_12polars_utils", scope: !738, file: !737, line: 270, type: !12, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!737 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!738 = !DINamespace(name: "{impl#2}", scope: !739)
!739 = !DINamespace(name: "index", scope: !740)
!740 = !DINamespace(name: "slice", scope: !20)
!741 = !DILocation(line: 19, column: 15, scope: !742, inlinedAt: !744)
!742 = distinct !DISubprogram(name: "index<rayon_core::registry::ThreadInfo, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoINtNtNtB6_3ops5index5IndexjE5indexCs2mZqlW55729_12polars_utils", scope: !743, file: !737, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!743 = !DINamespace(name: "{impl#0}", scope: !739)
!744 = !DILocation(line: 3831, column: 9, scope: !732, inlinedAt: !734)
!745 = !DILocation(line: 614, column: 9, scope: !746, inlinedAt: !750)
!746 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, rayon_core::registry::ThreadInfo>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoECs2mZqlW55729_12polars_utils", scope: !748, file: !747, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!747 = !DIFile(filename: "library/alloc/src/raw_vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "574f79ffb8958f4ee3ea71272af6c6ad")
!748 = !DINamespace(name: "RawVecInner", scope: !749)
!749 = !DINamespace(name: "raw_vec", scope: !183)
!750 = !DILocation(line: 609, column: 14, scope: !751, inlinedAt: !752)
!751 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, rayon_core::registry::ThreadInfo>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoECs2mZqlW55729_12polars_utils", scope: !748, file: !747, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!752 = !DILocation(line: 296, column: 20, scope: !753, inlinedAt: !755)
!753 = distinct !DISubprogram(name: "ptr<rayon_core::registry::ThreadInfo, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoE3ptrCs2mZqlW55729_12polars_utils", scope: !754, file: !747, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!754 = !DINamespace(name: "RawVec", scope: !749)
!755 = !DILocation(line: 1942, column: 18, scope: !756, inlinedAt: !757)
!756 = distinct !DISubprogram(name: "as_ptr<rayon_core::registry::ThreadInfo, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoE6as_ptrCs2mZqlW55729_12polars_utils", scope: !298, file: !296, line: 1939, type: !12, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!757 = !DILocation(line: 1841, column: 76, scope: !727, inlinedAt: !728)
!758 = !DILocation(line: 308, column: 32, scope: !718)
!759 = !DILocation(line: 263, column: 25, scope: !760, inlinedAt: !764)
!760 = distinct !DISubprogram(name: "set", linkageName: "_RNvXs4_NtCs4BcJZGCY6Ba_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set", scope: !762, file: !761, line: 262, type: !12, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!761 = !DIFile(filename: "src/latch.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0", checksumkind: CSK_MD5, checksum: "12635f94668e2ec38d6ff2844988745e")
!762 = !DINamespace(name: "{impl#6}", scope: !763)
!763 = !DINamespace(name: "latch", scope: !11)
!764 = distinct !DILocation(line: 308, column: 21, scope: !718)
!765 = !DILocation(line: 263, column: 35, scope: !760, inlinedAt: !764)
!766 = !{!767}
!767 = distinct !{!767, !768, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs2mZqlW55729_12polars_utils: argument 0"}
!768 = distinct !{!768, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs2mZqlW55729_12polars_utils"}
!769 = !DILocation(line: 263, column: 42, scope: !760, inlinedAt: !764)
!770 = !DILocation(line: 1231, column: 15, scope: !771, inlinedAt: !775)
!771 = distinct !DISubprogram(name: "unwrap<std::sync::poison::mutex::MutexGuard<bool>, std::sync::poison::PoisonError<std::sync::poison::mutex::MutexGuard<bool>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCs2mZqlW55729_12polars_utils", scope: !773, file: !772, line: 1227, type: !12, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!772 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!773 = !DINamespace(name: "Result", scope: !774)
!774 = !DINamespace(name: "result", scope: !20)
!775 = distinct !DILocation(line: 263, column: 42, scope: !760, inlinedAt: !764)
!776 = !{i64 0, i64 2}
!777 = !DILocation(line: 1231, column: 9, scope: !771, inlinedAt: !775)
!778 = !DILocation(line: 1233, column: 17, scope: !771, inlinedAt: !775)
!779 = !{i64 4}
!780 = !DILocation(line: 1233, column: 23, scope: !781, inlinedAt: !775)
!781 = distinct !DILexicalBlock(scope: !771, file: !772, line: 1233, column: 13)
!782 = !DILocation(line: 1233, column: 86, scope: !771, inlinedAt: !775)
!783 = !DILocation(line: 1227, column: 5, scope: !771, inlinedAt: !775)
!784 = !DILocation(line: 1232, column: 16, scope: !771, inlinedAt: !775)
!785 = !DILocation(line: 263, column: 49, scope: !760, inlinedAt: !764)
!786 = !DILocation(line: 2447, column: 9, scope: !787, inlinedAt: !791)
!787 = distinct !DISubprogram(name: "get<bool>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellbE3getCs2mZqlW55729_12polars_utils", scope: !789, file: !788, line: 2443, type: !12, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!788 = !DIFile(filename: "library/core/src/cell.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b26dc07b7a3365bdb6c33c2b1762988")
!789 = !DINamespace(name: "UnsafeCell", scope: !790)
!790 = !DINamespace(name: "cell", scope: !20)
!791 = distinct !DILocation(line: 736, column: 39, scope: !792, inlinedAt: !794)
!792 = distinct !DISubprogram(name: "deref_mut<bool>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCs2mZqlW55729_12polars_utils", scope: !793, file: !359, line: 735, type: !12, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!793 = !DINamespace(name: "{impl#13}", scope: !361)
!794 = distinct !DILocation(line: 264, column: 9, scope: !795, inlinedAt: !764)
!795 = distinct !DILexicalBlock(scope: !760, file: !761, line: 263, column: 9)
!796 = !DILocation(line: 264, column: 9, scope: !795, inlinedAt: !764)
!797 = !DILocation(line: 265, column: 9, scope: !795, inlinedAt: !764)
!798 = !DILocation(line: 265, column: 19, scope: !795, inlinedAt: !764)
!799 = !DILocation(line: 266, column: 5, scope: !760, inlinedAt: !764)
!800 = !DILocation(line: 745, column: 13, scope: !801, inlinedAt: !803)
!801 = distinct !DISubprogram(name: "drop<bool>", linkageName: "_RNvXsc_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !802, file: !359, line: 743, type: !74, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!802 = !DINamespace(name: "{impl#14}", scope: !361)
!803 = distinct !DILocation(line: 810, column: 1, scope: !804, inlinedAt: !805)
!804 = distinct !DISubprogram(name: "drop_in_place<std::sync::poison::mutex::MutexGuard<bool>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!805 = distinct !DILocation(line: 266, column: 5, scope: !760, inlinedAt: !764)
!806 = !DILocation(line: 129, column: 13, scope: !807, inlinedAt: !810)
!807 = distinct !DISubprogram(name: "done", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done", scope: !809, file: !808, line: 128, type: !74, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!808 = !DIFile(filename: "library/std/src/sync/poison.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "2e3c11b46f6d3701d7040e42c871708c")
!809 = !DINamespace(name: "Flag", scope: !362)
!810 = distinct !DILocation(line: 745, column: 30, scope: !801, inlinedAt: !803)
!811 = !DILocation(line: 3904, column: 24, scope: !812, inlinedAt: !813)
!812 = distinct !DISubprogram(name: "atomic_load<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadjECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3900, type: !12, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!813 = distinct !DILocation(line: 2870, column: 26, scope: !814, inlinedAt: !815)
!814 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !77, file: !71, line: 2868, type: !12, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!815 = distinct !DILocation(line: 464, column: 31, scope: !816, inlinedAt: !818)
!816 = distinct !DISubprogram(name: "count_is_zero", linkageName: "_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count13count_is_zero", scope: !817, file: !28, line: 463, type: !12, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!817 = !DINamespace(name: "panic_count", scope: !29)
!818 = distinct !DILocation(line: 616, column: 6, scope: !819, inlinedAt: !820)
!819 = distinct !DISubprogram(name: "panicking", linkageName: "_RNvNtCsh8eZTKRCwoO_3std9panicking9panicking", scope: !29, file: !28, line: 615, type: !12, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!820 = distinct !DILocation(line: 221, column: 5, scope: !821, inlinedAt: !824)
!821 = distinct !DISubprogram(name: "panicking", linkageName: "_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9panicking", scope: !823, file: !822, line: 220, type: !12, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!822 = !DIFile(filename: "library/std/src/thread/functions.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d7f5d2951993e9138881f2d1e8304c28")
!823 = !DINamespace(name: "functions", scope: !687)
!824 = distinct !DILocation(line: 129, column: 32, scope: !807, inlinedAt: !810)
!825 = !DILocation(line: 464, column: 12, scope: !816, inlinedAt: !818)
!826 = !DILocation(line: 476, column: 13, scope: !816, inlinedAt: !818)
!827 = !DILocation(line: 129, column: 32, scope: !807, inlinedAt: !810)
!828 = !DILocation(line: 3889, column: 24, scope: !829, inlinedAt: !830)
!829 = distinct !DISubprogram(name: "atomic_store<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storehECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3885, type: !12, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!830 = distinct !DILocation(line: 771, column: 13, scope: !831, inlinedAt: !832)
!831 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !77, file: !71, line: 767, type: !12, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!832 = distinct !DILocation(line: 130, column: 25, scope: !807, inlinedAt: !810)
!833 = !DILocation(line: 129, column: 9, scope: !807, inlinedAt: !810)
!834 = !DILocation(line: 3922, column: 24, scope: !835, inlinedAt: !836)
!835 = distinct !DISubprogram(name: "atomic_swap<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swapmECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3916, type: !12, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!836 = distinct !DILocation(line: 2927, column: 26, scope: !837, inlinedAt: !838)
!837 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4swap", scope: !77, file: !71, line: 2925, type: !12, scopeLine: 2925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!838 = distinct !DILocation(line: 90, column: 23, scope: !839, inlinedAt: !844)
!839 = distinct !DISubprogram(name: "unlock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex6unlock", scope: !841, file: !840, line: 89, type: !12, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!840 = !DIFile(filename: "library/std/src/sys/sync/mutex/futex.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "28fe35bad6ff340af707b997fcc6da8c")
!841 = !DINamespace(name: "Mutex", scope: !842)
!842 = !DINamespace(name: "futex", scope: !843)
!843 = !DINamespace(name: "mutex", scope: !84)
!844 = distinct !DILocation(line: 746, column: 29, scope: !801, inlinedAt: !803)
!845 = !DILocation(line: 90, column: 12, scope: !839, inlinedAt: !844)
!846 = !DILocation(line: 95, column: 18, scope: !839, inlinedAt: !844)
!847 = !DILocation(line: 262, column: 5, scope: !760, inlinedAt: !764)
!848 = !{!849}
!849 = distinct !{!849, !502, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1o_INtB2e_7StealerB2Y_EEEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1:h.rot"}
!850 = !{!851}
!851 = distinct !{!851, !499, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBW_INtB1M_7StealerB2w_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1:h.rot"}
!852 = !{!853}
!853 = distinct !{!853, !496, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBX_INtB1N_7StealerB2x_EEEINtB5_7ZipImplBW_B3e_E4nextCs2mZqlW55729_12polars_utils: argument 1:h.rot"}
!854 = !{!495, !853, !498, !851, !501, !849}
!855 = !DILocation(line: 28, column: 18, scope: !856, inlinedAt: !514)
!856 = distinct !DILexicalBlock(scope: !510, file: !511, line: 26, column: 33)
!857 = !{!858, !853, !851, !849}
!858 = distinct !{!858, !527, !"_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils: argument 1:h.rot"}
!859 = !DILocation(line: 810, column: 1, scope: !633, inlinedAt: !860)
!860 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !861)
!861 = distinct !DILocation(line: 810, column: 1, scope: !637, inlinedAt: !862)
!862 = distinct !DILocation(line: 316, column: 9, scope: !440)
!863 = !DILocation(line: 810, column: 1, scope: !640, inlinedAt: !864)
!864 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !861)
!865 = !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !861)
!866 = !DILocation(line: 810, column: 1, scope: !640, inlinedAt: !867)
!867 = distinct !DILocation(line: 810, column: 1, scope: !635, inlinedAt: !861)
!868 = !DILocation(line: 313, column: 69, scope: !680)
!869 = !DILocation(line: 313, column: 29, scope: !680)
!870 = !DILocation(line: 313, column: 20, scope: !680)
!871 = !DILocation(line: 314, column: 24, scope: !680)
!872 = !DILocation(line: 0, scope: !873)
!873 = !DILexicalBlockFile(scope: !493, file: !874, discriminator: 0)
!874 = !DIFile(filename: "crates/polars-utils/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "166f19075a2797604bb6b50c0b859353")
!875 = !DILocation(line: 810, column: 1, scope: !425, inlinedAt: !876)
!876 = distinct !DILocation(line: 322, column: 5, scope: !427)
!877 = !{!878}
!878 = distinct !{!878, !879, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils: argument 0"}
!879 = distinct !{!879, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils"}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils: argument 0"}
!882 = distinct !{!882, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils"}
!883 = !DILocation(line: 810, column: 1, scope: !884, inlinedAt: !885)
!884 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<rayon_core::registry::Registry, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!885 = distinct !DILocation(line: 322, column: 5, scope: !292)
!886 = !DILocation(line: 444, column: 20, scope: !887, inlinedAt: !888)
!887 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<rayon_core::registry::Registry>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEE6as_refCs2mZqlW55729_12polars_utils", scope: !531, file: !506, line: 440, type: !12, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!888 = distinct !DILocation(line: 2110, column: 27, scope: !889, inlinedAt: !890)
!889 = distinct !DISubprogram(name: "inner<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE5innerCs2mZqlW55729_12polars_utils", scope: !390, file: !389, line: 2104, type: !12, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!890 = distinct !DILocation(line: 2814, column: 17, scope: !891, inlinedAt: !892)
!891 = distinct !DISubprogram(name: "drop<rayon_core::registry::Registry, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !592, file: !389, line: 2810, type: !12, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!892 = distinct !DILocation(line: 810, column: 1, scope: !884, inlinedAt: !885)
!893 = !{!881, !878}
!894 = !DILocation(line: 3956, column: 24, scope: !895, inlinedAt: !896)
!895 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 3950, type: !12, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!896 = distinct !DILocation(line: 3193, column: 26, scope: !897, inlinedAt: !898)
!897 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !77, file: !71, line: 3191, type: !12, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!898 = distinct !DILocation(line: 2814, column: 32, scope: !891, inlinedAt: !892)
!899 = !DILocation(line: 2814, column: 12, scope: !891, inlinedAt: !892)
!900 = !DILocation(line: 4387, column: 24, scope: !603, inlinedAt: !901)
!901 = distinct !DILocation(line: 64, column: 9, scope: !891, inlinedAt: !892)
!902 = !DILocation(line: 2857, column: 18, scope: !891, inlinedAt: !892)
!903 = !{!904}
!904 = distinct !{!904, !905, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils: argument 0"}
!905 = distinct !{!905, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils"}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils: argument 0"}
!908 = distinct !{!908, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils"}
!909 = !DILocation(line: 810, column: 1, scope: !884, inlinedAt: !910)
!910 = distinct !DILocation(line: 322, column: 5, scope: !292)
!911 = !DILocation(line: 444, column: 20, scope: !887, inlinedAt: !912)
!912 = distinct !DILocation(line: 2110, column: 27, scope: !889, inlinedAt: !913)
!913 = distinct !DILocation(line: 2814, column: 17, scope: !891, inlinedAt: !914)
!914 = distinct !DILocation(line: 810, column: 1, scope: !884, inlinedAt: !910)
!915 = !{!907, !904}
!916 = !DILocation(line: 3956, column: 24, scope: !895, inlinedAt: !917)
!917 = distinct !DILocation(line: 3193, column: 26, scope: !897, inlinedAt: !918)
!918 = distinct !DILocation(line: 2814, column: 32, scope: !891, inlinedAt: !914)
!919 = !DILocation(line: 2814, column: 12, scope: !891, inlinedAt: !914)
!920 = !DILocation(line: 4387, column: 24, scope: !603, inlinedAt: !921)
!921 = distinct !DILocation(line: 64, column: 9, scope: !891, inlinedAt: !914)
!922 = !DILocation(line: 2857, column: 18, scope: !891, inlinedAt: !914)
!923 = !DILocation(line: 239, column: 5, scope: !251)
!924 = !DILocation(line: 3956, column: 24, scope: !596, inlinedAt: !925)
!925 = distinct !DILocation(line: 3193, column: 26, scope: !598, inlinedAt: !926)
!926 = distinct !DILocation(line: 2814, column: 32, scope: !591, inlinedAt: !927)
!927 = distinct !DILocation(line: 810, column: 1, scope: !584, inlinedAt: !928)
!928 = distinct !DILocation(line: 810, column: 1, scope: !929, inlinedAt: !930)
!929 = distinct !DISubprogram(name: "drop_in_place<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!930 = distinct !DILocation(line: 316, column: 9, scope: !493)
!931 = !{!932, !934, !936}
!932 = distinct !{!932, !933, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils: argument 0"}
!933 = distinct !{!933, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils"}
!934 = distinct !{!934, !935, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils: argument 0"}
!935 = distinct !{!935, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils"}
!936 = distinct !{!936, !937, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils: argument 0"}
!937 = distinct !{!937, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils"}
!938 = !DILocation(line: 2814, column: 12, scope: !591, inlinedAt: !927)
!939 = !DILocation(line: 4387, column: 24, scope: !603, inlinedAt: !940)
!940 = distinct !DILocation(line: 64, column: 9, scope: !591, inlinedAt: !927)
!941 = !DILocation(line: 2857, column: 18, scope: !591, inlinedAt: !927)
!942 = !{!943}
!943 = distinct !{!943, !944, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils: argument 0"}
!944 = distinct !{!944, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEECs2mZqlW55729_12polars_utils"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils: argument 0"}
!947 = distinct !{!947, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils"}
!948 = !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !949)
!949 = distinct !DILocation(line: 316, column: 9, scope: !493)
!950 = !{!951}
!951 = distinct !{!951, !952, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils: argument 0"}
!952 = distinct !{!952, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils"}
!953 = !DILocation(line: 810, column: 1, scope: !584, inlinedAt: !954)
!954 = distinct !DILocation(line: 810, column: 1, scope: !578, inlinedAt: !949)
!955 = !DILocation(line: 444, column: 20, scope: !587, inlinedAt: !956)
!956 = distinct !DILocation(line: 2110, column: 27, scope: !589, inlinedAt: !957)
!957 = distinct !DILocation(line: 2814, column: 17, scope: !591, inlinedAt: !958)
!958 = distinct !DILocation(line: 810, column: 1, scope: !584, inlinedAt: !954)
!959 = !{!951, !946, !943}
!960 = !DILocation(line: 3956, column: 24, scope: !596, inlinedAt: !961)
!961 = distinct !DILocation(line: 3193, column: 26, scope: !598, inlinedAt: !962)
!962 = distinct !DILocation(line: 2814, column: 32, scope: !591, inlinedAt: !958)
!963 = !DILocation(line: 2814, column: 12, scope: !591, inlinedAt: !958)
!964 = !DILocation(line: 4387, column: 24, scope: !603, inlinedAt: !965)
!965 = distinct !DILocation(line: 64, column: 9, scope: !591, inlinedAt: !958)
!966 = !DILocation(line: 2857, column: 18, scope: !591, inlinedAt: !958)
!967 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!968 = !DILocation(line: 810, column: 1, scope: !967)
!969 = !DILocation(line: 810, column: 1, scope: !970, inlinedAt: !971)
!970 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBH_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB21_NtB23_4SyncEL_EECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!971 = distinct !DILocation(line: 810, column: 1, scope: !967)
!972 = !DILocation(line: 457, column: 14, scope: !973, inlinedAt: !974)
!973 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDINtNtNtB4_3ops8function2FnTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1Z_NtB21_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 455, type: !12, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!974 = distinct !DILocation(line: 255, column: 43, scope: !975, inlinedAt: !976)
!975 = distinct !DISubprogram(name: "for_value_raw<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDINtNtNtB7_3ops8function2FnTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEp6OutputuB2l_NtB2n_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !201, file: !200, line: 253, type: !12, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!976 = distinct !DILocation(line: 1919, column: 26, scope: !977, inlinedAt: !979)
!977 = distinct !DILexicalBlock(scope: !978, file: !180, line: 1916, column: 9)
!978 = distinct !DISubprogram(name: "drop<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !207, file: !180, line: 1913, type: !74, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!979 = distinct !DILocation(line: 810, column: 1, scope: !970, inlinedAt: !971)
!980 = !DILocation(line: 1920, column: 16, scope: !981, inlinedAt: !979)
!981 = distinct !DILexicalBlock(scope: !977, file: !180, line: 1919, column: 13)
!982 = !DILocation(line: 596, column: 14, scope: !983, inlinedAt: !984)
!983 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDINtNtNtB4_3ops8function2FnTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB20_NtB22_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !19, file: !135, line: 594, type: !12, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!984 = distinct !DILocation(line: 125, column: 30, scope: !985, inlinedAt: !986)
!985 = distinct !DISubprogram(name: "of_val_raw<(dyn core::ops::function::Fn<(alloc::boxed::Box<(dyn core::any::Any + core::marker::Send), alloc::alloc::Global>), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDINtNtNtB7_3ops8function2FnTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEEp6OutputuB2m_NtB2o_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !217, file: !216, line: 123, type: !12, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!986 = distinct !DILocation(line: 255, column: 68, scope: !975, inlinedAt: !976)
!987 = !DILocation(line: 128, column: 14, scope: !222, inlinedAt: !988)
!988 = distinct !DILocation(line: 229, column: 22, scope: !226, inlinedAt: !989)
!989 = distinct !DILocation(line: 344, column: 9, scope: !229, inlinedAt: !990)
!990 = distinct !DILocation(line: 462, column: 23, scope: !231, inlinedAt: !991)
!991 = distinct !DILocation(line: 1921, column: 24, scope: !981, inlinedAt: !979)
!992 = !DILocation(line: 1920, column: 13, scope: !981, inlinedAt: !979)
!993 = !DILocation(line: 457, column: 14, scope: !973, inlinedAt: !994)
!994 = distinct !DILocation(line: 255, column: 43, scope: !975, inlinedAt: !995)
!995 = distinct !DILocation(line: 1919, column: 26, scope: !977, inlinedAt: !996)
!996 = distinct !DILocation(line: 810, column: 1, scope: !970, inlinedAt: !971)
!997 = !DILocation(line: 1920, column: 16, scope: !981, inlinedAt: !996)
!998 = !DILocation(line: 596, column: 14, scope: !983, inlinedAt: !999)
!999 = distinct !DILocation(line: 125, column: 30, scope: !985, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 255, column: 68, scope: !975, inlinedAt: !995)
!1001 = !DILocation(line: 128, column: 14, scope: !222, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 229, column: 22, scope: !226, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 344, column: 9, scope: !229, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 462, column: 23, scope: !231, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 1921, column: 24, scope: !981, inlinedAt: !996)
!1006 = !DILocation(line: 1920, column: 13, scope: !981, inlinedAt: !996)
!1007 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<(dyn core::ops::function::Fn<(usize), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils", scope: !62, file: !61, line: 810, type: !74, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1008 = !DILocation(line: 810, column: 1, scope: !1007)
!1009 = !DILocation(line: 810, column: 1, scope: !1010, inlinedAt: !1011)
end_hunk_2
