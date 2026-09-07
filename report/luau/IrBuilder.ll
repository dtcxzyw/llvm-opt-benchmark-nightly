Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrBuilder?download=true
inline.NumInlined: 976
inline.NumDeleted: 501
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau7CodeGen9IrBuilderC2ERKNS0_11HostIrHooksE:bb.a
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i64 -1, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !120
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder15buildFunctionIrEP5Proto(ptr noundef nonnull align 8 dereferenceable(1056) initializes((544, 553)) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %3 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %4 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %5 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %6 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %7 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %8 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %9 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %10 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %11 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %12 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %13 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %14 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %15 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %16 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %17 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %18 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %19 = alloca [4 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 7 uses
  %20 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %21 = alloca %"struct.Luau::CodeGen::BytecodeMapping", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %1, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = load i8, ptr %i.c, align 1, !tbaa !193
  %i.e = icmp ne i8 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 8, !tbaa !194
  tail call void @_ZN4Luau7CodeGen20loadBytecodeTypeInfoERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val = load ptr, ptr %i.h, align 8, !tbaa !195 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val47 = load ptr, ptr %i.i, align 8, !tbaa !195 ; 2 uses
  %.not56.not.i = icmp eq ptr %.val, %.val47
  br i1 %.not56.not.i, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 1 ; 2 uses
  %.not5.not.i = icmp eq ptr %i.j, %.val47
  br i1 %.not5.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.01.07.i = phi ptr [ %i.j, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.k = load i8, ptr %.sroa.01.07.i, align 1, !tbaa !131
  %.not.not.i = icmp eq i8 %i.k, 15
  br i1 %.not.not.i, label %bb.b, label %_ZN4Luau7CodeGenL18hasTypedParametersERKNS0_16BytecodeTypeInfoE.exit

_ZN4Luau7CodeGenL18hasTypedParametersERKNS0_16BytecodeTypeInfoE.exit: ; preds = %.lr.ph.i
  %i.l = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2)
  %i.m = lshr i32 %i.l, 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN4Luau7CodeGenL18hasTypedParametersERKNS0_16BytecodeTypeInfoE.exit
  %.not5.lcssa.i63 = phi i1 [ true, %_ZN4Luau7CodeGenL18hasTypedParametersERKNS0_16BytecodeTypeInfoE.exit ], [ false, %bb.a ], [ false, %bb.b ]
  %.sroa.0.0 = phi i32 [ %i.m, %_ZN4Luau7CodeGenL18hasTypedParametersERKNS0_16BytecodeTypeInfoE.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  tail call void @_ZN4Luau7CodeGen9IrBuilder26rebuildBytecodeBasicBlocksEP5Proto(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1)
  %i.n = load ptr, ptr %0, align 8, !tbaa !196
  tail call void @_ZN4Luau7CodeGen20analyzeBytecodeTypesERNS0_10IrFunctionERKNS0_11HostIrHooksE(ptr noundef nonnull align 8 dereferenceable(928) %i.a, ptr noundef nonnull align 1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !132
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store i32 -1, ptr %21, align 4, !tbaa !198
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !199
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133  ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !134  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.r
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ab = sub nuw nsw i64 %i.r, %i.z
  call void @_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr %i.u, i64 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %21)
  br label %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit

bb.d:                                             ; preds = %.loopexit
  %i.ac = icmp ugt i64 %i.z, %i.r
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br i1 %.not5.lcssa.i63, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit
  %i.ae = zext nneg i32 %.sroa.0.0 to i64
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  store i32 %.sroa.0.0, ptr %i.ah, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !137
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 6
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !142
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.at, align 8, !tbaa !114
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !144
  %i.ax = or i8 %i.aw, 4
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !144
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !145 ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !146 ; 2 uses
  %.not157.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not157.i, label %._crit_edge.i, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.z, %bb.f
  %.lcssa.i = phi ptr [ %i.az, %bb.f ], [ %i.ez, %bb.z ]
  %i.cc = getelementptr inbounds i8, ptr %.lcssa.i, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !131
  %.not.i = icmp sgt i8 %i.cd, -1
  br i1 %.not.i, label %bb.aa, label %_ZN4Luau7CodeGenL23buildArgumentTypeChecksERNS0_9IrBuilderENS0_4IrOpE.exit

bb.g:                                             ; preds = %bb.z, %.lr.ph.i48
  %i.ce = phi ptr [ %i.ba, %.lr.ph.i48 ], [ %i.fa, %bb.z ]
  %.0156.i = phi i64 [ 0, %.lr.ph.i48 ], [ %i.ey, %bb.z ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.0156.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !131 ; 3 uses
  %i.ch = and i8 %i.cg, 127                       ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 15
  br i1 %i.ci, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = trunc i64 %.0156.i to i32
  %i.ck = shl i32 %i.cj, 4
  %i.cl = and i32 %i.ck, 4080
  %i.cm = or disjoint i32 %i.cl, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store i32 %i.cm, ptr %20, align 4, !tbaa !131
  %i.cn = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 1, ptr nonnull %20, i64 1) ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %.not152.i = icmp sgt i8 %i.cg, -1              ; 2 uses
  br i1 %.not152.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.cp = call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.cq = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i32 %i.cn, ptr %19, align 4, !tbaa !131
  store i32 %i.cq, ptr %i.bb, align 4, !tbaa !131
  store i32 %i.co, ptr %i.bc, align 4, !tbaa !131
  store i32 %i.cp, ptr %i.bd, align 4, !tbaa !131
  %i.cr = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 91, ptr nonnull %19, i64 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.cs = lshr i32 %i.cp, 4                       ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw [36 x i8], ptr %i.cu, i64 %i.ct ; 3 uses
  store i32 %i.cs, ptr %i.ah, align 8, !tbaa !118
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.cx = load ptr, ptr %i.ai, align 8, !tbaa !137
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 6
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !142
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !143
  store i8 0, ptr %i.at, align 8, !tbaa !114
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = or i8 %i.dg, 4
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i = phi i32 [ 0, %bb.h ], [ %i.co, %bb.i ] ; 2 uses
  switch i8 %i.ch, label %bb.v [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 10, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
    i8 6, label %bb.r
    i8 7, label %bb.s
    i8 8, label %bb.t
    i8 9, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  %i.di = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store i32 %i.cn, ptr %18, align 4, !tbaa !131
  store i32 %i.di, ptr %i.by, align 4, !tbaa !131
  store i32 -7, ptr %i.bz, align 4, !tbaa !131
  %i.dj = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %18, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.dk = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 1, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store i32 %i.cn, ptr %17, align 4, !tbaa !131
  store i32 %i.dk, ptr %i.bw, align 4, !tbaa !131
  store i32 -7, ptr %i.bx, align 4, !tbaa !131
  %i.dl = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %17, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.dm = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 3, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store i32 %i.cn, ptr %16, align 4, !tbaa !131
  store i32 %i.dm, ptr %i.bu, align 4, !tbaa !131
  store i32 -7, ptr %i.bv, align 4, !tbaa !131
  %i.dn = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %16, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.x

bb.n:                                             ; preds = %bb.j
  %i.do = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 4, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i32 %i.cn, ptr %15, align 4, !tbaa !131
  store i32 %i.do, ptr %i.bs, align 4, !tbaa !131
  store i32 -7, ptr %i.bt, align 4, !tbaa !131
  %i.dp = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %15, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.x

bb.o:                                             ; preds = %bb.j
  %i.dq = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 6, i64 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i32 %i.cn, ptr %14, align 4, !tbaa !131
  store i32 %i.dq, ptr %i.bq, align 4, !tbaa !131
  store i32 -7, ptr %i.br, align 4, !tbaa !131
  %i.dr = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %14, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.x

bb.p:                                             ; preds = %bb.j
  %i.ds = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 7, i64 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i32 %i.cn, ptr %13, align 4, !tbaa !131
  store i32 %i.ds, ptr %i.bo, align 4, !tbaa !131
  store i32 -7, ptr %i.bp, align 4, !tbaa !131
  %i.dt = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %13, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.x

bb.q:                                             ; preds = %bb.j
  %i.du = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 8, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.cn, ptr %12, align 4, !tbaa !131
  store i32 %i.du, ptr %i.bm, align 4, !tbaa !131
  store i32 -7, ptr %i.bn, align 4, !tbaa !131
  %i.dv = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %12, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.x

bb.r:                                             ; preds = %bb.j
  %i.dw = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 10, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.cn, ptr %11, align 4, !tbaa !131
  store i32 %i.dw, ptr %i.bk, align 4, !tbaa !131
  store i32 -7, ptr %i.bl, align 4, !tbaa !131
  %i.dx = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %11, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.x

bb.s:                                             ; preds = %bb.j
  %i.dy = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 9, i64 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i32 %i.cn, ptr %10, align 4, !tbaa !131
  store i32 %i.dy, ptr %i.bi, align 4, !tbaa !131
  store i32 -7, ptr %i.bj, align 4, !tbaa !131
  %i.dz = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %10, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.x

bb.t:                                             ; preds = %bb.j
  %i.ea = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 5, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 %i.cn, ptr %9, align 4, !tbaa !131
  store i32 %i.ea, ptr %i.bg, align 4, !tbaa !131
  store i32 -7, ptr %i.bh, align 4, !tbaa !131
  %i.eb = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %9, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.x

bb.u:                                             ; preds = %bb.j
  %i.ec = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 11, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %i.cn, ptr %8, align 4, !tbaa !131
  store i32 %i.ec, ptr %i.be, align 4, !tbaa !131
  store i32 -7, ptr %i.bf, align 4, !tbaa !131
  %i.ed = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %8, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.x

bb.v:                                             ; preds = %bb.j
  %i.ee = and i8 %i.cg, 96
  %or.cond.i = icmp eq i8 %i.ee, 64
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ef = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 9, i64 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 %i.cn, ptr %7, align 4, !tbaa !131
  store i32 %i.ef, ptr %i.ca, align 4, !tbaa !131
  store i32 -7, ptr %i.cb, align 4, !tbaa !131
  %i.eg = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %7, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  br i1 %.not152.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 %.sroa.0.0.i, ptr %6, align 4, !tbaa !131
  %i.eh = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %6, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ei = lshr i32 %.sroa.0.0.i, 4                ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.el = getelementptr inbounds nuw [36 x i8], ptr %i.ek, i64 %i.ej ; 3 uses
  store i32 %i.ei, ptr %i.ah, align 8, !tbaa !118
  %i.em = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.en = load ptr, ptr %i.ai, align 8, !tbaa !137
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = lshr exact i64 %i.eq, 6
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.es, ptr %i.et, align 4, !tbaa !142
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 %i.es, ptr %i.eu, align 4, !tbaa !143
  store i8 0, ptr %i.at, align 8, !tbaa !114
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !144
  %i.ex = or i8 %i.ew, 4
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !144
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.g
  %i.ey = add nuw i64 %.0156.i, 1                 ; 2 uses
  %i.ez = load ptr, ptr %i.ay, align 8, !tbaa !145 ; 2 uses
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !146 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ult i64 %i.ey, %i.fd
  br i1 %i.fe, label %bb.g, label %._crit_edge.i, !llvm.loop !191

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ff = call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %i.ff, ptr %5, align 4, !tbaa !131
  %i.fg = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %5, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fh = lshr i32 %i.ff, 4                       ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.fk = getelementptr inbounds nuw [36 x i8], ptr %i.fj, i64 %i.fi ; 2 uses
  store i32 %i.fh, ptr %i.ah, align 8, !tbaa !118
  %i.fl = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.fm = load ptr, ptr %i.ai, align 8, !tbaa !137
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = lshr exact i64 %i.fp, 6
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !142
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !143
  store i8 0, ptr %i.at, align 8, !tbaa !114
  br label %_ZN4Luau7CodeGenL23buildArgumentTypeChecksERNS0_9IrBuilderENS0_4IrOpE.exit

_ZN4Luau7CodeGenL23buildArgumentTypeChecksERNS0_9IrBuilderENS0_4IrOpE.exit: ; preds = %._crit_edge.i, %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !148
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !149 ; 2 uses
  %.not.i49 = icmp eq i32 %i.fw, -1
  br i1 %.not.i49, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4Luau7CodeGenL23buildArgumentTypeChecksERNS0_9IrBuilderENS0_4IrOpE.exit
  %i.fx = shl i32 %i.fw, 4
  %i.fy = or disjoint i32 %i.fx, 5
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

bb.ac:                                            ; preds = %_ZN4Luau7CodeGenL23buildArgumentTypeChecksERNS0_9IrBuilderENS0_4IrOpE.exit
  %i.fz = call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.ga = lshr i32 %i.fz, 4
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.gd = getelementptr inbounds nuw [36 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i32 0, ptr %i.ge, align 4, !tbaa !150
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit:   ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i50 = phi i32 [ %i.fz, %bb.ac ], [ %i.fy, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %.sroa.0.0.i50, ptr %4, align 4, !tbaa !131
  %i.gf = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53

bb.ad:                                            ; preds = %_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE6resizeEmRKS2_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !148
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !149 ; 2 uses
  %.not.i51 = icmp eq i32 %i.gi, -1
  br i1 %.not.i51, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.pre67 = and i32 %i.gi, 268435455
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53

bb.af:                                            ; preds = %bb.ad
  %i.gj = call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2)
  %i.gk = lshr i32 %i.gj, 4                       ; 2 uses
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.gn = getelementptr inbounds nuw [36 x i8], ptr %i.gm, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i32 0, ptr %i.go, align 4, !tbaa !150
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53: ; preds = %bb.af, %bb.ae, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit
  %.pre-phi = phi i32 [ %i.gk, %bb.af ], [ %.pre67, %bb.ae ], [ %.sroa.0.0, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.pre-phi, ptr %i.gp, align 8, !tbaa !200
  %i.gq = load i32, ptr %i.p, align 8, !tbaa !132
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit53
  call void @_ZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928) %i.a)
  ret void

bb.ag:                                            ; preds = %.lr.ph, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
  %.066 = phi i32 [ 0, %.lr.ph ], [ %.043, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread ] ; 6 uses
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !151
  %i.hc = sext i32 %.066 to i64                   ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hc ; 4 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !149
  %i.hf = and i32 %i.he, 255                      ; 4 uses
  %i.hg = call noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %i.hf)
  %i.hh = add nsw i32 %i.hg, %.066                ; 2 uses
  %i.hi = load ptr, ptr %i.gu, align 8, !tbaa !136
  %i.hj = load ptr, ptr %i.gt, align 8, !tbaa !137
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 6
  %i.ho = trunc i64 %i.hn to i32                  ; 3 uses
  %i.hp = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hc ; 2 uses
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !149
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !149
  %i.hr = load ptr, ptr %i.gv, align 8, !tbaa !148
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hc
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !149 ; 2 uses
  %.not = icmp eq i32 %i.ht, -1
  br i1 %.not, label %bb.ah, label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit56

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit56: ; preds = %bb.ag
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.hu = and i32 %i.ht, 268435455                ; 2 uses
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [36 x i8], ptr %.pre, i64 %i.hv ; 3 uses
  store i32 %i.hu, ptr %i.gw, align 8, !tbaa !118
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %i.ho, ptr %i.hx, align 4, !tbaa !142
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 %i.ho, ptr %i.hy, align 4, !tbaa !143
  store i8 0, ptr %i.gx, align 8, !tbaa !114
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store i32 %.066, ptr %i.hz, align 4, !tbaa !150
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit56, %bb.ag
  %i.ia = icmp eq i32 %i.hf, 56
  br i1 %i.ia, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4Luau7CodeGen18beforeInstForNPrepERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull %i.hd, i32 noundef %.066)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ib = load i8, ptr %i.gx, align 8, !tbaa !114, !range !152, !noundef !153
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.id = load i8, ptr %i.gy, align 1, !tbaa !115, !range !152, !noundef !153
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.gy, align 1, !tbaa !115
  %.sroa.5.8.insert.ext.i = zext i32 %.066 to i64 ; 2 uses
  %i.if = call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i, i64 noundef %.sroa.5.8.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 %i.if, ptr %3, align 4, !tbaa !131
  %i.ig = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -110, ptr nonnull %3, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @_ZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %i.hf, ptr noundef nonnull %i.hd, i32 noundef %.066)
  %i.ih = load i32, ptr %i.gz, align 8, !tbaa !117 ; 2 uses
  %.not45 = icmp eq i32 %i.ih, -1
  br i1 %.not45, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 -1, ptr %i.gz, align 8, !tbaa !117
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.aj
  %.043 = phi i32 [ %i.hh, %bb.aj ], [ %i.ih, %bb.an ], [ %i.hh, %bb.am ] ; 4 uses
  %i.ii = icmp eq i32 %i.hf, 57
  br i1 %i.ii, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4Luau7CodeGen17afterInstForNLoopERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull %i.hd)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ij = load ptr, ptr %i.ha, align 8, !tbaa !154
  %i.ik = load ptr, ptr %i.gv, align 8, !tbaa !148 ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = lshr exact i64 %i.in, 2
  %i.ip = trunc i64 %i.io to i32
  %i.iq = icmp slt i32 %.043, %i.ip
  br i1 %i.iq, label %bb.ar, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ir = sext i32 %.043 to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !149 ; 2 uses
  %.not46 = icmp eq i32 %i.it, -1
  br i1 %.not46, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iu = load ptr, ptr %i.gu, align 8, !tbaa !201
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -64
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !163
  switch i8 %i.iw, label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit59 [
    i8 88, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 89, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 90, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 91, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 92, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 93, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 94, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 95, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 96, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -100, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -99, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -98, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -86, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
    i8 -40, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread
  ]

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit59: ; preds = %bb.as
  %i.ix = shl i32 %i.it, 4
  %i.iy = or disjoint i32 %i.ix, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 %i.iy, ptr %2, align 4, !tbaa !131
  %i.iz = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %2, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit.thread: ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit59, %bb.ar, %bb.aq
  %i.ja = load i32, ptr %i.p, align 8, !tbaa !132
  %i.jb = icmp slt i32 %.043, %i.ja
  br i1 %i.jb, label %bb.ag, label %._crit_edge, !llvm.loop !192
}

declare void @_ZN4Luau7CodeGen20loadBytecodeTypeInfoERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 5, -10) i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 2, !range !152
  %spec.select = sub nuw nsw i8 2, %i.c
  %.0 = select i1 %i.a, i8 %spec.select, i8 %1    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !164  ; 9 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !135  ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 36                  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.f, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %.0, ptr %i.f, align 4, !tbaa !166
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !131
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !167
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !149
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !149
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  store ptr %i.o, ptr %i.e, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.k
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 256204778801521550)
  %i.t = select i1 %i.r, i64 256204778801521550, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = mul nuw nsw i64 %i.t, 36
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.j ; 5 uses
  store i8 %.0, ptr %i.w, align 4, !tbaa !166
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx5, align 1, !tbaa !131
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx7, align 2, !tbaa !167
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx9, align 4, !tbaa !149
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx17, align 4, !tbaa !149
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i.i.i.i, i64 36, i1 false), !tbaa.struct !168, !alias.scope !205
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 36 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 36
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !165
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ac) #19
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !135
  store ptr %i.z, ptr %i.e, align 8, !tbaa !164
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !165
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ae = trunc i64 %i.k to i32
  %i.af = shl i32 %i.ae, 4
  %i.ag = or disjoint i32 %i.af, 5
  ret i32 %i.ag
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder26rebuildBytecodeBasicBlocksEP5Proto(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.41", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.d = sext i32 %i.c to i64                     ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154  ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.f, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) @_ZN4Luau7CodeGenL23kNoAssociatedBlockIndexE)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !132 ; 2 uses
  %.pre40 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8, !tbaa !154
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre40, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.not.i.i.i.i = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi) #18 ; 9 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !146
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre-phi ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !208
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %.pre-phi, i1 false)
  %.pre37 = load i32, ptr %i.b, align 8, !tbaa !132
  store ptr %i.t, ptr %i.s, align 8, !tbaa !145
  %i.v = icmp sgt i32 %.pre37, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  store i8 1, ptr %i.r, align 1, !tbaa !131
  br label %._crit_edge35

._crit_edge:                                      ; preds = %bb.l
  store i8 1, ptr %i.r, align 1, !tbaa !131
  %i.x = icmp sgt i32 %i.al, 0
  br i1 %i.x, label %.lr.ph34, label %._crit_edge35

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.02131 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.l ] ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.z = sext i32 %.02131 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !149 ; 2 uses
  %i.ac = and i32 %i.ab, 255                      ; 2 uses
  %i.ad = invoke noundef i32 @_ZN4Luau7CodeGen13getJumpTargetEjj(i32 noundef %i.ab, i32 noundef %.02131)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = invoke noundef zeroext i1 @_ZN4Luau7CodeGen10isFastCallE10LuauOpcode(i32 noundef %i.ac)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ag
  store i8 1, ptr %i.ah, align 1, !tbaa !131
  br label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.g, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread55

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.aj = invoke noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %i.ac)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.aj, %.02131              ; 2 uses
  %i.al = load i32, ptr %i.b, align 8, !tbaa !132 ; 3 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %._crit_edge, !llvm.loop !206

._crit_edge35:                                    ; preds = %bb.p, %._crit_edge.thread, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN4Luau7CodeGen19buildBytecodeBlocksERNS0_10IrFunctionERKSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(928) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.q unwind label %bb.s

.lr.ph34:                                         ; preds = %._crit_edge, %bb.p
  %i.ao = phi i32 [ %i.aw, %bb.p ], [ %i.al, %._crit_edge ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %._crit_edge ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !131
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph34
  %i.ar = invoke i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 0)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = lshr i32 %i.ar, 4
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.as, ptr %i.au, align 4, !tbaa !149
  %.pre38 = load i32, ptr %i.b, align 8, !tbaa !132
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.thread55

bb.p:                                             ; preds = %.lr.ph34, %bb.n
  %i.aw = phi i32 [ %i.ao, %.lr.ph34 ], [ %.pre38, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph34, label %._crit_edge35, !llvm.loop !207

bb.q:                                             ; preds = %._crit_edge35
  %i.az = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !208
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.s:                                             ; preds = %._crit_edge35
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre39 = load ptr, ptr %2, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %.pre39, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIhSaIhEED2Ev.exit30, label %.thread55

.thread55:                                        ; preds = %bb.o, %bb.j, %bb.s
  %.pn58 = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.av, %bb.o ], [ %i.ai, %bb.j ]
  %i.bg = phi ptr [ %.pre39, %bb.s ], [ %i.r, %bb.o ], [ %i.r, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !208
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit30

_ZNSt6vectorIhSaIhEED2Ev.exit30:                  ; preds = %.thread55, %bb.s
  %.pn59 = phi { ptr, i32 } [ %.pn58, %.thread55 ], [ %i.bf, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn59
}

declare void @_ZN4Luau7CodeGen20analyzeBytecodeTypesERNS0_10IrFunctionERKNS0_11HostIrHooksE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 1) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder10beginBlockENS0_4IrOpE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1056) initializes((8, 9), (952, 956)) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = lshr i32 %1, 4                           ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i32 %i.b, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.o, ptr %i.q, align 4, !tbaa !143
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.r, align 8, !tbaa !114
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 %2, ptr %3, align 4, !tbaa !131
  %i.a = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %3, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 5, -10) i32 @_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !149  ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.e, 4
  %i.g = or disjoint i32 %i.f, 5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = lshr i32 %i.h, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %1, ptr %i.n, align 4, !tbaa !150
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  ret i32 %.sroa.0.0
}

declare noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18beforeInstForNPrepERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder9constUintEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.5.8.insert.ext = zext i32 %1 to i64      ; 2 uses
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext, i64 noundef %.sroa.5.8.insert.ext)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %5 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %6 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %7 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %8 = alloca [2 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 5 uses
  %9 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %10 = alloca [4 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 7 uses
  %11 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %12 = alloca [4 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 7 uses
  %13 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %14 = alloca [6 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 9 uses
  %15 = alloca [2 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 5 uses
  %16 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %17 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %18 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %19 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %20 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %21 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  switch i32 %1, label %bb.dh [
    i32 88, label %bb.dg
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 66, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 21, label %bb.j
    i32 87, label %bb.j
    i32 22, label %bb.o
    i32 13, label %bb.p
    i32 14, label %bb.q
    i32 15, label %bb.r
    i32 83, label %bb.r
    i32 16, label %bb.s
    i32 84, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
    i32 23, label %bb.v
    i32 24, label %bb.w
    i32 25, label %bb.x
    i32 26, label %bb.y
    i32 27, label %bb.z
    i32 28, label %bb.ac
    i32 29, label %bb.ad
    i32 30, label %bb.ae
    i32 31, label %bb.ah
    i32 32, label %bb.ai
    i32 67, label %bb.aj
    i32 77, label %bb.ak
    i32 78, label %bb.an
    i32 79, label %bb.aq
    i32 80, label %bb.at
    i32 33, label %bb.aw
    i32 34, label %bb.ax
    i32 35, label %bb.ay
    i32 36, label %bb.az
    i32 81, label %bb.ba
    i32 37, label %bb.bb
    i32 38, label %bb.bc
    i32 39, label %bb.bd
    i32 40, label %bb.be
    i32 41, label %bb.bf
    i32 42, label %bb.bg
    i32 82, label %bb.bh
    i32 43, label %bb.bi
    i32 44, label %bb.bj
    i32 71, label %bb.bk
    i32 72, label %bb.bl
    i32 50, label %bb.bm
    i32 51, label %bb.bn
    i32 52, label %bb.bo
    i32 53, label %bb.bp
    i32 54, label %bb.bq
    i32 55, label %bb.br
    i32 9, label %bb.bs
    i32 10, label %bb.bt
    i32 11, label %bb.bu
    i32 68, label %bb.bv
    i32 73, label %bb.bw
    i32 74, label %bb.bx
    i32 75, label %bb.by
    i32 60, label %bb.bz
    i32 56, label %bb.ca
    i32 57, label %bb.cb
    i32 58, label %bb.cc
    i32 61, label %bb.ch
    i32 59, label %bb.ci
    i32 45, label %bb.cj
    i32 47, label %bb.ck
    i32 46, label %bb.cl
    i32 48, label %bb.cm
    i32 69, label %bb.cn
    i32 12, label %bb.co
    i32 49, label %bb.cp
    i32 70, label %bb.cq
    i32 20, label %bb.cr
    i32 85, label %bb.cr
    i32 65, label %bb.da
    i32 63, label %bb.db
    i32 19, label %bb.dc
    i32 64, label %bb.dd
    i32 76, label %bb.de
    i32 86, label %bb.df
    i32 89, label %bb.df
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstLoadNilERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen18translateInstLoadBERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen18translateInstLoadNERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen18translateInstLoadKERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstLoadKXERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen17translateInstMoveERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen22translateInstGetGlobalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen22translateInstSetGlobalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.j:                                             ; preds = %bb.a, %bb.a
  %.sroa.5.8.insert.ext.i = zext i32 %3 to i64    ; 2 uses
  %i.a = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i, i64 noundef %.sroa.5.8.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store i32 %i.a, ptr %21, align 4, !tbaa !131
  %i.b = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -110, ptr nonnull %21, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.c = load i8, ptr @_ZN5FFlag16LuauCallFeedbackE, align 8, !tbaa !211, !range !152, !noundef !153
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.e = tail call noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %1)
  %i.f = add nsw i32 %i.e, %3
  %.sroa.5.8.insert.ext.i330 = zext i32 %i.f to i64 ; 2 uses
  %i.g = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i330, i64 noundef %.sroa.5.8.insert.ext.i330)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store i32 %i.g, ptr %20, align 4, !tbaa !131
  %i.h = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -105, ptr nonnull %20, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.i = add nsw i32 %3, 1
  %.sroa.5.8.insert.ext.i331 = zext i32 %i.i to i64 ; 2 uses
  %i.j = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i331, i64 noundef %.sroa.5.8.insert.ext.i331)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i32 %i.j, ptr %19, align 4, !tbaa !131
  %i.k = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -105, ptr nonnull %19, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.l = load i32, ptr %2, align 4, !tbaa !149    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = and i32 %i.m, 4080
  %i.o = or disjoint i32 %i.n, 6
  %i.p = lshr i32 %i.l, 16
  %i.q = and i32 %i.p, 255
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %.sroa.5.8.insert.ext.i332 = zext i32 %i.r to i64
  %i.s = sext i32 %i.r to i64
  %i.t = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i332, i64 noundef %i.s)
  %i.u = load i32, ptr %2, align 4, !tbaa !149
  %i.v = lshr i32 %i.u, 24
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  %.sroa.5.8.insert.ext.i333 = zext i32 %i.w to i64
  %i.x = sext i32 %i.w to i64
  %i.y = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i333, i64 noundef %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store i32 %i.o, ptr %18, align 4, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.t, ptr %i.z, align 4, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !131
  %i.ab = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -101, ptr nonnull %18, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !116, !range !152, !noundef !153
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.n, label %bb.dh

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.085.0.copyload = load i32, ptr %i.af, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store i32 %.sroa.085.0.copyload, ptr %17, align 4, !tbaa !131
  %i.ag = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %17, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %.sroa.083.0.copyload = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = lshr i32 %.sroa.083.0.copyload, 4       ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.al = getelementptr inbounds nuw [36 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i32 %i.ai, ptr %i.am, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !137
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 6
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !142
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ay, align 8, !tbaa !114
  store i8 0, ptr %i.ac, align 2, !tbaa !116
  br label %bb.dh

bb.o:                                             ; preds = %bb.a
  %.sroa.5.8.insert.ext.i334 = zext i32 %3 to i64 ; 2 uses
  %i.az = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i334, i64 noundef %.sroa.5.8.insert.ext.i334)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store i32 %i.az, ptr %16, align 4, !tbaa !131
  %i.ba = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -110, ptr nonnull %16, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.bb = load i32, ptr %2, align 4, !tbaa !149   ; 2 uses
  %i.bc = lshr i32 %i.bb, 4
  %i.bd = and i32 %i.bc, 4080
  %i.be = or disjoint i32 %i.bd, 6
  %i.bf = lshr i32 %i.bb, 16
  %i.bg = and i32 %i.bf, 255
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  %.sroa.5.8.insert.ext.i335 = zext i32 %i.bh to i64
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i335, i64 noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i32 %i.be, ptr %15, align 4, !tbaa !131
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !131
  %i.bl = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -100, ptr nonnull %15, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.dh

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstGetTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstSetTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.r:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstGetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.s:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstSetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen22translateInstGetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.u:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen22translateInstSetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen17translateInstJumpERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstJumpBackERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.x:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstJumpIfERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %bb.dh

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstJumpIfERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %bb.dh

bb.z:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !121
  %i.bo = getelementptr i8, ptr %i.bn, i64 136
  %.val329 = load i32, ptr %i.bo, align 8, !tbaa !132
  %i.bp = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val329, ptr noundef %2, i32 noundef %3)
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4Luau7CodeGen29translateInstJumpIfEqShortcutERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  %i.bq = add nsw i32 %3, 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !117
  br label %bb.dh

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZN4Luau7CodeGen21translateInstJumpIfEqERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %bb.dh

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 4)
  br label %bb.dh

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 2)
  br label %bb.dh

bb.ae:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.bu = getelementptr i8, ptr %i.bt, i64 136
  %.val328 = load i32, ptr %i.bu, align 8, !tbaa !132
  %i.bv = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val328, ptr noundef %2, i32 noundef %3)
  br i1 %i.bv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN4Luau7CodeGen29translateInstJumpIfEqShortcutERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  %i.bw = add nsw i32 %3, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !117
  br label %bb.dh

bb.ag:                                            ; preds = %bb.ae
  tail call void @_ZN4Luau7CodeGen21translateInstJumpIfEqERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  br label %bb.dh

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 5)
  br label %bb.dh

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 3)
  br label %bb.dh

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen18translateInstJumpXERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.ak:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !121
  %i.ca = getelementptr i8, ptr %i.bz, i64 136
  %.val327 = load i32, ptr %i.ca, align 8, !tbaa !132
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val327, ptr noundef %2, i32 noundef %3)
  br i1 %i.cb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN4Luau7CodeGen31translateInstJumpxEqNilShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  %i.cc = add nsw i32 %3, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !117
  br label %bb.dh

bb.am:                                            ; preds = %bb.ak
  tail call void @_ZN4Luau7CodeGen23translateInstJumpxEqNilERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.an:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !121
  %i.cg = getelementptr i8, ptr %i.cf, i64 136
  %.val326 = load i32, ptr %i.cg, align 8, !tbaa !132
  %i.ch = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val326, ptr noundef %2, i32 noundef %3)
  br i1 %i.ch, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN4Luau7CodeGen29translateInstJumpxEqBShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  %i.ci = add nsw i32 %3, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !117
  br label %bb.dh

bb.ap:                                            ; preds = %bb.an
  tail call void @_ZN4Luau7CodeGen21translateInstJumpxEqBERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.aq:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !121
  %i.cm = getelementptr i8, ptr %i.cl, i64 136
  %.val325 = load i32, ptr %i.cm, align 8, !tbaa !132
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val325, ptr noundef %2, i32 noundef %3)
  br i1 %i.cn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN4Luau7CodeGen29translateInstJumpxEqNShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  %i.co = add nsw i32 %3, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !117
  br label %bb.dh

bb.as:                                            ; preds = %bb.aq
  tail call void @_ZN4Luau7CodeGen21translateInstJumpxEqNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.at:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !121
  %i.cs = getelementptr i8, ptr %i.cr, i64 136
  %.val = load i32, ptr %i.cs, align 8, !tbaa !132
  %i.ct = tail call fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.val, ptr noundef %2, i32 noundef %3)
  br i1 %i.ct, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN4Luau7CodeGen29translateInstJumpxEqSShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  %i.cu = add nsw i32 %3, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !117
  br label %bb.dh

bb.av:                                            ; preds = %bb.at
  tail call void @_ZN4Luau7CodeGen21translateInstJumpxEqSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.aw:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 8)
  br label %bb.dh

bb.ax:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 9)
  br label %bb.dh

bb.ay:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 10)
  br label %bb.dh

bb.az:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 11)
  br label %bb.dh

bb.ba:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 12)
  br label %bb.dh

bb.bb:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 13)
  br label %bb.dh

bb.bc:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 14)
  br label %bb.dh

bb.bd:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 8)
  br label %bb.dh

bb.be:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 9)
  br label %bb.dh

bb.bf:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 10)
  br label %bb.dh

bb.bg:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 11)
  br label %bb.dh

bb.bh:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 12)
  br label %bb.dh

bb.bi:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 13)
  br label %bb.dh

bb.bj:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 14)
  br label %bb.dh

bb.bk:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstBinaryRKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 9)
  br label %bb.dh

bb.bl:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstBinaryRKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 noundef 11)
  br label %bb.dh

bb.bm:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen16translateInstNotERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.bn:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen18translateInstMinusERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bo:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstLengthERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bp:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstNewTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bq:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstDupTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.br:                                            ; preds = %bb.a
  %.sroa.5.8.insert.ext.i336 = zext i32 %3 to i64 ; 2 uses
  %i.cw = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i336, i64 noundef %.sroa.5.8.insert.ext.i336)
  %i.cx = load i32, ptr %2, align 4, !tbaa !149   ; 3 uses
  %i.cy = lshr i32 %i.cx, 4
  %i.cz = and i32 %i.cy, 4080
  %i.da = or disjoint i32 %i.cz, 6
  %i.db = lshr i32 %i.cx, 12
  %i.dc = and i32 %i.db, 4080
  %i.dd = or disjoint i32 %i.dc, 6
  %i.de = lshr i32 %i.cx, 24
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  %.sroa.5.8.insert.ext.i337 = zext i32 %i.df to i64
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i337, i64 noundef %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !149
  %.sroa.5.8.insert.ext.i338 = zext i32 %i.dj to i64 ; 2 uses
  %i.dk = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i338, i64 noundef %.sroa.5.8.insert.ext.i338)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store i32 %i.cw, ptr %14, align 4, !tbaa !131
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.da, ptr %i.dl, align 4, !tbaa !131
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.dd, ptr %i.dm, align 4, !tbaa !131
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %i.dh, ptr %i.dn, align 4, !tbaa !131
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !131
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 1, ptr %i.dp, align 4, !tbaa !131
  %i.dq = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -102, ptr nonnull %14, i64 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.dh

bb.bs:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstGetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bt:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstSetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bu:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen24translateInstCloseUpvalsERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2)
  br label %bb.dh

bb.bv:                                            ; preds = %bb.a
  %i.dr = tail call i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false, i32 noundef 0, i32 0, i32 0)
  tail call void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.dr, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bw:                                            ; preds = %bb.a
  %i.ds = tail call i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true, i32 noundef 1, i32 1, i32 1)
  tail call void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.ds, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bx:                                            ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !149
  %i.dv = shl i32 %i.du, 4
  %i.dw = and i32 %i.dv, 4080
  %i.dx = or disjoint i32 %i.dw, 6
  %i.dy = tail call i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true, i32 noundef 2, i32 %i.dx, i32 1)
  tail call void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.dy, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.by:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !149
  %i.eb = shl i32 %i.ea, 4
  %i.ec = or disjoint i32 %i.eb, 7
  %i.ed = tail call i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true, i32 noundef 2, i32 %i.ec, i32 1)
  tail call void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.ed, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.bz:                                            ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !149 ; 2 uses
  %i.eg = shl i32 %i.ef, 4
  %i.eh = and i32 %i.eg, 4080
  %i.ei = or disjoint i32 %i.eh, 6
  %i.ej = lshr i32 %i.ef, 4
  %i.ek = and i32 %i.ej, 4080
  %i.el = or disjoint i32 %i.ek, 6
  %i.em = tail call i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true, i32 noundef 3, i32 %i.ei, i32 %i.el)
  tail call void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.em, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.ca:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstForNPrepERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cb:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstForNLoopERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cc:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !149 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  tail call void @_ZN4Luau7CodeGen27translateInstForGLoopIpairsERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.dh

bb.ce:                                            ; preds = %bb.cc
  %i.eq = load i32, ptr %2, align 4, !tbaa !149   ; 2 uses
  %i.er = add nsw i32 %3, 1                       ; 2 uses
  %i.es = ashr i32 %i.eq, 16
  %i.et = add nsw i32 %i.es, %i.er
  %i.eu = tail call i32 @_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %i.et) ; 2 uses
  %i.ev = tail call noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef 58)
  %i.ew = add nsw i32 %i.ev, %3
  %i.ex = tail call i32 @_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %i.ew) ; 3 uses
  %i.ey = tail call i32 @_ZN4Luau7CodeGen9IrBuilder13fallbackBlockEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %3) ; 2 uses
  %.sroa.5.8.insert.ext.i339 = zext i32 %3 to i64 ; 2 uses
  %i.ez = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i339, i64 noundef %.sroa.5.8.insert.ext.i339)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i32 %i.ez, ptr %13, align 4, !tbaa !131
  %i.fa = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -110, ptr nonnull %13, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.fb = load i8, ptr @_ZN5FFlag21LuauBackedgeHeapCheckE, align 8, !tbaa !211, !range !152, !noundef !153
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.fd = tail call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -109, ptr null, i64 0) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.fe = lshr i32 %i.eq, 4
  %i.ff = and i32 %i.fe, 4080
  %i.fg = or disjoint i32 %i.ff, 6                ; 3 uses
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.fg, i8 noundef zeroext 0, i32 %i.ey)
  %.sroa.5.8.insert.ext.i340 = zext nneg i32 %i.eo to i64 ; 4 uses
  %i.fh = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i340, i64 noundef %.sroa.5.8.insert.ext.i340)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 %i.fg, ptr %12, align 4, !tbaa !131
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !131
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.eu, ptr %i.fj, align 4, !tbaa !131
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.ex, ptr %i.fk, align 4, !tbaa !131
  %i.fl = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -99, ptr nonnull %12, i64 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fn = lshr i32 %i.ey, 4                       ; 2 uses
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !135
  %i.fq = getelementptr inbounds nuw [36 x i8], ptr %i.fp, i64 %i.fo ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  store i32 %i.fn, ptr %i.fr, align 8, !tbaa !118
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !136
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !137
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = lshr exact i64 %i.fy, 6
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !142
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !143
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.gd, align 8, !tbaa !114
  %.sroa.5.8.insert.ext.i341 = zext i32 %i.er to i64 ; 2 uses
  %i.ge = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i341, i64 noundef %.sroa.5.8.insert.ext.i341)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.ge, ptr %11, align 4, !tbaa !131
  %i.gf = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -105, ptr nonnull %11, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.gg = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i340, i64 noundef %.sroa.5.8.insert.ext.i340)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i32 %i.fg, ptr %10, align 4, !tbaa !131
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !131
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.eu, ptr %i.gi, align 4, !tbaa !131
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.ex, ptr %i.gj, align 4, !tbaa !131
  %i.gk = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -98, ptr nonnull %10, i64 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.gl = lshr i32 %i.ex, 4                       ; 2 uses
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.fm, align 8, !tbaa !135
  %i.go = getelementptr inbounds nuw [36 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  store i32 %i.gl, ptr %i.fr, align 8, !tbaa !118
  %i.gp = load ptr, ptr %i.ft, align 8, !tbaa !136
  %i.gq = load ptr, ptr %i.fs, align 8, !tbaa !137
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = lshr exact i64 %i.gt, 6
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !142
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !143
  store i8 0, ptr %i.gd, align 8, !tbaa !114
  br label %bb.dh

bb.ch:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen25translateInstForGPrepNextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.ci:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen26translateInstForGPrepInextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cj:                                            ; preds = %bb.a
  %i.gy = load i32, ptr %2, align 4, !tbaa !149
  %i.gz = lshr i32 %i.gy, 20
  %i.ha = and i32 %i.gz, 4080
  %i.hb = or disjoint i32 %i.ha, 6
  tail call void @_ZN4Luau7CodeGen17translateInstAndXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 %i.hb)
  br label %bb.dh

bb.ck:                                            ; preds = %bb.a
  %i.hc = load i32, ptr %2, align 4, !tbaa !149
  %i.hd = lshr i32 %i.hc, 20
  %i.he = and i32 %i.hd, 4080
  %i.hf = or disjoint i32 %i.he, 7
  tail call void @_ZN4Luau7CodeGen17translateInstAndXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 %i.hf)
  br label %bb.dh

bb.cl:                                            ; preds = %bb.a
  %i.hg = load i32, ptr %2, align 4, !tbaa !149
  %i.hh = lshr i32 %i.hg, 20
  %i.hi = and i32 %i.hh, 4080
  %i.hj = or disjoint i32 %i.hi, 6
  tail call void @_ZN4Luau7CodeGen16translateInstOrXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 %i.hj)
  br label %bb.dh

bb.cm:                                            ; preds = %bb.a
  %i.hk = load i32, ptr %2, align 4, !tbaa !149
  %i.hl = lshr i32 %i.hk, 20
  %i.hm = and i32 %i.hl, 4080
  %i.hn = or disjoint i32 %i.hm, 7
  tail call void @_ZN4Luau7CodeGen16translateInstOrXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3, i32 %i.hn)
  br label %bb.dh

bb.cn:                                            ; preds = %bb.a
  %.sroa.5.8.insert.ext.i343 = zext i32 %3 to i64 ; 2 uses
  %i.ho = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i343, i64 noundef %.sroa.5.8.insert.ext.i343)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 %i.ho, ptr %9, align 4, !tbaa !131
  %i.hp = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -96, ptr nonnull %9, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.dh

bb.co:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen22translateInstGetImportERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cp:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen19translateInstConcatERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cq:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen20translateInstCaptureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.cr:                                            ; preds = %bb.a, %bb.a
  %i.hq = tail call noundef zeroext i1 @_ZN4Luau7CodeGen21translateInstNamecallERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br i1 %i.hq, label %bb.cs, label %bb.dh

bb.cs:                                            ; preds = %bb.cr
  %i.hr = load i8, ptr @_ZN5FFlag16LuauCallFeedbackE, align 8, !tbaa !211, !range !152, !noundef !153
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  %i.ht = load atomic i8, ptr @_ZGVZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall acquire, align 8
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %bb.cu, label %bb.cx, !prof !212

bb.cu:                                            ; preds = %bb.ct
  %i.hv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall) #16
  %.not = icmp eq i32 %i.hv, 0
  br i1 %.not, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hw = invoke noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef 20)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  store i32 %i.hw, ptr @_ZZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall, align 4, !tbaa !149
  %i.hx = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall) #16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu, %bb.ct
  %i.hy = load i32, ptr @_ZZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall, align 4, !tbaa !149
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !149
  %i.ic = and i32 %i.ib, 255
  %i.id = tail call noundef i32 @_ZN4Luau7CodeGen11getOpLengthE10LuauOpcode(i32 noundef %i.ic)
  %i.ie = load i32, ptr @_ZZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall, align 4, !tbaa !149
  %i.if = add i32 %i.id, %3
  %i.ig = add i32 %i.if, %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !117
  br label %bb.dh

bb.cy:                                            ; preds = %bb.cv
  %i.ii = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4Luau7CodeGen9IrBuilder13translateInstE10LuauOpcodePKjiE8namecall) #16
  resume { ptr, i32 } %i.ii

bb.cz:                                            ; preds = %bb.cs
  %i.ij = add nsw i32 %3, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ij, ptr %i.ik, align 8, !tbaa !117
  br label %bb.dh

bb.da:                                            ; preds = %bb.a
  %.sroa.5.8.insert.ext.i344 = zext i32 %3 to i64 ; 2 uses
  %i.il = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i344, i64 noundef %.sroa.5.8.insert.ext.i344)
  %i.im = load i32, ptr %2, align 4, !tbaa !149
  %i.in = lshr i32 %i.im, 8
  %i.io = and i32 %i.in, 255
  %.sroa.5.8.insert.ext.i345 = zext nneg i32 %i.io to i64 ; 2 uses
  %i.ip = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i345, i64 noundef %.sroa.5.8.insert.ext.i345)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %i.il, ptr %8, align 4, !tbaa !131
  %i.iq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !131
  %i.ir = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -90, ptr nonnull %8, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.dh

bb.db:                                            ; preds = %bb.a
  %.sroa.5.8.insert.ext.i346 = zext i32 %3 to i64 ; 2 uses
  %i.is = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i346, i64 noundef %.sroa.5.8.insert.ext.i346)
  %i.it = load i32, ptr %2, align 4, !tbaa !149   ; 2 uses
  %i.iu = lshr i32 %i.it, 4
  %i.iv = and i32 %i.iu, 4080
  %i.iw = or disjoint i32 %i.iv, 6
  %i.ix = lshr i32 %i.it, 16
  %i.iy = and i32 %i.ix, 255
  %i.iz = add nsw i32 %i.iy, -1                   ; 2 uses
  %.sroa.5.8.insert.ext.i347 = zext i32 %i.iz to i64
  %i.ja = sext i32 %i.iz to i64
  %i.jb = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext.i347, i64 noundef %i.ja)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 %i.is, ptr %7, align 4, !tbaa !131
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.iw, ptr %i.jc, align 4, !tbaa !131
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.jb, ptr %i.jd, align 4, !tbaa !131
  %i.je = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -89, ptr nonnull %7, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.dh

bb.dc:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen23translateInstNewClosureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.dd:                                            ; preds = %bb.a
  %.sroa.5.8.insert.ext.i348 = zext i32 %3 to i64 ; 2 uses
  %i.jf = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i348, i64 noundef %.sroa.5.8.insert.ext.i348)
  %i.jg = load i32, ptr %2, align 4, !tbaa !149   ; 2 uses
  %i.jh = lshr i32 %i.jg, 4
  %i.ji = and i32 %i.jh, 4080
  %i.jj = or disjoint i32 %i.ji, 6
  %i.jk = ashr i32 %i.jg, 12
  %i.jl = and i32 %i.jk, -16
  %i.jm = or disjoint i32 %i.jl, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 %i.jf, ptr %6, align 4, !tbaa !131
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.jj, ptr %i.jn, align 4, !tbaa !131
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !131
  %i.jp = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -87, ptr nonnull %6, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.dh

bb.de:                                            ; preds = %bb.a
  %i.jq = add nsw i32 %3, 1
  %i.jr = load i32, ptr %2, align 4, !tbaa !149
  %i.js = ashr i32 %i.jr, 16
  %i.jt = add nsw i32 %i.jq, %i.js
  %i.ju = tail call i32 @_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %i.jt)
  %.sroa.5.8.insert.ext.i349 = zext i32 %3 to i64 ; 2 uses
  %i.jv = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 2, i64 %.sroa.5.8.insert.ext.i349, i64 noundef %.sroa.5.8.insert.ext.i349)
  %i.jw = load i32, ptr %2, align 4, !tbaa !149
  %i.jx = lshr i32 %i.jw, 4
  %i.jy = and i32 %i.jx, 4080
  %i.jz = or disjoint i32 %i.jy, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %i.jv, ptr %5, align 4, !tbaa !131
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !131
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ju, ptr %i.kb, align 4, !tbaa !131
  %i.kc = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -86, ptr nonnull %5, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.dh

bb.df:                                            ; preds = %bb.a, %bb.a
  %i.kd = shl i32 %3, 4
  %i.ke = or disjoint i32 %i.kd, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %i.ke, ptr %4, align 4, !tbaa !131
  %i.kf = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.dh

bb.dg:                                            ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen21translateInstCmpProtoERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, i32 noundef %3)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cd, %bb.cg, %bb.a, %bb.cr, %bb.cz, %bb.cx, %bb.m, %bb.n, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN4Luau7CodeGen17afterInstForNLoopERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionE(ptr noundef nonnull align 8 dereferenceable(928)) local_unnamed_addr #3

declare noundef i32 @_ZN4Luau7CodeGen13getJumpTargetEjj(i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4Luau7CodeGen10isFastCallE10LuauOpcode(i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19buildBytecodeBlocksERNS0_10IrFunctionERKSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen20translateInstLoadNilERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstLoadBERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstLoadNERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstLoadKERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstLoadKXERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen17translateInstMoveERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstGetGlobalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstSetGlobalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %2, ptr %5, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !131
  %i.c = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %5, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 6, 4087) i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 6
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.5.8.insert.ext = zext i32 %1 to i64
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 0, i64 %.sroa.5.8.insert.ext, i64 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [2 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %2, ptr %4, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %i.b
}

declare void @_ZN4Luau7CodeGen21translateInstGetTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstSetTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstGetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstSetTableKSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstGetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstSetTableNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen17translateInstJumpERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpBackERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstJumpIfERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4Luau7CodeGenL15isDirectCompareEP5ProtoPKji(i32 %.136.val, ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %1, 3
  %i.b = icmp slt i32 %i.a, %.136.val
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !149
  %.mask = and i32 %i.c, -65536
  %i.d = icmp eq i32 %.mask, 131072
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !149  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !149  ; 3 uses
  %i.i = and i32 %i.f, 255
  %i.j = icmp eq i32 %i.i, 3
  %i.k = and i32 %i.h, 255
  %i.l = icmp eq i32 %i.k, 3
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = xor i32 %i.h, %i.f
  %i.n = and i32 %i.m, 65280
  %i.o = and i32 %i.f, 16711680
  %.mask19 = and i32 %i.f, -16777216
  %i.p = icmp eq i32 %.mask19, 16777216
  %i.q = or disjoint i32 %i.n, %i.o
  %i.r = icmp eq i32 %i.q, 0
  %i.s = and i32 %i.h, -65536
  %i.t = icmp eq i32 %i.s, 65536
  %i.u = and i1 %i.p, %i.r
  %i.v = select i1 %i.u, i1 %i.t, i1 false
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.1 = phi i1 [ %i.v, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

declare void @_ZN4Luau7CodeGen29translateInstJumpIfEqShortcutERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpIfEqERNS0_9IrBuilderEPKjib(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstJumpIfCondERNS0_9IrBuilderEPKjiNS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstJumpXERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen31translateInstJumpxEqNilShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen23translateInstJumpxEqNilERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqBShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqBERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqNShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqNERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen29translateInstJumpxEqSShortcutERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstJumpxEqSERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstBinaryERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen20translateInstBinaryKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstBinaryRKERNS0_9IrBuilderEPKji3TMS(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen16translateInstNotERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen18translateInstMinusERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstLengthERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstNewTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstDupTableERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #2 align 2 {
bb.a:
  %8 = alloca [6 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %2, ptr %8, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.d, align 4, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %7, ptr %i.e, align 4, !tbaa !131
  %i.f = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %8, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4Luau7CodeGen9IrBuilder5undefEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret i32 1
}

declare void @_ZN4Luau7CodeGen21translateInstGetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstSetUpvalERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen24translateInstCloseUpvalsERNS0_9IrBuilderEPKj(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder22handleFastcallFallbackENS0_4IrOpEPKji(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !149
  %i.b = lshr i32 %i.a, 24
  %i.c = and i32 %1, 15
  %.not = icmp eq i32 %i.c, 1
  %i.d = add i32 %3, 2
  %i.e = add i32 %i.d, %i.b                       ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  %i.j = load i32, ptr %i.i, align 4, !tbaa !149  ; 2 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i32 %i.j, 4
  %i.l = or disjoint i32 %i.k, 5
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = lshr i32 %i.m, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !135
  %i.r = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %i.e, ptr %i.s, align 4, !tbaa !150
  br label %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit

_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit:   ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %.sroa.0.0.i, ptr %4, align 4, !tbaa !131
  %i.t = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 88, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = lshr i32 %1, 4                           ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i32 %i.v, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 6
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !142
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !143
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.al, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.am, align 2, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.i, ptr %i.an, align 4, !tbaa !131
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.ao, align 8, !tbaa !117
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4Luau7CodeGen9IrBuilder11blockAtInstEj.exit
  ret void
}

declare i32 @_ZN4Luau7CodeGen18translateFastCallNERNS0_9IrBuilderEPKjibiNS0_4IrOpES5_(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 7, -8) i32 @_ZN4Luau7CodeGen9IrBuilder7vmConstEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 4
  %i.b = or disjoint i32 %i.a, 7
  ret i32 %i.b
}

declare void @_ZN4Luau7CodeGen21translateInstForNPrepERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen21translateInstForNLoopERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen27translateInstForGLoopIpairsERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 5, -10) i32 @_ZN4Luau7CodeGen9IrBuilder13fallbackBlockEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164  ; 9 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 36                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 4, !tbaa !166
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !131
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !167
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !149
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !149
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !164  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store ptr %i.l, ptr %i.b, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 256204778801521550)
  %i.q = select i1 %i.o, i64 256204778801521550, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = mul nuw nsw i64 %i.q, 36
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.g ; 5 uses
  store i8 1, ptr %i.t, align 4, !tbaa !166
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx3, align 1, !tbaa !131
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i16 0, ptr %.sroa.6.0..sroa_idx5, align 2, !tbaa !167
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %.sroa.7.0..sroa_idx7, align 4, !tbaa !149
  %.sroa.11.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %.sroa.11.0..sroa_idx15, align 4, !tbaa !149
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i.i.i.i, i64 36, i1 false), !tbaa.struct !168, !alias.scope !216
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 36 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 36
  %.not.i23.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !165
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.z) #19
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !135
  store ptr %i.w, ptr %i.b, align 8, !tbaa !164
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !165
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ab = phi ptr [ %i.k, %bb.b ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ac = trunc i64 %i.h to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %1, ptr %i.ad, align 4, !tbaa !150
  %i.ae = shl i32 %i.ac, 4
  %i.af = or disjoint i32 %i.ae, 5
  ret i32 %i.af
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr null, i64 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %1, i8 noundef zeroext %2, i32 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [3 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 6 uses
  %5 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %1, ptr %5, align 4, !tbaa !131
  %i.a = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 1, ptr nonnull %5, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.sroa.5.8.insert.ext.i = zext i8 %2 to i64     ; 2 uses
  %i.b = tail call range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 %.sroa.5.8.insert.ext.i, i64 noundef %.sroa.5.8.insert.ext.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %i.a, ptr %4, align 4, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.b, ptr %i.c, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.d, align 4, !tbaa !131
  %i.e = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -124, ptr nonnull %4, i64 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca [4 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 %2, ptr %6, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !131
  %i.d = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %6, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i32 %i.d
}

declare void @_ZN4Luau7CodeGen25translateInstForGPrepNextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen26translateInstForGPrepInextERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen17translateInstAndXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen16translateInstOrXERNS0_9IrBuilderEPKjiNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef, i32) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen22translateInstGetImportERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen19translateInstConcatERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen20translateInstCaptureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4Luau7CodeGen21translateInstNamecallERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #7

declare void @_ZN4Luau7CodeGen23translateInstNewClosureERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 9, -6) i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 4
  %i.b = or disjoint i32 %i.a, 9
  ret i32 %i.b
}

declare void @_ZN4Luau7CodeGen21translateInstCmpProtoERNS0_9IrBuilderEPKji(ptr noundef nonnull align 8 dereferenceable(1056), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau7CodeGen9IrBuilder15isInternalBlockENS0_4IrOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %0, i32 %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = lshr i32 %1, 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %i.d, i64 %i.c
  %i.f = load i8, ptr %i.e, align 4, !tbaa !217
  %i.g = icmp eq i8 %i.f, 2
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.5.8.insert.ext = zext i8 %1 to i64       ; 2 uses
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 4, i64 %.sroa.5.8.insert.ext, i64 noundef %.sroa.5.8.insert.ext)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder12checkSafeEnvEi(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.c = load i32, ptr %i.b, align 8, !tbaa !118
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144   ; 2 uses
  %i.k = and i8 %i.j, 2
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = or i8 %i.j, 1
  store i8 %i.m, ptr %i.i, align 1, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = shl i32 %1, 4
  %i.o = or disjoint i32 %i.n, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 %i.o, ptr %2, align 4, !tbaa !131
  %i.p = call range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -120, ptr nonnull %2, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen9IrBuilder5cloneESt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 4 uses
  %4 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  %.not89141 = icmp eq ptr %i.a, %i.c
  br i1 %.not89141, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

._crit_edge148:                                   ; preds = %._crit_edge138
  %.not.i.i = icmp eq ptr %.sroa.0.1.lcssa, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge148
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1.lcssa) #16
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit: ; preds = %bb.a, %._crit_edge148, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph147, %._crit_edge138
  %.sroa.068.0145 = phi ptr [ %i.a, %.lr.ph147 ], [ %i.ap, %._crit_edge138 ] ; 2 uses
  %.sroa.19.0144 = phi i64 [ 0, %.lr.ph147 ], [ %.sroa.19.1.lcssa, %._crit_edge138 ] ; 2 uses
  %.sroa.0.0143 = phi ptr [ null, %.lr.ph147 ], [ %.sroa.0.1.lcssa, %._crit_edge138 ] ; 4 uses
  %.sroa.12.0142 = phi i64 [ 0, %.lr.ph147 ], [ %.sroa.12.1.lcssa, %._crit_edge138 ] ; 2 uses
  %i.n = load i32, ptr %.sroa.068.0145, align 4, !tbaa !149
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %i.p, i64 %i.o ; 4 uses
  br i1 %2, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.e, align 8, !tbaa !114, !range !152, !noundef !153
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.f, align 8, !tbaa !118
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.p, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !169
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.y
  invoke void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928) %i.d, ptr noundef nonnull align 8 dereferenceable(59) %i.aa)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 8, !tbaa !114
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !144
  %i.ae = and i8 %i.ad, 1
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !150
  %i.ah = shl i32 %i.ag, 4
  %i.ai = or disjoint i32 %i.ah, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 %i.ai, ptr %3, align 4, !tbaa !131
  %i.aj = invoke range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -120, ptr nonnull %3, i64 1)
          to label %_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE.exit unwind label %bb.j ; 0 uses

_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.k:                                             ; preds = %_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE.exit, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !142 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !169
  %.not34126 = icmp ugt i32 %i.am, %i.ao
  br i1 %.not34126, label %._crit_edge138, label %.lr.ph137

._crit_edge138:                                   ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %bb.k
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.12.0142, %bb.k ], [ %.sroa.12.2, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ]
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0143, %bb.k ], [ %.sroa.0.3, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ] ; 3 uses
  %.sroa.19.1.lcssa = phi i64 [ %.sroa.19.0144, %bb.k ], [ %.sroa.19.2, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.068.0145, i64 4 ; 2 uses
  %.not89 = icmp eq ptr %i.ap, %i.c
  br i1 %.not89, label %._crit_edge148, label %bb.c

.lr.ph137:                                        ; preds = %bb.k, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %storemerge132 = phi i32 [ %i.gy, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ], [ %i.am, %bb.k ] ; 6 uses
  %.sroa.19.1131 = phi i64 [ %.sroa.19.2, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ], [ %.sroa.19.0144, %bb.k ] ; 9 uses
  %.sroa.0.1129 = phi ptr [ %.sroa.0.3, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ], [ %.sroa.0.0143, %bb.k ] ; 16 uses
  %.sroa.12.1127 = phi i64 [ %.sroa.12.2, %_ZN4Luau7CodeGen6IrInstD2Ev.exit ], [ %.sroa.12.0142, %bb.k ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aq = zext i32 %storemerge132 to i64          ; 3 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.aq ; 4 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !163
  store i8 %i.at, ptr %4, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !170
  store i32 6, ptr %i.j, align 4, !tbaa !171
  store ptr %i.k, ptr %i.h, align 8, !tbaa !172
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !170 ; 4 uses
  %i.ax = icmp ugt i32 %i.aw, 6
  br i1 %i.ax, label %bb.l, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.l:                                             ; preds = %.lr.ph137
  %i.ay = icmp ult i32 %i.aw, 9
  %i.az = add i32 %i.aw, 4
  %.09.i.i.i = select i1 %i.ay, i32 9, i32 %i.az  ; 2 uses
  %i.ba = zext i32 %.09.i.i.i to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #20
          to label %.noexc.i unwind label %bb.n   ; 6 uses

.noexc.i:                                         ; preds = %bb.l
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !172 ; 7 uses
  %i.be = load i32, ptr %i.i, align 8, !tbaa !170 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bf, 2          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.bh = ptrtoaddr ptr %i.bd to i64
  %i.bi = ptrtoaddr ptr %i.bc to i64
  %i.bj = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.bj, 28
  %i.bm = sub i64 %i.bh, %i.bi
  %diff.check229 = icmp ugt i64 %i.bm, -32
  %or.cond245 = select i1 %min.iters.check231, i1 true, i1 %diff.check229
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.i.i.i.preheader249, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec233 = and i64 %i.bl, 9223372036854775800  ; 3 uses
  %i.bn = shl i64 %n.vec233, 2                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bc, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bd, i64 %i.bn
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next240, %vector.body234 ] ; 2 uses
  %i.bq = shl i64 %index235, 2                    ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.bc, i64 %i.bq ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.bd, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep237, i64 16
  %wide.load238 = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !131
  %wide.load239 = load <4 x i32>, ptr %i.br, align 4, !tbaa !131
  %i.bs = getelementptr i8, ptr %next.gep236, i64 16
  store <4 x i32> %wide.load238, ptr %next.gep236, align 4, !tbaa !131
  store <4 x i32> %wide.load239, ptr %i.bs, align 4, !tbaa !131
  %index.next240 = add nuw i64 %index235, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.bt, label %middle.block241, label %vector.body234, !llvm.loop !218

middle.block241:                                  ; preds = %vector.body234
  %cmp.n242 = icmp eq i64 %i.bl, %n.vec233
  br i1 %cmp.n242, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader249

.lr.ph.i.i.i.i.i.i.i.preheader249:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block241
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block241 ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block241 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader249, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader249 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader249 ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.bu, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !219

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block241, %.noexc.i
  %.not.i.i.i58 = icmp eq ptr %i.bd, %i.k
  br i1 %.not.i.i.i58, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bd) #16
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i: ; preds = %bb.m, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !172
  store i32 %.09.i.i.i, ptr %i.j, align 4, !tbaa !171
  %.pre.i59 = load i32, ptr %i.av, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, %.lr.ph137
  %i.bx = phi ptr [ %i.bc, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.k, %.lr.ph137 ] ; 4 uses
  %i.by = phi i32 [ %.pre.i59, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.aw, %.lr.ph137 ] ; 2 uses
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !172 ; 5 uses
  %i.ca = zext i32 %i.by to i64
  %.idx.i = shl nuw nsw i64 %i.ca, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i
  %.not9.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not9.i.i.i.i, label %bb.o, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.cc = ptrtoaddr ptr %i.bz to i64
  %i.cd = ptrtoaddr ptr %i.bx to i64
  %i.ce = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check216 = icmp ult i64 %i.ce, 28
  %i.ch = sub i64 %i.cc, %i.cd
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond246 = select i1 %min.iters.check216, i1 true, i1 %diff.check
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.preheader248, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec218 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec218, 2                    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.bz, i64 %i.ci
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ] ; 2 uses
  %i.cl = shl i64 %index220, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cl ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.bz, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep221, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !131
  %wide.load222 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !131
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load222, ptr %i.cn, align 4, !tbaa !131
  %index.next223 = add nuw i64 %index220, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.co, label %middle.block224, label %vector.body219, !llvm.loop !220

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %i.cg, %n.vec218
  br i1 %cmp.n225, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader248

.lr.ph.i.i.i.i.preheader248:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block224
  %.011.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block224 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block224 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader248, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader248 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader248 ] ; 2 uses
  %i.cp = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !131
  store i32 %i.cp, ptr %.011.i.i.i.i, align 4, !tbaa !131
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !221

_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block224
  %.pre6.i = load i32, ptr %i.av, align 8, !tbaa !170
  br label %bb.o

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen9IrBuilder5cloneESt6vectorIjSaIjEEb:bb.a

bb.ad:                                            ; preds = %bb.ag, %.lr.ph26.i
  %.025.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.fz, %bb.ag ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1129, i64 %.025.i ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !149 ; 5 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fg = zext i32 %i.fe to i64
  %i.fh = and i64 %i.fc, %i.fg                    ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !149 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, -1
  br i1 %i.fk, label %._crit_edge.i63, label %.lr.ph.i62

._crit_edge.i63:                                  ; preds = %bb.af, %bb.ae
  %.02134.i.lcssa21.i = phi i64 [ %i.fh, %bb.ae ], [ %i.fq, %bb.af ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02134.i.lcssa21.i ; 2 uses
  store i32 %i.fe, ptr %i.fl, align 4, !tbaa !229
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.i

.lr.ph.i62:                                       ; preds = %bb.ae, %bb.af
  %i.fm = phi i32 [ %i.fs, %bb.af ], [ %i.fj, %bb.ae ]
  %.02134.i23.i = phi i64 [ %i.fq, %bb.af ], [ %i.fh, %bb.ae ] ; 2 uses
  %.02035.i22.i = phi i64 [ %i.fo, %bb.af ], [ 0, %bb.ae ]
  %i.fn = icmp eq i32 %i.fm, %i.fe
  br i1 %i.fn, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.loopexit.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i62
  %i.fo = add i64 %.02035.i22.i, 1                ; 3 uses
  %i.fp = add i64 %i.fo, %.02134.i23.i
  %i.fq = and i64 %i.fp, %i.fc                    ; 3 uses
  %.not.i12.i = icmp ule i64 %i.fo, %i.fc
  call void @llvm.assume(i1 %.not.i12.i)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !149 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %._crit_edge.i63, label %.lr.ph.i62

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.loopexit.i: ; preds = %.lr.ph.i62
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02134.i23.i
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.loopexit.i, %._crit_edge.i63
  %i.fv = phi ptr [ %i.fl, %._crit_edge.i63 ], [ %i.fu, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.loopexit.i ] ; 2 uses
  store i32 %i.fe, ptr %i.fv, align 4, !tbaa !229
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !149
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !230
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE13insert_unsafeERS4_.exit.i, %bb.ad
  %i.fz = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fz, %.sroa.12.1127
  br i1 %exitcond.not.i, label %._crit_edge27.thread.i, label %bb.ad, !llvm.loop !225

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.z, %._crit_edge27.i, %._crit_edge27.thread.i, %._crit_edge125
  %.sroa.12.3 = phi i64 [ %.sroa.12.1127, %._crit_edge125 ], [ 16, %._crit_edge27.i ], [ %spec.select.i, %._crit_edge27.thread.i ], [ %.sroa.12.1127, %bb.z ] ; 2 uses
  %.sroa.0.7 = phi ptr [ %.sroa.0.1129, %._crit_edge125 ], [ %.sroa.0.0.i, %._crit_edge27.i ], [ %.sroa.0.0.i, %._crit_edge27.thread.i ], [ %.sroa.0.1129, %bb.z ] ; 6 uses
  %i.ga = add i64 %.sroa.12.3, -1                 ; 3 uses
  %i.gb = and i64 %i.ga, %i.aq                    ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.7, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !149 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ah, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.gb, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.gl, %bb.ah ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.7, i64 %.02134.i.lcssa5.i
  store i32 %storemerge132, ptr %i.gf, align 4, !tbaa !229
  %i.gg = add i64 %.sroa.19.1131, 1
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.ah
  %i.gh = phi i32 [ %i.gn, %bb.ah ], [ %i.gd, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.gl, %bb.ah ], [ %i.gb, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.gj, %bb.ah ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.gi = icmp eq i32 %i.gh, %storemerge132
  br i1 %i.gi, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.gj = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.gk = add i64 %i.gj, %.02134.i7.i
  %i.gl = and i64 %i.gk, %i.ga                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.gj, %i.ga
  call void @llvm.assume(i1 %.not.i3.i)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.7, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !149 ; 2 uses
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %._crit_edge.i, label %.lr.ph.i

.lr.ph124:                                        ; preds = %._crit_edge, %bb.ai
  %.0122 = phi ptr [ %i.gp, %bb.ai ], [ %.pre, %._crit_edge ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.0122, align 4, !tbaa !131
  invoke void @_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %i.d, i32 %.sroa.01.0.copyload)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.lr.ph124
  %i.gp = getelementptr inbounds nuw i8, ptr %.0122, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %i.gp, %i.de
  br i1 %.not36, label %._crit_edge125, label %.lr.ph124

bb.aj:                                            ; preds = %.lr.ph124
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge.i
  %.sroa.19.3 = phi i64 [ %i.gg, %._crit_edge.i ], [ %.sroa.19.1131, %.lr.ph.i ]
  %i.gr = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.7, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = trunc i64 %i.ed to i32
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !149
  %i.gv = load i8, ptr %4, align 8, !tbaa !163
  %i.gw = invoke i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdERKNS_11SmallVectorINS0_4IrOpELj6EEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.gv, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge unwind label %bb.p ; 0 uses

.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge: ; preds = %.loopexit
  %.promoted.i.i.i.pre = load i32, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread: ; preds = %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge, %bb.o, %bb.o, %bb.o, %bb.o
  %.promoted.i.i.i = phi i32 [ %.promoted.i.i.i.pre, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ], [ %i.cu, %bb.o ]
  %.sroa.12.2 = phi i64 [ %.sroa.12.3, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ], [ %.sroa.12.1127, %bb.o ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.7, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ], [ %.sroa.0.1129, %bb.o ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.3, %.loopexit._ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread_crit_edge ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ], [ %.sroa.19.1131, %bb.o ] ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  store i32 0, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.gx, %i.k
  br i1 %.not.i.i44, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.gx) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.gy = add i32 %storemerge132, 1               ; 2 uses
  %i.gz = load i32, ptr %i.an, align 4, !tbaa !169
  %.not34 = icmp ugt i32 %i.gy, %i.gz
  br i1 %.not34, label %._crit_edge138, label %.lr.ph137, !llvm.loop !226

bb.al:                                            ; preds = %bb.aj, %bb.p
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %bb.p ], [ %.sroa.0.1129, %bb.aj ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %i.gq, %bb.aj ] ; 2 uses
  %.promoted.i.i.i45 = load i32, ptr %i.i, align 8, !tbaa !170
  %.not1.i.i.i46 = icmp eq i32 %.promoted.i.i.i45, 0
  br i1 %.not1.i.i.i46, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, label %.lr.ph.preheader.i.i.i47

.lr.ph.preheader.i.i.i47:                         ; preds = %bb.al
  store i32 0, ptr %i.i, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48: ; preds = %.lr.ph.preheader.i.i.i47, %bb.al
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !172 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.ha, %i.k
  br i1 %.not.i.i49, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56
  %.sink = phi ptr [ %i.ct, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %i.ha, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  %.sroa.0.5.ph = phi ptr [ %.sroa.0.1129, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.sroa.0.4, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.pn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ]
  call void @_ZdlPv(ptr noundef %.sink) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ], [ %.sroa.0.1129, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.sroa.0.5.ph, %.body.sink.split ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i48 ], [ %i.cs, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i56 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.am

bb.am:                                            ; preds = %.body, %bb.j, %bb.g
  %.sroa.0.6 = phi ptr [ %.sroa.0.5, %.body ], [ %.sroa.0.0143, %bb.j ], [ %.sroa.0.0143, %bb.g ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ak, %bb.j ], [ %i.ab, %bb.g ]
  %.not.i.i51 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i51, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.6) #16
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEED2Ev.exit52: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4Luau7CodeGen4killERNS0_10IrFunctionERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #3

declare void @_ZN4Luau7CodeGen6addUseERNS0_10IrFunctionENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928), i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdERKNS_11SmallVectorINS0_4IrOpELj6EEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 6
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i8 %1, ptr %3, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  store i32 0, ptr %i.l, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i32 6, ptr %i.m, align 4, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = icmp ugt i32 %i.p, 6
  br i1 %i.q, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ult i32 %i.p, 9
  %i.s = add i32 %i.p, 4
  %.09.i.i.i = select i1 %i.r, i32 9, i32 %i.s    ; 2 uses
  %i.t = zext i32 %.09.i.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #20
          to label %.noexc.i unwind label %bb.d   ; 6 uses

.noexc.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !172  ; 7 uses
  %i.x = load i32, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 2           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.aa = ptrtoaddr ptr %i.w to i64
  %i.ab = ptrtoaddr ptr %i.v to i64
  %i.ac = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 44
  %i.af = sub i64 %i.aa, %i.ab
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !131
  %wide.load39 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !131
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load39, ptr %i.al, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.preheader78:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.an = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.an, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !232

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #16
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.v, ptr %i.k, align 8, !tbaa !172
  store i32 %.09.i.i.i, ptr %i.m, align 4, !tbaa !171
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i, %bb.a
  %i.aq = phi ptr [ %i.v, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.n, %bb.a ] ; 4 uses
  %.pre6.i = phi i32 [ %.pre.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i.i ], [ %i.p, %bb.a ] ; 3 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !172   ; 5 uses
  %i.as = zext i32 %.pre6.i to i64
  %.idx.i = shl nuw nsw i64 %i.as, 2              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %.not9.i.i.i.i = icmp eq i32 %.pre6.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.au = ptrtoaddr ptr %i.ar to i64
  %i.av = ptrtoaddr ptr %i.aq to i64
  %i.aw = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check44 = icmp ult i64 %i.aw, 44
  %i.az = sub i64 %i.au, %i.av
  %diff.check42 = icmp ugt i64 %i.az, -32
  %or.cond75 = select i1 %min.iters.check44, i1 true, i1 %diff.check42
  br i1 %or.cond75, label %.lr.ph.i.i.i.i.preheader77, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec46 = and i64 %i.ay, 9223372036854775800   ; 3 uses
  %i.ba = shl i64 %n.vec46, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.ar, i64 %i.ba
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.bd = shl i64 %index48, 2                     ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.aq, i64 %i.bd ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load51 = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !131
  %wide.load52 = load <4 x i32>, ptr %i.be, align 4, !tbaa !131
  %i.bf = getelementptr i8, ptr %next.gep49, i64 16
  store <4 x i32> %wide.load51, ptr %next.gep49, align 4, !tbaa !131
  store <4 x i32> %wide.load52, ptr %i.bf, align 4, !tbaa !131
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next53, %n.vec46
  br i1 %i.bg, label %middle.block54, label %vector.body47, !llvm.loop !233

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.ay, %n.vec46
  br i1 %cmp.n55, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.preheader77

.lr.ph.i.i.i.i.preheader77:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block54
  %.011.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block54 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block54 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader77, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader77 ] ; 2 uses
  %i.bh = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !131
  store i32 %i.bh, ptr %.011.i.i.i.i, align 4, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !234

bb.d:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.n
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bl) #16
  br label %common.resume

common.resume:                                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.e, %_ZN4Luau7CodeGen6IrInstD2Ev.exit22
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %_ZN4Luau7CodeGen6IrInstD2Ev.exit22 ], [ %i.bk, %bb.e ], [ %i.bk, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block54, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  store i32 %.pre6.i, ptr %i.l, align 8, !tbaa !170
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdERKNS_11SmallVectorINS0_4IrOpELj6EEE:bb.a
  %i.ci = add i64 %i.ch, 23
  %diff.check59 = icmp ult i64 %i.ci, 31
  br i1 %diff.check59, label %.lr.ph.i.i.i.i.i.i.i.i.preheader76, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.cg, 9223372036854775800   ; 3 uses
  %i.cj = shl i64 %n.vec63, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.by, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.bz, i64 %i.cj
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.cm = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.by, i64 %i.cm ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !131
  %wide.load69 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !131
  %i.co = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 4, !tbaa !131
  store <4 x i32> %wide.load69, ptr %i.co, align 4, !tbaa !131
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.cp, label %middle.block71, label %vector.body64, !llvm.loop !235

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.cg, %n.vec63
  br i1 %cmp.n72, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader76

.lr.ph.i.i.i.i.i.i.i.i.preheader76:               ; preds = %vector.memcheck58, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block71
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck58 ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block71 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck58 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader76, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader76 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader76 ] ; 2 uses
  %i.cq = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.cq, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cd
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !236

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block71
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, %bb.g
  %i.ct = phi i32 [ %.pre.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i ], [ 0, %bb.g ]
  store i32 %i.ct, ptr %i.bw, align 8, !tbaa !170
  %.promoted.i.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

bb.h:                                             ; preds = %bb.f
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !172
  %i.cu = load <2 x i32>, ptr %i.l, align 8, !tbaa !149
  store <2 x i32> %i.cu, ptr %i.bw, align 8, !tbaa !149
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  store i32 6, ptr %i.m, align 4, !tbaa !171
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cv, ptr noundef nonnull align 8 dereferenceable(11) %i.bm, i64 11, i1 false)
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !136
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13

bb.i:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ERKS3_.exit
  invoke void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(59) %3)
          to label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i
  %.promoted.i.i.i10.pre = load i32, ptr %i.l, align 8, !tbaa !170
  %i.cy = icmp eq i32 %.promoted.i.i.i10.pre, 0
  br i1 %i.cy, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13, label %.lr.ph.preheader.i.i.i12

.lr.ph.preheader.i.i.i12:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, %.lr.ph.preheader.i.i.i12, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.cz, %i.n
  br i1 %.not.i.i14, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13
  call void @_ZdlPv(ptr noundef %i.cz) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i13, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 88, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 89, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 90, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 91, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 92, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 93, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 94, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 95, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 96, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -100, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -99, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -98, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -86, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -40, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 83, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.db = load i32, ptr %i.da, align 8, !tbaa !118
  %i.dc = zext i32 %i.db to i64
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.de = getelementptr inbounds nuw [36 x i8], ptr %i.dd, i64 %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.j, ptr %i.df, align 4, !tbaa !169
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dg, align 8, !tbaa !114
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 -86, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -98, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

bb.k:                                             ; preds = %bb.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i16 = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i17 = icmp eq i32 %.promoted.i.i.i16, 0
  br i1 %.not1.i.i.i17, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19, label %.lr.ph.preheader.i.i.i18

.lr.ph.preheader.i.i.i18:                         ; preds = %bb.k
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19: ; preds = %.lr.ph.preheader.i.i.i18, %bb.k
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.di, %i.n
  br i1 %.not.i.i20, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19
  call void @_ZdlPv(ptr noundef %i.di) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit22

_ZN4Luau7CodeGen6IrInstD2Ev.exit22:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume

bb.m:                                             ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !118
  %i.dl = zext i32 %i.dk to i64
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.dn = getelementptr inbounds nuw [36 x i8], ptr %i.dm, i64 %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !144
  %i.dq = or i8 %i.dp, 2
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !144
  br label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit

_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %bb.m
  %i.dr = shl i32 %i.j, 4
  %i.ds = or disjoint i32 %i.dr, 4
  ret i32 %i.ds
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 %1, i64 %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.Luau::CodeGen::IrBuilder::ConstantKey", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i8 %1, ptr %4, align 8, !tbaa !178
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !tbaa !180
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.g = load i8, ptr %i.f, align 8, !tbaa !178   ; 2 uses
  %i.h = icmp eq i8 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i64 %3, %i.j
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.n = load i64, ptr %i.m, align 8, !tbaa !181
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = trunc i64 %3 to i32
  %i.q = lshr i64 %3, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = zext i8 %1 to i32
  %i.t = mul i32 %i.s, 1540483477
  %i.u = xor i32 %i.t, %i.r                       ; 2 uses
  %i.v = lshr i32 %i.u, 18
  %i.w = xor i32 %i.v, %i.p
  %i.x = mul i32 %i.w, 1540483477                 ; 2 uses
  %i.y = lshr i32 %i.x, 22
  %i.z = xor i32 %i.y, %i.u
  %i.aa = mul i32 %i.z, 1540483477                ; 2 uses
  %i.ab = lshr i32 %i.aa, 17
  %i.ac = xor i32 %i.ab, %i.x
  %i.ad = mul i32 %i.ac, 1540483477
  %i.ae = lshr i32 %i.ad, 19
  %i.af = xor i32 %i.ae, %i.aa
  %i.ag = mul i32 %i.af, 1540483477
  %i.ah = zext i32 %i.ag to i64
  %i.ai = and i64 %i.o, %i.ah
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.au, %bb.f ]
  %.01927.i.i = phi i64 [ %i.ai, %bb.c ], [ %i.aw, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.01927.i.i ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !178 ; 2 uses
  %i.am = icmp eq i8 %i.al, %1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %3
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp eq i8 %i.al, %i.g
  %i.as = icmp eq i64 %i.ao, %i.j
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.av = add i64 %i.au, %.01927.i.i
  %i.aw = and i64 %i.av, %i.o
  %.not.i.i = icmp ugt i64 %i.au, %i.o
  br i1 %.not.i.i, label %.critedge, label %bb.d, !llvm.loop !1

bb.g:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !149
  br label %bb.m

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !237 ; 4 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !238 ; 4 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 5 uses
  %i.bg = ashr exact i64 %i.bf, 4                 ; 4 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !239
  %.not.i7 = icmp eq ptr %i.bb, %i.bj
  br i1 %.not.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  store i8 %1, ptr %i.bb, align 8, !tbaa !119
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %2, ptr %.sroa.310.0..sroa_idx, align 8, !tbaa !131
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !237
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !237
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %.critedge
  %i.bm = icmp eq i64 %i.bf, 9223372036854775792
  br i1 %i.bm, label %bb.j, label %_ZNKSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bg
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 576460752303423487)
  %i.bq = select i1 %i.bo, i64 576460752303423487, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 4
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #18 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bf ; 3 uses
  store i8 %1, ptr %i.bt, align 8, !tbaa !119
  %.sroa.310.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %2, ptr %.sroa.310.0..sroa_idx11, align 8, !tbaa !131
  %i.bu = icmp sgt i64 %i.bf, 0
  br i1 %i.bu, label %bb.k, label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr align 8 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.not.i17.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !239
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.by) #19
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !238
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !237
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bz, ptr %i.bi, align 8, !tbaa !239
  br label %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ca = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4)
  store i32 %i.bh, ptr %i.ca, align 4, !tbaa !149
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE9push_backERKS2_.exit
  %.sroa.013.0.in.in = phi i32 [ %i.bh, %_ZNSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE9push_backERKS2_.exit ], [ %i.ay, %bb.g ]
  %.sroa.013.0.in = shl i32 %.sroa.013.0.in.in, 4
  %.sroa.013.0 = or disjoint i32 %.sroa.013.0.in, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %.sroa.013.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 1, i64 %1, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder11constImportEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.5.8.insert.ext = zext i32 %1 to i64      ; 2 uses
  %i.a = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 5, i64 %.sroa.5.8.insert.ext, i64 noundef %.sroa.5.8.insert.ext)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 2, -13) i32 @_ZN4Luau7CodeGen9IrBuilder11constDoubleEd(ptr noundef nonnull align 8 dereferenceable(1056) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 2 uses
  %i.b = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constAnyENS0_7IrConstEm(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 3, i64 %i.a, i64 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !181  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %1, align 8, !tbaa !178     ; 3 uses
  %i.j = load i8, ptr %i.h, align 8, !tbaa !178   ; 2 uses
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  %i.q = select i1 %i.k, i1 %i.p, i1 false
  br i1 %i.q, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %i.d, -1                         ; 3 uses
  %i.s = trunc i64 %i.m to i32
  %i.t = lshr i64 %i.m, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = zext i8 %i.i to i32
  %i.w = mul i32 %i.v, 1540483477
  %i.x = xor i32 %i.w, %i.u                       ; 2 uses
  %i.y = lshr i32 %i.x, 18
  %i.z = xor i32 %i.y, %i.s
  %i.aa = mul i32 %i.z, 1540483477                ; 2 uses
  %i.ab = lshr i32 %i.aa, 22
  %i.ac = xor i32 %i.ab, %i.x
  %i.ad = mul i32 %i.ac, 1540483477               ; 2 uses
  %i.ae = lshr i32 %i.ad, 17
  %i.af = xor i32 %i.ae, %i.aa
  %i.ag = mul i32 %i.af, 1540483477
  %i.ah = lshr i32 %i.ag, 19
  %i.ai = xor i32 %i.ah, %i.ad
  %i.aj = mul i32 %i.ai, 1540483477
  %i.ak = zext i32 %i.aj to i64
  %i.al = and i64 %i.r, %i.ak
  %i.am = load ptr, ptr %0, align 8, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.ax, %bb.g ]
  %.01927.i.i = phi i64 [ %i.al, %bb.d ], [ %i.az, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.01927.i.i ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !178 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, %i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.m
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i8 %i.ao, %i.j
  %i.av = icmp eq i64 %i.ar, %i.o
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.ay = add i64 %i.ax, %.01927.i.i
  %i.az = and i64 %i.ay, %i.r
  %.not.i.i = icmp ugt i64 %i.ax, %i.r
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !181
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.ba = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.bb = add i64 %i.ba, -1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !179 ; 4 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = lshr i64 %i.bd, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = load i8, ptr %1, align 8, !tbaa !178    ; 3 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul i32 %i.bi, 1540483477
  %i.bk = xor i32 %i.bj, %i.bg                    ; 2 uses
  %i.bl = lshr i32 %i.bk, 18
  %i.bm = xor i32 %i.bl, %i.be
  %i.bn = mul i32 %i.bm, 1540483477               ; 2 uses
  %i.bo = lshr i32 %i.bn, 22
  %i.bp = xor i32 %i.bo, %i.bk
  %i.bq = mul i32 %i.bp, 1540483477               ; 2 uses
  %i.br = lshr i32 %i.bq, 17
  %i.bs = xor i32 %i.br, %i.bn
  %i.bt = mul i32 %i.bs, 1540483477
  %i.bu = lshr i32 %i.bt, 19
  %i.bv = xor i32 %i.bu, %i.bq
  %i.bw = mul i32 %i.bv, 1540483477
  %i.bx = zext i32 %i.bw to i64
  %i.by = and i64 %i.bb, %i.bx                    ; 2 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !182   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !178 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.by ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !178 ; 2 uses
  %i.cg = icmp eq i8 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %i.cd
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.cl = icmp eq i8 %i.cf, %i.bh
  %i.cm = icmp eq i64 %i.ci, %i.bd
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph19

._crit_edge:                                      ; preds = %.lr.ph19, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ce, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.cw, %.lr.ph19 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !183
  %i.co = load i64, ptr %i.a, align 8, !tbaa !180
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !180
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph19
  %i.cq = icmp eq i8 %i.cx, %i.bh
  %i.cr = icmp eq i64 %i.da, %i.bd
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i518 = phi i64 [ %i.ct, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02129.i617 = phi i64 [ %i.cv, %.lr.ph ], [ %i.by, %.lr.ph.preheader ]
  %i.ct = add i64 %.02030.i518, 1                 ; 3 uses
  %i.cu = add i64 %i.ct, %.02129.i617
  %i.cv = and i64 %i.cu, %i.bb                    ; 2 uses
  %.not.i3 = icmp ule i64 %i.ct, %i.bb
  tail call void @llvm.assume(i1 %.not.i3)
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cv ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !178 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.cd
  %i.dc = select i1 %i.cy, i1 %i.db, i1 false
  br i1 %i.dc, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.dd = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ce, %.lr.ph.preheader ], [ %i.cw, %.lr.ph ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  ret ptr %i.de
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 3, 4084) i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 3
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::CodeGen::IrInst", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 6
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i8 %1, ptr %4, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  store i32 0, ptr %i.l, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i32 6, ptr %i.m, align 4, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 8 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  %i.o = trunc i64 %3 to i32                      ; 4 uses
  %i.p = icmp ugt i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %i.o, 9
  %i.r = add i32 %i.o, 4
  %.09.i.i.i = select i1 %i.q, i32 9, i32 %i.r    ; 2 uses
  %i.s = zext i32 %.09.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
          to label %.noexc.i unwind label %bb.d   ; 6 uses

.noexc.i:                                         ; preds = %bb.b
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !172  ; 7 uses
  %i.w = load i32, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.x, 2           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %i.z = ptrtoaddr ptr %i.v to i64
  %i.aa = ptrtoaddr ptr %i.u to i64
  %i.ab = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 44
  %i.ae = sub i64 %i.z, %i.aa
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !131
  %wide.load40 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !131
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load40, ptr %i.ak, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.i.preheader60:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %i.am = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.am, ptr %.013.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !241

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc.i
  %.not.i.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #16
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i
  store ptr %i.u, ptr %i.k, align 8, !tbaa !172
  store i32 %.09.i.i.i, ptr %i.m, align 4, !tbaa !171
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !136
  br label %.lr.ph.i.i.i.preheader.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i: ; preds = %bb.a
  %.not9.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i
  %.pre = phi ptr [ %.pre.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i ], [ %i.d, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ]
  %i.ap = phi ptr [ %i.u, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.thread.i ], [ %i.n, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ]
  %.idx7.pn.i = shl nuw nsw i64 %3, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %2, i64 %.idx7.pn.i, i1 false), !tbaa !131
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.promoted.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.d
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.n
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ar) #16
  br label %common.resume

common.resume:                                    ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i, %bb.e, %_ZN4Luau7CodeGen6IrInstD2Ev.exit23
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %_ZN4Luau7CodeGen6IrInstD2Ev.exit23 ], [ %i.aq, %bb.e ], [ %i.aq, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit: ; preds = %.lr.ph.i.i.i.preheader.i, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i
  %i.as = phi ptr [ %.pre, %.lr.ph.i.i.i.preheader.i ], [ %i.d, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit.i ] ; 9 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  store i32 %i.o, ptr %i.l, align 8, !tbaa !170
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !175
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i16 0, ptr %i.av, align 4, !tbaa !176
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 54
  store i8 -128, ptr %i.aw, align 2, !tbaa !131
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 55
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.ax, align 1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !177
  %.not.i.i9 = icmp eq ptr %i.as, %i.az
  br i1 %.not.i.i9, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit
  %i.ba = load i8, ptr %4, align 8, !tbaa !163
  store i8 %i.ba, ptr %i.as, align 8, !tbaa !163
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !170
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  store i32 6, ptr %i.bd, align 4, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 5 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !172
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !172 ; 8 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %.not.i.i.i.i10 = icmp eq ptr %i.bf, %i.n
  br i1 %.not.i.i.i.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = load i32, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bi, 2        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %i.bk = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.bk, 60
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i.i.preheader59, label %vector.memcheck42

vector.memcheck42:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.bn = sub i64 %i.at, %i.bg
  %i.bo = add i64 %i.bn, 23
  %diff.check43 = icmp ult i64 %i.bo, 31
  br i1 %diff.check43, label %.lr.ph.i.i.i.i.i.i.i.i.preheader59, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck42
  %n.vec47 = and i64 %i.bm, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec47, 2                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.be, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bp
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.bs = shl i64 %index49, 2                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.be, i64 %i.bs ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bf, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load52 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !131
  %wide.load53 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !131
  %i.bu = getelementptr i8, ptr %next.gep50, i64 16
  store <4 x i32> %wide.load52, ptr %next.gep50, align 4, !tbaa !131
  store <4 x i32> %wide.load53, ptr %i.bu, align 4, !tbaa !131
  %index.next54 = add nuw i64 %index49, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.bv, label %middle.block55, label %vector.body48, !llvm.loop !242

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.bm, %n.vec47
  br i1 %cmp.n56, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader59

.lr.ph.i.i.i.i.i.i.i.i.preheader59:               ; preds = %vector.memcheck42, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block55
  %.013.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck42 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block55 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck42 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block55 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader59, %.lr.ph.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader59 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader59 ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.bw, ptr %.013.i.i.i.i.i.i.i.i, align 4, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !243

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block55
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i, %bb.g
  %i.bz = phi i32 [ %.pre.i.i.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.loopexit.i.i.i.i ], [ 0, %bb.g ]
  store i32 %i.bz, ptr %i.bc, align 8, !tbaa !170
  %.promoted.i.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

bb.h:                                             ; preds = %bb.f
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !172
  %i.ca = load <2 x i32>, ptr %i.l, align 8, !tbaa !149
  store <2 x i32> %i.ca, ptr %i.bc, align 8, !tbaa !149
  store ptr %i.n, ptr %i.k, align 8, !tbaa !172
  store i32 6, ptr %i.m, align 4, !tbaa !171
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread.sink.split, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cb, ptr noundef nonnull align 8 dereferenceable(11) %i.au, i64 11, i1 false)
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !136
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14

bb.i:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEC2ESt16initializer_listIS2_E.exit
  invoke void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(59) %4)
          to label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit unwind label %bb.k

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i
  %.promoted.i.i.i11.pre = load i32, ptr %i.l, align 8, !tbaa !170
  %i.ce = icmp eq i32 %.promoted.i.i.i11.pre, 0
  br i1 %i.ce, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14, label %.lr.ph.preheader.i.i.i13

.lr.ph.preheader.i.i.i13:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit.thread, %.lr.ph.preheader.i.i.i13, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE9push_backEOS2_.exit
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cf, %i.n
  br i1 %.not.i.i15, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14
  call void @_ZdlPv(ptr noundef %i.cf) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit

_ZN4Luau7CodeGen6IrInstD2Ev.exit:                 ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i14, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 88, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 89, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 90, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 91, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 92, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 93, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 94, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 95, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 96, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -100, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -99, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -98, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -97, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -86, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 -40, label %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
    i8 83, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !118
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.ck = getelementptr inbounds nuw [36 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.j, ptr %i.cl, align 4, !tbaa !169
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cm, align 8, !tbaa !114
  switch i8 %1, label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit [
    i8 -86, label %bb.m
    i8 124, label %bb.m
    i8 125, label %bb.m
    i8 126, label %bb.m
    i8 127, label %bb.m
    i8 -127, label %bb.m
    i8 -101, label %bb.m
    i8 -98, label %bb.m
    i8 -95, label %bb.m
    i8 -94, label %bb.m
    i8 -93, label %bb.m
    i8 -92, label %bb.m
    i8 -91, label %bb.m
  ]

bb.k:                                             ; preds = %bb.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.promoted.i.i.i17 = load i32, ptr %i.l, align 8, !tbaa !170
  %.not1.i.i.i18 = icmp eq i32 %.promoted.i.i.i17, 0
  br i1 %.not1.i.i.i18, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20, label %.lr.ph.preheader.i.i.i19

.lr.ph.preheader.i.i.i19:                         ; preds = %bb.k
  store i32 0, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20: ; preds = %.lr.ph.preheader.i.i.i19, %bb.k
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !172 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.co, %i.n
  br i1 %.not.i.i21, label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20
  call void @_ZdlPv(ptr noundef %i.co) #16
  br label %_ZN4Luau7CodeGen6IrInstD2Ev.exit23

_ZN4Luau7CodeGen6IrInstD2Ev.exit23:               ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i20, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

bb.m:                                             ; preds = %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !118
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.ct = getelementptr inbounds nuw [36 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !144
  %i.cw = or i8 %i.cv, 2
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !144
  br label %_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit

_ZN4Luau7CodeGen20canInvalidateSafeEnvENS0_5IrCmdE.exit: ; preds = %_ZN4Luau7CodeGen6IrInstD2Ev.exit, %_ZN4Luau7CodeGen17isBlockTerminatorENS0_5IrCmdE.exit, %bb.m
  %i.cx = shl i32 %i.j, 4
  %i.cy = or disjoint i32 %i.cx, 4
  ret i32 %i.cy
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca [5 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 %2, ptr %7, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %6, ptr %i.d, align 4, !tbaa !131
  %i.e = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %7, i64 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 4, -11) i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) local_unnamed_addr #2 align 2 {
bb.a:
  %9 = alloca [7 x %"struct.Luau::CodeGen::IrOp"], align 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 %2, ptr %9, align 4, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %4, ptr %i.b, align 4, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %6, ptr %i.d, align 4, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %7, ptr %i.e, align 4, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %8, ptr %i.f, align 4, !tbaa !131
  %i.g = call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdESt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, ptr nonnull %9, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 8, 4089) i32 @_ZN4Luau7CodeGen9IrBuilder9vmUpvalueEh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1056) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 4
  %i.c = or disjoint i32 %i.b, 8
  ret i32 %i.c
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 11 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 4                ; 11 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !184

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 4
  store i64 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !133
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !184

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.k, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.prol ], [ %1, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.k ]
  store i64 %i.i, ptr %.06.i.i.i.prol, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !244

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.k
  %.06.i.i.i.unr = phi ptr [ %1, %bb.k ], [ %i.ah, %.lr.ph.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ae, 56
  br i1 %i.ai, label %_ZSt4fillIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.i, ptr %.06.i.i.i, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i64 %i.i, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i64 %i.i, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i64 %i.i, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store i64 %i.i, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i64 %i.i, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i64 %i.i, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store i64 %i.i, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !245

bb.l:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPN4Luau7CodeGen15BytecodeMappingEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN4Luau7CodeGen15BytecodeMappingEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !245

_ZSt24__uninitialized_fill_n_aIPN4Luau7CodeGen15BytecodeMappingEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !133
  %i.av = icmp sgt i64 %i.k, 8
  br i1 %i.av, label %bb.n, label %bb.o, !prof !184

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN4Luau7CodeGen15BytecodeMappingEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN4Luau7CodeGen15BytecodeMappingEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 8
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %1, align 4
  store i64 %i.ax, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69

_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !133
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPN4Luau7CodeGen15BytecodeMappingES3_SaIS2_EET0_T_S6_S5_RT1_.exit69 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPN4Luau7CodeGen15BytecodeMappingES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !245

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !134   ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 4 uses
  %i.bf = sub nsw i64 1152921504606846975, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
end_hunk_2
