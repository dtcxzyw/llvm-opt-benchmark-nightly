Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrTranslateBuiltins?download=true
inline.NumInlined: 229
inline.NumDeleted: 51
begin_hunk_0_@_ZN4Luau7CodeGenL26translateBuiltinInt64UnaryERNS0_9IrBuilderENS0_5IrCmdEiiiii:bb.a
_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit: ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit, %bb.d
  %.sroa.03.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit ]
  %i.l = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %1, i32 %.sroa.03.0.i)
  %i.m = trunc i32 %3 to i8                       ; 2 uses
  %i.n = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.m)
  %i.o = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 18, i32 %i.n, i32 %i.l) ; 0 uses
  %i.p = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.m)
  %i.q = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.r = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 13, i32 %i.p, i32 %i.q) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit
  %.sroa.028.0.insert.insert = phi i64 [ 4294967298, %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit ], [ -4294967296, %bb.a ]
  ret i64 %.sroa.028.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc range(i64 -4294967296, 4294967299) i64 @_ZN4Luau7CodeGenL28translateBuiltinInt64ExtractERNS0_9IrBuilderEiiiNS0_4IrOpES3_ii(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef range(i32 0, -1) %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  %i.b = icmp sgt i32 %6, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %3 to i8                       ; 2 uses
  %i.d = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.c) ; 2 uses
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.d, i8 noundef zeroext 4, i32 %i.g)
  br label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit

_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit: ; preds = %bb.b, %bb.c
  %i.h = and i32 %4, 15
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  br i1 %i.i, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit
  %i.j = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %4, i8 noundef zeroext 4, i32 %i.j)
  br label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153

_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153: ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit, %bb.d
  %i.k = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.c) ; 3 uses
  %i.l = and i32 %i.k, 15
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153
  %i.n = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 5, i32 %i.k)
  br label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit

_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit: ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153, %bb.e
  %.sroa.03.0.i = phi i32 [ %i.n, %bb.e ], [ %i.k, %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit153 ] ; 2 uses
  br i1 %i.i, label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit155, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit
  %i.o = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 5, i32 %4)
  br label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit155

_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit155: ; preds = %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit, %bb.f
  %.sroa.03.0.i154 = phi i32 [ %i.o, %bb.f ], [ %4, %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit ] ; 7 uses
  %i.p = icmp eq i32 %1, 2
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit155
  %i.q = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 0)
  %i.r = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 8)
  %i.s = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.t = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i154, i32 %i.q, i32 %i.r, i32 %i.s) ; 0 uses
  %i.u = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 63)
  %i.v = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.w = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.x = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i154, i32 %i.u, i32 %i.v, i32 %i.w) ; 0 uses
  %i.y = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -77, i32 %.sroa.03.0.i, i32 %.sroa.03.0.i154)
  %i.z = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 1)
  %i.aa = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -82, i32 %i.y, i32 %i.z)
  br label %bb.j

bb.h:                                             ; preds = %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit155
  %i.ab = and i32 %5, 15
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit158, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %5, i8 noundef zeroext 4, i32 %i.ad)
  %i.ae = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 5, i32 %5)
  br label %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit158

_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit158: ; preds = %bb.h, %bb.i
  %.sroa.03.0.i157 = phi i32 [ %i.ae, %bb.i ], [ %5, %bb.h ] ; 4 uses
  %i.af = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 24, i32 %.sroa.03.0.i154, i32 %.sroa.03.0.i157)
  %i.ag = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 0)
  %i.ah = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 8)
  %i.ai = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.aj = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i154, i32 %i.ag, i32 %i.ah, i32 %i.ai) ; 0 uses
  %i.ak = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 63)
  %i.al = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.am = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.an = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i154, i32 %i.ak, i32 %i.al, i32 %i.am) ; 0 uses
  %i.ao = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 1)
  %i.ap = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 8)
  %i.aq = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.ar = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i157, i32 %i.ao, i32 %i.ap, i32 %i.aq) ; 0 uses
  %i.as = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 64)
  %i.at = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.au = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.av = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %.sroa.03.0.i157, i32 %i.as, i32 %i.at, i32 %i.au) ; 0 uses
  %i.aw = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 64)
  %i.ax = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.ay = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %7)
  %i.az = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -111, i32 %i.af, i32 %i.aw, i32 %i.ax, i32 %i.ay) ; 0 uses
  %i.ba = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef 64)
  %i.bb = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 25, i32 %i.ba, i32 %.sroa.03.0.i157)
  %i.bc = tail call i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056) %0, i64 noundef -1)
  %i.bd = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -77, i32 %i.bc, i32 %i.bb)
  %i.be = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -77, i32 %.sroa.03.0.i, i32 %.sroa.03.0.i154)
  %i.bf = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -82, i32 %i.be, i32 %i.bd)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit158, %bb.g
  %storemerge = phi i32 [ %i.bf, %_ZN4Luau7CodeGenL16builtinLoadInt64ERNS0_9IrBuilderENS0_4IrOpE.exit158 ], [ %i.aa, %bb.g ]
  %i.bg = trunc i32 %2 to i8                      ; 2 uses
  %i.bh = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.bg)
  %i.bi = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 18, i32 %i.bh, i32 %storemerge) ; 0 uses
  %i.bj = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.bg)
  %i.bk = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 4)
  %i.bl = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 13, i32 %i.bj, i32 %i.bk) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.sroa.0152.0.insert.insert = phi i64 [ 4294967298, %bb.j ], [ -4294967296, %bb.a ]
  ret i64 %.sroa.0152.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32, i32, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder11constDoubleEd(ptr noundef nonnull align 8 dereferenceable(1056), double noundef) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder8constTagEh(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056), i32, i8 noundef zeroext, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

declare i32 @_ZN4Luau7CodeGen9IrBuilder9constUintEj(ptr noundef nonnull align 8 dereferenceable(1056), i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare i32 @_ZN4Luau7CodeGen9IrBuilder5blockENS0_11IrBlockKindE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32, i32, i32, i32, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder4condENS0_11IrConditionE(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen9IrBuilder10beginBlockENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056), i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32, i32, i32, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056), i32 noundef) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder5undefEv(ptr noundef nonnull align 8 dereferenceable(1056)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CodeGenL33translateBufferArgsAndCheckBoundsERNS0_9IrBuilderEiiNS0_4IrOpES3_iiRS3_S4_b(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %2, i32 %3, i32 %4, i32 noundef range(i32 1, 9) %5, i32 noundef %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %2 to i8                       ; 2 uses
  %i.b = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.a)
  %i.c = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %6)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %i.b, i8 noundef zeroext 11, i32 %i.c)
  %i.d = and i32 %3, 15
  %i.e = icmp eq i32 %i.d, 2                      ; 2 uses
  br i1 %i.e, label %_ZN4Luau7CodeGenL18builtinCheckDoubleERNS0_9IrBuilderENS0_4IrOpEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %6)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %3, i8 noundef zeroext 3, i32 %i.f)
  br label %_ZN4Luau7CodeGenL18builtinCheckDoubleERNS0_9IrBuilderENS0_4IrOpEi.exit

_ZN4Luau7CodeGenL18builtinCheckDoubleERNS0_9IrBuilderENS0_4IrOpEi.exit: ; preds = %bb.a, %bb.b
  %i.g = icmp eq i32 %1, 3                        ; 2 uses
  %or.cond = and i1 %i.g, %9
  %10 = and i32 %4, 15                            ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Luau7CodeGenL18builtinCheckDoubleERNS0_9IrBuilderENS0_4IrOpEi.exit
  %i.h = icmp eq i32 %10, 2
  br i1 %i.h, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit.sink.split

bb.d:                                             ; preds = %_ZN4Luau7CodeGenL18builtinCheckDoubleERNS0_9IrBuilderENS0_4IrOpEi.exit
  %i.i = icmp ne i32 %10, 2
  %or.cond53.not = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond53.not, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit.sink.split, label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit

_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink = phi i8 [ 4, %bb.c ], [ 3, %bb.d ]
  %i.j = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %6)
  tail call void @_ZN4Luau7CodeGen9IrBuilder15loadAndCheckTagENS0_4IrOpEhS2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 %4, i8 noundef zeroext %.sink, i32 %i.j)
  br label %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit

_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit: ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit.sink.split, %bb.c, %bb.d
  %i.k = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5vmRegEh(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext %i.a)
  %i.l = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 2, i32 %i.k)
  store i32 %i.l, ptr %7, align 4, !tbaa !31
  br i1 %i.e, label %_ZN4Luau7CodeGenL17builtinLoadDoubleERNS0_9IrBuilderENS0_4IrOpE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit
  %i.m = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 3, i32 %3)
  br label %_ZN4Luau7CodeGenL17builtinLoadDoubleERNS0_9IrBuilderENS0_4IrOpE.exit

_ZN4Luau7CodeGenL17builtinLoadDoubleERNS0_9IrBuilderENS0_4IrOpE.exit: ; preds = %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit, %bb.e
  %.sroa.03.0.i = phi i32 [ %i.m, %bb.e ], [ %3, %_ZN4Luau7CodeGenL17builtinCheckInt64ERNS0_9IrBuilderENS0_4IrOpEi.exit ]
  %i.n = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext 111, i32 %.sroa.03.0.i) ; 2 uses
  store i32 %i.n, ptr %8, align 4, !tbaa !31
  %.sroa.07.0.copyload = load i32, ptr %7, align 4, !tbaa !31
  %i.o = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef 0)
  %i.p = tail call i32 @_ZN4Luau7CodeGen9IrBuilder8constIntEi(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %5)
  %i.q = tail call i32 @_ZN4Luau7CodeGen9IrBuilder5undefEv(ptr noundef nonnull align 8 dereferenceable(1056) %0)
  %i.r = tail call i32 @_ZN4Luau7CodeGen9IrBuilder6vmExitEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, i32 noundef %6)
  %i.s = tail call i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056) %0, i8 noundef zeroext -115, i32 %.sroa.07.0.copyload, i32 %i.n, i32 %i.o, i32 %i.p, i32 %i.q, i32 %i.r) ; 0 uses
  ret void
}

declare i32 @_ZN4Luau7CodeGen9IrBuilder4instENS0_5IrCmdENS0_4IrOpES3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1056), i8 noundef zeroext, i32, i32, i32, i32, i32, i32) local_unnamed_addr #2

declare i32 @_ZN4Luau7CodeGen9IrBuilder10constInt64El(ptr noundef nonnull align 8 dereferenceable(1056), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_IrTranslateBuiltins.cpp() #4 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, align 8, !tbaa !9
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, i64 1), align 1, !tbaa !146
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, i64 8), align 8, !tbaa !147
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !148
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, i64 16), align 8, !tbaa !149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, i64 24), align 8, !tbaa !150
  store ptr @_ZN5FFlag24LuauCodegenBufferIntegerE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !148
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4Luau6FValueIbEE", !11, i64 0, !11, i64 1, !12, i64 8, !14, i64 16, !6, i64 24}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTSN4Luau6FValueIbEE", !13, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN4Luau7CodeGen7IrConstE", !19, i64 0, !7, i64 8}
!19 = !{!"_ZTSN4Luau7CodeGen11IrConstKindE", !7, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSN4Luau7CodeGen7IrConstE", !13, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !7, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = !{!6, !6, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !98, i64 544}
!33 = !{!"_ZTSN4Luau7CodeGen9IrBuilderE", !34, i64 0, !11, i64 8, !11, i64 9, !11, i64 10, !35, i64 12, !6, i64 16, !37, i64 24, !6, i64 952, !66, i64 960, !119, i64 984, !124, i64 1008}
!34 = !{!"p1 _ZTSN4Luau7CodeGen11HostIrHooksE", !13, i64 0}
!35 = !{!"_ZTSN4Luau7CodeGen4IrOpE", !36, i64 0, !6, i64 0}
!36 = !{!"_ZTSN4Luau7CodeGen8IrOpKindE", !7, i64 0}
!37 = !{!"_ZTSN4Luau7CodeGen10IrFunctionE", !38, i64 0, !43, i64 24, !48, i64 48, !51, i64 72, !56, i64 96, !61, i64 120, !6, i64 144, !6, i64 148, !6, i64 152, !66, i64 160, !71, i64 184, !66, i64 208, !76, i64 232, !82, i64 264, !85, i64 296, !88, i64 328, !88, i64 424, !98, i64 520, !11, i64 528, !99, i64 536, !113, i64 880, !11, i64 888, !79, i64 896, !114, i64 904}
!38 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !13, i64 0}
!43 = !{!"_ZTSSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !13, i64 0}
!48 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE12_Vector_implE", !21, i64 0}
!51 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeBlockE", !13, i64 0}
!56 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE12_Vector_implE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeTypesE", !13, i64 0}
!61 = !{!"_ZTSSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSN4Luau7CodeGen15BytecodeMappingE", !13, i64 0}
!66 = !{!"_ZTSSt6vectorIjSaIjEE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 int", !13, i64 0}
!71 = !{!"_ZTSSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSN4Luau7CodeGen20ValueRestoreLocationE", !13, i64 0}
!76 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen17StoreLocationHintESt4hashIjESt8equal_toIjEEE", !77, i64 0}
!77 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen17StoreLocationHintEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !78, i64 0, !79, i64 8, !79, i64 16, !6, i64 24, !80, i64 28, !81, i64 29}
!78 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen17StoreLocationHintEE", !13, i64 0}
!79 = !{!"long", !7, i64 0}
!80 = !{!"_ZTSSt4hashIjE"}
!81 = !{!"_ZTSSt8equal_toIjE"}
!82 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEEE", !83, i64 0}
!83 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !84, i64 0, !79, i64 8, !79, i64 16, !6, i64 24, !80, i64 28, !81, i64 29}
!84 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen14VmExitSyncInfoEE", !13, i64 0}
!85 = !{!"_ZTSN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEE", !86, i64 0}
!86 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEE", !87, i64 0, !79, i64 8, !79, i64 16, !6, i64 24, !80, i64 28, !81, i64 29}
!87 = !{!"p1 _ZTSSt4pairIjjE", !13, i64 0}
!88 = !{!"_ZTSN4Luau7CodeGen16BytecodeTypeInfoE", !89, i64 0, !93, i64 24, !89, i64 48, !66, i64 72}
!89 = !{!"_ZTSSt6vectorIhSaIhEE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!93 = !{!"_ZTSSt6vectorIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !94, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE12_Vector_implE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!97 = !{!"p1 _ZTSN4Luau7CodeGen19BytecodeRegTypeInfoE", !13, i64 0}
!98 = !{!"p1 _ZTS5Proto", !13, i64 0}
!99 = !{!"_ZTSN4Luau7CodeGen7CfgInfoE", !66, i64 0, !66, i64 24, !66, i64 48, !66, i64 72, !66, i64 96, !66, i64 120, !66, i64 144, !100, i64 168, !105, i64 192, !105, i64 216, !105, i64 240, !110, i64 264, !110, i64 304}
!100 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p1 _ZTSN4Luau7CodeGen13BlockOrderingE", !13, i64 0}
!105 = !{!"_ZTSSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE", !106, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE12_Vector_implE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTSN4Luau7CodeGen11RegisterSetE", !13, i64 0}
!110 = !{!"_ZTSN4Luau7CodeGen11RegisterSetE", !111, i64 0, !11, i64 32, !7, i64 33}
!111 = !{!"_ZTSSt6bitsetILm256EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Base_bitsetILm4EE", !7, i64 0}
!113 = !{!"p1 _ZTSN4Luau7CodeGen13LoweringStatsE", !13, i64 0}
!114 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !13, i64 0}
!119 = !{!"_ZTSSt6vectorIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EE", !120, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EE12_Vector_implE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!123 = !{!"p1 _ZTSN4Luau7CodeGen9IrBuilder8LoopInfoE", !13, i64 0}
!124 = !{!"_ZTSN4Luau12DenseHashMapINS_7CodeGen9IrBuilder11ConstantKeyEjNS2_15ConstantKeyHashESt8equal_toIS3_EEE", !125, i64 0}
!125 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EEE", !126, i64 0, !79, i64 8, !79, i64 16, !127, i64 24, !128, i64 40, !129, i64 41}
!126 = !{!"p1 _ZTSSt4pairIN4Luau7CodeGen9IrBuilder11ConstantKeyEjE", !13, i64 0}
!127 = !{!"_ZTSN4Luau7CodeGen9IrBuilder11ConstantKeyE", !19, i64 0, !79, i64 8}
!128 = !{!"_ZTSN4Luau7CodeGen9IrBuilder15ConstantKeyHashE"}
!129 = !{!"_ZTSSt8equal_toIN4Luau7CodeGen9IrBuilder11ConstantKeyEE"}
!130 = !{!131, !132, i64 8}
!131 = !{!"_ZTS5Proto", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !132, i64 8, !70, i64 16, !133, i64 24, !70, i64 32, !13, i64 40, !79, i64 48, !12, i64 56, !70, i64 64, !135, i64 72, !136, i64 80, !137, i64 88, !137, i64 96, !12, i64 104, !12, i64 112, !13, i64 120, !138, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !139, i64 176, !6, i64 184, !6, i64 188, !98, i64 192, !98, i64 200, !79, i64 208}
!132 = !{!"p1 _ZTS10lua_TValue", !13, i64 0}
!133 = !{!"p2 _ZTS5Proto", !134, i64 0}
!134 = !{!"any p2 pointer", !13, i64 0}
!135 = !{!"p1 _ZTS6LocVar", !13, i64 0}
!136 = !{!"p2 _ZTS7TString", !134, i64 0}
!137 = !{!"p1 _ZTS7TString", !13, i64 0}
!138 = !{!"p1 _ZTS8GCObject", !13, i64 0}
!139 = !{!"p1 _ZTS18FeedbackVectorSlot", !13, i64 0}
!140 = !{!141, !6, i64 12}
!141 = !{!"_ZTS10lua_TValue", !7, i64 0, !7, i64 8, !6, i64 12}
end_hunk_0
