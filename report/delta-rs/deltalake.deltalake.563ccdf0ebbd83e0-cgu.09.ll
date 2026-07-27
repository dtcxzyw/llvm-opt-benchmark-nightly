inline.NumInlined: 7581
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB3_7Builder8from_envNtB3_3EnvECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !72, !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68
  invoke void @_RNvMs3_NtCsgFsIr8bmZ1R_10env_logger6loggerNtB5_3Env10get_filter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !68

.body.i:                                          ; preds = %bb.r, %bb.p, %bb.h, %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.ae, %bb.p ], [ %i.r, %bb.h ], [ %i.j, %bb.b ], [ %i.af, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.e) #38
          to label %.body unwind label %bb.j, !noalias !80

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 8, !range !63, !noalias !68, !noundef !4
  %.not.i = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !68, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !68, !noundef !4
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB2_7Builder13parse_filters(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.g unwind label %bb.f, !noalias !80 ; 0 uses

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  invoke void @_RNvMs3_NtCsgFsIr8bmZ1R_10env_logger6loggerNtB5_3Env15get_write_style(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
          to label %bb.k unwind label %bb.b, !noalias !80

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body.i unwind label %bb.j, !noalias !80

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.h, !noalias !80

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.i, !noalias !80

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b, !noalias !80

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68
  br label %bb.e

bb.j:                                             ; preds = %bb.p, %bb.f, %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !range !63, !noalias !68, !noundef !4
  %.not1.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !68, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !68, !noundef !4
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB2_7Builder17parse_write_style(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.q unwind label %bb.p, !noalias !80 ; 0 uses

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !80

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #38
          to label %.body unwind label %bb.o, !noalias !80

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.u unwind label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %.body.i unwind label %bb.j, !noalias !80

bb.q:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i unwind label %bb.r, !noalias !80

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.s, !noalias !80

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i unwind label %bb.b, !noalias !80

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %bb.m

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.n, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %i.aa, %bb.n ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger7BuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.f) #38
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.f, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.v:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1784 x i8]) align 8 captures(none) dereferenceable(1784) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [664 x i8], align 16              ; 12 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 17 uses
  %i.o = alloca [472 x i8], align 8               ; 10 uses
  %i.p = alloca [472 x i8], align 8               ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [80 x i8], align 8                ; 15 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [80 x i8], align 8                ; 8 uses
  %i.x = alloca [1784 x i8], align 8              ; 18 uses
  %i.y = alloca [1784 x i8], align 8              ; 20 uses
  %.sroa.559.sroa.0.i = alloca [39 x i8], align 1 ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 8 uses
  %i.aa = alloca [664 x i8], align 16             ; 7 uses
  %i.ab = alloca [472 x i8], align 8              ; 8 uses
  %.sroa.8255.i = alloca [440 x i8], align 8      ; 5 uses
  %.sroa.9.i.sroa.6 = alloca [664 x i8], align 8  ; 6 uses
  %.sroa.10.i = alloca [64 x i8], align 8         ; 6 uses
  %.sroa.16.i = alloca [504 x i8], align 8        ; 5 uses
  %.sroa.20.i = alloca [6 x i8], align 2          ; 4 uses
  %i.ac = alloca [472 x i8], align 8              ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 9 uses
  %i.ao = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.7.i = alloca [72 x i8], align 8          ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 10 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.as, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.559.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !88
  store ptr %i.as, ptr %i.t, align 8, !alias.scope !95, !noalias !99
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %.sroa.218.0..sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %3, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %3, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i32 44, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  store i32 44, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4, !alias.scope !95, !noalias !99
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i8 1, ptr %.sroa.519.0..sroa_idx, align 8, !alias.scope !95, !noalias !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 73
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !95, !noalias !99
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB2y_6filter6FilterINtNtNtB2C_3str4iter5SplitcENCINvMNtBY_7builderNtB4q_7Builder11parse_lossyReE0ENCB4m_s_0EE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.t), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !86
  store i64 0, ptr %i.aq, align 8, !noalias !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !noalias !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store i64 0, ptr %i.au, align 8, !noalias !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !86, !nonnull !4, !noundef !4 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !86, !noundef !4 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.ay, 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  %i.ba = icmp eq i64 %i.ay, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !range !101, !alias.scope !84, !noalias !102 ; 4 uses
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond212.i = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond212.i, label %._crit_edge.split.thread.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.0.0209.i = phi ptr [ %i.bg, %bb.b ], [ %i.aw, %bb.a ] ; 2 uses
  invoke void @_RNvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directiveNtB2_9Directive10deregexify(ptr noalias noundef nonnull align 8 dereferenceable(80) %.sroa.0.0209.i)
          to label %bb.b unwind label %.critedge.loopexit.i, !noalias !86

._crit_edge.split.i:                              ; preds = %bb.b
  %.pre.i = load i64, ptr %i.au, align 8, !noalias !86 ; 2 uses
  %i.be = icmp ult i64 %.pre.i, 115292150460684698
  call void @llvm.assume(i1 %i.be)
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %._crit_edge.split.thread.i, label %bb.bj

.critedge.thread162.i:                            ; preds = %bb.cl, %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveEECs7p2uQeJxui2_9deltalake.exit124.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread180.i

.critedge.loopexit.i:                             ; preds = %.lr.ph.split.i
  %lpad.loopexit195.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread157.i

.critedge.loopexit.split-lp.i:                    ; preds = %bb.bj, %._crit_edge.split.thread.i
  %i.bf = phi i1 [ false, %._crit_edge.split.thread.i ], [ true, %bb.bj ]
  %lpad.loopexit.split-lp196.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread157.i

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0209.i, i64 80 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.az
  br i1 %i.bh, label %._crit_edge.split.i, label %.lr.ph.split.i

._crit_edge.split.thread.i:                       ; preds = %._crit_edge.split.i, %bb.a
  %.sroa.0137.0.copyload.i = load i64, ptr %i.ar, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !103
  %i.bi = icmp ult i64 %i.ay, 115292150460684698
  call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %i.ay
  store ptr %i.aw, ptr %i.q, align 8, !alias.scope !107, !noalias !110
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.0137.0.copyload.i, ptr %i.bk, align 8, !alias.scope !107, !noalias !110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aw, ptr %i.bl, align 8, !alias.scope !107, !noalias !110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.bj, ptr %i.bm, align 8, !alias.scope !107, !noalias !110
  invoke void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %.noexc.i unwind label %.critedge.loopexit.split-lp.i, !noalias !86

.noexc.i:                                         ; preds = %._crit_edge.split.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bn, align 8, !noalias !103 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !103, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !103 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !103
  %i.bo = icmp ult i64 %.sroa.5.0.copyload.i.i, 115292150460684698
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i
  %i.bq = icmp sgt i64 %.sroa.0.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !103, !nonnull !4, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !103, !noundef !4
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !112
  store i64 0, ptr %i.o, align 8, !noalias !112
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 456 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 464 ; 3 uses
  store i64 5, ptr %i.bw, align 8, !noalias !112
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !119
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.n, align 8, !noalias !121
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bp, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !121
  %.sroa.4.0..sroa_idx47.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx47.i.i, align 8, !noalias !121
  %.sroa.5.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %i.bv, ptr %.sroa.5.0..sroa_idx49.i.i, align 8, !noalias !121
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.noexc.i
  %i.bz = phi ptr [ %.pre.i.i, %_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtB5_15StaticDirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %.noexc.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2o_B2m_11make_tablesINtB1D_3VecB2m_EE0ENtNtB2s_9directive15StaticDirectiveNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !130
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB29_8find_map5checkBX_NtNtB13_9directive15StaticDirectiveQNCINvMBZ_BX_11make_tablesINtB8_3VecBX_EE0E0INtNtNtB2h_3ops12control_flow11ControlFlowB3H_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias noundef nonnull %.sroa.4.0..sroa_idx47.i.i)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !142

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.ca = load i64, ptr %i.k, align 8, !range !143, !noalias !130, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ca, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !130
  %i.cb = load ptr, ptr %i.n, align 8, !alias.scope !144, !noalias !147, !noundef !4
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMB2o_B2m_11make_tablesINtB1D_3VecB2m_EE0ENtNtB2s_9directive15StaticDirectiveNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7p2uQeJxui2_9deltalake.exit.thread7.i.i.i.i.i, label %bb.f
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyReECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.ao

.loopexit.split-lp.i.i30.i.i:                     ; preds = %bb.at
  %lpad.loopexit.split-lp.i.i31.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i.i30.i.i, %.loopexit.i.i32.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i33.i.i, %.loopexit.i.i32.i.i ], [ %lpad.loopexit.split-lp.i.i31.i.i, %.loopexit.split-lp.i.i30.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #38
          to label %.body.i.i18.i.i unwind label %bb.aw, !noalias !225

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.an
  %i.fp = phi i64 [ %.pre.i.i.i.i35.i.i, %bb.an ], [ %i.fm, %bb.am ] ; 2 uses
  %.sink11.i.i.i.i.i25.i.i = phi ptr [ %i.fo, %bb.an ], [ %i.em, %bb.am ]
  %.sink10.i.i.i.i.i26.i.i = phi ptr [ %i.em, %bb.an ], [ %.sroa.4.0..sroa_idx.i8.i.i, %bb.am ]
  %.sink.i.i.i.i.i27.i.i = phi i64 [ %i.fm, %bb.an ], [ 8, %bb.am ]
  %i.fq = icmp eq i64 %i.fp, %.sink.i.i.i.i.i27.i.i
  br i1 %i.fq, label %bb.ap, label %bb.aq, !prof !64

bb.ap:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  invoke fastcc void @_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h)
          to label %bb.ar unwind label %.loopexit.i.i32.i.i, !noalias !255

bb.aq:                                            ; preds = %bb.ar, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %i.fr = phi i64 [ %.pre10.i.i.i.i34.i.i, %bb.ar ], [ %i.fp, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.07.0.i.i.i.i28.i.i = phi ptr [ %i.ft, %bb.ar ], [ %.sink11.i.i.i.i.i25.i.i, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i ]
  %.sroa.04.0.i.i.i.i29.i.i = phi ptr [ %i.em, %bb.ar ], [ %.sink10.i.i.i.i.i26.i.i, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i ]
  %i.fs = icmp ugt i64 %.sroa.4.0.i.ph.i.i.i24.i.i, %i.fr
  br i1 %i.fs, label %bb.at, label %bb.as, !prof !64

bb.ar:                                            ; preds = %bb.ap
  %i.ft = load ptr, ptr %i.en, align 16, !alias.scope !253, !noalias !254, !nonnull !4, !noundef !4
  %.pre10.i.i.i.i34.i.i = load i64, ptr %i.em, align 8, !alias.scope !253, !noalias !254
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq
  %i.fu = getelementptr inbounds nuw [80 x i8], ptr %.sroa.07.0.i.i.i.i28.i.i, i64 %.sroa.4.0.i.ph.i.i.i24.i.i ; 3 uses
  %i.fv = icmp ult i64 %.sroa.4.0.i.ph.i.i.i24.i.i, %i.fr
  br i1 %i.fv, label %bb.au, label %bb.bd

bb.at:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #37
          to label %bb.av unwind label %.loopexit.split-lp.i.i30.i.i, !noalias !255

bb.au:                                            ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = sub nuw i64 %i.fr, %.sroa.4.0.i.ph.i.i.i24.i.i
  %i.fy = mul i64 %i.fx, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 8 %i.fu, i64 %i.fy, i1 false), !noalias !255
  br label %bb.bd

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.ao
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !225
  unreachable

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i16.i.i.i.i.i: ; preds = %.noexc.i.i.i21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !252
  %i.ga = load i64, ptr %.sroa.4.0..sroa_idx.i8.i.i, align 8, !alias.scope !256, !noalias !261, !noundef !4 ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 8                   ; 2 uses
  %.pre37.i.i.i38.i.i = load i64, ptr %i.em, align 8
  %i.gc = select i1 %i.gb, i64 %.pre37.i.i.i38.i.i, i64 %i.ga ; 2 uses
  %i.gd = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i.i14.i.i, %i.gc
  br i1 %i.gd, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i16.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 115292150460684698) %.sroa.05.0.lcssa.i.i.i.i14.i.i, i64 noundef range(i64 0, 115292150460684698) %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #36
          to label %.noexc19.i.i.i37.i.i unwind label %bb.bb, !noalias !225

.noexc19.i.i.i37.i.i:                             ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.az
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !225
  br label %.body.i.i18.i.i

bb.az:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i16.i.i.i.i.i
  %i.gf = load ptr, ptr %i.en, align 16, !nonnull !4
  %.sink11.i.i17.i.i.i36.i.i = select i1 %i.gb, ptr %i.gf, ptr %i.em
  %i.gg = getelementptr inbounds nuw [80 x i8], ptr %.sink11.i.i17.i.i.i36.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i14.i.i ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %i.gg)
          to label %bb.ba unwind label %bb.ay, !noalias !225

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !251
  br label %_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ax
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(80) %i.e) #38
          to label %.body.i.i18.i.i unwind label %bb.bc, !noalias !225

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !225
  unreachable

bb.bd:                                            ; preds = %bb.au, %bb.as
  %i.gj = add i64 %i.fr, 1
  store i64 %i.gj, ptr %.sroa.04.0.i.i.i.i29.i.i, align 8, !alias.scope !253, !noalias !254
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !251
  br label %_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.loopexit.i.i.i42.i.i:                            ; preds = %.lr.ph.i.i.i.i39.i.i
  %lpad.loopexit.i.i.i43.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i.i.i15.i.i:                   ; preds = %._crit_edge.i.i.i.i13.i.i
  %lpad.loopexit.split-lp.i.i.i16.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i.i.i15.i.i, %.loopexit.i.i.i42.i.i
  %lpad.phi.i.i.i17.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i43.i.i, %.loopexit.i.i.i42.i.i ], [ %lpad.loopexit.split-lp.i.i.i16.i.i, %.loopexit.split-lp.i.i.i15.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f) #38
          to label %.body.i.i18.i.i unwind label %bb.bc, !noalias !225

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i: ; preds = %_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.ai
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bg, !noalias !216

_RNvMs0_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directiveINtB5_12DirectiveSetNtNtNtB7_3env9directive9DirectiveE3addCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.bd, %bb.ba
  %i.gk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !263, !noalias !229, !nonnull !4, !noundef !4
  %i.gl = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !263, !noalias !229, !nonnull !4, !noundef !4 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.gk
  br i1 %i.gm, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.bf:                                            ; preds = %.body.i.i18.i.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !225
  unreachable

bb.bg:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body.i19.i.i

.body.i19.i.i:                                    ; preds = %bb.bg, %.body.i.i18.i.i
  %eh.lpad-body.i20.i.i = phi { ptr, i32 } [ %i.go, %bb.bg ], [ %eh.lpad-body.i.i.i.i, %.body.i.i18.i.i ]
  invoke void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.h)
          to label %.body45.i.i unwind label %bb.bh, !noalias !216

bb.bh:                                            ; preds = %.body.i19.i.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !216
  unreachable

.body45.i.i:                                      ; preds = %.body.i19.i.i
  invoke void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.p)
          to label %.critedge.thread157.i unwind label %bb.bi, !noalias !103

bb.bi:                                            ; preds = %.thread.i.i, %.body45.i.i
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !103
  unreachable

.thread.i.i:                                      ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.s) #38
          to label %.critedge.thread157.i unwind label %bb.bi, !noalias !103

bb.bj:                                            ; preds = %._crit_edge.split.i
  invoke fastcc void @_RNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB5_7Builder15from_directivesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1B_6filter6FilterINtNtNtB1F_3str4iter5SplitcENCINvB4_11parse_lossyReE0ENCB3p_s_0EE0Cs7p2uQeJxui2_9deltalake()
          to label %bb.cf unwind label %.critedge.loopexit.split-lp.i

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !216
  %.sroa.4.0..sroa_idx239.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx231.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(632) %.sroa.6.0..sroa_idx231.i, ptr noundef nonnull align 16 dereferenceable(632) %.sroa.5241.0..sroa_idx.i, i64 632, i1 false), !noalias !86
  %.sroa.4.0.copyload240.i = load i64, ptr %.sroa.4.0..sroa_idx239.i, align 8, !noalias !265
  %i.gr = load <2 x i64>, ptr %i.h, align 16, !noalias !265
  %.sroa.6232.0..sroa_idx233.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 648
  %i.gs = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i8.i.i, align 8, !noalias !265
  %.sroa.6242.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i8.i.i, align 8, !noalias !265 ; 2 uses
  %i.gt = icmp ugt i64 %.sroa.6242.0.copyload.i, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ac, ptr noundef nonnull align 8 dereferenceable(472) %i.p, i64 472, i1 false), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !103
  %.sink11.i.i = select i1 %i.gt, i64 %.sroa.4.0.copyload240.i, i64 %.sroa.6242.0.copyload.i
  %.not342.i = icmp eq i64 %.sink11.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8255.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ab, ptr noundef nonnull align 8 dereferenceable(472) %i.ac, i64 472, i1 false), !noalias !86
  store <2 x i64> %i.gr, ptr %i.aa, align 16, !noalias !86
  store <2 x i64> %i.gs, ptr %.sroa.6232.0..sroa_idx233.i, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !86
  %i.gu = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.bl unwind label %bb.bk, !noalias !86 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2W_5field9SpanMatchEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bm, %bb.bk
  %.pn91.i = phi { ptr, i32 } [ %i.gv, %bb.bk ], [ %i.hb, %bb.bm ]
  invoke void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBL_3env9directive9DirectiveEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cd, !noalias !86

bb.bk:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2W_5field9SpanMatchEEEECs7p2uQeJxui2_9deltalake.exit.i

bb.bl:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i
  %i.gw = extractvalue { i64, i64 } %i.gu, 0
  %i.gx = extractvalue { i64, i64 } %i.gu, 1
  store i64 0, ptr %i.z, align 8, !noalias !86
  %i.gy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 0, ptr %i.gy, align 8, !noalias !86
  %i.gz = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !86
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %i.gw, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !86
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 %i.gx, ptr %.sroa.564.0..sroa_idx.i, align 8, !noalias !86
  %i.ha = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.bn unwind label %bb.bm, !noalias !86 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2W_5field9SpanMatchEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cd, !noalias !86

bb.bn:                                            ; preds = %bb.bl
  %.sroa.559.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.559.sroa.0.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.559.sroa.0.7..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.16.i, i8 0, i64 504, i1 false), !noalias !86
  %i.hc = extractvalue { i64, i64 } %i.ha, 0      ; 3 uses
  %i.hd = extractvalue { i64, i64 } %i.ha, 1      ; 3 uses
  %.sroa.0244.0.copyload247.i = load i64, ptr %i.ab, align 8, !noalias !86 ; 3 uses
  %.sroa.7248.0..sroa_idx253.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7248.0.copyload254.i = load i64, ptr %.sroa.7248.0..sroa_idx253.i, align 8, !noalias !86 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.i, ptr noundef nonnull align 8 dereferenceable(440) %i.he, i64 440, i1 false), !noalias !86
  %.sroa.8259.0..sroa_idx264.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 456
  %.sroa.8259.0.copyload265.i = load i64, ptr %.sroa.8259.0..sroa_idx264.i, align 8, !noalias !86 ; 5 uses
  %.sroa.9.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 464
  %i.hf = load i64, ptr %.sroa.9.0..sroa_idx268.i, align 8, !noalias !86 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6, ptr noundef nonnull align 16 dereferenceable(664) %i.aa, i64 664, i1 false), !noalias !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !86
  br i1 %.not342.i, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i, label %bb.bo

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bn
  %i.hg = icmp ugt i64 %.sroa.8259.0.copyload265.i, 8
  %.sink11.i108.i = select i1 %i.hg, i64 %.sroa.7248.0.copyload254.i, i64 %.sroa.8259.0.copyload265.i
  %i.hh = icmp ne i64 %.sink11.i108.i, 0
  %i.hi = load i64, ptr %1, align 8, !range !143, !alias.scope !84, !noalias !102 ; 2 uses
  %.not93.i = icmp eq i64 %i.hi, 6
  %or.cond.i = select i1 %i.hh, i1 true, i1 %.not93.i
  br i1 %or.cond.i, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.cc, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i, %bb.bn
  %.sroa.9.i.sroa.0.0 = phi i64 [ %i.hf, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.9.i.sroa.0.0.copyload25, %bb.cc ], [ %i.hf, %bb.bn ]
  %.sroa.7248.0.i = phi i64 [ %.sroa.7248.0.copyload254.i, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.7248.0.copyload252.i, %bb.cc ], [ %.sroa.7248.0.copyload254.i, %bb.bn ]
  %.sroa.0244.0.i = phi i64 [ %.sroa.0244.0.copyload247.i, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.0244.0.copyload246.i, %bb.cc ], [ %.sroa.0244.0.copyload247.i, %bb.bn ]
  %.sroa.8259.0.i = phi i64 [ %.sroa.8259.0.copyload265.i, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.8259.0.copyload263.i, %bb.cc ], [ %.sroa.8259.0.copyload265.i, %bb.bn ]
  %.sroa.11.0.i = phi i64 [ 0, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.11.0.copyload274.i, %bb.cc ], [ 0, %bb.bn ]
  %.sroa.12.0.i = phi i8 [ 0, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.12.0.copyload278.i, %bb.cc ], [ 0, %bb.bn ]
  %.sroa.14.0.i = phi i64 [ %i.hc, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.14.0.copyload284.i, %bb.cc ], [ %i.hc, %bb.bn ]
  %.sroa.15.0.i = phi i64 [ %i.hd, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.15.0.copyload288.i, %bb.cc ], [ %i.hd, %bb.bn ]
  %.sroa.17.0.i = phi i64 [ 0, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.17.0.copyload294.i, %bb.cc ], [ 0, %bb.bn ]
  %.sroa.18.0.i = phi i8 [ 0, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.18.0.copyload298.i, %bb.cc ], [ 1, %bb.bn ]
  %.sroa.19.0.i = phi i8 [ %i.bc, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.19.0.copyload302.i, %bb.cc ], [ %i.bc, %bb.bn ]
  store i64 %.sroa.0244.0.i, ptr %0, align 8, !alias.scope !81, !noalias !266
  %.sroa.7248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7248.0.i, ptr %.sroa.7248.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.8255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.i, i64 440, i1 false), !noalias !266
  %.sroa.8259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %.sroa.8259.0.i, ptr %.sroa.8259.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.sroa.9.i.sroa.0.0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !266
  %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6, i64 664, i1 false), !noalias !266
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i, i64 64, i1 false), !noalias !266
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %.sroa.11.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i8 %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.559.sroa.0.i, i64 39, i1 false), !noalias !266
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i64 %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i64 %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.16.i, i64 504, i1 false), !noalias !266
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i64 %.sroa.17.0.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1776
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !266
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1777
  store i8 %.sroa.19.0.i, ptr %.sroa.19.0..sroa_idx.i, align 1, !alias.scope !81, !noalias !266
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.i, i64 6, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8255.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB3_7Builder15from_directivesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_6filter6FilterINtNtNtB1D_3str4iter5SplitcENCINvB2_11parse_lossyReE0ENCB3n_s_0EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bp, !noalias !102

bb.bp:                                            ; preds = %bb.bo
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.thread185.i unwind label %bb.bq, !noalias !102

bb.bq:                                            ; preds = %bb.bp
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !102
  unreachable

bb.br:                                            ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !86
  store i64 %.sroa.0244.0.copyload247.i, ptr %i.x, align 8, !noalias !86
  %.sroa.7248.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.7248.0.copyload254.i, ptr %.sroa.7248.0..sroa_idx249.i, align 8, !noalias !86
  %.sroa.8255.0..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.0..sroa_idx256.i, ptr noundef nonnull align 8 dereferenceable(440) %i.he, i64 440, i1 false), !noalias !86
  %.sroa.8259.0..sroa_idx260.i = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  store i64 %.sroa.8259.0.copyload265.i, ptr %.sroa.8259.0..sroa_idx260.i, align 8, !noalias !86
  %.sroa.9.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  store i64 %i.hf, ptr %.sroa.9.0..sroa_idx266.i, align 8, !noalias !86
  %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx266.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx266.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6, i64 664, i1 false), !noalias !86
  %.sroa.10.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx269.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i, i64 64, i1 false), !noalias !86
  %.sroa.11.0..sroa_idx271.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1200
  store i64 0, ptr %.sroa.11.0..sroa_idx271.i, align 8, !noalias !86
  %.sroa.12.0..sroa_idx275.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1208
  store i8 0, ptr %.sroa.12.0..sroa_idx275.i, align 8, !noalias !86
  %.sroa.13.0..sroa_idx279.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.13.0..sroa_idx279.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.559.sroa.0.i, i64 39, i1 false), !noalias !86
  %.sroa.14.0..sroa_idx281.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1248
  store i64 %i.hc, ptr %.sroa.14.0..sroa_idx281.i, align 8, !noalias !86
  %.sroa.15.0..sroa_idx285.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1256
  store i64 %i.hd, ptr %.sroa.15.0..sroa_idx285.i, align 8, !noalias !86
  %.sroa.16.0..sroa_idx289.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1264
  %.sroa.18.0..sroa_idx295.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(513) %.sroa.16.0..sroa_idx289.i, i8 0, i64 513, i1 false), !noalias !86
  store i8 %i.bc, ptr %.sroa.18.0..sroa_idx295.i, align 1, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !86
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !272
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !range !63, !alias.scope !273, !noalias !274, !noundef !4
  %.not.i.i = icmp eq i64 %i.hm, -9223372036854775808
  br i1 %.not.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl)
          to label %.noexc114.i unwind label %.body115.thread177.i, !noalias !102

.body115.thread177.i:                             ; preds = %bb.bs
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body115.thread.i

bb.bt:                                            ; preds = %bb.br
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !272
  br label %.noexc114.i

.noexc114.i:                                      ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !272
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field5MatchENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho)
          to label %bb.bw unwind label %bb.bv, !noalias !274

bb.bu:                                            ; preds = %bb.by, %bb.bv
  %.pn.i.i = phi { ptr, i32 } [ %i.hs, %bb.by ], [ %i.hp, %bb.bv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %.body115.thread.i unwind label %bb.ca, !noalias !274

bb.bv:                                            ; preds = %.noexc114.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bw:                                            ; preds = %.noexc114.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !range !63, !alias.scope !273, !noalias !274, !noundef !4
  %.not4.i.i = icmp eq i64 %i.hr, -9223372036854775808
  br i1 %.not4.i.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq)
          to label %bb.bz unwind label %bb.by, !noalias !274

bb.by:                                            ; preds = %bb.bx
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field5MatchEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.bu unwind label %bb.ca, !noalias !274

bb.bz:                                            ; preds = %bb.bx
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !272
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by, %bb.bu
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !274
  unreachable

.body115.i:                                       ; preds = %bb.cb
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread157.i

bb.cb:                                            ; preds = %bb.bz, %bb.bw
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.bz ], [ -9223372036854775808, %bb.bw ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !275
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !275
  %i.hx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 %.sroa.0.0.i.i, ptr %i.hx, align 8, !alias.scope !267, !noalias !275
  %.sroa.5.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i113.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !275
  store i64 %i.hi, ptr %i.w, align 8, !alias.scope !267, !noalias !275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !272
  invoke void @_RNvMs_NtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3envNtB4_9EnvFilter13add_directive(ptr noalias noundef nonnull sret([1784 x i8]) align 8 captures(none) dereferenceable(1784) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1784) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.w)
          to label %bb.cc unwind label %.body115.i, !noalias !102

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !86
  %.sroa.0244.0.copyload246.i = load i64, ptr %i.y, align 8, !noalias !86
  %.sroa.7248.0..sroa_idx251.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7248.0.copyload252.i = load i64, ptr %.sroa.7248.0..sroa_idx251.i, align 8, !noalias !86
  %.sroa.8255.0..sroa_idx257.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.i, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.8255.0..sroa_idx257.i, i64 440, i1 false), !noalias !86
  %.sroa.8259.0..sroa_idx262.i = getelementptr inbounds nuw i8, ptr %i.y, i64 456
  %.sroa.8259.0.copyload263.i = load i64, ptr %.sroa.8259.0..sroa_idx262.i, align 8, !noalias !86
  %.sroa.9.0..sroa_idx267.i = getelementptr inbounds nuw i8, ptr %i.y, i64 464
  %.sroa.9.i.sroa.0.0.copyload25 = load i64, ptr %.sroa.9.0..sroa_idx267.i, align 8, !noalias !86
  %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx267.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6, ptr noundef nonnull align 8 dereferenceable(664) %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx267.i.sroa_idx, i64 664, i1 false), !noalias !86
  %.sroa.10.0..sroa_idx270.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx270.i, i64 64, i1 false), !noalias !86
  %.sroa.11.0..sroa_idx273.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1200
  %.sroa.11.0.copyload274.i = load i64, ptr %.sroa.11.0..sroa_idx273.i, align 8, !noalias !86
  %.sroa.12.0..sroa_idx277.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1208
  %.sroa.12.0.copyload278.i = load i8, ptr %.sroa.12.0..sroa_idx277.i, align 8, !noalias !86
  %.sroa.13.0..sroa_idx280.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.559.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.13.0..sroa_idx280.i, i64 39, i1 false), !noalias !86
  %.sroa.14.0..sroa_idx283.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1248
  %.sroa.14.0.copyload284.i = load i64, ptr %.sroa.14.0..sroa_idx283.i, align 8, !noalias !86
  %.sroa.15.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1256
  %.sroa.15.0.copyload288.i = load i64, ptr %.sroa.15.0..sroa_idx287.i, align 8, !noalias !86
  %.sroa.16.0..sroa_idx290.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(504) %.sroa.16.0..sroa_idx290.i, i64 504, i1 false), !noalias !86
  %.sroa.17.0..sroa_idx293.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1768
  %.sroa.17.0.copyload294.i = load i64, ptr %.sroa.17.0..sroa_idx293.i, align 8, !noalias !86
  %.sroa.18.0..sroa_idx297.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1776
  %.sroa.18.0.copyload298.i = load i8, ptr %.sroa.18.0..sroa_idx297.i, align 8, !noalias !86
  %.sroa.19.0..sroa_idx301.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1777
  %.sroa.19.0.copyload302.i = load i8, ptr %.sroa.19.0..sroa_idx301.i, align 1, !noalias !86
  %.sroa.20.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.20.0..sroa_idx304.i, i64 6, i1 false), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !86
  br label %bb.bo

.body115.thread.i:                                ; preds = %bb.bu, %.body115.thread177.i
  %eh.lpad-body116176.i = phi { ptr, i32 } [ %i.hn, %.body115.thread177.i ], [ %.pn.i.i, %bb.bu ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9EnvFilterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(1784) %i.x) #38
          to label %.critedge.thread157.i unwind label %bb.cd, !noalias !102

bb.cd:                                            ; preds = %.thread180.i, %.critedge.thread157.i, %bb.cx, %bb.cw, %bb.cp, %bb.cj, %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBL_3env9directive9DirectiveEECs7p2uQeJxui2_9deltalake.exit.i, %.body115.thread.i, %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2W_5field9SpanMatchEEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !102
  unreachable

bb.ce:                                            ; preds = %.critedge.thread157.i
  br i1 %.sroa.09.0150.i, label %.thread180.i, label %.thread185.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive12DirectiveSetNtNtNtBL_3env9directive9DirectiveEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2W_5field9SpanMatchEEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.ab)
          to label %.critedge.thread157.i unwind label %bb.cd, !noalias !86

bb.cf:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %i.at, align 8, !noalias !86, !nonnull !4, !noundef !4 ; 4 uses
  %i.ia = load i64, ptr %i.aq, align 8, !range !276, !noalias !86, !noundef !4
  %i.ib = load i64, ptr %i.au, align 8, !noalias !86, !noundef !4 ; 3 uses
  %i.ic = icmp ult i64 %i.ib, 115292150460684698
  call void @llvm.assume(i1 %i.ic)
  %.idx213.i = mul nuw nsw i64 %i.ib, 80
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx213.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !86
  store ptr %i.hz, ptr %i.ap, align 8, !noalias !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr %i.hz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !86
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ia, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !86
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  store ptr %i.id, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ie = icmp eq i64 %i.ib, 0
  br i1 %i.ie, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %bb.cf
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i

bb.cg:                                            ; preds = %bb.cp, %bb.ch
  %.pn89.i = phi { ptr, i32 } [ %i.im, %bb.ch ], [ %.pn87.i, %bb.cp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %.thread180.i unwind label %bb.cd, !noalias !86

bb.ch:                                            ; preds = %bb.da
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.db, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %i.in = phi ptr [ %i.hz, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %i.jg, %bb.db ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  store ptr %i.io, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !277, !noalias !280
end_hunk_1
