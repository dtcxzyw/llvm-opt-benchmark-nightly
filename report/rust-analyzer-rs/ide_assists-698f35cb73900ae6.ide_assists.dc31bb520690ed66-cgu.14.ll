Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.14?download=true
inline.NumInlined: 4397
inline.NumDeleted: 1591
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait23generate_delegate_trait:bb.a
  %i.ae = alloca [80 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !24, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 43
  %i.aj = load i8, ptr %i.ai, align 1, !range !13, !noundef !12
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.al = tail call noundef ptr @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext19find_node_at_offsetNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructEB5_(ptr noundef nonnull align 8 %1) ; 12 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_.exit.sink.split, %bb.ds, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i40
  %.sroa.0.0.ph = phi i1 [ true, %bb.ds ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i40 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_.exit.sink.split ], [ false, %bb.h ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36 ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.am = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.al)
          to label %bb.g unwind label %bb.e       ; 11 uses

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !12
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.al) #32
          to label %common.resume unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !12
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_.exit.sink.split, label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.dq, %bb.dr, %bb.y, %bb.z, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.kg, %bb.dq ], [ %i.an, %bb.e ], [ %i.bl, %bb.y ], [ %i.an, %bb.f ], [ %i.bl, %bb.z ], [ %i.kg, %bb.dr ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.g
  store ptr %i.al, ptr %i.af, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.am, ptr %i.ax, align 8
  %i.ay = invoke noundef ptr @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext19find_node_at_offsetNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldEB5_(ptr noundef nonnull align 8 %1)
          to label %bb.k unwind label %bb.p       ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_.exit.sink.split: ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36
  %.sink = phi ptr [ %i.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36 ], [ %i.al, %bb.h ]
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sink) #32
  br label %.sink.split

.body:                                            ; preds = %bb.di, %bb.dj, %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %.pn25.i, %.body.i ], [ %i.jv, %bb.di ], [ %i.jv, %bb.dj ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_(ptr nonnull %i.al, ptr nonnull %i.am) #29
          to label %common.resume unwind label %bb.dk

bb.k:                                             ; preds = %bb.j
  %.not19 = icmp eq ptr %i.ay, null
  br i1 %.not19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2_5Field3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ae, ptr noundef nonnull align 8 %1, ptr null, ptr nonnull %i.ay)
          to label %bb.dl unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = invoke noundef ptr @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext19find_node_at_offsetNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldEB5_(ptr noundef nonnull align 8 %1)
          to label %bb.n unwind label %bb.p       ; 6 uses

bb.n:                                             ; preds = %bb.m
  %.not20 = icmp eq ptr %i.az, null
  br i1 %.not20, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef ptr @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext19find_node_at_offsetNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14TupleFieldListEB5_(ptr noundef nonnull align 8 %1)
          to label %bb.q unwind label %bb.di      ; 2 uses

bb.p:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.t, %._crit_edge.i, %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.o
  %.not21 = icmp eq ptr %i.ba, null
  br i1 %.not21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_traitNtB2_5Field3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ad, ptr noundef nonnull align 8 %1, ptr nonnull %i.az, ptr nonnull %i.ba)
          to label %bb.u unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !12
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.az) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.p

bb.u:                                             ; preds = %bb.r
  %i.bg = load i64, ptr %i.ad, align 8, !range !22, !noundef !12
  %.not22 = icmp eq i64 %i.bg, -1
  br i1 %.not22, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.s, %bb.t, %bb.w, %bb.n, %bb.dn
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !12
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.al) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !12
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.am) #32
          to label %common.resume unwind label %bb.aa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructECsiU5vK8fN4ZC_11ide_assists.exit.i36: ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10TupleFieldECsiU5vK8fN4ZC_11ide_assists.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !noundef !12
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait6StructEBH_.exit.sink.split, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ab:                                            ; preds = %bb.dm, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bv = getelementptr i8, ptr %1, i64 48
  %.val32.i = load ptr, ptr %i.bv, align 8, !noalias !2458, !nonnull !12, !align !24, !noundef !12 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !2457, !nonnull !12, !noundef !12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !2457, !noundef !12 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bz, 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.52.0..sroa_idx.i.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  br label %bb.ad

.body.i:                                          ; preds = %bb.df, %bb.cw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsiU5vK8fN4ZC_11ide_assists.exit.i, %.body.i.i, %bb.ah, %.body14.i.i.i, %bb.ac
  %.pn25.i = phi { ptr, i32 } [ %.pn23.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ %i.ja, %bb.cw ], [ %.pn.i.i.i, %.body14.i.i.i ], [ %.pn27.i.i, %.body.i.i ], [ %i.dc, %bb.ac ], [ %.pn.i.i.i, %bb.ah ], [ %i.jr, %bb.df ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait5FieldEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ac) #29
          to label %.body unwind label %bb.dh

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i57.invoke.i, %bb.az, %bb.aw, %bb.ad
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.ab
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait5FieldEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ac)
          to label %bb.do unwind label %bb.p

bb.ad:                                            ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.0109.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.dd, %.backedge.i ] ; 6 uses
  %.sroa.7.0108.i = phi i64 [ 0, %.lr.ph.i ], [ %i.de, %.backedge.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 20 ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.7.0108.i, 1
  %i.df = load i32, ptr %.sroa.0.0109.i, align 4, !range !30, !alias.scope !2459, !noundef !12
  %.not.i.i = icmp eq i32 %i.df, 2
  %.sroa.0.0.v.i.i = select i1 %.not.i.i, i64 4, i64 12
  %.sroa.0.0.i33.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 %.sroa.0.0.v.i.i ; 2 uses
  %i.dg = load i32, ptr %.sroa.0.0.i33.i, align 4, !range !23, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i33.i, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2458
  invoke void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6sourceNtB8_5TraitECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.cc, i32 noundef range(i32 1, 0) %i.dg, i32 noundef %i.di)
          to label %.noexc.i unwind label %bb.ac

.noexc.i:                                         ; preds = %bb.ad
  %i.dj = load i32, ptr %i.cd, align 8, !range !30, !noalias !2458, !noundef !12
  %.not.i34.i = icmp eq i32 %i.dj, 2
  br i1 %.not.i34.i, label %.thread.i.i, label %bb.ae

.thread.i.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2458
  br label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type.exit.i

bb.ae:                                            ; preds = %.noexc.i
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.t, align 8, !noalias !2458, !nonnull !12, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2458
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 48 ; 6 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !2460, !noundef !12 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.ag, label %bb.af, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.dn = add nuw i32 %i.dl, 1
  store i32 %i.dn, ptr %i.dk, align 4, !noalias !2460
  invoke void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull %.sroa.03.0.copyload.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i.i:                                    ; preds = %bb.ag
  unreachable

.body14.i.i.i:                                    ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i.i, %bb.at, %bb.as, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.et, %bb.as ], [ %i.et, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.do = load i32, ptr %i.dk, align 4, !noundef !12
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dk, align 4
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %.body14.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.03.0.copyload.i.i) #32
          to label %.body.i unwind label %bb.ax

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i.i.i, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i.i

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i.i.i: ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2461
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i.i:                                    ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i.i.i
  %i.dr = load i64, ptr %i.q, align 8, !range !19, !noalias !2461, !noundef !12 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.dr, 2
  br i1 %.not10.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc8.i.i.i, %.noexc12.i.i.i
  %i.ds = phi i64 [ %i.eo, %.noexc12.i.i.i ], [ %i.dr, %.noexc8.i.i.i ]
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.a, align 8, !noalias !2461 ; 11 uses
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i.i, i64 48 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !noalias !2462, !noundef !12
  %i.dw = add i32 %i.dv, -1                       ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !noalias !2462
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.invoke.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.invoke.i.i.i: ; preds = %bb.ak, %bb.ai
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i.i) #32
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.52.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2461
  switch i64 %.sroa.52.0.copyload.i.i.i.i.i, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00B9_.exit.i.i.i.i.i.i.i.i [
    i64 2, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i
    i64 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i.i, i64 48 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !noalias !2463, !noundef !12
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 4, !noalias !2463
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.invoke.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00B9_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2464
  store ptr %.sroa.6.0.copyload.i.i.i.i.i, ptr %i.p, align 8, !noalias !2464
  %i.ec = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.an unwind label %bb.al, !noalias !2463

bb.al:                                            ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00B9_.exit.i.i.i.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i.i, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !2463, !noundef !12
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !noalias !2463
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.am, label %.body.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i.i) #32
          to label %.body.i.i.i unwind label %bb.aq, !noalias !2463

bb.an:                                            ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00B9_.exit.i.i.i.i.i.i.i.i
  %i.ei = icmp eq i16 %i.ec, 54
  br i1 %i.ei, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i.i, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !2463, !noundef !12
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !noalias !2463
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ap, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread6.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i.i) #32
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.am
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !2463
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread6.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2464
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread6.i.i.i.i.i, %bb.ak, %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.invoke.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2461
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc12.i.i.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i
  %i.eo = load i64, ptr %i.q, align 8, !range !19, !noalias !2461, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.eo, 2
  br i1 %.not.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.invoke.i.i.i, %bb.ap, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtB3V_10SyntaxNodeB4i_EB3S_EuB3d_NvYB6m_INtNtBa_7convert4FromB22_E4fromNCIB2_B6m_B3S_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3S_NCB7W_s_0E0E0E0E0B84_.exit.thread.i.i.i.i.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i.i.i
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.al
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ed, %bb.al ], [ %i.ed, %bb.am ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s) #29
          to label %.body14.i.i.i unwind label %bb.ax

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2464
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %.noexc12.i.i.i, %bb.ar, %.noexc8.i.i.i
  %.sroa.0.0.i.i4.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.ar ], [ null, %.noexc8.i.i.i ], [ null, %.noexc12.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2461
  call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !2469, !noalias !2458, !nonnull !12, !noundef !12 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !2469, !noundef !12
  %i.er = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.er, ptr %i.ep, align 4, !noalias !2469
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i.i.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i unwind label %bb.as, !noalias !2469

bb.as:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !range !19, !alias.scope !2469, !noalias !2458, !noundef !12
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !2469, !noalias !2458 ; 3 uses
  %i.eu = icmp eq i64 %.val4.i.i.i.i.i.i.i, 2
  br i1 %i.eu, label %.body14.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i.i.i) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !noalias !2470, !noundef !12
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !noalias !2470
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i.i, label %.body14.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i.i.i.i) #32
          to label %.body14.i.i.i unwind label %bb.av, !noalias !2469

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !range !19, !alias.scope !2469, !noalias !2458, !noundef !12
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !2469, !noalias !2458 ; 3 uses
  %i.ez = icmp eq i64 %.val2.i.i.i.i.i.i.i, 2
  br i1 %i.ez, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i.i.i.i) ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !noalias !2471, !noundef !12
  %i.fc = add i32 %i.fb, -1                       ; 2 uses
  store i32 %i.fc, ptr %i.fa, align 4, !noalias !2471
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i.i.i: ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i.i.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !2469
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i.i.i, %bb.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2458
  %i.ff = load i32, ptr %i.dk, align 4, !noundef !12
  %i.fg = add i32 %i.ff, -1                       ; 2 uses
  store i32 %i.fg, ptr %i.dk, align 4
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.aw, label %.noexc35.i

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.03.0.copyload.i.i) #32
          to label %.noexc35.i unwind label %bb.ac

bb.ax:                                            ; preds = %.body.i.i.i, %bb.ah
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

.noexc35.i:                                       ; preds = %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type00EEB6Q_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2458
  %.not16.i.i = icmp eq ptr %.sroa.0.0.i.i4.i.i.i, null
  br i1 %.not16.i.i, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type.exit.i, label %bb.ay

bb.ay:                                            ; preds = %.noexc35.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i.i, i64 48 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !noundef !12
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.az, label %.backedge.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i4.i.i.i) #32
          to label %.backedge.i unwind label %bb.ac

_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type.exit.i: ; preds = %.noexc35.i, %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2458
  %i.fn = load i8, ptr %i.ch, align 8, !range !40, !alias.scope !2457, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2473
  store i64 0, ptr %i.o, align 8, !noalias !2473
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !2473
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2473
  %i.fo = load i32, ptr %.sroa.0.0109.i, align 4, !range !30, !alias.scope !2472, !noundef !12
  %.not.i37.i = icmp eq i32 %i.fo, 2
  %.sroa.0.0.v.i38.i = select i1 %.not.i37.i, i64 4, i64 12
  %.sroa.0.0.i39.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 %.sroa.0.0.v.i38.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2473
  %i.fp = load i32, ptr %.sroa.0.0.i39.i, align 4, !range !23, !alias.scope !2472, !noundef !12 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39.i, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !alias.scope !2472, !noundef !12 ; 2 uses
  %i.fs = invoke { i32, i32 } @_RNvMsD_Cs8Xq8PKFYOms_3hirNtB5_5Trait6module(i32 noundef %i.fp, i32 noundef %i.fr, ptr noundef nonnull %.val32.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.bb unwind label %bb.ba, !noalias !2474 ; 2 uses

.body.i.i:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit50.i.i, %bb.bh, %bb.be, %bb.ba
  %.pn27.i.i = phi { ptr, i32 } [ %.pn23.i.i, %bb.bh ], [ %.pn25.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit50.i.i ], [ %i.ft, %bb.ba ], [ %i.gf, %bb.be ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #29
          to label %.body.i unwind label %bb.ca, !noalias !2474

bb.ba:                                            ; preds = %.noexc56.i.i, %bb.cq, %bb.cp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir6ModuleEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.bf, %bb.bb, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bb:                                            ; preds = %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13has_self_type.exit.i
  %i.fu = extractvalue { i32, i32 } %i.fs, 0
  %i.fv = extractvalue { i32, i32 } %i.fs, 1
  invoke void @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module12path_to_root(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i32 noundef %i.fu, i32 noundef %i.fv, ptr noundef nonnull %.val32.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.bc unwind label %bb.ba, !noalias !2474

bb.bc:                                            ; preds = %bb.bb
  %i.fw = load ptr, ptr %i.ci, align 8, !noalias !2473, !nonnull !12, !noundef !12 ; 2 uses
  %i.fx = load i64, ptr %i.cj, align 8, !noalias !2473, !noundef !12 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc
  %.idx.i.i = shl nuw nsw i64 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i.i
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bz, %.lr.ph.i.i
  %.sroa.4.01.i.i = phi ptr [ %i.fz, %.lr.ph.i.i ], [ %i.ga, %bb.bz ] ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.4.01.i.i, i64 -8 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !range !23, !noalias !2474, !noundef !12
  %i.gc = getelementptr inbounds i8, ptr %.sroa.4.01.i.i, i64 -4
  %i.gd = load i32, ptr %i.gc, align 4, !noalias !2474, !noundef !12
  %i.ge = invoke noundef ptr @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module4name(i32 noundef %i.gb, i32 noundef %i.gd, ptr noundef nonnull %.val32.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @15)
          to label %bb.bj unwind label %bb.bi, !noalias !2474 ; 2 uses

._crit_edge.i.i:                                  ; preds = %bb.bz, %bb.bc
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bf unwind label %bb.be, !noalias !2474

bb.be:                                            ; preds = %._crit_edge.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i unwind label %bb.bg, !noalias !2474

bb.bf:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir6ModuleEECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.ba, !noalias !2474

bb.bg:                                            ; preds = %bb.be
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !2474
  unreachable

bb.bh:                                            ; preds = %.body38.i.i, %bb.bi
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0INtB7_5FnMutTRTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEEE8call_mutBW_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !24, !noundef !12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !align !24, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !3038, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !3038, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.not.not.i.not.i.i1 = icmp eq i64 %i.e, 0
  br i1 %.not.not.not.i.not.i.i1, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22does_pat_match_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3039 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.i, %i.f
  %or.cond = select i1 %i.h, i1 true, i1 %.not.not.not.i.not.i.i
  br i1 %or.cond, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit.loopexit, label %.lr.ph

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit.loopexit: ; preds = %.lr.ph
  %.not.not.not.i.not.i.i.lcssa.ph = xor i1 %i.h, true
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit.loopexit, %bb.a
  %.not.not.not.i.not.i.i.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not.i.not.i.i.lcssa.ph, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armss6_0B7_.exit.loopexit ]
  ret i1 %.not.not.not.i.not.i.i.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0INtB7_5FnMutTRTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3044 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !24, !noundef !12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !align !24, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !3045, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !3045, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.not.not.i.not.i.i1 = icmp eq i64 %i.e, 0
  br i1 %.not.not.not.i.not.i.i1, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22does_pat_match_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3046 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.i, %i.f
  %or.cond = select i1 %i.h, i1 true, i1 %.not.not.not.i.not.i.i
  br i1 %or.cond, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit.loopexit, label %.lr.ph

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit.loopexit: ; preds = %.lr.ph
  %.not.not.not.i.not.i.i.lcssa.ph = xor i1 %i.h, true
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit.loopexit, %bb.a
  %.not.not.not.i.not.i.i.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not.i.not.i.i.lcssa.ph, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssd_0B7_.exit.loopexit ]
  ret i1 %.not.not.not.i.not.i.i.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0INtB7_5FnMutTRTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatbEEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3051 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !24, !noundef !12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !align !24, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !3052, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !3052, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.not.not.i.not.i.i1 = icmp eq i64 %i.e, 0
  br i1 %.not.not.not.i.not.i.i1, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22does_pat_match_variant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3053 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.i, %i.f
  %or.cond = select i1 %i.h, i1 true, i1 %.not.not.not.i.not.i.i
  br i1 %or.cond, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit.loopexit, label %.lr.ph

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit.loopexit: ; preds = %.lr.ph
  %.not.not.not.i.not.i.i.lcssa.ph = xor i1 %i.h, true
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit.loopexit, %bb.a
  %.not.not.not.i.not.i.i.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not.i.not.i.i.lcssa.ph, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers22add_missing_match_arms22add_missing_match_armssh_0B7_.exit.loopexit ]
  ret i1 %.not.not.not.i.not.i.i.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params0INtB7_5FnMutTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3054 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !24, !noundef !12
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.val1 = load i64, ptr %1, align 8, !range !19, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait18generic_param_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %.val1, ptr %.val2)
  %i.e = load i64, ptr %i.b, align 8, !range !18, !noundef !12
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params0B7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.f = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %common.resume.i.i unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params00B9_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params00B9_.exit.i: ; preds = %bb.d
  %i.k = xor i1 %i.f, true
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params0B7_.exit

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params0B7_.exit: ; preds = %bb.a, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params00B9_.exit.i
  %.sroa.0.0.i = phi i1 [ %i.k, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait21filter_generic_params00B9_.exit.i ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_0INtB7_5FnMutTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3083 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !12, !align !24, !noundef !12
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noalias !3084, !noundef !12 ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34, !noalias !3084
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i: ; preds = %bb.a
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.j, align 4, !noalias !3084
  call void @_RNvMso_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokens3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %.val1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3085
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i
  %i.n = load i64, ptr %i.f, align 8, !range !19, !noalias !3085, !noundef !12 ; 2 uses
  %.not18.not.i.i.i = icmp eq i64 %i.n, 2
  br i1 %.not18.not.i.i.i, label %.loopexit7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %.sroa.52.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.lr.ph.i.i.i
  %i.q = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.as, %.noexc5.i ]
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.a, align 8, !noalias !3085 ; 10 uses
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noalias !3086, !noundef !12
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !noalias !3086
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.sink.split.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !3085
  switch i64 %.sroa.52.0.copyload.i.i.i, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00B9_.exit.i.i.i.i.i.i [
    i64 2, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i
    i64 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noalias !3087, !noundef !12
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !noalias !3087
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.sink.split.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00B9_.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3088
  store ptr %.sroa.6.0.copyload.i.i.i, ptr %i.e, align 8, !noalias !3088
  %i.aa = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.i unwind label %bb.h, !noalias !3087

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.s, %bb.q, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.h
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.q ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.af, %bb.h ], [ %i.ap, %bb.s ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !3087, !noundef !12
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !noalias !3087
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.body.i

bb.g:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i) #32
          to label %.body.i unwind label %bb.u, !noalias !3087

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i.i, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00B9_.exit.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00B9_.exit.i.i.i.i.i.i
  %i.ag = icmp eq i16 %i.aa, 153
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3089
  store i64 0, ptr %i.c, align 8, !noalias !3089
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3089
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3089
  store i64 1610612768, ptr %i.o, align 8, !noalias !3089
  store ptr %i.c, ptr %i.b, align 8, !noalias !3089
  store ptr @27, ptr %i.p, align 8, !noalias !3089
  %i.ah = invoke noundef zeroext i1 @_RNvXs1_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3090

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.l
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !3090

bb.k:                                             ; preds = %bb.j
  br i1 %i.ah, label %bb.l, label %bb.p, !prof !14

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #28
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3090

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !3090
  unreachable

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i1 [ %i.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i ], [ false, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !3087, !noundef !12
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !3087
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i) #32
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3089
  %i.an = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.q, !noalias !3087

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #29
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !3087

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i.i unwind label %bb.s, !noalias !3087

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !3087

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !3087
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i unwind label %bb.h, !noalias !3087

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3088
  br label %bb.n

bb.u:                                             ; preds = %bb.q, %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !3087
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3088
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %.loopexit7.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.sink.split.i.i.i: ; preds = %bb.f, %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i) #32
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.sink.split.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3085
  invoke void @_RNvXsp_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18PreorderWithTokensNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i:                                        ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i
  %i.as = load i64, ptr %i.f, align 8, !range !19, !noalias !3085, !noundef !12 ; 2 uses
  %.not.not.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.not.i.i.i, label %.loopexit7.i, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.thread.sink.split.i.i.i, %bb.o, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20preorder_with_tokens.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %bb.g ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3map3MapIBC_NtNtCs9GitHPCrz2Q_5rowan6cursor18PreorderWithTokensNCNvMs4_B1J_NtB1J_10SyntaxNode23descendants_with_tokens0ENvYINtNtB1L_13utility_types11NodeOrTokenINtNtB1L_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB48_11SyntaxTokenB4u_EEINtNtB4_7convert4FromIB3v_B2I_NtB1J_11SyntaxTokenEE4fromENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00EEB6Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #29
          to label %common.resume.i unwind label %bb.z

.loopexit7.i:                                     ; preds = %.noexc5.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i, %.noexc.i
  %i.at = phi i1 [ true, %.noexc.i ], [ false, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCINvNtB6_3map12map_try_foldB22_IB23_INtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5e_11SyntaxTokenB5A_EEuB3d_NvYB56_INtNtBa_7convert4FromB22_E4fromNCIB2_B56_B6r_uB3d_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB6r_NCB7T_s_0E0E0E0E0B81_.exit.i.i.i ], [ true, %.noexc5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3085
  call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !3096, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !3096, !noundef !12
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !3096
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i: ; preds = %.loopexit7.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i.i) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i unwind label %bb.v, !noalias !3096

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.ba, align 8, !range !19, !alias.scope !3096, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val5.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !3096 ; 3 uses
  %i.bc = icmp eq i64 %.val4.i.i.i.i.i, 2
  br i1 %i.bc, label %common.resume.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noalias !3097, !noundef !12
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !noalias !3097
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, label %common.resume.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.i.i.i) #32
          to label %common.resume.i unwind label %bb.y, !noalias !3096

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i, %.loopexit7.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !19, !alias.scope !3096, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val3.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !3096 ; 3 uses
  %i.bj = icmp eq i64 %.val2.i.i.i.i.i, 2
  br i1 %i.bj, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_0B7_.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i.i) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !3098, !noundef !12
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !3098
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_0B7_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i: ; preds = %bb.x
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i.i) #32, !noalias !3098
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_0B7_.exit

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !3096
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i, %bb.w, %bb.v, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i.i.i.i ], [ %i.az, %bb.w ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.z:                                             ; preds = %.body.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clausess1_0B7_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i, %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.at
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB5_6UniqueINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB10_7flatten7FlatMapINtNtB10_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB54_NtB54_17UsageSearchResult4iter0ERSB52_NCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB6H_11LocalUsages4iter0ENCNvB6H_16fix_param_usages0EENtNtNtB12_6traits8iterator8Iterator4nextB6L_(ptr noalias nofree noundef align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3135 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.e, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3141
  store ptr %0, ptr %i.c, align 8, !noalias !3142
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.g, align 8, !noalias !3142
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3143, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3146
  store ptr %i.c, ptr %i.b, align 8, !noalias !3147
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3148, !nonnull !12, !noundef !12
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.b ] ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNtBc_10filter_map19filter_map_try_foldRB2y_B40_uB3l_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvB1j_8find_map5checkB40_B40_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB7N_6UniqueINtB4Y_9FilterMapINtBa_7FlatMapINtNtBc_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2y_EENCNvMB2A_NtB2A_17UsageSearchResult4iter0ERSB2y_NCNvMs_B5S_NtB5S_11LocalUsages4iter0EB5O_EEB1j_4next0E0E0E0B5W_.exit.thread.i.i.i.i.i, label %bb.d

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNtBc_10filter_map19filter_map_try_foldRB2y_B40_uB3l_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvB1j_8find_map5checkB40_B40_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB7N_6UniqueINtB4Y_9FilterMapINtBa_7FlatMapINtNtBc_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2y_EENCNvMB2A_NtB2A_17UsageSearchResult4iter0ERSB2y_NCNvMs_B5S_NtB5S_11LocalUsages4iter0EB5O_EEB1j_4next0E0E0E0B5W_.exit.thread.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3146
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !3148
  %i.n = call { i64, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldRNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExpruINtNtB9_12control_flow11ControlFlowB2z_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkB2z_B2z_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB6z_6UniqueINtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtBV_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1O_EENCNvMB1Q_NtB1Q_17UsageSearchResult4iter0ERSB1O_NCNvMs_B4a_NtB4a_11LocalUsages4iter0EB46_EEB5w_4next0E0E0INtB7_5FnMutTuB1N_EE8call_mutB4e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k), !noalias !3149 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3146
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB4g_NtB4g_17UsageSearchResult4iter0ERSB4e_NCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5T_11LocalUsages4iter0ENCNvB5T_16fix_param_usages0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB7H_8find_map5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprB8P_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB9T_6UniqueBV_EB7H_4next0E0INtNtNtBc_3ops12control_flow11ControlFlowB8P_EEB5X_.exit.thread.i

bb.f:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNtBc_10filter_map19filter_map_try_foldRB2y_B40_uB3l_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvB1j_8find_map5checkB40_B40_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB7N_6UniqueINtB4Y_9FilterMapINtBa_7FlatMapINtNtBc_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2y_EENCNvMB2A_NtB2A_17UsageSearchResult4iter0ERSB2y_NCNvMs_B5S_NtB5S_11LocalUsages4iter0EB5O_EEB1j_4next0E0E0E0B5W_.exit.thread.i.i.i.i.i, %bb.a
  store ptr null, ptr %i.f, align 8, !alias.scope !3143
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3150, !noundef !12
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.thread.i.i.i.i.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.i.i.i.i.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.r = call { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3s_NtB3s_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB4Z_11LocalUsages4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB7e_13FlattenCompatppE13iter_try_fold7flattenRSB3q_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7e_B7r_B6l_8try_fold7flattenINtNtNtBc_5slice4iter4IterB3q_EuB8k_NCINvNtB8_10filter_map19filter_map_try_foldRB3q_B8Z_uB8k_NCNvB4Z_16fix_param_usages0NCINvNvB6l_8find_map5checkB8Z_B8Z_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBd8_6UniqueINtBbb_9FilterMapINtB7e_7FlatMapBX_B8d_B4S_EBc1_EEB6l_4next0E0E0E0E0B8k_EB53_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.thread.i.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB4g_NtB4g_17UsageSearchResult4iter0ERSB4e_NCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5T_11LocalUsages4iter0ENCNvB5T_16fix_param_usages0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB7H_8find_map5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprB8P_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB9T_6UniqueBV_EB7H_4next0E0INtNtNtBc_3ops12control_flow11ControlFlowB8P_EEB5X_.exit.thread.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.thread.i.i.i.i.i: ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.i.i.i.i.i, %bb.f
  store ptr null, ptr %i.f, align 8, !alias.scope !3143
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3143, !noundef !12 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not15.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapIB10_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEENCNvMB3L_NtB3L_17UsageSearchResult4iter0ENCNvMs_NtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_functionNtB5i_11LocalUsages4iter0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB7j_13FlattenCompatppE13iter_try_fold7flattenRSB3J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNvXsi_B7j_B7w_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenINtNtNtBc_5slice4iter4IterB3J_EuB8p_NCINvNtB8_10filter_map19filter_map_try_foldRB3J_B94_uB8p_NCNvB5i_16fix_param_usages0NCINvNvBag_8find_map5checkB94_B94_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtBdH_6UniqueINtBbK_9FilterMapINtB7j_7FlatMapB1f_B8i_B5b_EBcA_EEBag_4next0E0E0E0E0B8p_EB5m_.exit.thread.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3153
  store ptr %i.c, ptr %i.a, align 8, !noalias !3154
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !3155, !nonnull !12, !noundef !12
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.x = phi ptr [ %i.z, %bb.i ], [ %i.u, %bb.g ] ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNtBc_10filter_map19filter_map_try_foldRB2y_B40_uB3l_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvB1j_8find_map5checkB40_B40_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB7N_6UniqueINtB4Y_9FilterMapINtBa_7FlatMapINtNtBc_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2y_EENCNvMB2A_NtB2A_17UsageSearchResult4iter0ERSB2y_NCNvMs_B5S_NtB5S_11LocalUsages4iter0EB5O_EEB1j_4next0E0E0E0B5W_.exit25.thread.i.i.i.i.i, label %bb.i

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCINvNtBc_10filter_map19filter_map_try_foldRB2y_B40_uB3l_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16extract_function16fix_param_usages0NCINvNvB1j_8find_map5checkB40_B40_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB7N_6UniqueINtB4Y_9FilterMapINtBa_7FlatMapINtNtBc_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecB2y_EENCNvMB2A_NtB2A_17UsageSearchResult4iter0ERSB2y_NCNvMs_B5S_NtB5S_11LocalUsages4iter0EB5O_EEB1j_4next0E0E0E0B5W_.exit25.thread.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3153
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !alias.scope !3155
end_hunk_1
