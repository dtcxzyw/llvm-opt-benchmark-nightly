Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.10?download=true
inline.NumInlined: 471
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvMs1_Cs3f36owOmepS_6quicheINtB6_10ConnectionNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE14stream_do_sendRShjNCNvB2_11stream_send0EBN_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10993
    #dbg_value(ptr %i.al, !10485, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !10607)
    #dbg_value(ptr %i.al, !10608, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !10611)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 344, !dbg !10994 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !10994, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.cm, !10479, !DIExpression(), !10613)
    #dbg_value(ptr %i.cm, !10490, !DIExpression(), !10494)
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !dbg !10995
    #dbg_value(i64 %i.cn, !10486, !DIExpression(), !10614)
  %i.co = icmp slt i64 %i.cn, 0, !dbg !10996
  br i1 %i.co, label %bb.p, label %bb.o, !dbg !10996

bb.o:                                             ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit.thread
  %i.cp = load ptr, ptr %i.cl, align 8, !dbg !10997, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.cp, !10496, !DIExpression(), !10615)
  store ptr %i.cp, ptr %i.k, align 8, !dbg !10998
    #dbg_value(ptr %i.al, !10616, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10623)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 248, !dbg !10999
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !10999, !range !6585, !noundef !2655
  %i.cs = trunc nuw i64 %i.cr to i1, !dbg !11000
  br i1 %i.cs, label %bb.q, label %bb.r, !dbg !11000

bb.p:                                             ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit.thread
  tail call void @llvm.trap(), !dbg !11001
  unreachable, !dbg !11001

bb.q:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 256, !dbg !10999
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !11002, !noundef !2655
    #dbg_value(i64 %i.cu, !10620, !DIExpression(), !10624)
    #dbg_value(i64 %i.cu, !10327, !DIExpression(), !10625)
  %.not = xor i1 %i.cj, true, !dbg !11003
  %brmerge = or i1 %i.ck, %.not, !dbg !11003
  br i1 %brmerge, label %bb.s, label %bb.t, !dbg !11003

bb.r:                                             ; preds = %bb.o
  %i.cv = icmp eq i64 %i.ad, 0, !dbg !11004
  %i.cw = icmp ne i64 %4, 0                       ; 2 uses
  %or.cond = and i1 %i.cw, %i.cv, !dbg !11004
  br i1 %or.cond, label %bb.ao, label %bb.y, !dbg !11004

bb.s:                                             ; preds = %bb.t, %bb.q
  store i64 12, ptr %0, align 8, !dbg !11005
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11005
  store i64 %i.cu, ptr %i.cx, align 8, !dbg !11005
  br label %bb.w, !dbg !11006

bb.t:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 361, !dbg !11007
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !11007, !range !6575, !noundef !2655
  %i.da = trunc nuw i8 %i.cz to i1, !dbg !11007
    #dbg_value(i1 %i.da, !10328, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10627)
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE7collectBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, i64 noundef %2, i1 noundef zeroext %i.da)
          to label %bb.s unwind label %bb.v, !dbg !11008

.body:                                            ; preds = %bb.ay, %bb.az, %bb.af, %bb.v, %bb.cj
  %.pn111 = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.af ], [ %i.iy, %bb.cj ], [ %i.de, %bb.v ], [ %.pn, %bb.az ], [ %.pn, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10628), !dbg !11009
    #dbg_value(ptr %i.k, !6694, !DIExpression(), !9983)
  call void @llvm.experimental.noalias.scope.decl(metadata !10629), !dbg !11010
    #dbg_value(ptr %i.k, !6698, !DIExpression(), !9987)
    #dbg_value(ptr %i.k, !6701, !DIExpression(), !9989)
    #dbg_value(i64 1, !6703, !DIExpression(), !9991)
    #dbg_value(i8 1, !6706, !DIExpression(), !9991)
    #dbg_value(i64 1, !6708, !DIExpression(), !9993)
    #dbg_value(i8 1, !6710, !DIExpression(), !9993)
  %i.db = load ptr, ptr %i.k, align 8, !dbg !11011, !alias.scope !10630, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.db, !6705, !DIExpression(), !9995)
    #dbg_value(ptr %i.db, !6709, !DIExpression(), !9993)
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !dbg !11012, !noalias !10630
  %i.dd = icmp eq i64 %i.dc, 1, !dbg !11013
  br i1 %i.dd, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit, !dbg !11013

bb.u:                                             ; preds = %.body
    #dbg_value(i8 2, !6712, !DIExpression(), !9997)
  fence acquire, !dbg !11014
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit unwind label %bb.cf, !dbg !11015

bb.v:                                             ; preds = %.invoke, %.noexc120, %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i, %bb.ar, %bb.aq, %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.ap, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !10631), !dbg !11009
    #dbg_value(ptr %i.k, !6694, !DIExpression(), !10001)
  call void @llvm.experimental.noalias.scope.decl(metadata !10632), !dbg !11016
    #dbg_value(ptr %i.k, !6698, !DIExpression(), !10005)
    #dbg_value(ptr %i.k, !6701, !DIExpression(), !10007)
    #dbg_value(i64 1, !6703, !DIExpression(), !10009)
    #dbg_value(i8 1, !6706, !DIExpression(), !10009)
    #dbg_value(i64 1, !6708, !DIExpression(), !10011)
    #dbg_value(i8 1, !6710, !DIExpression(), !10011)
  %i.df = load ptr, ptr %i.k, align 8, !dbg !11017, !alias.scope !10633, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.df, !6705, !DIExpression(), !10013)
    #dbg_value(ptr %i.df, !6709, !DIExpression(), !10011)
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !dbg !11018, !noalias !10633
  %i.dh = icmp eq i64 %i.dg, 1, !dbg !11019
  br i1 %i.dh, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit118, !dbg !11019

bb.x:                                             ; preds = %bb.w
    #dbg_value(i8 2, !6712, !DIExpression(), !10015)
  fence acquire, !dbg !11020
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22, !dbg !11021
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit118, !dbg !11021

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit118: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11009
  br label %bb.cr, !dbg !11022

bb.y:                                             ; preds = %bb.r
  %i.di = icmp ult i64 %i.ad, %4, !dbg !11023     ; 2 uses
  %. = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %4), !dbg !11024 ; 6 uses
  %not. = xor i1 %i.di, true, !dbg !11024
  %.113 = and i1 %5, %not., !dbg !11024           ; 3 uses
    #dbg_value(i8 poison, !10431, !DIExpression(), !10439)
    #dbg_value(i8 poison, !10330, !DIExpression(), !10429)
    #dbg_value(i8 poison, !10312, !DIExpression(), !10428)
    #dbg_value(i64 %., !10329, !DIExpression(), !10429)
    #dbg_value(i64 %., !10315, !DIExpression(), !10521)
    #dbg_value(i8 poison, !10331, !DIExpression(), !10429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10634), !dbg !11025
    #dbg_declare(ptr poison, !10406, !DIExpression(), !10018)
    #dbg_value(ptr %i.al, !10402, !DIExpression(), !10019)
    #dbg_value(ptr %3, !10403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10019)
    #dbg_value(i64 %4, !10403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10019)
    #dbg_value(i64 %., !10404, !DIExpression(), !10019)
    #dbg_value(i1 %.113, !10405, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10635), !dbg !11026
    #dbg_value(ptr %i.am, !10373, !DIExpression(), !10022)
    #dbg_value(ptr %3, !10374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10022)
    #dbg_value(i64 %., !10374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10022)
    #dbg_value(i1 %.113, !10375, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10022)
    #dbg_declare(ptr %i.f, !10376, !DIExpression(), !10023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11027, !noalias !10636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10637), !dbg !11028
    #dbg_value(i64 %., !10638, !DIExpression(), !10042)
    #dbg_value(i1 %.113, !10654, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10042)
    #dbg_value(ptr %i.am, !10653, !DIExpression(), !10042)
    #dbg_value(ptr %i.am, !10662, !DIExpression(), !10047)
    #dbg_value(ptr %i.am, !10662, !DIExpression(), !10049)
  %i.dj = load i64, ptr %i.an, align 8, !dbg !11029, !alias.scope !10666, !noalias !10667, !noundef !2655 ; 2 uses
  %i.dk = add i64 %i.dj, %., !dbg !11029          ; 5 uses
    #dbg_value(i64 %i.dk, !10655, !DIExpression(), !10051)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 328, !dbg !11030 ; 4 uses
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !11030, !alias.scope !10666, !noalias !10667, !noundef !2655
  %i.dn = sub i64 %i.dm, %i.dj, !dbg !11031       ; 2 uses
  %i.do = icmp ugt i64 %., %i.dn, !dbg !11032
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 144, !dbg !11033 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !11033, !range !6585, !alias.scope !10666, !noalias !10667, !noundef !2655 ; 2 uses
  br i1 %i.do, label %bb.ad, label %bb.z, !dbg !11032

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 152, !dbg !11033 ; 2 uses
  %i.ds = trunc nuw i64 %i.dq to i1, !dbg !11034
  br i1 %i.ds, label %bb.aa, label %bb.ab, !dbg !11034

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.dr, align 8, !dbg !11035, !alias.scope !10666, !noalias !10667, !noundef !2655 ; 2 uses
    #dbg_value(i64 %i.dt, !10660, !DIExpression(), !10052)
  %i.du = icmp ule i64 %i.dk, %i.dt, !dbg !11036
  %i.dv = icmp ne i64 %i.dk, %i.dt
  %or.cond.i.i.i = or i1 %.113, %i.dv
  %or.cond.i.i = and i1 %i.du, %or.cond.i.i.i, !dbg !11036
  br i1 %or.cond.i.i, label %bb.ab, label %bb.ar, !dbg !11036

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.113, label %bb.ac, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i, !dbg !11037

_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.04.0.shrunk.i.i.i = phi i8 [ 0, %bb.ab ], [ 0, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %., %bb.ab ], [ %i.dn, %bb.ad ], [ %., %bb.ac ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i.i.i, !10638, !DIExpression(), !10042)
    #dbg_value(i8 %.sroa.04.0.shrunk.i.i.i, !10654, !DIExpression(), !10042)
    #dbg_value(ptr %i.am, !10668, !DIExpression(), !10056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11038, !noalias !10672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11038, !noalias !10672
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 160, !dbg !11038
  invoke void @_RNvMNtCs3f36owOmepS_6quiche6rangesNtB2_8RangeSet4iter(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dw)
          to label %.noexc120 unwind label %bb.v, !dbg !11039

.noexc120:                                        ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i
  invoke void @_RNvXs2_NtCsgrXZMxzLG8J_6either8iteratorINtB7_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IteryyENCNvMNtCs3f36owOmepS_6quiche6rangesNtB2F_8RangeSet4iter0EIBP_INtNtNtBX_5slice4iter4IterTyyEENCB2C_s_0EENtNtNtBV_6traits8iterator8Iterator4nextCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc121 unwind label %bb.v, !dbg !11040

.noexc121:                                        ; preds = %.noexc120
  %i.dx = load i64, ptr %i.d, align 8, !dbg !11038, !range !6585, !noalias !10672, !noundef !2655
  %i.dy = trunc nuw i64 %i.dx to i1, !dbg !11041
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11041
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !11041, !noalias !10672
  %i.eb = icmp eq i64 %i.ea, 0, !dbg !11041
  %or.cond.i.i.i.i = select i1 %i.dy, i1 %i.eb, i1 false, !dbg !11041
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11041
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !11041, !noalias !10672
  %.sroa.0.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 %i.ed, i64 0, !dbg !11041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11042, !noalias !10672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11042, !noalias !10672
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i, %i.dk, !dbg !11043
  %i.ee = ptrtoint ptr %i.am to i64, !dbg !11044
  %spec.select.i.i = select i1 %.not.i.i.i, i64 %.sroa.0.0.i.i.i, i64 0, !dbg !11043 ; 8 uses
    #dbg_value(i64 %i.ee, !10378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10059)
    #dbg_value(i64 %spec.select.i.i, !10378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10059)
    #dbg_value(i8 %.sroa.04.0.shrunk.i.i.i, !10378, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !10059)
  store i64 %i.ee, ptr %i.f, align 8, !dbg !11045, !noalias !10636
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11045 ; 4 uses
  store i64 %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11045, !noalias !10636
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11045
  store i8 %.sroa.04.0.shrunk.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11045, !noalias !10636
  %i.ef = icmp eq i64 %spec.select.i.i, 0, !dbg !11046 ; 2 uses
  br i1 %i.ef, label %bb.as, label %.preheader.i.i, !dbg !11046

bb.ac:                                            ; preds = %bb.ab
  store i64 1, ptr %i.dp, align 8, !dbg !11047, !alias.scope !10666, !noalias !10667
  store i64 %i.dk, ptr %i.dr, align 8, !dbg !11047, !alias.scope !10666, !noalias !10667
  br label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i, !dbg !11048

bb.ad:                                            ; preds = %bb.y
    #dbg_value(i64 %i.dn, !10638, !DIExpression(), !10042)
    #dbg_value(i8 0, !10654, !DIExpression(), !10042)
  %i.eg = trunc nuw i64 %i.dq to i1, !dbg !11034
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !10674, !noalias !10675
    #dbg_value(i64 %i.ei, !10660, !DIExpression(), !10052)
  %or.cond92.not.i.i = icmp uge i64 %i.dk, %i.ei
  %or.cond95.not.i.i = select i1 %i.eg, i1 %or.cond92.not.i.i, i1 false, !dbg !11034
  br i1 %or.cond95.not.i.i, label %bb.ar, label %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE17reserve_for_writeB12_.exit.i.i, !dbg !11034

.preheader.i.i:                                   ; preds = %.noexc121
    #dbg_value(i64 %spec.select.i.i, !10379, !DIExpression(), !10060)
    #dbg_value(ptr %3, !10380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %spec.select.i.i, !10380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(ptr undef, !10350, !DIExpression(), !9917)
    #dbg_value(ptr poison, !10676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10064)
    #dbg_value(i64 %spec.select.i.i, !10676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10064)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ek = trunc nuw i8 %.sroa.04.0.shrunk.i.i.i to i1
  br label %bb.ah, !dbg !11049

bb.ae:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11050, !noalias !10636
    #dbg_value(ptr %i.f, !10681, !DIExpression(), !10067)
    #dbg_value(ptr %i.f, !10686, !DIExpression(), !10072)
    #dbg_value(i8 0, !10692, !DIExpression(), !10073)
    #dbg_value(ptr %.sroa.4.0..sroa_idx.i.i, !10689, !DIExpression(), !10074)
    #dbg_value(ptr @18, !10690, !DIExpression(), !10074)
  %i.el = icmp eq i64 %.sroa.420.0.copyload64101.i.i, 0, !dbg !11051
  br i1 %i.el, label %bb.ar, label %.invoke, !dbg !11051, !prof !10695

.loopexit.i.i:                                    ; preds = %.noexc59.i.i, %bb.ak, %bb.ah
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp.i.i:                           ; preds = %bb.al
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
    #dbg_value(ptr %i.f, !10681, !DIExpression(), !10076)
    #dbg_value(ptr %i.f, !10686, !DIExpression(), !10078)
    #dbg_value(i8 0, !10692, !DIExpression(), !10079)
    #dbg_value(ptr %.sroa.4.0..sroa_idx.i.i, !10689, !DIExpression(), !10080)
    #dbg_value(ptr @18, !10690, !DIExpression(), !10080)
  %i.em = icmp eq i64 %.sroa.420.0.copyload64101.i.i, 0, !dbg !11052
  br i1 %i.em, label %.body, label %bb.ag, !dbg !11052, !prof !10696

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @18, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %.noexc.i.i unwind label %bb.an, !dbg !11053, !noalias !10697

.noexc.i.i:                                       ; preds = %bb.ag
  unreachable, !dbg !11053

bb.ah:                                            ; preds = %bb.am, %.preheader.i.i
  %.sroa.420.0.copyload64101.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.preheader.i.i ], [ %i.fi, %bb.am ] ; 5 uses
  %.sroa.069.0100.i.i = phi ptr [ %3, %.preheader.i.i ], [ %i.en, %bb.am ] ; 2 uses
  %.sroa.670.099.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.preheader.i.i ], [ %i.eo, %bb.am ] ; 2 uses
    #dbg_value(ptr %.sroa.069.0100.i.i, !10380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.670.099.i.i, !10380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.670.099.i.i, !10698, !DIExpression(), !10083)
    #dbg_value(i64 4096, !10699, !DIExpression(), !10083)
    #dbg_value(ptr undef, !6720, !DIExpression(DW_OP_deref), !10085)
    #dbg_value(ptr undef, !6722, !DIExpression(DW_OP_deref), !10085)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.670.099.i.i, i64 4096), !dbg !11054 ; 3 uses
    #dbg_value(i64 %..i.i.i.i, !10366, !DIExpression(), !10086)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10091)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10098)
    #dbg_value(i64 %.sroa.670.099.i.i, !10701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10091)
    #dbg_value(i64 %.sroa.670.099.i.i, !10710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10098)
    #dbg_value(i64 %..i.i.i.i, !10707, !DIExpression(), !10091)
    #dbg_value(i64 %..i.i.i.i, !10722, !DIExpression(), !10098)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10103)
    #dbg_value(i64 %.sroa.670.099.i.i, !10724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10103)
    #dbg_value(i64 %..i.i.i.i, !10725, !DIExpression(), !10103)
    #dbg_value(i64 %..i.i.i.i, !10729, !DIExpression(), !10106)
    #dbg_value(i64 %.sroa.670.099.i.i, !10726, !DIExpression(), !10107)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10727, !DIExpression(), !10108)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10730, !DIExpression(), !10106)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.069.0100.i.i, i64 %..i.i.i.i, !dbg !11055
  %i.eo = sub nuw nsw i64 %.sroa.670.099.i.i, %..i.i.i.i, !dbg !11056 ; 2 uses
    #dbg_value(ptr %i.en, !10380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %i.eo, !10380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(ptr %.sroa.069.0100.i.i, !10381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10109)
    #dbg_value(i64 %..i.i.i.i, !10381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11057, !noalias !10636
  invoke void @_RNvXs_NtCsa2e0UnRrdBM_12tokio_quiche11buf_factoryNtB4_10BufFactoryNtNtCs3f36owOmepS_6quiche7buffers10BufFactory14buf_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.069.0100.i.i, i64 noundef %..i.i.i.i)
          to label %bb.aj unwind label %.loopexit.i.i, !dbg !11057, !noalias !10697

bb.ai:                                            ; preds = %bb.am
    #dbg_value(ptr poison, !10380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 poison, !10380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(ptr %i.f, !10681, !DIExpression(), !10111)
    #dbg_value(ptr %i.f, !10686, !DIExpression(), !10113)
    #dbg_value(i8 0, !10692, !DIExpression(), !10114)
    #dbg_value(ptr %.sroa.4.0..sroa_idx.i.i, !10689, !DIExpression(), !10115)
    #dbg_value(ptr @18, !10690, !DIExpression(), !10115)
  %i.ep = icmp eq i64 %i.fi, 0, !dbg !11058
  br i1 %i.ep, label %bb.as, label %.invoke, !dbg !11058, !prof !10732

.invoke:                                          ; preds = %bb.ai, %bb.ae
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @18, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %.cont unwind label %bb.v, !dbg !11059

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !10735), !dbg !11060
  call void @llvm.experimental.noalias.scope.decl(metadata !10736), !dbg !11060
    #dbg_value(ptr %i.f, !10737, !DIExpression(), !10125)
    #dbg_declare(ptr %i.e, !10741, !DIExpression(), !10126)
    #dbg_declare(ptr %i.b, !10746, !DIExpression(), !10127)
    #dbg_declare(ptr %i.b, !10748, !DIExpression(), !10130)
  %.val8.i.i.i = load i64, ptr %i.ej, align 8, !dbg !11061, !alias.scope !10736, !noalias !10754, !noundef !2655 ; 6 uses
    #dbg_value(i64 %.val8.i.i.i, !10742, !DIExpression(), !10131)
    #dbg_value(ptr %i.f, !10744, !DIExpression(), !10132)
  %i.eq = icmp ugt i64 %.val8.i.i.i, %.sroa.420.0.copyload64101.i.i, !dbg !11062
  br i1 %i.eq, label %bb.al, label %bb.ak, !dbg !11062

bb.ak:                                            ; preds = %bb.aj
  %i.er = icmp eq i64 %.sroa.420.0.copyload64101.i.i, %.val8.i.i.i, !dbg !11063
  %.sroa.01.0.i.i.i = and i1 %i.er, %i.ek, !dbg !11063
    #dbg_value(i8 poison, !10745, !DIExpression(), !10133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11064, !noalias !10755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11065, !noalias !10755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11065, !noalias !10754
  %i.es = load ptr, ptr %i.f, align 8, !dbg !11066, !alias.scope !10735, !noalias !10756, !nonnull !2655, !align !6579, !noundef !2655 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 176, !dbg !11066 ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !dbg !11066, !noalias !10757, !noundef !2655
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufINtB2_8RangeBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE8from_rawBS_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.eu, i1 noundef zeroext %.sroa.01.0.i.i.i)
          to label %.noexc59.i.i unwind label %.loopexit.i.i, !dbg !11067, !noalias !10697

.noexc59.i.i:                                     ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11068, !noalias !10755
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 136, !dbg !11069
    #dbg_value(ptr %i.ev, !10752, !DIExpression(), !10134)
  %i.ew = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryEE13push_back_mutB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %bb.am unwind label %.loopexit.i.i, !dbg !11070, !noalias !10697 ; 0 uses

bb.al:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11061
  %.val.i.i.i = load ptr, ptr %i.ex, align 8, !dbg !11061, !alias.scope !10736, !noalias !10754, !noundef !2655
  call void @llvm.experimental.noalias.scope.decl(metadata !10758), !dbg !11071
    #dbg_value(ptr %i.e, !10760, !DIExpression(), !10139)
  call void @llvm.experimental.noalias.scope.decl(metadata !10766), !dbg !11072
    #dbg_value(ptr %i.e, !10768, !DIExpression(), !10145)
    #dbg_value(ptr %i.e, !10772, !DIExpression(), !10148)
    #dbg_declare(ptr poison, !10778, !DIExpression(), !10152)
    #dbg_value(ptr %i.e, !10788, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10153)
    #dbg_value(ptr %i.e, !10794, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10156)
    #dbg_value(ptr %i.e, !10800, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !10159)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !11073
    #dbg_value(ptr %i.ey, !10811, !DIExpression(), !10164)
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !11074, !alias.scope !10815, !noalias !10754, !noundef !2655
    #dbg_value(ptr %i.ez, !10770, !DIExpression(), !10165)
  %i.fa = load ptr, ptr %i.e, align 8, !dbg !11075, !alias.scope !10815, !noalias !10754, !nonnull !2655, !align !6579, !noundef !2655
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !11075
  %i.fc = load ptr, ptr %i.fb, align 8, !dbg !11075, !noalias !10816, !nonnull !2655, !noundef !2655
  invoke void %i.fc(ptr noundef %i.ez, ptr noundef %.val.i.i.i, i64 noundef %.val8.i.i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.i.i, !dbg !11075, !noalias !10697, !inline_history !10166

bb.am:                                            ; preds = %.noexc59.i.i
  %i.fd = load i64, ptr %i.et, align 8, !dbg !11076, !noalias !10757, !noundef !2655
  %i.fe = add i64 %i.fd, %.val8.i.i.i, !dbg !11076
  store i64 %i.fe, ptr %i.et, align 8, !dbg !11076, !noalias !10757
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 192, !dbg !11077 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !dbg !11077, !noalias !10757, !noundef !2655
  %i.fh = add i64 %i.fg, %.val8.i.i.i, !dbg !11077
  store i64 %i.fh, ptr %i.ff, align 8, !dbg !11077, !noalias !10757
  %i.fi = sub nuw nsw i64 %.sroa.420.0.copyload64101.i.i, %.val8.i.i.i, !dbg !11078 ; 3 uses
  store i64 %i.fi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11078, !alias.scope !10735, !noalias !10756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11079, !noalias !10755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11050, !noalias !10636
    #dbg_value(ptr %i.en, !10380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %i.eo, !10380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(ptr undef, !10350, !DIExpression(), !9917)
    #dbg_value(ptr poison, !10676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10064)
    #dbg_value(i64 %i.eo, !10676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10064)
  %i.fj = icmp eq i64 %i.eo, 0, !dbg !11080
  br i1 %i.fj, label %bb.ai, label %bb.ah, !dbg !11049

bb.an:                                            ; preds = %bb.ag
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !11081, !noalias !10697
  unreachable, !dbg !11081

end_hunk_0
begin_hunk_1_@_RINvMs1_Cs3f36owOmepS_6quicheINtB6_10ConnectionNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE14stream_do_sendRShjNCNvB2_11stream_send0EBN_:bb.a
  fence acquire, !dbg !11116
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
          to label %.body unwind label %bb.cf, !dbg !11117

bb.ba:                                            ; preds = %bb.cp, %bb.co, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bn, %bb.bi
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit133: ; preds = %bb.aw, %._crit_edge.i125
  %.sroa.0.0.i126 = phi i64 [ %i.gr, %bb.aw ], [ %i.gc, %._crit_edge.i125 ], !dbg !11118 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i126, !10534, !DIExpression(), !10838)
    #dbg_value(ptr %i.al, !10587, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10841)
    #dbg_value(ptr %i.al, !10593, !DIExpression(DW_OP_plus_uconst, 264, DW_OP_stack_value), !10844)
  %i.gw = icmp eq i64 %i.ft, 0, !dbg !11119
  br i1 %i.gw, label %bb.bd, label %bb.bb, !dbg !11120

bb.bb:                                            ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit133
    #dbg_value(ptr %i.al, !10547, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10846)
  %i.gx = load i64, ptr %i.an, align 8, !dbg !11121, !noundef !2655
  %i.gy = icmp ult i64 %.sroa.0.0.i126, %i.gx, !dbg !11122
  br i1 %i.gy, label %bb.bc, label %bb.bd, !dbg !11122

bb.bc:                                            ; preds = %bb.bb
    #dbg_value(ptr %i.al, !10579, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10848)
  %i.gz = load i64, ptr %i.dl, align 8, !dbg !11123, !noundef !2655
  %i.ha = icmp ult i64 %.sroa.0.0.i126, %i.gz, !dbg !11124
    #dbg_value(i1 %i.ha, !10338, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10849)
  br label %bb.bd, !dbg !11125

bb.bd:                                            ; preds = %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit133, %bb.bb, %bb.bc
  %.sroa.024.0 = phi i1 [ %i.ha, %bb.bc ], [ false, %bb.bb ], [ false, %_RNvMs0_NtNtCs3f36owOmepS_6quiche6stream8send_bufINtB5_7SendBufNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE9off_frontB12_.exit133 ], !dbg !10838
    #dbg_value(i8 poison, !10338, !DIExpression(), !10849)
    #dbg_value(ptr %i.al, !10552, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10852)
  %i.hb = load i8, ptr %i.ap, align 8, !dbg !11126, !range !6575, !noundef !2655
  %i.hc = trunc nuw i8 %i.hb to i1, !dbg !11126
  br i1 %i.hc, label %bb.bh, label %bb.be, !dbg !11127

bb.be:                                            ; preds = %bb.bd
    #dbg_value(ptr %i.al, !10559, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10854)
    #dbg_value(ptr %i.al, !10408, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !10857)
    #dbg_value(ptr poison, !10409, !DIExpression(), !10858)
  %i.hd = load i64, ptr %i.dp, align 8, !dbg !11128, !range !6585, !noundef !2655
  %i.he = trunc nuw i64 %i.hd to i1, !dbg !11129
  %.pre = load i64, ptr %i.an, align 8, !dbg !11130 ; 2 uses
  br i1 %i.he, label %bb.bf, label %bb.bg, !dbg !11129

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.al, i64 152, !dbg !11128
    #dbg_value(ptr %i.al, !10412, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !10860)
    #dbg_value(ptr %i.al, !10570, !DIExpression(DW_OP_plus_uconst, 152, DW_OP_stack_value), !10863)
    #dbg_value(ptr poison, !10413, !DIExpression(), !10864)
    #dbg_value(ptr poison, !10571, !DIExpression(), !10865)
  %i.hg = load i64, ptr %i.hf, align 8, !dbg !11131, !noundef !2655
  %i.hh = icmp eq i64 %i.hg, %.pre, !dbg !11131
  br i1 %i.hh, label %bb.bh, label %bb.bg, !dbg !11132

bb.bg:                                            ; preds = %bb.be, %bb.bf
    #dbg_value(ptr %i.al, !10547, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10866)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.al, i64 352, !dbg !11133
  %i.hj = load i64, ptr %i.hi, align 8, !dbg !11133, !noundef !2655
  %i.hk = add i64 %i.hj, %.pre, !dbg !11134
    #dbg_value(ptr %i.al, !10579, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10868)
  %i.hl = load i64, ptr %i.dl, align 8, !dbg !11135, !noundef !2655
  %i.hm = icmp ult i64 %i.hk, %i.hl, !dbg !11134
    #dbg_value(i1 %i.hm, !10339, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10869)
  br label %bb.bh, !dbg !11136

bb.bh:                                            ; preds = %bb.bd, %bb.bf, %bb.bg
  %.sroa.025.0 = phi i1 [ %i.hm, %bb.bg ], [ false, %bb.bf ], [ false, %bb.bd ], !dbg !10546 ; 2 uses
    #dbg_value(i8 poison, !10339, !DIExpression(), !10869)
  %.not189 = xor i1 %i.cw, true, !dbg !11137
  %i.hn = and i1 %5, %.not189, !dbg !11137
  %.sroa.027.0 = or i1 %i.hn, %.sroa.024.0, !dbg !11137
    #dbg_value(i8 poison, !10340, !DIExpression(), !10870)
  %i.ho = icmp ult i64 %spec.select.i.i, %., !dbg !11138
  br i1 %i.ho, label %bb.bj, label %bb.bi, !dbg !11138

bb.bi:                                            ; preds = %bb.bh
    #dbg_value(ptr %i.al, !10514, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10871)
  store i64 0, ptr %i.am, align 8, !dbg !11139
    #dbg_value(ptr %1, !10872, !DIExpression(DW_OP_plus_uconst, 14920, DW_OP_stack_value), !10879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11140
    #dbg_value(i64 %2, !10876, !DIExpression(), !10880)
  store i64 %2, ptr %i.i, align 8, !dbg !11140
    #dbg_value(ptr %1, !10882, !DIExpression(DW_OP_plus_uconst, 15016, DW_OP_stack_value), !10890)
    #dbg_value(ptr %i.i, !10887, !DIExpression(), !10891)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 15016, !dbg !11141
  %i.hq = invoke { i64, i64 } @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyyINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE6removeyECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.bk unwind label %bb.ba, !dbg !11142 ; 0 uses

bb.bj:                                            ; preds = %bb.bh
    #dbg_value(ptr %i.al, !10579, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10893)
  %i.hr = load i64, ptr %i.dl, align 8, !dbg !11143, !noundef !2655 ; 3 uses
    #dbg_value(i64 %i.hr, !10341, !DIExpression(), !10894)
    #dbg_value(i64 %i.hr, !10464, !DIExpression(), !10467)
    #dbg_value(i64 %i.hr, !10470, !DIExpression(), !10473)
    #dbg_value(ptr %i.al, !10895, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10901)
  %i.hs = load i64, ptr %i.am, align 8, !dbg !11144, !range !6585, !noundef !2655
  %i.ht = getelementptr inbounds nuw i8, ptr %i.al, i64 136, !dbg !11144 ; 2 uses
    #dbg_value(ptr undef, !10421, !DIExpression(), !10427)
    #dbg_value(ptr undef, !10408, !DIExpression(), !10419)
    #dbg_value(i64 1, !10515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10903)
    #dbg_value(i64 %i.hr, !10515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10903)
    #dbg_value(ptr poison, !10422, !DIExpression(), !10904)
    #dbg_value(ptr poison, !10409, !DIExpression(), !10905)
  %i.hu = trunc nuw i64 %i.hs to i1, !dbg !11145
  br i1 %i.hu, label %bb.bm, label %bb.bn, !dbg !11145

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11146
  br label %bb.bl, !dbg !11147

bb.bl:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %or.cond2.not = xor i1 %.sroa.027.0, true, !dbg !11148
  %or.cond4 = or i1 %.sroa.020.0, %or.cond2.not, !dbg !11148
  br i1 %or.cond4, label %bb.bo, label %bb.bp, !dbg !11148

bb.bm:                                            ; preds = %bb.bj
  %i.hv = load i64, ptr %i.ht, align 8, !dbg !11144
    #dbg_value(ptr undef, !10414, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10906)
    #dbg_value(ptr undef, !10570, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10909)
    #dbg_value(ptr poison, !10415, !DIExpression(), !10910)
    #dbg_value(ptr poison, !10571, !DIExpression(), !10911)
  %.not107 = icmp eq i64 %i.hv, %i.hr, !dbg !11149
  br i1 %.not107, label %bb.bl, label %bb.bn, !dbg !10417

bb.bn:                                            ; preds = %bb.bj, %bb.bm
    #dbg_value(ptr %i.al, !10514, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !10912)
  store i64 1, ptr %i.am, align 8, !dbg !11150
  store i64 %i.hr, ptr %i.ht, align 8, !dbg !11150
    #dbg_value(ptr %1, !10463, !DIExpression(DW_OP_plus_uconst, 14920, DW_OP_stack_value), !10913)
    #dbg_value(ptr %1, !10469, !DIExpression(DW_OP_plus_uconst, 15016, DW_OP_stack_value), !10914)
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 15016, !dbg !11151
  %i.hx = invoke { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyyINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE6insertCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hw, i64 noundef %2, i64 noundef %i.hr)
          to label %bb.bl unwind label %bb.ba, !dbg !11152 ; 0 uses

bb.bo:                                            ; preds = %bb.bp, %bb.bl
  br i1 %.sroa.025.0, label %bb.br, label %bb.bq, !dbg !11153

bb.bp:                                            ; preds = %bb.bl
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE16insert_flushableBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.bo unwind label %bb.ba, !dbg !11154

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE15remove_writableBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.bs unwind label %bb.ba, !dbg !11155

bb.br:                                            ; preds = %bb.bo
  %or.cond6 = and i1 %i.di, %.sroa.018.0, !dbg !11156
  br i1 %or.cond6, label %bb.bt, label %bb.bs, !dbg !11156

bb.bs:                                            ; preds = %bb.bt, %bb.br, %bb.bq
  %i.hy = load i64, ptr %i.ac, align 8, !dbg !11157, !noundef !2655
  %i.hz = sub i64 %i.hy, %spec.select.i.i, !dbg !11157
  store i64 %i.hz, ptr %i.ac, align 8, !dbg !11157
  %i.ia = load i64, ptr %i.v, align 8, !dbg !11158, !noundef !2655
  %i.ib = add i64 %i.ia, %spec.select.i.i, !dbg !11158
  store i64 %i.ib, ptr %i.v, align 8, !dbg !11158
    #dbg_value(ptr %1, !10821, !DIExpression(DW_OP_plus_uconst, 14920, DW_OP_stack_value), !10915)
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 15240, !dbg !11159 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !dbg !11159, !noundef !2655
  %i.ie = add i64 %i.id, %spec.select.i.i, !dbg !11159
  store i64 %i.ie, ptr %i.ic, align 8, !dbg !11159
  %i.if = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 22)
          to label %bb.bu unwind label %bb.ba, !dbg !11160 ; 2 uses

bb.bt:                                            ; preds = %bb.br
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE15insert_writableBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.bs unwind label %bb.ba, !dbg !11161

bb.bu:                                            ; preds = %bb.bs
    #dbg_value(ptr poison, !10916, !DIExpression(), !10920)
    #dbg_value(ptr %1, !10917, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !10921)
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 13648, !dbg !11162 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 14041, !dbg !11162
  %i.ii = load i8, ptr %i.ih, align 1, !dbg !11162, !range !6755, !noundef !2655
  switch i8 %i.ii, label %default.unreachable198 [
    i8 0, label %bb.bv
    i8 1, label %bb.bw
    i8 2, label %bb.bx
  ], !dbg !11163

default.unreachable198:                           ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.ij = icmp eq i8 %i.if, 0, !dbg !11163
  br i1 %i.ij, label %bb.bx, label %bb.by, !dbg !11160

bb.bw:                                            ; preds = %bb.bu
  %i.ik = icmp eq i8 %i.if, 2, !dbg !11163
  br i1 %i.ik, label %bb.by, label %bb.bx, !dbg !11163

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bv
  %i.il = load i64, ptr %i.ig, align 16, !dbg !11164, !range !6756, !noundef !2655
  %.not108 = icmp eq i64 %i.il, -1, !dbg !11164
  br i1 %.not108, label %bb.by, label %bb.bz, !dbg !11165

bb.by:                                            ; preds = %bb.bw, %bb.bv, %bb.cd, %bb.bx
  %i.im = icmp ne i64 %., 0
  %or.cond8 = and i1 %i.im, %i.ef, !dbg !11166
  br i1 %or.cond8, label %bb.ch, label %bb.cg, !dbg !11166

bb.bz:                                            ; preds = %bb.bx
    #dbg_value(ptr %i.ig, !10342, !DIExpression(), !10922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11167
  %.114 = select i1 %.113, i8 0, i8 2, !dbg !10439
  %i.in = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !11168
  store i64 1, ptr %i.in, align 8, !dbg !11168
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !11168
  store i64 %2, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !11168
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !11168
  store i64 1, ptr %.sroa.532.0..sroa_idx, align 8, !dbg !11168
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !11168
  store i64 %i.ao, ptr %.sroa.633.0..sroa_idx, align 8, !dbg !11168
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !11168
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !11168
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !11168
  store i64 %spec.select.i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !11168
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !11168
  store i64 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !11168
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !11168
  store ptr null, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !11168
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80, !dbg !11168
  store i8 %.114, ptr %.sroa.834.0..sroa_idx, align 8, !dbg !11168
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 81, !dbg !11168
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 1, !dbg !11168
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 82, !dbg !11168
  store i8 2, ptr %.sroa.1035.0..sroa_idx, align 2, !dbg !11168
  store i64 24, ptr %i.h, align 8, !dbg !11168
  %i.io = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.ca unwind label %bb.ce, !dbg !11169 ; 2 uses

.thread152:                                       ; preds = %bb.cc, %bb.ca
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay, !dbg !11170

bb.ca:                                            ; preds = %bb.bz
  %i.ip = extractvalue { i64, i32 } %i.io, 0, !dbg !11169
  %i.iq = extractvalue { i64, i32 } %i.io, 1, !dbg !11169
    #dbg_value(i64 %i.ip, !10344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10923)
    #dbg_value(i32 %i.iq, !10344, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !10923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %i.h, i64 272, i1 false), !dbg !11171
  %i.ir = invoke { i64, ptr } @_RNvMNtCs3JBf551F2Kj_4qlog8streamerNtB2_12QlogStreamer27add_event_data_with_instant(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.ig, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.g, i64 noundef %i.ip, i32 noundef %i.iq)
          to label %bb.cb unwind label %.thread152, !dbg !11172 ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.is = extractvalue { i64, ptr } %i.ir, 0, !dbg !11173 ; 2 uses
    #dbg_value(i64 %i.is, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10928)
    #dbg_value(ptr poison, !10924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10928)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11174
  %.not109 = icmp eq i64 %i.is, -1, !dbg !11175
  br i1 %.not109, label %bb.cd, label %bb.cc, !dbg !11175

bb.cc:                                            ; preds = %bb.cb
  %i.it = extractvalue { i64, ptr } %i.ir, 1, !dbg !11173
    #dbg_value(ptr %i.it, !10924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10928)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs3JBf551F2Kj_4qlog5ErrorEECsa2e0UnRrdBM_12tokio_quiche(i64 %i.is, ptr %i.it)
          to label %bb.cd unwind label %.thread152, !dbg !11175

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11170
  br label %bb.by, !dbg !11176

bb.ce:                                            ; preds = %bb.bz
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9EventDataECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(272) %i.h) #25
          to label %bb.ay unwind label %bb.cf, !dbg !11170

bb.cf:                                            ; preds = %bb.az, %bb.u, %bb.ce
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !11177
  unreachable, !dbg !11177

bb.cg:                                            ; preds = %bb.by
  %or.cond10 = and i1 %.sroa.025.0, %i.fn, !dbg !11178
  br i1 %or.cond10, label %bb.co, label %bb.cm, !dbg !11178

bb.ch:                                            ; preds = %bb.by
  store i64 0, ptr %0, align 8, !dbg !11179
  call void @llvm.experimental.noalias.scope.decl(metadata !10929), !dbg !11111
    #dbg_value(ptr %i.j, !6694, !DIExpression(), !10223)
  call void @llvm.experimental.noalias.scope.decl(metadata !10930), !dbg !11180
    #dbg_value(ptr %i.j, !6698, !DIExpression(), !10227)
    #dbg_value(ptr %i.j, !6701, !DIExpression(), !10229)
    #dbg_value(i64 1, !6703, !DIExpression(), !10231)
    #dbg_value(i8 1, !6706, !DIExpression(), !10231)
    #dbg_value(i64 1, !6708, !DIExpression(), !10233)
    #dbg_value(i8 1, !6710, !DIExpression(), !10233)
  %i.iv = load ptr, ptr %i.j, align 8, !dbg !11181, !alias.scope !10931, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.iv, !6705, !DIExpression(), !10235)
    #dbg_value(ptr %i.iv, !6709, !DIExpression(), !10233)
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !dbg !11182, !noalias !10931
  %i.ix = icmp eq i64 %i.iw, 1, !dbg !11183
  br i1 %i.ix, label %bb.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit137, !dbg !11183

bb.ci:                                            ; preds = %bb.ch
    #dbg_value(i8 2, !6712, !DIExpression(), !10237)
  fence acquire, !dbg !11184
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit137 unwind label %bb.cj, !dbg !11185

bb.cj:                                            ; preds = %bb.cn, %bb.ci
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit137: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11111
  br label %bb.ck, !dbg !11186

bb.ck:                                            ; preds = %bb.cs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit137
  call void @llvm.experimental.noalias.scope.decl(metadata !10933), !dbg !11009
    #dbg_value(ptr %i.k, !6694, !DIExpression(), !10241)
  call void @llvm.experimental.noalias.scope.decl(metadata !10934), !dbg !11187
    #dbg_value(ptr %i.k, !6698, !DIExpression(), !10245)
    #dbg_value(ptr %i.k, !6701, !DIExpression(), !10247)
    #dbg_value(i64 1, !6703, !DIExpression(), !10249)
    #dbg_value(i8 1, !6706, !DIExpression(), !10249)
    #dbg_value(i64 1, !6708, !DIExpression(), !10251)
    #dbg_value(i8 1, !6710, !DIExpression(), !10251)
  %i.iz = load ptr, ptr %i.k, align 8, !dbg !11188, !alias.scope !10935, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.iz, !6705, !DIExpression(), !10253)
    #dbg_value(ptr %i.iz, !6709, !DIExpression(), !10251)
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !dbg !11189, !noalias !10935
  %i.jb = icmp eq i64 %i.ja, 1, !dbg !11190
  br i1 %i.jb, label %bb.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit138, !dbg !11190

bb.cl:                                            ; preds = %bb.ck
    #dbg_value(i8 2, !6712, !DIExpression(), !10255)
  fence acquire, !dbg !11191
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22, !dbg !11192
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit138, !dbg !11192

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit138: ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11009
  br label %bb.cr, !dbg !11022

bb.cm:                                            ; preds = %bb.cp, %bb.cg
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11193
  store i64 %spec.select.i.i, ptr %i.jc, align 8, !dbg !11193
  store i64 -1, ptr %0, align 8, !dbg !11193
  call void @llvm.experimental.noalias.scope.decl(metadata !10936), !dbg !11111
    #dbg_value(ptr %i.j, !6694, !DIExpression(), !10259)
  call void @llvm.experimental.noalias.scope.decl(metadata !10937), !dbg !11194
    #dbg_value(ptr %i.j, !6698, !DIExpression(), !10263)
    #dbg_value(ptr %i.j, !6701, !DIExpression(), !10265)
    #dbg_value(i64 1, !6703, !DIExpression(), !10267)
    #dbg_value(i8 1, !6706, !DIExpression(), !10267)
    #dbg_value(i64 1, !6708, !DIExpression(), !10269)
    #dbg_value(i8 1, !6710, !DIExpression(), !10269)
  %i.jd = load ptr, ptr %i.j, align 8, !dbg !11195, !alias.scope !10938, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.jd, !6705, !DIExpression(), !10271)
    #dbg_value(ptr %i.jd, !6709, !DIExpression(), !10269)
  %i.je = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !dbg !11196, !noalias !10938
  %i.jf = icmp eq i64 %i.je, 1, !dbg !11197
  br i1 %i.jf, label %bb.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit140, !dbg !11197

bb.cn:                                            ; preds = %bb.cm
    #dbg_value(i8 2, !6712, !DIExpression(), !10273)
  fence acquire, !dbg !11198
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit140 unwind label %bb.cj, !dbg !11199

bb.co:                                            ; preds = %bb.cg
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE15remove_writableBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.cp unwind label %bb.ba, !dbg !11200

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamINtB5_9StreamMapNtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE15insert_writableBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.cm unwind label %bb.ba, !dbg !11201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit140: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11111
  call void @llvm.experimental.noalias.scope.decl(metadata !10939), !dbg !11009
    #dbg_value(ptr %i.k, !6694, !DIExpression(), !10277)
  call void @llvm.experimental.noalias.scope.decl(metadata !10940), !dbg !11202
    #dbg_value(ptr %i.k, !6698, !DIExpression(), !10281)
    #dbg_value(ptr %i.k, !6701, !DIExpression(), !10283)
    #dbg_value(i64 1, !6703, !DIExpression(), !10285)
    #dbg_value(i8 1, !6706, !DIExpression(), !10285)
    #dbg_value(i64 1, !6708, !DIExpression(), !10287)
    #dbg_value(i8 1, !6710, !DIExpression(), !10287)
  %i.jg = load ptr, ptr %i.k, align 8, !dbg !11203, !alias.scope !10941, !nonnull !2655, !noundef !2655
    #dbg_value(ptr %i.jg, !6705, !DIExpression(), !10289)
    #dbg_value(ptr %i.jg, !6709, !DIExpression(), !10287)
  %i.jh = atomicrmw sub ptr %i.jg, i64 1 release, align 8, !dbg !11204, !noalias !10941
  %i.ji = icmp eq i64 %i.jh, 1, !dbg !11205
  br i1 %i.ji, label %bb.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit141, !dbg !11205

bb.cq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit140
    #dbg_value(i8 2, !6712, !DIExpression(), !10291)
  fence acquire, !dbg !11206
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #22, !dbg !11207
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit141, !dbg !11207

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit141: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECsa2e0UnRrdBM_12tokio_quiche.exit140, %bb.cq
end_hunk_1
