Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parser-1c08171a2541c4e2.parser.a236489b19f90125-cgu.06?download=true
inline.NumInlined: 60
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4stmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.x = icmp eq i8 %1, 2
  br i1 %i.x, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.q
  %i.y = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 1)
  br i1 %i.y, label %bb.v, label %bb.r

bb.t:                                             ; preds = %.invoke, %bb.r, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 198)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.u:                                             ; preds = %.thread39
  %i.z = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 3)
          to label %bb.t unwind label %bb.w       ; 0 uses

.invoke:                                          ; preds = %.thread39, %bb.r
  %i.aa = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 3)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.p, %bb.s, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9expr_stmt.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.sink.split

bb.w:                                             ; preds = %.invoke, %bb.u
  %lpad.thr_comm31 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #11
          to label %.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.z, %bb.w
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10
  unreachable

.sink.split:                                      ; preds = %bb.l, %bb.ab, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.z:                                             ; preds = %bb.n, %bb.j
  %lpad.thr_comm.split-lp25 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #11
          to label %.thread unwind label %bb.x

bb.aa:                                            ; preds = %bb.i, %bb.d
  invoke void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8let_stmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i8 noundef %1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.sink.split

.thread:                                          ; preds = %bb.w, %bb.z, %bb.ac
  %.pn711 = phi { ptr, i32 } [ %lpad.thr_comm31, %bb.w ], [ %lpad.thr_comm, %bb.ac ], [ %lpad.thr_comm.split-lp25, %bb.z ]
  resume { ptr, i32 } %.pn711

bb.ac:                                            ; preds = %bb.aa, %bb.g, %bb.e, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #11
          to label %.thread unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [12 x i8], align 4                ; 7 uses
  %i.u = alloca [16 x i8], align 4                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [12 x i8], align 8                ; 14 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [12 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 4               ; 3 uses
  %i.ac = alloca [16 x i8], align 4               ; 7 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = alloca [12 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 4               ; 3 uses
  %i.ah = alloca [40 x i8], align 8               ; 4 uses
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [2 x i8], align 2                ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [40 x i8], align 8               ; 8 uses
  %i.am = alloca [40 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [12 x i8], align 4               ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [16 x i8], align 4               ; 3 uses
  %i.as = alloca [40 x i8], align 8               ; 4 uses
  %i.at = alloca [40 x i8], align 8               ; 7 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [40 x i8], align 8               ; 4 uses
  %i.aw = alloca [12 x i8], align 8               ; 6 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.az = load i64, ptr %2, align 8, !range !46, !noundef !5
  %.not = icmp eq i64 %i.az, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !47
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !51
  invoke void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar10attributes11outer_attrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RNCNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp0B7_.exit unwind label %bb.d, !noalias !51

bb.d:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.am) #11
          to label %common.resume unwind label %bb.e, !noalias !51

bb.e:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !51
  unreachable

common.resume:                                    ; preds = %.thread125, %bb.dx, %bb.ei, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.d ], [ %lpad.thr_comm.i, %bb.dx ], [ %eh.lpad-body128, %.thread125 ], [ %lpad.thr_comm166, %bb.ei ]
  resume { ptr, i32 } %common.resume.op

_RNCNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp0B7_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !47
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp0B7_.exit, %bb.b
  %i.bc = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @25)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

bb.h:                                             ; preds = %bb.f
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) @28, i64 24, i1 false)
  %i.bd = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser11err_recover(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.dl unwind label %bb.g      ; 0 uses

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !56
  %i.be = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.k unwind label %.body58.thread150.loopexit.split-lp, !noalias !58, !inline_history !59

.thread142:                                       ; preds = %bb.dg, %bb.dd, %bb.dc, %bb.da, %bb.cy, %bb.cx
  %lpad.thr_comm140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit174:                                     ; preds = %6, %bb.l
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

.loopexit.split-lp:                               ; preds = %bb.df, %bb.cw
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

.body58.thread150.loopexit:                       ; preds = %bb.cn, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9call_expr.exit.i, %bb.cj, %bb.ci, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bn, %.noexc78, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8try_expr.exit.i, %bb.al, %bb.ak, %bb.ah, %bb.co
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

.body58.thread150.loopexit.split-lp:              ; preds = %.invoke291, %.invoke, %bb.n, %bb.m, %bb.ac, %bb.ae, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

.body58:                                          ; preds = %bb.o, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ab
  %lpad.thr_comm.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.k:                                             ; preds = %bb.j
  switch i16 %i.be, label %bb.l [
    i16 17, label %bb.m
    i16 20, label %bb.n
    i16 34, label %bb.n
    i16 36, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 28)
          to label %bb.cv unwind label %.loopexit174, !noalias !58, !inline_history !59

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.o unwind label %.body58.thread150.loopexit.split-lp, !noalias !58, !inline_history !59

bb.n:                                             ; preds = %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.ab unwind label %.body58.thread150.loopexit.split-lp, !noalias !58, !inline_history !59

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 17)
          to label %bb.p unwind label %.body58, !noalias !58, !inline_history !59

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !53, !noalias !58, !nonnull !5, !align !60, !noundef !5 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !53, !noalias !58, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !58, !noundef !5
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !58, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bj
  %i.bq = load i16, ptr %i.bp, align 2, !range !61, !noalias !58, !noundef !5
  %i.br = icmp eq i16 %i.bq, 136
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bs = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 80)
          to label %bb.aa unwind label %.body58, !noalias !58, !inline_history !59 ; 0 uses

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !56
  %i.bt = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3nth(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %bb.t unwind label %.body58, !noalias !58, !inline_history !59

bb.t:                                             ; preds = %bb.s
  store i16 %i.bt, ptr %i.aj, align 2, !noalias !56
  %i.bu = invoke noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCsdVrXiLXuAnx_6parser11syntax_kind9generated10SyntaxKindNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.aj, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) @24, i64 noundef 2)
          to label %bb.u unwind label %.body58, !noalias !58, !inline_history !59

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !56
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6nth_at(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1, i16 noundef 153)
          to label %bb.x unwind label %.body58, !noalias !58, !inline_history !59

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser10bump_remap(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 136)
          to label %bb.z unwind label %.body58, !noalias !58, !inline_history !59

bb.x:                                             ; preds = %bb.v
  br i1 %i.bv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser10bump_remap(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 136)
          to label %bb.aa unwind label %.body58, !noalias !58, !inline_history !59

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser8bump_any(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.aa unwind label %.body58, !noalias !58, !inline_history !59

bb.aa:                                            ; preds = %bb.ab, %bb.z, %bb.y, %bb.x, %bb.r
  %.sroa.0.0.i = phi i16 [ 279, %bb.r ], [ 279, %bb.z ], [ 279, %bb.x ], [ 279, %bb.y ], [ 267, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !56
  store i64 -2, ptr %i.aa, align 8, !noalias !56
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.aa, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef -1)
          to label %bb.ac unwind label %.body58, !noalias !58, !inline_history !59

bb.ab:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser8bump_any(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.aa unwind label %.body58, !noalias !58, !inline_history !59

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !56
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef %.sroa.0.0.i)
          to label %bb.ad unwind label %.body58.thread150.loopexit.split-lp, !noalias !58, !inline_history !59

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !56
  %.sroa.014.i.sroa.0.0.copyload = load i64, ptr %i.z, align 8, !noalias !56
  %.sroa.014.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bw = load <2 x i16>, ptr %.sroa.014.i.sroa.4.0..sroa_idx, align 8, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !56
  br label %bb.dm

6:                                                ; preds = %bb.cv
  %7 = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 26)
          to label %8 unwind label %.loopexit174, !noalias !58, !inline_history !59

8:                                                ; preds = %6
  br i1 %7, label %bb.cw, label %bb.ae

bb.ae:                                            ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !56
  invoke void @_RNvNtNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4atom9atom_expr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %3, i1 noundef zeroext %4)
          to label %bb.af unwind label %.body58.thread150.loopexit.split-lp, !noalias !58, !inline_history !59

bb.af:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.by = load i16, ptr %i.bx, align 4, !range !45, !noalias !56, !noundef !5
  %.not44.i = icmp eq i16 %i.by, -1
  br i1 %.not44.i, label %bb.cu, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i64 12, i1 false), !noalias !56
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.439.0.copyload.i = load i8, ptr %.sroa.439.0..sroa_idx.i, align 4, !noalias !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !56
  %i.bz = trunc i8 %.sroa.439.0.copyload.i to i1
  %not. = xor i1 %4, true
  %i.ca = select i1 %not., i1 true, i1 %i.bz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cb = icmp eq i8 %.sroa.439.0.copyload.i, 0
  %i.cc = and i1 %4, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 7 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.cm, %bb.ag
  %.sroa.01.0.i = phi i1 [ %i.ca, %bb.ag ], [ true, %bb.cm ] ; 2 uses
  %.sroa.0.0.i53 = phi i1 [ %i.cc, %bb.ag ], [ false, %bb.cm ]
  %i.cf = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc54 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc54:                                         ; preds = %bb.ah
  switch i16 %i.cf, label %.loopexit173 [
    i16 5, label %bb.ai
    i16 9, label %bb.aj
    i16 16, label %bb.ak
    i16 25, label %bb.ao
  ]

bb.ai:                                            ; preds = %.noexc54
  br i1 %.sroa.01.0.i, label %bb.ci, label %.loopexit173

bb.aj:                                            ; preds = %.noexc54
  br i1 %.sroa.01.0.i, label %bb.cn, label %.loopexit173

bb.ak:                                            ; preds = %.noexc54
  %i.cg = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 16)
          to label %.noexc55 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc55:                                         ; preds = %bb.ak
  br i1 %i.cg, label %bb.al, label %.invoke, !prof !28

bb.al:                                            ; preds = %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !68
  invoke void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc57 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc57:                                         ; preds = %bb.al
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 16)
          to label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8try_expr.exit.i unwind label %bb.am, !noalias !74, !inline_history !67

bb.am:                                            ; preds = %.noexc57
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #11
          to label %.thread125 unwind label %bb.an, !noalias !74, !inline_history !67

bb.an:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !74, !inline_history !67
  unreachable

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8try_expr.exit.i: ; preds = %.noexc57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !68
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 298)
          to label %.noexc60 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc60:                                         ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8try_expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !68
  br label %bb.cm

bb.ao:                                            ; preds = %.noexc54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !75
  call void @llvm.experimental.noalias.scope.decl(metadata !76), !noalias !58
  call void @llvm.experimental.noalias.scope.decl(metadata !79), !noalias !58
  %i.cj = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %.noexc61 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc61:                                         ; preds = %bb.ao
  br i1 %i.cj, label %bb.ap, label %.invoke, !prof !28

bb.ap:                                            ; preds = %.noexc61
  %i.ck = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3nth(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %.noexc63 unwind label %.body58.thread150.loopexit, !inline_history !67 ; 2 uses

.noexc63:                                         ; preds = %bb.ap
  %i.cl = zext nneg i16 %i.ck to i64              ; 2 uses
  %i.cm = lshr i64 %i.cl, 6                       ; 2 uses
  %i.cn = icmp samesign ult i16 %i.ck, 192
  br i1 %i.cn, label %bb.aq, label %.invoke291

bb.aq:                                            ; preds = %.noexc63
  %i.co = and i64 %i.cl, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @6, i64 %i.cm
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !81, !noundef !5
  %i.cs = and i64 %i.cr, %i.cp
  %.not.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3nth(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 2)
          to label %.noexc65 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc65:                                         ; preds = %bb.ar
  %i.cu = icmp eq i16 %i.ct, 5
  br i1 %i.cu, label %bb.bq, label %bb.at

bb.as:                                            ; preds = %.noexc67, %bb.aq
  %i.cv = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3nth(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %.noexc66 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc66:                                         ; preds = %bb.as
  %i.cw = icmp eq i16 %i.cv, 5
  br i1 %i.cw, label %bb.bq, label %bb.au

bb.at:                                            ; preds = %.noexc65
  %i.cx = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6nth_at(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 2, i16 noundef 30)
          to label %.noexc67 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc67:                                         ; preds = %bb.at
  br i1 %i.cx, label %bb.bq, label %bb.as

bb.au:                                            ; preds = %.noexc66
  %i.cy = invoke noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3nth(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
          to label %.noexc68 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc68:                                         ; preds = %bb.au
  %i.cz = icmp eq i16 %i.cy, 105
  br i1 %i.cz, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc68
  %i.da = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 28)
          to label %.noexc69 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc69:                                         ; preds = %bb.av
  br i1 %i.da, label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread252, label %bb.ax

bb.aw:                                            ; preds = %.noexc68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !81
  invoke void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc70 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc70:                                         ; preds = %bb.aw
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %bb.bm unwind label %bb.bo, !noalias !83, !inline_history !67

bb.ax:                                            ; preds = %.noexc69
  %i.db = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 26)
          to label %.noexc71 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc71:                                         ; preds = %bb.ax
  br i1 %i.db, label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread252, label %bb.ay

bb.ay:                                            ; preds = %.noexc71
  call void @llvm.experimental.noalias.scope.decl(metadata !84), !noalias !58
  %i.dc = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %.noexc72 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc72:                                         ; preds = %bb.ay
  br i1 %i.dc, label %bb.az, label %.invoke, !prof !28

bb.az:                                            ; preds = %.noexc72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !87
  invoke void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc74 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc74:                                         ; preds = %bb.az
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %bb.ba unwind label %bb.bk, !noalias !90, !inline_history !67

bb.ba:                                            ; preds = %.noexc74
  %i.dd = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @3)
          to label %bb.bb unwind label %bb.bk, !noalias !90, !inline_history !67

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.dd, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.de = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 147)
          to label %bb.be unwind label %bb.bk, !noalias !90, !inline_history !67

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsdVrXiLXuAnx_6parser7grammar26name_ref_mod_path_or_index(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.bh unwind label %bb.bk, !noalias !90, !inline_history !67
end_hunk_0
begin_hunk_1_@_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp:bb.a
          to label %bb.bx unwind label %bb.cg, !noalias !100, !inline_history !67

bb.bx:                                            ; preds = %.noexc89
  %i.dz = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @6)
          to label %bb.by unwind label %bb.cg, !noalias !100, !inline_history !67

bb.by:                                            ; preds = %bb.bx
  br i1 %i.dz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RINvMNtCsdVrXiLXuAnx_6parser6parserNtB3_6Parser5errorReEB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 42)
          to label %bb.cb unwind label %bb.cg, !noalias !100, !inline_history !67

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvNtCsdVrXiLXuAnx_6parser7grammar17name_ref_mod_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.cb unwind label %bb.cg, !noalias !100, !inline_history !67

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  invoke void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar12generic_args25opt_generic_arg_list_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.cc unwind label %bb.cg, !noalias !100, !inline_history !67

bb.cc:                                            ; preds = %bb.cb
  %i.ea = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 5)
          to label %bb.cd unwind label %bb.cg, !noalias !100, !inline_history !67

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ea, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RINvMNtCsdVrXiLXuAnx_6parser6parserNtB3_6Parser5errorReEB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 22)
          to label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i unwind label %bb.cg, !noalias !100, !inline_history !67

bb.cf:                                            ; preds = %bb.cd
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8arg_list(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i unwind label %bb.cg, !noalias !100, !inline_history !67

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bx, %.noexc89
  %lpad.thr_comm.i7.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #11
          to label %.thread125 unwind label %bb.ch, !noalias !100, !inline_history !67

bb.ch:                                            ; preds = %bb.cg
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !100, !inline_history !67
  unreachable

_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !95
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 245)
          to label %.noexc90 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc90:                                         ; preds = %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !95
  store i32 0, ptr %i.u, align 4, !alias.scope !76, !noalias !101
  br label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread

_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i: ; preds = %.noexc78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87
  %.pre.pre.pre = load i32, ptr %i.u, align 4, !range !102, !noalias !75
  %i.ec = trunc nuw i32 %.pre.pre.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !87
  br i1 %i.ec, label %.loopexit257, label %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread

bb.ci:                                            ; preds = %bb.ai
  %i.ed = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 5)
          to label %.noexc91 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc91:                                         ; preds = %bb.ci
  br i1 %i.ed, label %bb.cj, label %.invoke, !prof !28

.invoke:                                          ; preds = %.noexc95, %.noexc91, %.noexc86, %.noexc81, %.noexc72, %.noexc61, %.noexc55
  %i.ee = phi ptr [ @9, %.noexc86 ], [ @0, %.noexc81 ], [ @0, %.noexc72 ], [ @0, %.noexc61 ], [ @32, %.noexc55 ], [ @29, %.noexc91 ], [ @16, %.noexc95 ]
  %i.ef = phi i64 [ 135, %.noexc86 ], [ 29, %.noexc81 ], [ 29, %.noexc72 ], [ 29, %.noexc61 ], [ 29, %.noexc55 ], [ 31, %.noexc91 ], [ 31, %.noexc95 ]
  %i.eg = phi ptr [ @10, %.noexc86 ], [ @5, %.noexc81 ], [ @2, %.noexc72 ], [ @15, %.noexc61 ], [ @33, %.noexc55 ], [ @34, %.noexc91 ], [ @17, %.noexc95 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg) #12
          to label %.cont unwind label %.body58.thread150.loopexit.split-lp, !inline_history !67

.cont:                                            ; preds = %.invoke
  unreachable

bb.cj:                                            ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !103
  invoke void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc93 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc93:                                         ; preds = %bb.cj
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8arg_list(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9call_expr.exit.i unwind label %bb.ck, !noalias !108, !inline_history !67

bb.ck:                                            ; preds = %.noexc93
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #11
          to label %.thread125 unwind label %bb.cl, !noalias !108, !inline_history !67

bb.cl:                                            ; preds = %bb.ck
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !108, !inline_history !67
  unreachable

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9call_expr.exit.i: ; preds = %.noexc93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !103
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 183)
          to label %.noexc94 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc94:                                         ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9call_expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !103
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10index_expr.exit.i, %.noexc94, %.noexc60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !noalias !109
  br label %bb.ah

bb.cn:                                            ; preds = %bb.aj
  %i.ej = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 9)
          to label %.noexc95 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc95:                                         ; preds = %bb.cn
  br i1 %i.ej, label %bb.co, label %.invoke, !prof !28

bb.co:                                            ; preds = %.noexc95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110
  invoke void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc97 unwind label %.body58.thread150.loopexit, !inline_history !67

.noexc97:                                         ; preds = %bb.co
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 9)
          to label %bb.cq unwind label %bb.cs, !noalias !115, !inline_history !116

bb.cp:                                            ; preds = %bb.cr
  %lpad.thr_comm.split-lp158 = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

bb.cq:                                            ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117
  store i64 -2, ptr %i.a, align 8, !noalias !117
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef 1)
          to label %.noexc101 unwind label %bb.cs, !inline_history !121

.noexc101:                                        ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117
  %i.ek = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 10)
          to label %bb.cr unwind label %bb.cs, !noalias !115, !inline_history !116 ; 0 uses

bb.cr:                                            ; preds = %.noexc101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !110
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 219)
          to label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10index_expr.exit.i unwind label %bb.cp, !noalias !122, !inline_history !116

bb.cs:                                            ; preds = %.noexc101, %bb.cq, %.noexc97
  %lpad.thr_comm157 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #11
          to label %.thread125 unwind label %bb.ct, !noalias !115, !inline_history !116

bb.ct:                                            ; preds = %bb.cs
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !115, !inline_history !116
  unreachable

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10index_expr.exit.i: ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !110
  br label %bb.cm

.loopexit257:                                     ; preds = %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !75
  br label %.loopexit173

_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread: ; preds = %.noexc80, %.noexc90, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread255, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread253, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !75
  br label %bb.cm

bb.cu:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !56
  br label %bb.dm

.loopexit173:                                     ; preds = %bb.aj, %bb.ai, %.noexc54, %.loopexit257
  %.sroa.0115.0.copyload = load i64, ptr %i.x, align 8, !alias.scope !123, !noalias !124
  %.sroa.4.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.em = load <2 x i16>, ptr %.sroa.4.0..sroa_idx116, align 8, !alias.scope !123, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dm

bb.cv:                                            ; preds = %bb.l
  br i1 %i.bf, label %bb.cw, label %6

bb.cw:                                            ; preds = %8, %bb.cv
  %.lcssa244 = phi i16 [ 28, %bb.cv ], [ 26, %8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.cx unwind label %.loopexit.split-lp, !noalias !58, !inline_history !59

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !56
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef %.lcssa244)
          to label %bb.cy unwind label %.thread142, !noalias !58, !inline_history !59

bb.cy:                                            ; preds = %bb.cx
  %i.en = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %bb.cz unwind label %.thread142, !noalias !58, !inline_history !59

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.en, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.eo = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6nth_at(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1, i16 noundef 153)
          to label %bb.db unwind label %.thread142, !noalias !58, !inline_history !59

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sroa.07.0.i = phi i1 [ false, %bb.cz ], [ %i.eo, %bb.da ]
  br i1 %3, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ep = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 7)
          to label %bb.dd unwind label %.thread142, !noalias !58, !inline_history !59

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.sroa.08.0.i = phi i1 [ false, %bb.db ], [ %i.ep, %bb.dc ]
  %i.eq = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @25)
          to label %bb.de unwind label %.thread142, !noalias !58, !inline_history !59

bb.de:                                            ; preds = %bb.dd
  %.not.i = xor i1 %i.eq, true
  %or.cond.i = or i1 %.sroa.07.0.i, %.not.i
  %or.cond3.i = or i1 %.sroa.08.0.i, %or.cond.i
  br i1 %or.cond3.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.dh, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !56
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 269)
          to label %bb.di unwind label %.loopexit.split-lp, !noalias !58, !inline_history !59

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !56
  store i64 -2, ptr %i.af, align 8, !noalias !56
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.af, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef 2)
          to label %bb.dh unwind label %.thread142, !noalias !58, !inline_history !59

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !56
  br label %bb.df

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !56
  %.sroa.09.i.sroa.0.0.copyload = load i64, ptr %i.ae, align 8, !noalias !56
  %.sroa.09.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.er = load <2 x i16>, ptr %.sroa.09.i.sroa.4.0..sroa_idx, align 8, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !56
  br label %bb.dm

bb.dj:                                            ; preds = %bb.dk
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !58, !inline_history !59
  unreachable

bb.dk:                                            ; preds = %.body58, %.thread142
  %.pn.i137 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp149, %.body58 ], [ %lpad.thr_comm140, %.thread142 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #11
          to label %.thread125 unwind label %bb.dj, !noalias !58, !inline_history !59

bb.dl:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker7abandon(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.et, align 4
  br label %bb.ek

bb.dm:                                            ; preds = %bb.cu, %.loopexit173, %bb.di, %bb.ad
  %.sroa.9114.1 = phi i1 [ false, %bb.ad ], [ false, %bb.cu ], [ %.sroa.0.0.i53, %.loopexit173 ], [ false, %bb.di ]
  %.sroa.0102.1 = phi i64 [ %.sroa.014.i.sroa.0.0.copyload, %bb.ad ], [ undef, %bb.cu ], [ %.sroa.0115.0.copyload, %.loopexit173 ], [ %.sroa.09.i.sroa.0.0.copyload, %bb.di ]
  %i.eu = phi <2 x i16> [ %i.bw, %bb.ad ], [ <i16 -1, i16 undef>, %bb.cu ], [ %i.em, %.loopexit173 ], [ %i.er, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ev = extractelement <2 x i16> %i.eu, i64 0
  %.not21 = icmp eq i16 %i.ev, -1
  br i1 %.not21, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %.sroa.0102.1, ptr %i.aw, align 8
  %.sroa.7.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x i16> %i.eu, ptr %.sroa.7.0..sroa_idx106, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker9extend_to(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br i1 %.sroa.9114.1, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker7abandon(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.ew, align 4
  br label %bb.ek

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %.backedge

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ek

.backedge:                                        ; preds = %.backedge.backedge, %bb.dp
  %i.ex = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 26)
  br i1 %i.ex, label %.noexc, label %bb.dr

bb.dr:                                            ; preds = %.backedge
  %i.ey = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 28)
  br label %.noexc

.noexc:                                           ; preds = %bb.dr, %.backedge
  %.sroa.02.0 = phi i1 [ true, %.backedge ], [ %i.ey, %bb.dr ] ; 2 uses
  %i.ez = call noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 %1)
  switch i16 %i.ez, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit [
    i16 11, label %.noexc25
    i16 12, label %.noexc26
    i16 17, label %.noexc27
    i16 18, label %.noexc28
    i16 19, label %.noexc29
    i16 20, label %.noexc30
    i16 21, label %.noexc31
    i16 22, label %.noexc32
    i16 23, label %.noexc33
    i16 25, label %.noexc34
    i16 31, label %.noexc35
    i16 34, label %.noexc36
    i16 36, label %.noexc37
    i16 56, label %bb.ds
  ]

.noexc25:                                         ; preds = %.noexc
  %i.fa = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 38)
  br i1 %i.fa, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc38

.noexc26:                                         ; preds = %.noexc
  %i.fb = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 53)
  br i1 %i.fb, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc40

.noexc27:                                         ; preds = %.noexc
  %i.fc = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 43)
  br i1 %i.fc, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc42

.noexc28:                                         ; preds = %.noexc
  %i.fd = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 49)
  br i1 %i.fd, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc43

.noexc29:                                         ; preds = %.noexc
  %i.fe = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 40)
  %..i = select i1 %i.fe, i32 16842792, i32 655379
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc30:                                         ; preds = %.noexc
  %i.ff = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 46)
  %.1.i = select i1 %i.ff, i32 16842798, i32 720916
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc31:                                         ; preds = %.noexc
  %i.fg = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 45)
  %.2.i = select i1 %i.fg, i32 16842797, i32 720917
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc32:                                         ; preds = %.noexc
  %i.fh = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 44)
  %.3.i = select i1 %i.fh, i32 16842796, i32 458774
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc33:                                         ; preds = %.noexc
  %i.fi = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 47)
  %.4.i = select i1 %i.fi, i32 16842799, i32 720919
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc34:                                         ; preds = %.noexc
  %i.fj = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 28)
  br i1 %i.fj, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc44

.noexc35:                                         ; preds = %.noexc
  %i.fk = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 32)
  br i1 %i.fk, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc45

.noexc36:                                         ; preds = %.noexc
  %i.fl = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 35)
end_hunk_1
