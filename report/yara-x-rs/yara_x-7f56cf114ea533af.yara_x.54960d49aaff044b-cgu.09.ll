Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvNtCs7gfv9tzbXmh_6yara_x4wasm11str_iequals:bb.a
  %.not.i = icmp eq i64 %i.l, %i.o
  br i1 %.not.i, label %bb.ah, label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit

bb.x:                                             ; preds = %bb.ac, %.noexc3
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dl, %bb.x ], [ %i.dw, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #44
          to label %.body unwind label %bb.ag

bb.y:                                             ; preds = %.noexc3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !7060, !noundef !4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noalias !7060, !noundef !4
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !7060, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !7060, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.du, ptr nonnull %i.ds, i64 %i.dn)
  %i.dv = icmp eq i32 %bcmp.i, 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0.1.i = phi i1 [ %i.dv, %bb.z ], [ false, %bb.y ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.x

bb.ad:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7060
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit21.i unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit21.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc4 unwind label %bb.ak

.noexc4:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7060
  br label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit

bb.ag:                                            ; preds = %.body.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ah:                                            ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit19.i
  %i.eb = icmp ugt i64 %i.l, 15
  br i1 %i.eb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  %.not.i.i53 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i53, label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57, %bb.ai
  %.sroa.0.0.i.i56 = phi ptr [ %i.el, %.lr.ph57 ], [ %i.k, %bb.ai ] ; 2 uses
  %.sroa.05.0.i.i55 = phi ptr [ %i.em, %.lr.ph57 ], [ %i.n, %bb.ai ] ; 2 uses
  %.sroa.58.0.i.i54 = phi i64 [ %i.en, %.lr.ph57 ], [ %i.l, %bb.ai ]
  %i.ec = load i8, ptr %.sroa.0.0.i.i56, align 1, !alias.scope !7061, !noundef !4 ; 2 uses
  %i.ed = add i8 %i.ec, -65
  %i.ee = icmp ult i8 %i.ed, 26
  %i.ef = select i1 %i.ee, i8 32, i8 0
  %.sroa.012.0.i.i = or i8 %i.ef, %i.ec
  %i.eg = load i8, ptr %.sroa.05.0.i.i55, align 1, !alias.scope !7062, !noundef !4 ; 2 uses
  %i.eh = add i8 %i.eg, -65
  %i.ei = icmp ult i8 %i.eh, 26
  %i.ej = select i1 %i.ei, i8 32, i8 0
  %.sroa.013.0.i.i = or i8 %i.ej, %i.eg
  %i.ek = icmp eq i8 %.sroa.012.0.i.i, %.sroa.013.0.i.i ; 2 uses
  %.not = xor i1 %i.ek, true
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i56, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i55, i64 1
  %i.en = add nsw i64 %.sroa.58.0.i.i54, -1       ; 2 uses
  %.not.i.i = icmp eq i64 %i.en, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit, label %.lr.ph57

bb.aj:                                            ; preds = %bb.ah
  %i.eo = tail call fastcc noundef zeroext i1 @_RINvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.l) #49
  br label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit21.i, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.thread.i, %.noexc, %bb.a
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ae, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.ak ], [ %i.dy, %bb.ae ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #44
          to label %bb.an unwind label %bb.ar

_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit: ; preds = %.lr.ph57, %bb.ai, %bb.aj, %.noexc4, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit19.i
  %.sroa.0.0.i = phi i1 [ %.sroa.0.1.i, %.noexc4 ], [ %i.eo, %bb.aj ], [ false, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit19.i ], [ true, %bb.ai ], [ %i.ek, %.lr.ph57 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7063)
  %i.eq = load i32, ptr %1, align 8, !range !38, !alias.scope !7063, !noundef !4
  %switch.i = icmp samesign ult i32 %i.eq, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7064)
  call void @llvm.experimental.noalias.scope.decl(metadata !7065)
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !7066, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !noalias !7066, !noundef !4
  %i.eu = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.eu, ptr %i.es, align 8, !noalias !7066
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #46
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit unwind label %bb.ao

bb.an:                                            ; preds = %bb.ao, %.body
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.ao ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #44
          to label %bb.as unwind label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.al, %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString6equals.exit, %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !7067)
  %i.ex = load i32, ptr %0, align 8, !range !38, !alias.scope !7067, !noundef !4
  %switch.i6 = icmp samesign ult i32 %i.ex, 2
  br i1 %switch.i6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit7, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7068)
  call void @llvm.experimental.noalias.scope.decl(metadata !7069)
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !7070, !nonnull !4, !noundef !4 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !7070, !noundef !4
  %i.fb = add i64 %i.fa, -1                       ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !noalias !7070
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit7

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ey) #46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, %bb.ap, %bb.aq
  ret i1 %.sroa.0.0.i

bb.ar:                                            ; preds = %bb.an, %.body
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.as:                                            ; preds = %bb.an
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12lookup_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr %.0.val, ptr noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @849, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @850) #45
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %.0.val, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 792
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 664
  %i.j = load i64, ptr %i.i, align 8, !range !55, !noundef !4 ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.l, %i.j
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1776
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !8

bb.d:                                             ; preds = %._crit_edge, %.loopexit, %bb.i, %bb.h, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7083)
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !7083, !noundef !4 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !noalias !7084, !noundef !4
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !7084
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit unwind label %bb.w

bb.g:                                             ; preds = %.loopexit, %bb.i, %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1784
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.v = invoke noundef ptr @_RINvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6memoryNtB6_6Memory8data_ptrQINtNtNtB8_5store7context15StoreContextMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1T_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %bb.d       ; 2 uses

bb.i:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @851) #45
          to label %bb.g unwind label %bb.d

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16640 ; 3 uses
  %i.x = zext nneg i32 %2 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not48 = icmp eq ptr %i.y, null
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 792
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  %i.ad = load i64, ptr %i.ac, align 8, !range !55, !noundef !4 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.af, %i.ad
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  %storemerge = phi ptr [ %i.ai, %bb.l ], [ %i.z, %bb.k ] ; 5 uses
  %.idx = shl nuw nsw i64 %i.x, 2                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.ak = add nsw i64 %.idx, -4                   ; 2 uses
  %i.al = and i64 %i.ak, 4
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.an = load i32, ptr %i.w, align 4, !noundef !4 ; 2 uses
  store i32 %i.an, ptr %i.b, align 4
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.m, label %.loopexit, !prof !9

bb.m:                                             ; preds = %.lr.ph.prol
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [200 x i8], ptr %i.at, i64 %i.ao ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.aw = load i8, ptr %i.av, align 8, !range !16, !noundef !4
  %i.ax = icmp eq i8 %i.aw, 6
  br i1 %i.ax, label %bb.n, label %.lr.ph.prol.loopexit.unr-lcssa

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %i.ba, %bb.n ], [ %storemerge, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.lcssa24.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.au, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.04.02.unr = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.am, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %storemerge, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i64 %i.ak, 0
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.s
  %.sroa.04.02 = phi ptr [ %i.bv, %bb.s ], [ %.sroa.04.02.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bd = phi ptr [ %i.ck, %bb.s ], [ %.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.02, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bf = load i32, ptr %.sroa.04.02, align 4, !noundef !4 ; 2 uses
  store i32 %i.bf, ptr %i.b, align 4
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bj = icmp ugt i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.o, label %.loopexit, !prof !9

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.prol
  %.lcssa = phi ptr [ %storemerge, %.lr.ph.prol ], [ %i.bd, %.lr.ph ], [ %i.bu, %.lr.ph.1 ]
  store ptr %.lcssa, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.bk, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructNtB6_5Debug3fmtBC_, ptr %.sroa.444.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @852, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @853) #45
          to label %bb.g unwind label %bb.d

bb.o:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw [200 x i8], ptr %i.bm, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bp = load i8, ptr %i.bo, align 8, !range !16, !noundef !4
  %i.bq = icmp eq i8 %i.bp, 6
  br i1 %i.bq, label %bb.p, label %.lr.ph.1

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.p, %bb.o
  %i.bu = phi ptr [ %i.bt, %bb.p ], [ %i.bd, %bb.o ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.02, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bw = load i32, ptr %i.be, align 4, !noundef !4 ; 2 uses
  store i32 %i.bw, ptr %i.b, align 4
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !4
  %i.ca = icmp ugt i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.q, label %.loopexit, !prof !9

bb.q:                                             ; preds = %.lr.ph.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw [200 x i8], ptr %i.cc, i64 %i.bx ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load i8, ptr %i.ce, align 8, !range !16, !noundef !4
  %i.cg = icmp eq i8 %i.cf, 6
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = phi ptr [ %i.cj, %bb.r ], [ %i.bu, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = icmp eq ptr %i.bv, %i.aj
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %.lr.ph.prol.loopexit
  %.lcssa24 = phi ptr [ %.lcssa24.unr, %.lr.ph.prol.loopexit ], [ %i.ck, %bb.s ]
  %.lcssa.a = phi ptr [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cd, %bb.s ]
  store ptr %.lcssa24, ptr %i.c, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.lcssa.a, i64 120
  invoke fastcc void @_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !7085)
  %i.cn = load ptr, ptr %i.f, align 8, !alias.scope !7085, !noundef !4 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit50, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = load i64, ptr %i.cn, align 8, !noalias !7086, !noundef !4
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cq, ptr %i.cn, align 8, !noalias !7086
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit50

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit50

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit50: ; preds = %bb.t, %bb.u, %bb.v
  ret void

bb.w:                                             ; preds = %bb.f
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEEEB1y_.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12str_contains(ptr %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !55, !noundef !4 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString8contains(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %i.g, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #44
          to label %bb.f unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7099)
  %i.j = load i32, ptr %1, align 8, !range !38, !alias.scope !7099, !noundef !4
  %switch.i = icmp samesign ult i32 %i.j, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !7102, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !7102, !noundef !4
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !noalias !7102
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #46
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.i, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #44
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.d, %bb.c, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7103)
  %i.q = load i32, ptr %0, align 8, !range !38, !alias.scope !7103, !noundef !4
  %switch.i2 = icmp samesign ult i32 %i.q, 2
  br i1 %switch.i2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit3, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7106, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !7106, !noundef !4
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !7106
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit3

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #46
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, %bb.h, %bb.i
  ret i1 %i.h

bb.j:                                             ; preds = %bb.f, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12str_endswith(ptr %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !55, !noundef !4 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f     ; 2 uses
  %i.h = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.g)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.i = invoke { ptr, i64 } @_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString7as_bstr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %i.g)
          to label %.noexc2 unwind label %bb.b    ; 2 uses

.noexc2:                                          ; preds = %.noexc
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = extractvalue { ptr, i64 } %i.h, 0
  %i.l = extractvalue { ptr, i64 } %i.i, 0
  %i.m = extractvalue { ptr, i64 } %i.i, 1
  %i.n = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString9ends_with.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc2, %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #44
          to label %bb.e unwind label %bb.i

_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString9ends_with.exit: ; preds = %.noexc2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  %i.p = load i32, ptr %1, align 8, !range !38, !alias.scope !7119, !noundef !4
  %switch.i = icmp samesign ult i32 %i.p, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString9ends_with.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7121)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !7122, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !7122, !noundef !4
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !noalias !7122
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #46
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.o, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #44
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit: ; preds = %bb.c, %_RNvMs0_NtNtCs7gfv9tzbXmh_6yara_x4wasm6stringNtB5_13RuntimeString9ends_with.exit, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  %i.w = load i32, ptr %0, align 8, !range !38, !alias.scope !7123, !noundef !4
  %switch.i5 = icmp samesign ult i32 %i.w, 2
  br i1 %switch.i5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit6, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7126, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noalias !7126, !noundef !4
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !noalias !7126
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_.exit6
end_hunk_0
