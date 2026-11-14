Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.01?download=true
inline.NumInlined: 3404
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis6expand:bb.a
  %i.akz = icmp eq i32 %i.aky, 0
  br i1 %i.akz, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %3) #24
          to label %bb.ny unwind label %bb.ci

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit832: ; preds = %bb.ny, %bb.nz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit828
  %.sroa.108.311213 = phi i32 [ %.sroa.108.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit828 ], [ %.sroa.108.31.ph, %bb.nz ], [ %.sroa.108.31.ph, %bb.ny ]
  %.sroa.0158.311211 = phi ptr [ %.sroa.0158.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit828 ], [ %.sroa.0158.31.ph, %bb.nz ], [ %.sroa.0158.31.ph, %bb.ny ]
  %i.ala = insertvalue { ptr, i32 } poison, ptr %.sroa.0158.311211, 0
  %i.alb = insertvalue { ptr, i32 } %i.ala, i32 %.sroa.108.311213, 1
  resume { ptr, i32 } %i.alb

bb.ny:                                            ; preds = %bb.ms, %bb.nx, %bb.nw
  %.sroa.0158.31.ph = phi ptr [ %i.agx, %bb.ms ], [ %.sroa.0158.321231, %bb.nx ], [ %.sroa.0158.321231, %bb.nw ] ; 2 uses
  %.sroa.108.31.ph = phi i32 [ %i.agy, %bb.ms ], [ %.sroa.108.321232, %bb.nx ], [ %.sroa.108.321232, %bb.nw ] ; 2 uses
  %.val278 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.val278, i64 48 ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4, !noundef !12
  %i.ale = add i32 %i.ald, -1                     ; 2 uses
  store i32 %i.ale, ptr %i.alc, align 4
  %i.alf = icmp eq i32 %i.ale, 0
  br i1 %i.alf, label %bb.nz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit832

bb.nz:                                            ; preds = %bb.ny
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val278) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit832 unwind label %bb.ci
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1250 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [120 x i8], align 8               ; 6 uses
  %i.s = alloca [120 x i8], align 8               ; 28 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [112 x i8], align 8               ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.442.sroa.6 = alloca [3 x i8], align 1    ; 3 uses
  %.sroa.442.sroa.7.sroa.0 = alloca [100 x i8], align 4 ; 3 uses
  %.sroa.644 = alloca [104 x i8], align 8         ; 2 uses
  %.sroa.8674.sroa.6 = alloca [3 x i8], align 1   ; 5 uses
  %.sroa.8674.sroa.7 = alloca [100 x i8], align 4 ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [280 x i8], align 8               ; 6 uses
  %i.y = alloca [280 x i8], align 8               ; 6 uses
  %i.z = alloca [240 x i8], align 8               ; 18 uses
  %i.aa = alloca [40 x i8], align 8               ; 10 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 11 uses
  %i.ag = alloca [8 x i8], align 8                ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [8 x i8], align 8                ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.5 = alloca [36 x i8], align 4            ; 5 uses
  %i.an = alloca [280 x i8], align 8              ; 6 uses
  %i.ao = alloca [280 x i8], align 8              ; 6 uses
  %i.ap = alloca [240 x i8], align 8              ; 11 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 8 uses
  %i.av = alloca [40 x i8], align 8               ; 8 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [40 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.ay = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %bb.b, label %.thread740

.thread737:                                       ; preds = %bb.c, %bb.g, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread732

default.unreachable:                              ; preds = %bb.ce
  unreachable

.thread740:                                       ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  store i64 2, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr null, ptr %i.ba, align 8
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bb, label %bb.c [
    i8 0, label %.thread740
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !31

bb.c:                                             ; preds = %bb.b
  %i.bc = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze10___CALLSITE)
          to label %bb.e unwind label %.thread737 ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.05.0 = phi i8 [ %i.bc, %bb.e ], [ %i.bb, %bb.b ], [ %i.bb, %bb.b ]
  %i.bd = load ptr, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze10___CALLSITE, align 8, !nonnull !12, !align !30, !noundef !12
  %i.be = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, i8 noundef %.sroa.05.0)
          to label %bb.f unwind label %.thread737

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %.thread740, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.be, label %bb.g, label %.thread740

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr @_RNvNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze10___CALLSITE, align 8, !nonnull !12, !align !30, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store i64 1, ptr %i.aw, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.582.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bg, ptr %i.bh, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.h unwind label %.thread737

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.pr = load i64, ptr %i.av, align 8, !alias.scope !1251
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bi)
          to label %bb.l unwind label %bb.j, !noalias !1252

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.av) #26
          to label %.thread732 unwind label %bb.k, !noalias !1252

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !1252
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h, %.thread740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bl = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 6 uses
  store ptr %i.bl, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !12, !noundef !12 ; 7 uses
  store ptr %i.bn, ptr %i.at, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !12, !noundef !12 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0578.0.copyload = load ptr, ptr %i.bs, align 8 ; 16 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 17 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  %.sroa.17584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.17584.0.copyload = load ptr, ptr %.sroa.17584.0..sroa_idx, align 8 ; 17 uses
  %i.bt = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.n unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438: ; preds = %.invoke908, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit456, %bb.ns, %bb.nj, %bb.nk, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.m
  %.sroa.058.0 = phi i8 [ %.sroa.058.1, %bb.m ], [ %.sroa.058.3, %bb.nj ], [ %.sroa.058.3, %bb.nc ], [ %.sroa.058.3, %bb.my ], [ %.sroa.058.3, %bb.nd ], [ %.sroa.058.3, %bb.mz ], [ %.sroa.058.3, %bb.nb ], [ %.sroa.058.3, %bb.na ], [ %.sroa.058.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit456 ], [ %.sroa.058.3, %bb.nk ], [ %.sroa.058.3, %bb.ns ], [ %.sroa.058.3, %.invoke908 ]
  %.pn189 = phi { ptr, i32 } [ %i.bu, %bb.m ], [ %i.acr, %bb.nj ], [ %.pn168, %bb.nc ], [ %.pn168, %bb.my ], [ %.pn168, %bb.nd ], [ %.pn168, %bb.mz ], [ %.pn168, %bb.nb ], [ %.pn168, %bb.na ], [ %.pn153, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit456 ], [ %i.acr, %bb.nk ], [ %.pn153, %bb.ns ], [ %.pn168, %.invoke908 ] ; 3 uses
  %.not191 = icmp eq ptr %.sroa.0578.0.copyload, null
  %cond217 = icmp eq i8 %.sroa.058.0, 0
  %or.cond218 = or i1 %.not191, %cond217
  br i1 %or.cond218, label %.thread742, label %bb.qv

bb.m:                                             ; preds = %.invoke, %bb.qk, %bb.nw, %bb.bw, %bb.bu, %bb.nm, %bb.ne, %bb.ah, %bb.ab, %bb.y, %bb.w, %bb.u, %bb.s, %bb.p, %bb.n, %bb.l
  %.sroa.058.1 = phi i8 [ 0, %bb.bu ], [ %.sroa.058.3, %bb.qk ], [ %.sroa.058.3, %bb.nw ], [ %.sroa.058.3, %bb.nm ], [ %.sroa.058.3, %.invoke ], [ %.sroa.058.3, %bb.ne ], [ 1, %bb.l ], [ %.sroa.058.3, %bb.ah ], [ 0, %bb.bw ], [ 1, %bb.ab ], [ 1, %bb.y ], [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.n ]
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.n:                                             ; preds = %bb.l
  %i.bv = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %.not128 = icmp eq i16 %i.bt, %i.bv
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.r unwind label %bb.m

bb.q:                                             ; preds = %bb.r, %bb.ac, %bb.aa, %bb.t, %bb.t, %bb.o
  %.not130 = icmp ne ptr %.sroa.0578.0.copyload, null ; 2 uses
  br i1 %.not130, label %bb.ag, label %bb.ah

bb.r:                                             ; preds = %bb.p
  %.off = add nsw i16 %i.bw, -2
  %switch = icmp ult i16 %.off, 52
  br i1 %switch, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.s
  switch i16 %i.bx, label %bb.u [
    i16 150, label %bb.q
    i16 157, label %bb.q
  ]

bb.u:                                             ; preds = %bb.t
  %i.by = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3)
          to label %bb.v unwind label %bb.m       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bz = icmp eq i16 %i.by, 153
  br i1 %i.bz, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = invoke noundef zeroext i1 @_RNvMNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB2_10SyntaxKind10is_keyword(i16 noundef %i.by, i8 noundef 3)
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %bb.w
  br i1 %i.ca, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.x
  %i.cb = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.m      ; 2 uses

bb.z:                                             ; preds = %bb.ac, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.cc, align 8
  %.not129 = icmp eq ptr %.sroa.0578.0.copyload, null
  br i1 %.not129, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cd = icmp eq i16 %i.cb, 153
  br i1 %i.cd, label %bb.q, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = invoke noundef zeroext i1 @_RNvMNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB2_10SyntaxKind10is_keyword(i16 noundef %i.cb, i8 noundef 3)
          to label %bb.ac unwind label %bb.m

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ce, label %bb.q, label %bb.z

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454, %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0578.0.copyload) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0578.0.copyload, i64 48 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !12
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.a

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0578.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.a unwind label %bb.qp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit373, %.noexc548, %bb.qn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !noundef !12
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.br) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.mt

bb.ag:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %.sroa.0578.0.copyload, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  store ptr %.sroa.12.0.copyload, ptr %i.ar, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17584.0.copyload) ]
  %i.cn = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion(ptr nonnull %.sroa.17584.0.copyload)
          to label %bb.ak unwind label %bb.aj     ; 2 uses

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit377, %bb.q
  %.sroa.058.3 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit377 ], [ 1, %bb.q ] ; 18 uses
  %i.co = invoke { i64, ptr } @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtB4_3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, i32 noundef %i.bp)
          to label %bb.bx unwind label %bb.m      ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %bb.aj
  %.pn183 = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %.pn181, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i ], [ %.pn181, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !noundef !12
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i353, %bb.ag
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cu = extractvalue { i64, ptr } %i.cn, 0      ; 2 uses
  %.not131 = icmp eq i64 %i.cu, -1
  br i1 %.not131, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = extractvalue { i64, ptr } %i.cn, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 %i.cu, ptr %i.aq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = invoke { i64, ptr } @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtB4_3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, i32 noundef %.sroa.16.0.copyload)
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.am:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !noundef !12
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  store i32 %i.da, ptr %i.cy, align 4
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.an, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit344

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit344 unwind label %bb.bq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.ao
  %.pn181 = phi { ptr, i32 } [ %i.dg, %bb.ao ], [ %i.ej, %bb.bl ], [ %.pn175.ph, %bb.bk ], [ %i.ej, %bb.bm ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !noundef !12
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.dc, align 4
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cv) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bj

bb.ao:                                            ; preds = %bb.av, %bb.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i361, %bb.al
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357

bb.ap:                                            ; preds = %bb.al
  %i.dh = extractvalue { i64, ptr } %i.cx, 0
  %i.di = extractvalue { i64, ptr } %i.cx, 1      ; 10 uses
  switch i64 %i.dh, label %bb.bn [
    i64 0, label %bb.aq
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion.exit363
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %.val233 = load ptr, ptr %i.dj, align 8, !noundef !12 ; 3 uses
  %.not.i346 = icmp eq ptr %.val233, null
  br i1 %.not.i346, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %.val233, i64 48 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !12 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.as, label %bb.at, !prof !19

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc347 unwind label %bb.bl

.noexc347:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dn = add nuw i32 %i.dl, 1
  store i32 %i.dn, ptr %i.dk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis17classify_name_ref(ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.an, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noundef nonnull %i.di, i32 noundef %.sroa.16.0.copyload, ptr noundef nonnull %.val233)
          to label %bb.aw unwind label %bb.ao

bb.au:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !noundef !12
  %i.dr = add i32 %i.dq, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.di) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.ao

bb.aw:                                            ; preds = %bb.at
  %i.dt = load i64, ptr %i.an, align 8, !range !36, !noundef !12
  %.not174 = icmp eq i64 %i.dt, -1
  br i1 %.not174, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ao, ptr noundef nonnull align 8 dereferenceable(280) %i.an, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, ptr noundef nonnull align 8 dereferenceable(240) %i.ao, i64 240, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context12QualifierCtxEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.du)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit

bb.az:                                            ; preds = %bb.bb, %bb.ax
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.dx = load i64, ptr %i.ap, align 8, !range !21, !noundef !12
  %i.dy = icmp samesign ult i64 %i.dx, 6
  br i1 %i.dy, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl20resolve_derive_macro(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !1253
  %.sroa.4.0..sroa_idx609 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx609, align 8, !noalias !1254
  %.sroa.5611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %.sroa.5611.0..sroa_idx, align 8, !noalias !1254
  %.sroa.6612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i32 -2, ptr %.sroa.6612.0..sroa_idx, align 8, !noalias !1254
  %.sroa.7614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  store i32 -2, ptr %.sroa.7614.0..sroa_idx, align 4, !noalias !1254
  invoke void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs8Xq8PKFYOms_3hir5MacroNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB23_8adapters7flatten7FlattenIB31_INtNtB25_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB3I_6OptionBO_EEEEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.u)
          to label %bb.bf unwind label %bb.bd, !noalias !1253

bb.bd:                                            ; preds = %bb.bc
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs8Xq8PKFYOms_3hir5MacrouEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.bk unwind label %bb.be, !noalias !1253

bb.be:                                            ; preds = %bb.bd
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !1253
  unreachable

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1253
  %.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context8PathKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ec)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i32 14, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, i64 36, i1 false)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i32 14, ptr %.sroa.4.0..sroa_idx14, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ba, %bb.bh
  %.sroa.8625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.8625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %i.ap, i64 240, i1 false)
  %.sroa.9.0..sroa_idx626 = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx626, i8 0, i64 40, i1 false)
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.4621.0..sroa_idx, align 8
  %.sroa.6623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.6623.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.bi, %bb.ay, %bb.av, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion.exit363
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !noundef !12
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i353, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit355

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i353: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cv) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit355 unwind label %bb.aj

bb.bj:                                            ; preds = %.invoke908, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qu, %bb.qr, %bb.qq, %bb.qo, %bb.qf, %bb.pz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i505.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i497.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i489.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %bb.ot, %bb.of, %bb.nx, %bb.ns, %bb.nk, %bb.mv, %bb.ms, %bb.mk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379, %bb.bs, %bb.bp, %bb.bm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i, %bb.ai, %.critedge208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433, %.thread779, %bb.mc, %.body386, %bb.bk
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bk:                                            ; preds = %bb.bg, %bb.az, %bb.bd
  %.pn175.ph = phi { ptr, i32 } [ %i.ed, %bb.bg ], [ %i.dw, %bb.az ], [ %i.ea, %bb.bd ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context14NameRefContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.ap) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.as
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !noundef !12
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %i.ek, align 8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.di) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit357 unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion.exit363: ; preds = %bb.ap, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i361
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.eo, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit

bb.bn:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !noundef !12
  %i.er = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.er, ptr %i.ep, align 4
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i361, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion.exit363

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i361: ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.di) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsf8NQSppxkmK_14ide_completion.exit363 unwind label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit355: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsf8NQSppxkmK_14ide_completion.exit.sink.split.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !noundef !12
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit365

bb.bo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit355
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit365 unwind label %bb.bq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit, %bb.ai, %bb.bq
  %.pn185 = phi { ptr, i32 } [ %i.fb, %bb.bq ], [ %.pn183, %bb.ai ], [ %.pn183, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !noundef !12
  %i.ez = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 4
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367

bb.bp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367 unwind label %bb.bj

bb.bq:                                            ; preds = %bb.bo, %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit365: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsf8NQSppxkmK_14ide_completion.exit355, %bb.bo
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !12
  %i.fe = add i32 %i.fd, -1                       ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 4
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit369

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit365
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit369 unwind label %bb.bt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit, %bb.bp, %bb.bt
  %.pn187 = phi { ptr, i32 } [ %i.fk, %bb.bt ], [ %.pn185, %bb.bp ], [ %.pn185, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0578.0.copyload, i64 48 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !noundef !12
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bs, label %.thread742

bb.bs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0578.0.copyload) #24
          to label %.thread742 unwind label %bb.bj

bb.bt:                                            ; preds = %bb.bv, %bb.br
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit369: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit365, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0578.0.copyload, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !12
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.bu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit373

bb.bu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit369
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0578.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit373 unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit373: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit369, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit344: ; preds = %bb.am, %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !noundef !12
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit375

bb.bv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit344
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit375 unwind label %bb.bt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit375: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit344, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0578.0.copyload, i64 48 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !12
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit377

bb.bw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit375
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0578.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit377 unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit377: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit375, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ah

bb.bx:                                            ; preds = %bb.ah
  %i.fx = extractvalue { i64, ptr } %i.co, 0      ; 4 uses
  %.not132 = icmp eq i64 %i.fx, -1
  br i1 %.not132, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fy = extractvalue { i64, ptr } %i.co, 1      ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val331 = load ptr, ptr %4, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis22expected_type_and_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ab, ptr noundef nonnull align 8 %1, ptr nonnull %.val331, i64 %i.fx, ptr %i.fy)
          to label %bb.ce unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %.val229 = load ptr, ptr %3, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val229, i64 48 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !noundef !12 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, -1
  br i1 %i.gb, label %.invoke, label %bb.ne, !prof !19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381: ; preds = %bb.cc, %bb.cb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379, %bb.ca
  %.sroa.069.0 = phi i1 [ %.sroa.069.1, %bb.ca ], [ %.sroa.069.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379 ], [ %.sroa.069.2, %bb.cb ], [ %.sroa.069.2, %bb.cc ]
  %.sroa.068.0 = phi i1 [ %.sroa.068.1, %bb.ca ], [ %.sroa.068.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379 ], [ %.sroa.068.2, %bb.cb ], [ %.sroa.068.2, %bb.cc ]
  %.sroa.067.0 = phi i1 [ %.sroa.067.1, %bb.ca ], [ %.sroa.067.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379 ], [ %.sroa.067.2, %bb.cb ], [ %.sroa.067.2, %bb.cc ]
  %.pn168 = phi { ptr, i32 } [ %i.gc, %bb.ca ], [ %.pn166, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379 ], [ %.pn166, %bb.cb ], [ %.pn166, %bb.cc ] ; 7 uses
  switch i64 %i.fx, label %bb.my [
    i64 0, label %bb.mz
    i64 1, label %bb.na
  ]

bb.ca:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425, %bb.by
  %.sroa.069.1 = phi i1 [ %.sroa.069.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425 ], [ true, %bb.by ]
  %.sroa.068.1 = phi i1 [ %.sroa.068.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425 ], [ true, %bb.by ]
  %.sroa.067.1 = phi i1 [ %.sroa.067.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425 ], [ true, %bb.by ]
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381

bb.cb:                                            ; preds = %.body386, %bb.cd
  %.sroa.069.2 = phi i1 [ %.sroa.069.6, %bb.cd ], [ %.sroa.069.4, %.body386 ] ; 3 uses
  %.sroa.068.2 = phi i1 [ %.sroa.068.6, %bb.cd ], [ %.sroa.068.4, %.body386 ] ; 3 uses
  %.sroa.067.2 = phi i1 [ %.sroa.067.6, %bb.cd ], [ %.sroa.067.4, %.body386 ] ; 3 uses
  %.pn166 = phi { ptr, i32 } [ %i.gk, %bb.cd ], [ %.pn163.pn, %.body386 ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.val319 = load i64, ptr %i.gd, align 8, !range !15, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.val320 = load ptr, ptr %i.ge, align 8         ; 3 uses
  %i.gf = icmp eq i64 %.val319, 2
  br i1 %i.gf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val320) ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.val320, i64 48 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !noundef !12
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i379: ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val320) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381 unwind label %bb.bj

bb.cd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ce:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false), !alias.scope !1256
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  switch i64 %i.fx, label %default.unreachable [
    i64 0, label %bb.cf
    i64 1, label %bb.ci
    i64 2, label %bb.gw
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.gl = getelementptr i8, ptr %i.fy, i64 16
  %.val232 = load ptr, ptr %i.gl, align 8, !noundef !12 ; 3 uses
  %.not.i382 = icmp eq ptr %.val232, null
  br i1 %.not.i382, label %bb.jj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gm = getelementptr inbounds nuw i8, ptr %.val232, i64 48 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !noundef !12 ; 2 uses
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %bb.ch, label %bb.ji, !prof !19

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc383 unwind label %bb.mj

.noexc383:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8674.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8674.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.fy, ptr %i.t, align 8, !noalias !1257
  %i.gp = getelementptr i8, ptr %i.fy, i64 16
  %.val57.i = load ptr, ptr %i.gp, align 8, !noalias !1257, !noundef !12 ; 36 uses
  %.not.i.i = icmp eq ptr %.val57.i, null
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit225.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gq = getelementptr inbounds nuw i8, ptr %.val57.i, i64 48 ; 67 uses
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !1258, !noundef !12 ; 3 uses
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.ck, label %bb.cn, !prof !19

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc.i unwind label %bb.cm, !noalias !1258

.noexc.i:                                         ; preds = %bb.ck
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.co, %.body.i, %bb.cm
  %.pn38.i = phi { ptr, i32 } [ %i.gx, %bb.cm ], [ %.pn36.i, %bb.co ], [ %.pn36.i, %.body.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !noalias !1257, !noundef !12
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 8, !noalias !1257
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.cl, label %.body386

bb.cl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fy) #24
          to label %.body386 unwind label %bb.fc, !noalias !1258

bb.cm:                                            ; preds = %bb.gv, %bb.gu, %bb.ck
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.i

bb.cn:                                            ; preds = %bb.cj
  %i.gy = add nuw i32 %i.gr, 1                    ; 2 uses
  store i32 %i.gy, ptr %i.gq, align 4, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1257
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val57.i) ]
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %.invoke304.i, label %bb.cq, !prof !19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit225.i: ; preds = %bb.ci, %bb.gv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantEECsf8NQSppxkmK_14ide_completion.exit219.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !noalias !1257, !noundef !12
end_hunk_0
begin_hunk_1_@_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze:bb.a

bb.lz:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop.exit.thread
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  br label %bb.mc

bb.ma:                                            ; preds = %bb.ly, %bb.km, %bb.jx, %bb.jr
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %.thread779

_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop.exit: ; preds = %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop0B7_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForExprECsf8NQSppxkmK_14ide_completion.exit100.i.i, %bb.ly
  %i.aam = phi i1 [ %i.zo, %bb.ly ], [ %i.aaj, %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop0B7_.exit.i ], [ %i.zo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ForExprECsf8NQSppxkmK_14ide_completion.exit100.i.i ]
  br i1 %i.aam, label %bb.mb, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop.exit.thread

bb.mb:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop.exit
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.aan, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context12QualifierCtxEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w)
          to label %bb.me unwind label %bb.md

bb.mc:                                            ; preds = %bb.lz, %.thread779, %bb.md
  %.pn161 = phi { ptr, i32 } [ %i.aao, %bb.md ], [ %eh.lpad-body417, %.thread779 ], [ %i.aak, %bb.lz ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context14NameRefContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.z) #26
          to label %.body386 unwind label %bb.bj

bb.md:                                            ; preds = %bb.mb
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.me:                                            ; preds = %bb.mb
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context14NameRefContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.z)
          to label %bb.mf unwind label %.thread776

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412: ; preds = %bb.mf, %bb.jo, %bb.jk, %bb.jj, %bb.mp, %bb.mn
  %.sroa.069.6 = phi i1 [ true, %bb.mp ], [ false, %bb.mn ], [ true, %bb.jj ], [ true, %bb.jk ], [ true, %bb.jo ], [ true, %bb.mf ] ; 2 uses
  %.sroa.068.6 = phi i1 [ true, %bb.mp ], [ true, %bb.mn ], [ false, %bb.jj ], [ false, %bb.jk ], [ false, %bb.jo ], [ false, %bb.mf ] ; 2 uses
  %.sroa.067.6 = phi i1 [ false, %bb.mp ], [ true, %bb.mn ], [ true, %bb.jj ], [ true, %bb.jk ], [ true, %bb.jo ], [ true, %bb.mf ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context12QualifierCtxEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aa)
          to label %bb.mq unwind label %bb.cd

bb.mg:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis23is_in_token_of_for_loop.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %.sroa.048.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.449.sroa.0.0.copyload = load i32, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.449.sroa.4.sroa.0.0.copyload = load i32, ptr %.sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx, align 4
  %.sroa.449.sroa.4.sroa.4.0..sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.449.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.449.sroa.4.sroa.4.0..sroa.449.sroa.4.0..sroa.449.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.449.sroa.5.0.copyload = load i8, ptr %.sroa.449.sroa.5.0..sroa.449.0..sroa_idx.sroa_idx, align 8
  %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.442.sroa.6, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.449.sroa.6.0..sroa.449.0..sroa_idx.sroa_idx, i64 3, i1 false)
  %.sroa.449.sroa.7.0..sroa.449.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.442.sroa.7.sroa.0, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.449.sroa.7.0..sroa.449.0..sroa_idx.sroa_idx, i64 100, i1 false)
  %.sroa.449.sroa.7.sroa.4.0..sroa.449.sroa.7.0..sroa.449.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %.sroa.449.sroa.7.sroa.4.0.copyload = load ptr, ptr %.sroa.449.sroa.7.sroa.4.0..sroa.449.sroa.7.0..sroa.449.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.644, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.550.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mo, %bb.mm, %bb.mg
  %.sroa.442.sroa.7.sroa.3.0 = phi ptr [ %.sroa.449.sroa.7.sroa.4.0.copyload, %bb.mg ], [ %.sroa.8676.1, %bb.mm ], [ undef, %bb.mo ]
  %.sroa.442.sroa.4.sroa.0.0 = phi i32 [ %.sroa.449.sroa.4.sroa.0.0.copyload, %bb.mg ], [ %.sroa.0718.sroa.4.0.extract.trunc, %bb.mm ], [ %.sroa.8668.sroa.0.1, %bb.mo ]
  %.sroa.442.sroa.4.sroa.4.0 = phi i64 [ %.sroa.449.sroa.4.sroa.4.0.copyload, %bb.mg ], [ %.sroa.8674.sroa.0.1, %bb.mm ], [ %.sroa.8668.sroa.5.1, %bb.mo ]
  %.sroa.442.sroa.5.0 = phi i8 [ %.sroa.449.sroa.5.0.copyload, %bb.mg ], [ %.sroa.8674.sroa.5.1, %bb.mm ], [ %.sroa.9669.1, %bb.mo ]
  %.sroa.442.sroa.0.0 = phi i32 [ %.sroa.449.sroa.0.0.copyload, %bb.mg ], [ %.sroa.0718.sroa.0.0.extract.trunc, %bb.mm ], [ %.sroa.0667.2, %bb.mo ]
  %.sroa.040.0 = phi i64 [ %.sroa.048.0.copyload, %bb.mg ], [ 11, %bb.mm ], [ 13, %bb.mo ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.755.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.040.0, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.442.sroa.0.0, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.442.sroa.4.sroa.0.0, ptr %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx, align 4
  %.sroa.553.sroa.4.sroa.4.0..sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.442.sroa.4.sroa.4.0, ptr %.sroa.553.sroa.4.sroa.4.0..sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.553.sroa.5.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.442.sroa.5.0, ptr %.sroa.553.sroa.5.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  %.sroa.553.sroa.6.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.553.sroa.6.0..sroa.553.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.442.sroa.6, i64 3, i1 false)
  %.sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.442.sroa.7.sroa.0, i64 100, i1 false)
  %.sroa.553.sroa.7.sroa.4.0..sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.442.sroa.7.sroa.3.0, ptr %.sroa.553.sroa.7.sroa.4.0..sroa.553.sroa.7.0..sroa.553.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.644, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !noundef !12
  %i.aar = add i32 %i.aaq, -1                     ; 2 uses
  store i32 %i.aar, ptr %i.aap, align 4
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.mi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit421

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.br) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit421 unwind label %bb.mt

.thread779:                                       ; preds = %bb.jt, %bb.ju, %.body.i.i, %bb.kc, %bb.ma
  %eh.lpad-body417 = phi { ptr, i32 } [ %i.aal, %bb.ma ], [ %i.vp, %bb.jt ], [ %i.vp, %bb.ju ], [ %.pn37.i.i, %.body.i.i ], [ %.pn37.i.i, %bb.kc ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsf8NQSppxkmK_14ide_completion7context12QualifierCtxEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w) #26
          to label %bb.mc unwind label %bb.bj

bb.mj:                                            ; preds = %bb.ch
  %lpad.thr_comm.split-lp775 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 8, !noundef !12
  %i.aav = add i32 %i.aau, -1                     ; 2 uses
  store i32 %i.aav, ptr %i.aat, align 8
  %i.aaw = icmp eq i32 %i.aav, 0
  br i1 %i.aaw, label %bb.mk, label %.body386

bb.mk:                                            ; preds = %bb.mj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fy) #24
          to label %.body386 unwind label %bb.bj

bb.ml:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit221.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit104.sink.split.i
  %.sroa.8674.sroa.0.1 = phi i64 [ %.sroa.8674.sroa.0.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit221.i ], [ %.sroa.8674.sroa.0.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit104.sink.split.i ]
  %.sroa.8674.sroa.5.1 = phi i8 [ %.sroa.8674.sroa.5.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit221.i ], [ %.sroa.8674.sroa.5.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit104.sink.split.i ]
  %.sroa.8676.1 = phi ptr [ %i.pq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit221.i ], [ %.sroa.8676.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit104.sink.split.i ]
  %.sroa.0672.2 = phi i64 [ %.sroa.0672.0.copyload673, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit221.i ], [ %.sroa.0672.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit104.sink.split.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not156 = icmp eq i64 %.sroa.0672.2, -1
  br i1 %.not156, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %.sroa.0718.sroa.0.0.extract.trunc = trunc i64 %.sroa.0672.2 to i32
  %.sroa.0718.sroa.4.0.extract.shift = lshr i64 %.sroa.0672.2, 32
  %.sroa.0718.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.0718.sroa.4.0.extract.shift to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.442.sroa.6, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8674.sroa.6, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.442.sroa.7.sroa.0, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.8674.sroa.7, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8674.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8674.sroa.7)
  br label %bb.mh

bb.mn:                                            ; preds = %.thread783, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8674.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8674.sroa.7)
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.aax, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412

bb.mo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit84.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit41.sink.split.i
  %.sroa.8668.sroa.0.1 = phi i32 [ %.sroa.6.i.sroa.0.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit84.i ], [ %.sroa.8668.sroa.0.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit41.sink.split.i ]
  %.sroa.8668.sroa.5.1 = phi i64 [ %.sroa.6.i.sroa.4.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit84.i ], [ %.sroa.8668.sroa.5.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit41.sink.split.i ]
  %.sroa.9669.1 = phi i8 [ %.sroa.65.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit84.i ], [ %.sroa.9669.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit41.sink.split.i ]
  %.sroa.0667.2 = phi i32 [ %.sroa.02.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit84.i ], [ %.sroa.0667.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsf8NQSppxkmK_14ide_completion.exit41.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not155 = icmp eq i32 %.sroa.0667.2, -2
  br i1 %.not155, label %bb.mp, label %bb.mh

bb.mp:                                            ; preds = %.thread789, %bb.mo
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.aay, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412

bb.mq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.val317 = load i64, ptr %i.aaz, align 8, !range !15, !noundef !12
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.val318 = load ptr, ptr %i.aba, align 8        ; 3 uses
  %i.abb = icmp eq i64 %.val317, 2
  br i1 %i.abb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit427, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val318) ]
  %i.abc = getelementptr inbounds nuw i8, ptr %.val318, i64 48 ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !noundef !12
  %i.abe = add i32 %i.abd, -1                     ; 2 uses
  store i32 %i.abe, ptr %i.abc, align 4
  %i.abf = icmp eq i32 %i.abe, 0
  br i1 %i.abf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit427

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425: ; preds = %bb.mr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val318) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit427 unwind label %bb.ca

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit427: ; preds = %bb.mr, %bb.mq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit476, %bb.nw, %bb.nr, %bb.ql, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit427
  %i.abg = trunc nuw i8 %.sroa.058.3 to i1
  %or.cond801 = and i1 %.not130, %i.abg
  br i1 %or.cond801, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554: ; preds = %.thread742, %bb.qo, %bb.mt
  %.pn197 = phi { ptr, i32 } [ %i.abl, %bb.mt ], [ %.pn195, %bb.qo ], [ %.pn195, %.thread742 ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !noundef !12
  %i.abj = add i32 %i.abi, -1                     ; 2 uses
  store i32 %i.abj, ptr %i.abh, align 4
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %bb.ms, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429

bb.ms:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bn) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429 unwind label %bb.bj

bb.mt:                                            ; preds = %bb.mi, %bb.af
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit421: ; preds = %bb.mh, %bb.mi
  %i.abm = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4, !noundef !12
  %i.abo = add i32 %i.abn, -1                     ; 2 uses
  store i32 %i.abo, ptr %i.abm, align 4
  %i.abp = icmp eq i32 %i.abo, 0
  br i1 %i.abp, label %bb.mu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit431

bb.mu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit421
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bn) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit431 unwind label %bb.mw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554, %bb.ms, %bb.mw
  %.pn199 = phi { ptr, i32 } [ %i.abu, %bb.mw ], [ %.pn197, %bb.ms ], [ %.pn197, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554 ] ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.abr = load i32, ptr %i.abq, align 4, !noundef !12
  %i.abs = add i32 %i.abr, -1                     ; 2 uses
  store i32 %i.abs, ptr %i.abq, align 4
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.mv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433

bb.mv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bl) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433 unwind label %bb.bj

bb.mw:                                            ; preds = %bb.qs, %bb.mu
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit431: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit421, %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !noundef !12
  %i.abx = add i32 %i.abw, -1                     ; 2 uses
  store i32 %i.abx, ptr %i.abv, align 4
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %.invoke911, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit563

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429, %bb.mv, %bb.mx
  %.pn201 = phi { ptr, i32 } [ %i.abz, %bb.mx ], [ %.pn199, %bb.mv ], [ %.pn199, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit429 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ax) #26
          to label %.critedge209 unwind label %bb.bj

bb.mx:                                            ; preds = %.invoke911
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit563: ; preds = %.invoke911, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit431, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  ret void

bb.my:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381
  br i1 %.sroa.067.0, label %bb.nd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.mz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381
  br i1 %.sroa.068.0, label %bb.nb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.na:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtCs8Xq8PKFYOms_3hir4TypeEIBD_NtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext13NameOrNameRefEEECsf8NQSppxkmK_14ide_completion.exit381
  br i1 %.sroa.069.0, label %bb.nc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.nb:                                            ; preds = %bb.mz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  %i.aca = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4, !noundef !12
  %i.acc = add i32 %i.acb, -1                     ; 2 uses
  store i32 %i.acc, ptr %i.aca, align 4
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %.invoke908, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.nc:                                            ; preds = %bb.na
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  %i.ace = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 4, !noundef !12
  %i.acg = add i32 %i.acf, -1                     ; 2 uses
  store i32 %i.acg, ptr %i.ace, align 4
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %.invoke908, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.nd:                                            ; preds = %bb.my
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  %i.aci = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4, !noundef !12
  %i.ack = add i32 %i.acj, -1                     ; 2 uses
  store i32 %i.ack, ptr %i.aci, align 4
  %i.acl = icmp eq i32 %i.ack, 0
  br i1 %i.acl, label %.invoke908, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

.invoke908:                                       ; preds = %bb.nd, %bb.nc, %bb.nb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fy) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438 unwind label %bb.bj

bb.ne:                                            ; preds = %bb.bz
  %i.acm = add nuw i32 %i.ga, 1
  store i32 %i.acm, ptr %i.fz, align 4
  %i.acn = invoke noundef ptr @_RNvXsT_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB5_6StringNtB9_8AstToken4cast(ptr noundef nonnull %.val229)
          to label %bb.nf unwind label %bb.m      ; 4 uses

bb.nf:                                            ; preds = %bb.ne
  %.not133 = icmp eq ptr %i.acn, null
  %.val227 = load ptr, ptr %4, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.val227, i64 48 ; 5 uses
  %i.acp = load i32, ptr %i.aco, align 4, !noundef !12 ; 3 uses
  %i.acq = icmp eq i32 %i.acp, -1                 ; 2 uses
  br i1 %.not133, label %bb.ni, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  br i1 %i.acq, label %bb.nh, label %bb.nl, !prof !19

bb.nh:                                            ; preds = %bb.ng
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc443 unwind label %bb.nj

.noexc443:                                        ; preds = %bb.nh
  unreachable

bb.ni:                                            ; preds = %bb.nf
  br i1 %i.acq, label %.invoke, label %bb.nm, !prof !19

.invoke:                                          ; preds = %bb.ni, %bb.bz
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.nj:                                            ; preds = %bb.nh, %bb.nl
  %i.acr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acn, i64 48 ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !noundef !12
  %i.acu = add i32 %i.act, -1                     ; 2 uses
  store i32 %i.acu, ptr %i.acs, align 4
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.nk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438

bb.nk:                                            ; preds = %bb.nj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.acn) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438 unwind label %bb.bj

bb.nl:                                            ; preds = %bb.ng
  %i.acw = add nuw i32 %i.acp, 1
  store i32 %i.acw, ptr %i.aco, align 4
  %i.acx = invoke noundef ptr @_RNvXsT_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB5_6StringNtB9_8AstToken4cast(ptr noundef nonnull %.val227)
          to label %bb.ql unwind label %bb.nj

bb.nm:                                            ; preds = %bb.ni
  %i.acy = add nuw i32 %i.acp, 1
  store i32 %i.acy, ptr %i.aco, align 4
  %i.acz = invoke noundef ptr @_RNvNtCsjJXvCMGntp8_6syntax4algo17skip_trivia_token(ptr noundef nonnull %.val227, i1 noundef zeroext true)
          to label %bb.nn unwind label %bb.m      ; 8 uses

bb.nn:                                            ; preds = %bb.nm
  %.not134 = icmp eq ptr %i.acz, null
  br i1 %.not134, label %bb.nr, label %bb.no

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ada = getelementptr i8, ptr %i.acz, i64 16
  %.val231 = load ptr, ptr %i.ada, align 8, !noundef !12 ; 9 uses
  %.not.i448 = icmp eq ptr %.val231, null
  br i1 %.not.i448, label %bb.nv, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.adb = getelementptr inbounds nuw i8, ptr %.val231, i64 48 ; 14 uses
  %i.adc = load i32, ptr %i.adb, align 4, !noundef !12 ; 2 uses
  %i.add = icmp eq i32 %i.adc, -1
  br i1 %i.add, label %bb.nq, label %bb.nu, !prof !19

bb.nq:                                            ; preds = %bb.np
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc449 unwind label %bb.nt

.noexc449:                                        ; preds = %bb.nq
  unreachable

bb.nr:                                            ; preds = %bb.nn
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.ade, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454

end_hunk_1
begin_hunk_2_@_RNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyze:bb.a
bb.pq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12CfgPredicateEECsf8NQSppxkmK_14ide_completion.exit474
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val231) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525 unwind label %bb.nt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit462: ; preds = %bb.ol, %bb.ok, %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.aiw = load i32, ptr %i.aco, align 4, !noundef !12 ; 2 uses
  %i.aix = icmp eq i32 %i.aiw, -1
  br i1 %i.aix, label %.invoke909, label %bb.pr, !prof !19

bb.pr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit462
  %i.aiy = add nuw i32 %i.aiw, 1
  store i32 %i.aiy, ptr %i.aco, align 4
  %i.aiz = invoke noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo25previous_non_trivia_tokenINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtB4_11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %.val227)
          to label %bb.ps unwind label %bb.ny     ; 2 uses

bb.ps:                                            ; preds = %bb.pr
  %.not143 = icmp eq ptr %i.aiz, null
  br i1 %.not143, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.aja = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsf8NQSppxkmK_14ide_completion7context8analysis7analyzes_0B7_(ptr noundef nonnull %i.aiz)
          to label %bb.px unwind label %bb.ny

bb.pu:                                            ; preds = %bb.ps, %bb.px
  %.sroa.029.0 = phi i8 [ %i.ajg, %bb.px ], [ 0, %bb.ps ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.ajb = getelementptr i8, ptr %i.br, i64 16
  %.val230 = load ptr, ptr %i.ajb, align 8, !noundef !12 ; 3 uses
  %.not.i528 = icmp eq ptr %.val230, null
  br i1 %.not.i528, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit530, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val230, i64 48 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !noundef !12 ; 2 uses
  %i.aje = icmp eq i32 %i.ajd, -1
  br i1 %i.aje, label %.invoke909, label %bb.pw, !prof !19

bb.pw:                                            ; preds = %bb.pv
  %i.ajf = add nuw i32 %i.ajd, 1
  store i32 %i.ajf, ptr %i.ajc, align 4
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit530

.invoke909:                                       ; preds = %bb.pv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit462, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit470, %bb.oo, %bb.oa
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.cont910 unwind label %bb.ny

.cont910:                                         ; preds = %.invoke909
  unreachable

bb.px:                                            ; preds = %bb.pt
  %i.ajg = zext i1 %i.aja to i8
  br label %bb.pu

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit530: ; preds = %bb.pw, %bb.pu
  store ptr %.val230, ptr %i.ai, align 8
  %i.ajh = invoke fastcc noundef ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB41_3ast9generated5nodes13TokenTreeMetaENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_8find_map5checkB3y_B5u_NvYB5u_NtB5A_7AstNode4castE0E0B4P_ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ai)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.qb ; 4 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.qt, %.thread795, %bb.qu, %bb.qb
  %.pn148.pn = phi { ptr, i32 } [ %.pn148798, %bb.qt ], [ %i.ajq, %bb.qb ], [ %.pn148798, %bb.qu ], [ %.pn148798, %.thread795 ] ; 3 uses
  %.val259 = load ptr, ptr %i.ai, align 8, !noundef !12 ; 3 uses
  %i.aji = icmp eq ptr %.val259, null
  br i1 %i.aji, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit, label %bb.py

bb.py:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit
  %i.ajj = getelementptr inbounds nuw i8, ptr %.val259, i64 48 ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !noundef !12
  %i.ajl = add i32 %i.ajk, -1                     ; 2 uses
  store i32 %i.ajl, ptr %i.ajj, align 4
  %i.ajm = icmp eq i32 %i.ajl, 0
  br i1 %i.ajm, label %bb.pz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit

bb.pz:                                            ; preds = %bb.py
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val259) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit530
  %.not144 = icmp eq ptr %i.ajh, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ajn = load i32, ptr %i.adb, align 4, !noundef !12 ; 2 uses
  %i.ajo = icmp eq i32 %i.ajn, -1
  br i1 %i.ajo, label %bb.qa, label %bb.qc, !prof !19

bb.qa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
          to label %.noexc533 unwind label %.thread799

.thread799:                                       ; preds = %bb.qa
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  br label %.thread795

.noexc533:                                        ; preds = %bb.qa
  unreachable

bb.qb:                                            ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit530, %bb.qh
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit

bb.qc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit
  %i.ajr = add nuw i32 %i.ajn, 1
  store i32 %i.ajr, ptr %i.adb, align 4
  store ptr %.val231, ptr %i.ah, align 8
  %i.ajs = invoke fastcc noundef ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB41_3ast9generated5nodes11ExternCrateENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_8find_map5checkB3y_B5u_NvYB5u_NtB5A_7AstNode4castE0E0B4P_ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.ajt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val258 = load ptr, ptr %i.ah, align 8, !noundef !12 ; 3 uses
  %i.aju = icmp eq ptr %.val258, null
  br i1 %i.aju, label %.thread795, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val258, i64 48 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !noundef !12
  %i.ajx = add i32 %i.ajw, -1                     ; 2 uses
  store i32 %i.ajx, ptr %i.ajv, align 4
  %i.ajy = icmp eq i32 %i.ajx, 0
  br i1 %i.ajy, label %bb.qf, label %.thread795

bb.qf:                                            ; preds = %bb.qe
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val258) #24
          to label %.thread795 unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.qc
  %.val257 = load ptr, ptr %i.ah, align 8, !noundef !12 ; 3 uses
  %i.ajz = icmp eq ptr %.val257, null
  br i1 %i.ajz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539, label %bb.qg

bb.qg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEECsf8NQSppxkmK_14ide_completion.exit
  %i.aka = getelementptr inbounds nuw i8, ptr %.val257, i64 48 ; 2 uses
  %i.akb = load i32, ptr %i.aka, align 4, !noundef !12
  %i.akc = add i32 %i.akb, -1                     ; 2 uses
  store i32 %i.akc, ptr %i.aka, align 4
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.qh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539

bb.qh:                                            ; preds = %bb.qg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val257) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539 unwind label %bb.qb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539: ; preds = %bb.qg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ExternCrateEECsf8NQSppxkmK_14ide_completion.exit, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.val256 = load ptr, ptr %i.ai, align 8, !noundef !12 ; 3 uses
  %i.ake = icmp eq ptr %.val256, null
  br i1 %i.ake, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit542, label %bb.qi

bb.qi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539
  %i.akf = getelementptr inbounds nuw i8, ptr %.val256, i64 48 ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4, !noundef !12
  %i.akh = add i32 %i.akg, -1                     ; 2 uses
  store i32 %i.akh, ptr %i.akf, align 4
  %i.aki = icmp eq i32 %i.akh, 0
  br i1 %i.aki, label %bb.qj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit542

bb.qj:                                            ; preds = %bb.qi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val256) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit542 unwind label %bb.ny

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit542: ; preds = %bb.qi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsf8NQSppxkmK_14ide_completion.exit539, %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12CfgPredicateEECsf8NQSppxkmK_14ide_completion.exit474

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12CfgPredicateEECsf8NQSppxkmK_14ide_completion.exit474, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.akj = getelementptr inbounds nuw i8, ptr %i.acz, i64 48 ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 8, !noundef !12
  %i.akl = add i32 %i.akk, -1                     ; 2 uses
  store i32 %i.akl, ptr %i.akj, align 8
  %i.akm = icmp eq i32 %i.akl, 0
  br i1 %i.akm, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.acz) #24
          to label %bb.ql unwind label %bb.m

bb.ql:                                            ; preds = %bb.nl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525, %bb.qk
  %.sroa.11.0 = phi i8 [ undef, %bb.nl ], [ %.sroa.11.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525 ], [ %.sroa.11.1, %bb.qk ]
  %.sroa.9.0 = phi ptr [ %i.acx, %bb.nl ], [ %.sroa.9.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525 ], [ %.sroa.9.1, %bb.qk ]
  %.sroa.7.0 = phi ptr [ %i.acn, %bb.nl ], [ %.sroa.7.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525 ], [ %.sroa.7.1, %bb.qk ]
  %.sroa.021.0 = phi i64 [ 14, %bb.nl ], [ %.sroa.021.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit525 ], [ %.sroa.021.1, %bb.qk ]
  %.sroa.9660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9660.0..sroa_idx, i8 0, i64 40, i1 false)
  %.sroa.4655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.4655.0..sroa_idx, align 8
  %.sroa.6657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.6657.0..sroa_idx, align 8
  %.sroa.8659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.021.0, ptr %.sroa.8659.0..sroa_idx, align 8
  %.sroa.8659.sroa.4.0..sroa.8659.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.0, ptr %.sroa.8659.sroa.4.0..sroa.8659.0..sroa_idx.sroa_idx, align 8
  %.sroa.8659.sroa.5.0..sroa.8659.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.9.0, ptr %.sroa.8659.sroa.5.0..sroa.8659.0..sroa_idx.sroa_idx, align 8
  %.sroa.8659.sroa.6.0..sroa.8659.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.11.0, ptr %.sroa.8659.sroa.6.0..sroa.8659.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit454

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.a: ; preds = %bb.ae, %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.ako = load i32, ptr %i.akn, align 4, !noundef !12
  %i.akp = add i32 %i.ako, -1                     ; 2 uses
  store i32 %i.akp, ptr %i.akn, align 4
  %i.akq = icmp eq i32 %i.akp, 0
  br i1 %i.akq, label %bb.qm, label %.noexc548

bb.qm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %.noexc548 unwind label %5

5:                                                ; preds = %bb.qm
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556

.noexc548:                                        ; preds = %bb.qm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17584.0.copyload) ]
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4, !noundef !12
  %i.akt = add i32 %i.aks, -1                     ; 2 uses
  store i32 %i.akt, ptr %i.akr, align 4
  %i.aku = icmp eq i32 %i.akt, 0
  br i1 %i.aku, label %bb.qn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552

bb.qn:                                            ; preds = %.noexc548
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552 unwind label %7

.thread742:                                       ; preds = %.noexc567, %bb.qy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556, %bb.qr, %bb.bs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367, %7, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438
  %.pn195 = phi { ptr, i32 } [ %8, %7 ], [ %.pn187, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit367 ], [ %.pn187, %bb.bs ], [ %.pn193, %bb.qr ], [ %.pn189, %.noexc567 ], [ %.pn189, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438 ], [ %.pn193, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556 ], [ %.pn189, %bb.qy ] ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.akw = load i32, ptr %i.akv, align 4, !noundef !12
  %i.akx = add i32 %i.akw, -1                     ; 2 uses
  store i32 %i.akx, ptr %i.akv, align 4
  %i.aky = icmp eq i32 %i.akx, 0
  br i1 %i.aky, label %bb.qo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554

bb.qo:                                            ; preds = %.thread742
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.br) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit554 unwind label %bb.bj

7:                                                ; preds = %bb.qn
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %.thread742

bb.qp:                                            ; preds = %bb.ae
  %9 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  %i.akz = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4, !noundef !12
  %i.alb = add i32 %i.ala, -1                     ; 2 uses
  store i32 %i.alb, ptr %i.akz, align 4
  %i.alc = icmp eq i32 %i.alb, 0
  br i1 %i.alc, label %bb.qq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556

bb.qq:                                            ; preds = %bb.qp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556 unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556: ; preds = %bb.qp, %bb.qq, %5
  %.pn193 = phi { ptr, i32 } [ %6, %5 ], [ %9, %bb.qq ], [ %9, %bb.qp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17584.0.copyload) ]
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !noundef !12
  %i.alf = add i32 %i.ale, -1                     ; 2 uses
  store i32 %i.alf, ptr %i.ald, align 4
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %bb.qr, label %.thread742

bb.qr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit556
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %.thread742 unwind label %bb.bj

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECsf8NQSppxkmK_14ide_completion.exit552, %bb.af
  %i.alh = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !noundef !12
  %i.alj = add i32 %i.ali, -1                     ; 2 uses
  store i32 %i.alj, ptr %i.alh, align 4
  %i.alk = icmp eq i32 %i.alj, 0
  br i1 %i.alk, label %bb.qs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit561

bb.qs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bn) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit561 unwind label %bb.mw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit561: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.all = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.alm = load i32, ptr %i.all, align 4, !noundef !12
  %i.aln = add i32 %i.alm, -1                     ; 2 uses
  store i32 %i.aln, ptr %i.all, align 4
  %i.alo = icmp eq i32 %i.aln, 0
  br i1 %i.alo, label %.invoke911, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit563

.invoke911:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit431, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit561
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bl) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit563 unwind label %bb.mx

.thread795:                                       ; preds = %bb.qf, %bb.qd, %bb.qe, %.thread799
  %.pn148798 = phi { ptr, i32 } [ %i.ajp, %.thread799 ], [ %i.ajt, %bb.qe ], [ %i.ajt, %bb.qd ], [ %i.ajt, %bb.qf ] ; 3 uses
  br i1 %.not144, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit, label %bb.qt

bb.qt:                                            ; preds = %.thread795
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ajh, i64 48 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !noundef !12
  %i.alr = add i32 %i.alq, -1                     ; 2 uses
  store i32 %i.alr, ptr %i.alp, align 4
  %i.als = icmp eq i32 %i.alr, 0
  br i1 %i.als, label %bb.qu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit

bb.qu:                                            ; preds = %bb.qt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ajh) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TokenTreeMetaEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.bj

bb.qv:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion.exit438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0578.0.copyload) ]
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.0578.0.copyload, i64 48 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !noundef !12
  %i.alv = add i32 %i.alu, -1                     ; 2 uses
  store i32 %i.alv, ptr %i.alt, align 4
  %i.alw = icmp eq i32 %i.alv, 0
  br i1 %i.alw, label %bb.qw, label %.noexc565

bb.qw:                                            ; preds = %bb.qv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0578.0.copyload) #24
          to label %.noexc565 unwind label %bb.bj

.noexc565:                                        ; preds = %bb.qw, %bb.qv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 48 ; 2 uses
  %i.aly = load i32, ptr %i.alx, align 4, !noundef !12
  %i.alz = add i32 %i.aly, -1                     ; 2 uses
  store i32 %i.alz, ptr %i.alx, align 4
  %i.ama = icmp eq i32 %i.alz, 0
  br i1 %i.ama, label %bb.qx, label %.noexc567

bb.qx:                                            ; preds = %.noexc565
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.12.0.copyload) #24
          to label %.noexc567 unwind label %bb.bj

.noexc567:                                        ; preds = %.noexc565, %bb.qx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17584.0.copyload) ]
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.17584.0.copyload, i64 48 ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !noundef !12
  %i.amd = add i32 %i.amc, -1                     ; 2 uses
  store i32 %i.amd, ptr %i.amb, align 4
  %i.ame = icmp eq i32 %i.amd, 0
  br i1 %i.ame, label %bb.qy, label %.thread742

bb.qy:                                            ; preds = %.noexc567
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.17584.0.copyload) #24
          to label %.thread742 unwind label %bb.bj

.thread732:                                       ; preds = %bb.j, %.thread737
  %eh.lpad-body736 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread737 ], [ %i.bj, %bb.j ]
  %.val235 = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.val235, i64 48 ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !noundef !12
  %i.amh = add i32 %i.amg, -1                     ; 2 uses
  store i32 %i.amh, ptr %i.amf, align 4
  %i.ami = icmp eq i32 %i.amh, 0
  br i1 %i.ami, label %bb.qz, label %.noexc572

bb.qz:                                            ; preds = %.thread732
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val235) #24
          to label %.noexc572 unwind label %bb.bj

.noexc572:                                        ; preds = %bb.qz, %.thread732
  %i.amj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val234 = load ptr, ptr %i.amj, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.val234, i64 48 ; 2 uses
  %i.aml = load i32, ptr %i.amk, align 4, !noundef !12
  %i.amm = add i32 %i.aml, -1                     ; 2 uses
  store i32 %i.amm, ptr %i.amk, align 4
  %i.amn = icmp eq i32 %i.amm, 0
  br i1 %i.amn, label %bb.ra, label %.critedge

bb.ra:                                            ; preds = %.noexc572
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val234) #24
          to label %.critedge unwind label %bb.bj

.critedge:                                        ; preds = %bb.ra, %.noexc572
  %i.amo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.amo, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !noundef !12
  %i.amr = add i32 %i.amq, -1                     ; 2 uses
  store i32 %i.amr, ptr %i.amp, align 4
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.rb, label %.critedge208

bb.rb:                                            ; preds = %.critedge
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #24
          to label %.critedge208 unwind label %bb.bj

.critedge209:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433, %.critedge208
  %.pn203731 = phi { ptr, i32 } [ %eh.lpad-body736, %.critedge208 ], [ %.pn201, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit433 ]
  resume { ptr, i32 } %.pn203731

.critedge208:                                     ; preds = %bb.rb, %.critedge
  %i.amt = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEBY_NtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtNtB1H_3ast9generated5nodes4AttrEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32) %i.amt) #26
          to label %.critedge209 unwind label %bb.bj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr %.0.val, i16 noundef range(i16 3, 95) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1267 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !12 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.0.val) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit
  %i.k = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 2
  br i1 %.not.i, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 10 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !1268, !noundef !12
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !1268
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #24
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.m

_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1269
  store ptr %i.m, ptr %i.a, align 8, !noalias !1269
  %i.s = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !1268

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !1268, !noundef !12
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !1268
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #24
          to label %.body unwind label %bb.l, !noalias !1268

bb.i:                                             ; preds = %bb.f
  %i.y = icmp eq i16 %i.s, %0
  br i1 %i.y, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !1268, !noundef !12
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !noalias !1268
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #24
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25, !noalias !1268
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1269
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Csf8NQSppxkmK_14ide_completion.exit.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Csf8NQSppxkmK_14ide_completion.exit.i.i ], [ null, %bb.e ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not7.i, label %bb.c, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit

bb.m:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.val5 = load i64, ptr %i.b, align 8, !range !15, !noundef !12
  %.val6 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.af = icmp eq i64 %.val5, 2
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit, label %bb.n

bb.n:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !12
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsf8NQSppxkmK_14ide_completion.exit.sink.split.i.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6) #24
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.p

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i
  %.sroa.0.0.i5 = phi ptr [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Csf8NQSppxkmK_14ide_completion.exit.i ], [ null, %.noexc ]
  %.val3 = load i64, ptr %i.b, align 8, !range !15, !noundef !12
  %.val4 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ak = icmp eq i64 %.val3, 2
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECsf8NQSppxkmK_14ide_completion.exit12, label %bb.o

bb.o:                                             ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECsf8NQSppxkmK_14ide_completion.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !12
  %i.an = add i32 %i.am, -1                       ; 2 uses
end_hunk_2
