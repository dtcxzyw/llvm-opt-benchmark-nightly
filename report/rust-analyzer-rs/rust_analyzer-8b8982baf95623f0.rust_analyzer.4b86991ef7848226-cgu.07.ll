Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %i.az)
          to label %bb.jn unwind label %.split

bb.jl:                                            ; preds = %bb.gw
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nw, ptr %i.rp, align 8
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process5ChildECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(28) %i.au)
  br label %bb.jk

bb.jm:                                            ; preds = %bb.gw, %bb.gs, %bb.gt
  %lpad.thr_comm424 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process5ChildECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 dereferenceable(28) %i.au) #43
  br label %.body343.thread

bb.jn:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.jf

bb.jo:                                            ; preds = %bb.gl
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process5ChildNtNtNtB4_2io5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.at) #43
          to label %.body343.thread unwind label %bb.ai

bb.jp:                                            ; preds = %bb.en
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm) #43
          to label %bb.el unwind label %bb.ai

bb.jq:                                            ; preds = %bb.jr, %bb.el
  %.pn287.pn394 = phi { ptr, i32 } [ %.pn287.pn395, %bb.jr ], [ %.pn287, %bb.el ]
  %.sroa.0182.9392 = phi i8 [ %.sroa.0182.9393, %bb.jr ], [ %.sroa.0182.10, %bb.el ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo) #43
          to label %.body338 unwind label %bb.ai

bb.jr:                                            ; preds = %.thread388, %bb.el
  %.pn287.pn395 = phi { ptr, i32 } [ %i.lc, %.thread388 ], [ %.pn287, %bb.el ]
  %.sroa.0182.9393 = phi i8 [ 1, %.thread388 ], [ %.sroa.0182.10, %bb.el ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #43
          to label %bb.jq unwind label %bb.ai

bb.js:                                            ; preds = %.body338
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dc) #43
          to label %.body326 unwind label %bb.ai

bb.jt:                                            ; preds = %bb.as
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ge, ptr %i.rq, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ag

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.ei, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCs9HU4uknhSfY_10line_index9LineIndexE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index9LineIndexEBF_.exit360 unwind label %bb.h

bb.ju:                                            ; preds = %bb.o
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %i.rr, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index9LineIndexEBF_.exit360: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di)
  br label %bb.jw

bb.jv:                                            ; preds = %bb.j
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.rs, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index9LineIndexEBF_.exit360

bb.jw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index9LineIndexEBF_.exit360, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.ic

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index9LineIndexEBF_.exit
  resume { ptr, i32 } %.pn311
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request12handle_hover(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6349 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.426 = alloca [47 x i8], align 1          ; 2 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 19 uses
  %i.l = alloca [104 x i8], align 8               ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 16               ; 3 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %bb.c, label %.thread

.body:                                            ; preds = %bb.k, %bb.b, %.body84
  %.pn77 = phi { ptr, i32 } [ %.pn75, %.body84 ], [ %i.t, %bb.b ], [ %i.ad, %bb.k ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext11HoverParamsEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %2) #43
          to label %bb.ar unwind label %bb.au

bb.b:                                             ; preds = %.invoke105, %bb.h, %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.f, %bb.g, %bb.a, %bb.c
  store i64 2, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.u, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request12handle_hover10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.v, label %bb.d [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.e
  ], !prof !156

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request12handle_hover10___CALLSITE)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.f
  %.sroa.05.0 = phi i8 [ %i.w, %bb.f ], [ %i.v, %bb.c ], [ %i.v, %bb.c ]
  %i.x = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request12handle_hover10___CALLSITE, align 8, !nonnull !144, !align !150, !noundef !144
  %i.y = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, i8 noundef %.sroa.05.0)
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %.thread, label %bb.e

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request12handle_hover10___CALLSITE, align 8, !nonnull !144, !align !150, !noundef !144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 1, ptr %i.p, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.553.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pr = load i64, ptr %i.o, align 8, !alias.scope !6350
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.m unwind label %bb.k, !noalias !6351

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) #43
          to label %.body unwind label %bb.l, !noalias !6351

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !6351
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !144
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ag = load i32, ptr %i.af, align 8, !range !154, !noundef !144
  %i.ah = trunc nuw i32 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %3 = load <1 x i64>, ptr %i.ai, align 4
  %4 = shufflevector <1 x i64> %3, <1 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %4, ptr %i.n, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp10from_proto10file_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.n)
          to label %bb.r unwind label %bb.q

.body84:                                          ; preds = %.body.i.i, %bb.az, %bb.ao, %bb.q, %bb.bc
  %.pn75 = phi { ptr, i32 } [ %.pn7391, %bb.bc ], [ %i.cd, %bb.ao ], [ %i.aj, %bb.q ], [ %i.cn, %bb.az ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q) #43
          to label %.body unwind label %bb.au

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide5hover11HoverResultECs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.ap, %bb.y, %bb.w, %bb.v, %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.r:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.m, align 8, !range !190, !noundef !144 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !144, !noundef !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.457.0.copyload = load i32, ptr %.sroa.457.0..sroa_idx, align 4
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ap = trunc nuw i32 %i.ak to i1
  br i1 %i.ap, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge = phi i64 [ -2, %bb.s ], [ -1, %bb.t ]
  store i64 %storemerge, ptr %0, align 8
  br label %.invoke105

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !144, !noundef !144
  %.val = load ptr, ptr %1, align 8, !noundef !144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val81 = load i64, ptr %i.as, align 8
  %.not.i82 = icmp eq ptr %.val, null             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %spec.select.i = select i1 %.not.i82, i64 66394, i64 %.val81
  %spec.select1.i = select i1 %.not.i82, ptr @175, ptr %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  invoke void @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config5hover(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select1.i, i64 noundef %spec.select.i)
          to label %bb.w unwind label %bb.q

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.457.0.copyload, ptr %i.a, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %.sroa.558.0.copyload, ptr %.sroa.216.0..sroa_idx, align 4
  invoke void @_RNvMs1_CslLuZgPVt6hg_3ideNtB5_8Analysis5hover(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = load i64, ptr %i.j, align 8, !range !161, !noundef !144 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, -2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.az = load i8, ptr %i.ay, align 8             ; 2 uses
  br i1 %i.ax, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ba = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledE4fromCs6u1mgJOKDyY_13rust_analyzer(i8 noundef %i.az)
          to label %bb.be unwind label %bb.q

bb.z:                                             ; preds = %bb.x
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.426, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.561.0..sroa_idx, i64 47, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not70 = icmp eq i64 %i.aw, -1
  br i1 %.not70, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.426, i64 47, i1 false)
  store i64 %i.aw, ptr %i.k, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.az, ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bb = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.216.8.extract.shift = lshr i64 %i.bb, 32
  %.sroa.216.8.extract.trunc = trunc nuw i64 %.sroa.216.8.extract.shift to i32
  invoke void @_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot15file_line_index(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %1, i32 noundef %.sroa.216.8.extract.trunc)
          to label %bb.ad unwind label %.split.thread

bb.ab:                                            ; preds = %bb.z, %bb.be
  %storemerge71 = phi i64 [ -2, %bb.be ], [ -1, %bb.z ]
  store i64 %storemerge71, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCslLuZgPVt6hg_3ide9RangeInfoNtNtBE_5hover11HoverResultEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.ac:                                            ; preds = %bb.ag
  br i1 %.sroa.049.2, label %bb.bd, label %bb.bc

.split.thread:                                    ; preds = %bb.ae, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.split:                                           ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ad:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !range !149, !noundef !144 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 2
  %i.bf = load i8, ptr %i.h, align 8              ; 2 uses
  br i1 %i.be, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bg = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledE4fromCs6u1mgJOKDyY_13rust_analyzer(i8 noundef %i.bf)
          to label %bb.av unwind label %.split.thread

bb.af:                                            ; preds = %bb.ad
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.463.0.copyload = load i64, ptr %.sroa.463.0..sroa_idx, align 1
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.643.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.665.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 %i.bf, ptr %i.i, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i64 %.sroa.463.0.copyload, ptr %.sroa.441.0..sroa_idx, align 1
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store i8 %i.bd, ptr %.sroa.542.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !noundef !144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !144
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto5range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i32 noundef %i.bi, i32 noundef %i.bk)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.049.2 = phi i1 [ false, %bb.ak ], [ %.sroa.049.3, %bb.ah ]
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.ak ], [ %i.bl, %bb.ah ] ; 2 uses
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCs9HU4uknhSfY_10line_index9LineIndexE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.ac unwind label %bb.au

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %.sroa.049.3 = phi i1 [ false, %bb.ai ], [ true, %bb.af ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.af
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 91
  %i.bn = load i8, ptr %i.bm, align 1, !range !158, !noundef !144
  %i.bo = trunc nuw i8 %i.bn to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto14markup_content(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.bo)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %i.f, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 1, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bq = load ptr, ptr %i.aq, align 8, !nonnull !144, !noundef !144
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = invoke i48 @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config13hover_actions(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.br)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RNvMs6_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_18HoverActionsConfig4none.exit.thread, %bb.aj
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5HoverECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #43
          to label %bb.ag unwind label %bb.au

bb.al:                                            ; preds = %bb.aj
end_hunk_0
