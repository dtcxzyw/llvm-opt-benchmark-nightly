Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hbcdump?download=true
inline.NumInlined: 1873
inline.NumDeleted: 1181
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL14executeCommandRN4llvh11raw_ostreamERN6hermes15ProfileAnalyzerERNS2_3hbc20BytecodeDisassemblerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.it = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.67)
  %i.iu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.it, i64 noundef %i.io) #24
  %i.iv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.iu, ptr noundef nonnull @.str.68) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.av
  %i.iw = phi i1 [ false, %bb.av ], [ true, %bb.ay ], [ true, %bb.ax ]
  %i.ix = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.if
  br i1 %i.iy, label %_ZN6hermes11JSONEmitterD2Ev.exit228, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.ix) #24
  br label %_ZN6hermes11JSONEmitterD2Ev.exit228

_ZN6hermes11JSONEmitterD2Ev.exit228:              ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.iw, label %bb.bn, label %_ZN4llvh11raw_ostreamlsEPKc.exit240

.critedge123:                                     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit139.thread218
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 1, ptr %i.iz, align 8, !tbaa !401
  store ptr %.sroa.064.0.copyload, ptr %13, align 8, !tbaa !53
  %.sroa.35.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.35.0.copyload, ptr %.sroa.35.0..sroa_idx86, align 8, !tbaa !54
  call fastcc void @_ZL9printHelpN4llvh8OptionalINS_9StringRefEEE(ptr noundef nonnull byval(%"class.llvh::Optional.342") align 8 %13)
  %i.ja = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.if
  br i1 %i.jb, label %_ZN6hermes11JSONEmitterD2Ev.exit229, label %bb.bb

bb.bb:                                            ; preds = %.critedge123
  call void @free(ptr noundef %i.ja) #24
  br label %_ZN6hermes11JSONEmitterD2Ev.exit229

_ZN6hermes11JSONEmitterD2Ev.exit229:              ; preds = %.critedge123, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

_ZNK4llvh9StringRef6equalsES0_.exit141:           ; preds = %bb.b
  %i.jc = load i64, ptr %.sroa.064.0.copyload, align 1
  %i.jd = xor i64 %i.jc, 7310299210293671009
  %i.je = getelementptr i8, ptr %.sroa.064.0.copyload, i64 8
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = zext i8 %i.jf to i64
  %i.jh = xor i64 %i.jg, 116
  %i.ji = or i64 %i.jd, %i.jh
  %i.jj = icmp ne i64 %i.ji, 0
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_ZNK4llvh9StringRef6equalsES0_.exit141.thread226, label %_ZNK4llvh9StringRef6equalsES0_.exit142

_ZNK4llvh9StringRef6equalsES0_.exit142:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141
  %i.jm = load i64, ptr %.sroa.064.0.copyload, align 1
  %i.jn = xor i64 %i.jm, 7310299210290394209
  %i.jo = getelementptr i8, ptr %.sroa.064.0.copyload, i64 8
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = zext i8 %i.jp to i64
  %i.jr = xor i64 %i.jq, 116
  %i.js = or i64 %i.jn, %i.jr
  %i.jt = icmp ne i64 %i.js, 0
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_ZNK4llvh9StringRef6equalsES0_.exit141.thread226, label %_ZNK4llvh9StringRef6equalsES0_.exit147.thread

_ZNK4llvh9StringRef6equalsES0_.exit141.thread226: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit142, %_ZNK4llvh9StringRef6equalsES0_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.jw, ptr %14, align 8, !tbaa !50
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.jx, align 8, !tbaa !51
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 8, ptr %i.jy, align 4, !tbaa !52
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %0, ptr %i.jz, align 8, !tbaa !159
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i8 1, ptr %i.ka, align 8, !tbaa !408
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %i.kb, align 4, !tbaa !409
  %i.kc = icmp eq i32 %i.l, 2
  br i1 %i.kc, label %bb.bc, label %.critedge125

bb.bc:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141.thread226
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.sroa.0.0.copyload.i230 = load ptr, ptr %i.kd, align 8, !tbaa !53
  %.sroa.2.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.2.0.copyload.i232 = load i64, ptr %.sroa.2.0..sroa_idx.i231, align 8, !tbaa !54
  %i.ke = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i230, i64 %.sroa.2.0.copyload.i232, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br i1 %i.ke, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kf = load i64, ptr %i.a, align 8, !tbaa !400 ; 3 uses
  %.not.i233 = icmp ult i64 %i.kf, 4294967296
  br i1 %.not.i233, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.kg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.71) ; 0 uses
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %i.kh = trunc nuw i64 %i.kf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ki = call i64 @_ZN6hermes15ProfileAnalyzer21getFunctionFromOffsetEj(ptr noundef nonnull align 8 dereferenceable(392) %1, i32 noundef %i.kh) #24 ; 2 uses
  %i.kj = and i64 %i.ki, 4294967296
  %.not265 = icmp eq i64 %i.kj, 0
  br i1 %.not265, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.09.0.extract.trunc = trunc i64 %i.ki to i32
  call void @_ZN6hermes15ProfileAnalyzer16dumpFunctionInfoEjRNS_11JSONEmitterE(ptr noundef nonnull align 8 dereferenceable(392) %1, i32 noundef %.sroa.09.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(72) %14) #24
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.kk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.72)
  %i.kl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.kk, i64 noundef %i.kf) #24
  %i.km = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.kl, ptr noundef nonnull @.str.68) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.be
  %i.kn = phi i1 [ false, %bb.be ], [ true, %bb.bh ], [ true, %bb.bg ]
  %i.ko = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.jw
  br i1 %i.kp, label %_ZN6hermes11JSONEmitterD2Ev.exit236, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef %i.ko) #24
  br label %_ZN6hermes11JSONEmitterD2Ev.exit236

_ZN6hermes11JSONEmitterD2Ev.exit236:              ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br i1 %i.kn, label %bb.bn, label %_ZN4llvh11raw_ostreamlsEPKc.exit240

.critedge125:                                     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit141.thread226
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 1, ptr %i.kq, align 8, !tbaa !401
  store ptr %.sroa.064.0.copyload, ptr %15, align 8, !tbaa !53
  %.sroa.35.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.35.0.copyload, ptr %.sroa.35.0..sroa_idx88, align 8, !tbaa !54
  call fastcc void @_ZL9printHelpN4llvh8OptionalINS_9StringRefEEE(ptr noundef nonnull byval(%"class.llvh::Optional.342") align 8 %15)
  %i.kr = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.jw
  br i1 %i.ks, label %_ZN6hermes11JSONEmitterD2Ev.exit237, label %bb.bk

bb.bk:                                            ; preds = %.critedge125
  call void @free(ptr noundef %i.kr) #24
  br label %_ZN6hermes11JSONEmitterD2Ev.exit237

_ZN6hermes11JSONEmitterD2Ev.exit237:              ; preds = %.critedge125, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

_ZNK4llvh9StringRef6equalsES0_.exit143:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit133
  %i.kt = load i64, ptr %.sroa.064.0.copyload, align 1
  %i.ku = icmp ne i64 %i.kt, 7310863298363748453
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %_ZNK4llvh9StringRef6equalsES0_.exit143.thread234, label %_ZNK4llvh9StringRef6equalsES0_.exit147.thread

_ZNK4llvh9StringRef6equalsES0_.exit144:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit137
  %i.kx = load i16, ptr %.sroa.064.0.copyload, align 1
  %i.ky = xor i16 %i.kx, 28773
  %i.kz = getelementptr i8, ptr %.sroa.064.0.copyload, i64 2
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = zext i8 %i.la to i16
  %i.lc = xor i16 %i.lb, 105
  %i.ld = or i16 %i.ky, %i.lc
  %i.le = icmp ne i16 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_ZNK4llvh9StringRef6equalsES0_.exit143.thread234, label %_ZNK4llvh9StringRef6equalsES0_.exit147.thread

_ZNK4llvh9StringRef6equalsES0_.exit143.thread234: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit144, %_ZNK4llvh9StringRef6equalsES0_.exit143
  call void @_ZN6hermes15ProfileAnalyzer12dumpEpilogueEv(ptr noundef nonnull align 8 dereferenceable(392) %1) #24
  br label %bb.bn

_ZNK4llvh9StringRef6equalsES0_.exit145:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit128
  %i.lh = load i32, ptr %.sroa.064.0.copyload, align 1
  %i.li = icmp ne i32 %i.lh, 1886152040
  %i.lj = zext i1 %i.li to i32
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %_ZNK4llvh9StringRef6equalsES0_.exit145.thread238, label %_ZNK4llvh9StringRef6equalsES0_.exit147

_ZNK4llvh9StringRef6equalsES0_.exit146:           ; preds = %bb.b
  %lhsc = load i8, ptr %.sroa.064.0.copyload, align 1
  %i.ll = icmp eq i8 %lhsc, 104
  br i1 %i.ll, label %_ZNK4llvh9StringRef6equalsES0_.exit145.thread238, label %_ZNK4llvh9StringRef6equalsES0_.exit147.thread

_ZNK4llvh9StringRef6equalsES0_.exit145.thread238: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit146, %_ZNK4llvh9StringRef6equalsES0_.exit145
  %i.lm = icmp eq i32 %i.l, 2
  br i1 %i.lm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit145.thread238
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 1, ptr %i.lo, align 8, !tbaa !401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.ln, i64 16, i1 false), !tbaa.struct !398
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240.sink.split

bb.bm:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit145.thread238
  %i.lp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 0, ptr %i.lp, align 8, !tbaa !401
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240.sink.split

_ZNK4llvh9StringRef6equalsES0_.exit147:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit145
  %i.lq = load i32, ptr %.sroa.064.0.copyload, align 1
  %i.lr = icmp ne i32 %i.lq, 1953068401
  %i.ls = zext i1 %i.lr to i32
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %_ZN4llvh11raw_ostreamlsEPKc.exit240, label %_ZNK4llvh9StringRef6equalsES0_.exit147.thread

_ZNK4llvh9StringRef6equalsES0_.exit147.thread:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit146, %_ZNK4llvh9StringRef6equalsES0_.exit144, %_ZNK4llvh9StringRef6equalsES0_.exit143, %_ZNK4llvh9StringRef6equalsES0_.exit142, %_ZNK4llvh9StringRef6equalsES0_.exit140, %_ZNK4llvh9StringRef6equalsES0_.exit138, %_ZNK4llvh9StringRef6equalsES0_.exit136, %_ZNK4llvh9StringRef6equalsES0_.exit135, %_ZNK4llvh9StringRef6equalsES0_.exit134, %_ZNK4llvh9StringRef6equalsES0_.exit131, %_ZNK4llvh9StringRef6equalsES0_.exit129, %bb.b, %_ZNK4llvh9StringRef6equalsES0_.exit147
  %i.lu = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 1, ptr %i.lu, align 8, !tbaa !401
  store ptr %.sroa.064.0.copyload, ptr %18, align 8, !tbaa !53
  %.sroa.35.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.sroa.35.0.copyload, ptr %.sroa.35.0..sroa_idx90, align 8, !tbaa !54
  call fastcc void @_ZL9printHelpN4llvh8OptionalINS_9StringRefEEE(ptr noundef nonnull byval(%"class.llvh::Optional.342") align 8 %18)
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

bb.bn:                                            ; preds = %bb.ak, %bb.ag, %_ZN4llvh11raw_ostreamlsEPKc.exit, %_ZN6hermes11JSONEmitterD2Ev.exit, %bb.ac, %bb.o, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread212, %_ZN6hermes11JSONEmitterD2Ev.exit228, %_ZN6hermes11JSONEmitterD2Ev.exit236, %_ZNK4llvh9StringRef6equalsES0_.exit143.thread234, %_ZNK4llvh9StringRef6equalsES0_.exit138.thread216, %_ZNK4llvh9StringRef6equalsES0_.exit135.thread210, %bb.g, %bb.h
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !69
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !70 ; 2 uses
  %i.lz = icmp eq ptr %i.lw, %i.ly
  br i1 %i.lz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ma = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.36, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

bb.bp:                                            ; preds = %bb.bn
  store i8 10, ptr %i.ly, align 1
  %i.mb = load ptr, ptr %i.lx, align 8, !tbaa !70
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store ptr %i.mc, ptr %i.lx, align 8, !tbaa !70
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

.critedge119:                                     ; preds = %bb.x, %bb.z, %bb.ab
  store i32 %i.dg, ptr %i.df, align 8, !tbaa !130
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

_ZN4llvh11raw_ostreamlsEPKc.exit240.sink.split:   ; preds = %bb.bm, %bb.bl
  %.sink = phi ptr [ %16, %bb.bl ], [ %17, %bb.bm ]
  call fastcc void @_ZL9printHelpN4llvh8OptionalINS_9StringRefEEE(ptr noundef nonnull byval(%"class.llvh::Optional.342") align 8 %.sink)
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit240

_ZN4llvh11raw_ostreamlsEPKc.exit240:              ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit240.sink.split, %bb.m, %bb.l, %bb.n, %bb.p, %bb.ad, %bb.ah, %_ZNK4llvh9StringRef6equalsES0_.exit147.thread, %_ZN6hermes11JSONEmitterD2Ev.exit236, %_ZN6hermes11JSONEmitterD2Ev.exit228, %.critedge119, %_ZN6hermes11JSONEmitterD2Ev.exit221, %_ZN6hermes11JSONEmitterD2Ev.exit229, %_ZN6hermes11JSONEmitterD2Ev.exit237, %_ZNK4llvh9StringRef6equalsES0_.exit147, %.thread, %.thread200, %bb.bo, %bb.bp, %bb.a
  %.14 = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.bp ], [ false, %bb.n ], [ false, %bb.p ], [ false, %.critedge119 ], [ false, %bb.ad ], [ false, %.thread ], [ false, %bb.ah ], [ false, %.thread200 ], [ false, %_ZN6hermes11JSONEmitterD2Ev.exit221 ], [ false, %_ZN6hermes11JSONEmitterD2Ev.exit228 ], [ false, %_ZN6hermes11JSONEmitterD2Ev.exit236 ], [ false, %_ZN6hermes11JSONEmitterD2Ev.exit237 ], [ false, %bb.bo ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit147.thread ], [ false, %_ZN6hermes11JSONEmitterD2Ev.exit229 ], [ false, %bb.l ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit147 ], [ false, %_ZN4llvh11raw_ostreamlsEPKc.exit240.sink.split ]
  %i.md = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.h
  br i1 %i.me, label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit240
  call void @free(ptr noundef %i.md) #24
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit240, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes15ProfileAnalyzerD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #23
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !411  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.e, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.f = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !200 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #23
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !410

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !195
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.t = load i64, ptr %i.n, align 8, !tbaa !195
  %i.u = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt10_HashtableIjSt4pairIKjN6hermes25FunctionRuntimeStatisticsEESaIS4_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i8, ptr %i.w, align 8, !tbaa !175, !range !99, !noundef !55
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %_ZN4llvh8OptionalIN6hermes11ProfileDataEED2Ev.exit

bb.c:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !197
  tail call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_deallocate_nodesEPSK_(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !199
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !198 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvh8OptionalIN6hermes11ProfileDataEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !199
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZN4llvh8OptionalIN6hermes11ProfileDataEED2Ev.exit

_ZN4llvh8OptionalIN6hermes11ProfileDataEED2Ev.exit: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6hermes9HBCParserD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.al) #24
  ret void
}

declare void @_ZN6hermes15ProfileAnalyzer16deserializeTraceESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"struct.hermes::ProfileData") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef) local_unnamed_addr #5

declare void @_ZN6hermes9HBCParser27generateFunctionChecksumMapB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::unordered_map") align 8, ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(65) ptr @_ZN4llvh15optional_detail15OptionalStorageIN6hermes11ProfileDataELb0EEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !175, !range !99, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i64, ptr %1, align 8
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %1, %0
  br i1 %i.g, label %_ZN6hermes11ProfileDataaSEOS0_.exit, label %bb.c, !prof !114

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  tail call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_deallocate_nodesEPSK_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %i.i)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !198  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !199
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.o) #23
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !413
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !414
  store ptr %i.u, ptr %i.k, align 8, !tbaa !414
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.v = phi ptr [ %i.k, %bb.e ], [ %i.r, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.v, ptr %i.e, align 8, !tbaa !198
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !199  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !197 ; 3 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !197
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !415
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !415
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !207
  %i.ag = urem i64 %i.af, %i.x
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ag
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !208
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.ai, align 8, !tbaa !416
  store i64 1, ptr %i.w, align 8, !tbaa !199
  store ptr null, ptr %i.s, align 8, !tbaa !414
  store ptr %i.s, ptr %i.f, align 8, !tbaa !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %_ZN6hermes11ProfileDataaSEOS0_.exit

bb.h:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !198 ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !198
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !199 ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !199
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_0
