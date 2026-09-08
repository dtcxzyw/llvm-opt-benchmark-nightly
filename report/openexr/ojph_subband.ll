Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_subband?download=true
inline.NumInlined: 107
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ojph::size" = type { i32, i32 }

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local7subband9pre_allocEPNS0_10codestreamERKNS_4rectEjjj(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.ojph::size", align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = tail call noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96) %i.i, i32 noundef %2) ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.o = load i8, ptr %i.n, align 1, !tbaa !48
  %i.p = zext i8 %i.o to i64
  %.sroa.2.0.insert.ext.i.i = shl nuw nsw i64 %i.p, 32
  %.sroa.0.0.insert.ext.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %i.m
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 8589934594 ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.529.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.529.0.extract.trunc = trunc nuw nsw i64 %.sroa.529.0.extract.shift to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !49
  %i.s = and i8 %i.r, 1
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.u = zext i32 %3 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !50
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 15
  %i.z = lshr i32 %i.x, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = or disjoint i64 %i.ab, %i.ac
  br label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit

_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.ad, %bb.d ], [ 64424509455, %bb.c ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw nsw i64 %.sroa.5.0.extract.shift to i32
  %i.ae = and i32 %4, 1
  %6 = lshr i32 %4, 1
  %.lobit = and i32 %6, 1
  %i.af = sub i32 %.sroa.0.0.extract.trunc, %i.ae
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %.sroa.027.0.extract.trunc) ; 3 uses
  %7 = sub nsw i32 %.sroa.5.0.extract.trunc, %.lobit
  %i.ah = tail call i32 @llvm.umin.i32(i32 %7, i32 %.sroa.529.0.extract.trunc) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ai = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.aj = shl nuw i32 1, %i.ah                    ; 2 uses
  store i32 %i.ai, ptr %5, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !52
  %i.al = load i32, ptr %1, align 4, !tbaa !53    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54 ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !46
  %i.aq = add i32 %i.al, -1
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %i.ao
  %i.at = lshr i32 %i.as, %i.ag                   ; 2 uses
  %i.au = lshr i32 %i.al, %i.ag                   ; 2 uses
  %i.av = sub i32 %i.at, %i.au                    ; 2 uses
  %i.aw = add i32 %i.an, -1
  %i.ax = add i32 %i.aw, %i.aj
  %i.ay = add i32 %i.ax, %i.ap
  %i.az = lshr i32 %i.ay, %i.ah
  %i.ba = lshr i32 %i.an, %i.ah
  %i.bb = sub i32 %i.az, %i.ba
  %i.bc = zext i32 %i.av to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.be = mul nuw nsw i64 %i.bc, 200
  %i.bf = lshr i64 %i.be, 7
  %i.bg = mul nuw nsw i64 %i.bf, 200
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !56
  %i.bi = zext i32 %i.bb to i64
  %i.bj = shl nuw nsw i64 %i.bc, 5
  %i.bk = mul i64 %i.bj, %i.bi
  %i.bl = add i64 %i.bh, 30
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = add i64 %i.bm, %i.bg
  store i64 %i.bn, ptr %i.bd, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bp = tail call noundef ptr @_ZNK4ojph5local9param_qcd7get_qccEj(ptr noundef nonnull align 8 dereferenceable(248) %i.bo, i32 noundef %2)
  %i.bq = tail call noundef i32 @_ZNK4ojph5local9param_qcd17propose_precisionEPKNS0_9param_codE(ptr noundef nonnull align 8 dereferenceable(248) %i.bp, ptr noundef nonnull %i.j) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !58
  %i.bv = and i16 %i.bu, 4096
  %.not = icmp eq i16 %i.bv, 0
  %.not63 = icmp eq i32 %i.at, %i.au
  br i1 %.not63, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !56
  %i.bx = add i64 %i.bw, 39
  store i64 %i.bx, ptr %i.bd, align 8, !tbaa !56
  %i.by = load i32, ptr %i.c, align 4, !tbaa !45
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  br i1 %.not, label %bb.h, label %bb.e

.lr.ph:                                           ; preds = %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit, %.lr.ph
  %.062 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit ]
  call void @_ZN4ojph5local9codeblock9pre_allocEPNS0_10codestreamERKNS_4sizeEj(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.bq)
  %i.ca = add nuw i32 %.062, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.av
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

bb.e:                                             ; preds = %._crit_edge
  %i.cb = icmp ult i32 %i.bq, 33
  %i.cc = zext i32 %i.bz to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56 ; 2 uses
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cf = shl nuw nsw i64 %i.cc, 2
  %i.cg = add nuw nsw i64 %i.cf, 60
  %i.ch = and i64 %i.cg, 34359738304
  %i.ci = add nuw nsw i64 %i.ch, 131
  %i.cj = add i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !56
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ck = shl nuw nsw i64 %i.cc, 3
  %i.cl = add nuw nsw i64 %i.ck, 56
  %i.cm = and i64 %i.cl, 68719476672
  %i.cn = add nuw nsw i64 %i.cm, 135
  %i.co = add i64 %i.cn, %i.ce
  store i64 %i.co, ptr %i.cd, align 8, !tbaa !56
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.cp = zext i32 %i.bz to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cp, 2
  %i.cs = add nuw nsw i64 %i.cr, 60
  %i.ct = and i64 %i.cs, 34359738304
  %i.cu = add nuw nsw i64 %i.ct, 131
  %i.cv = load i64, ptr %i.cq, align 8, !tbaa !56
  %i.cw = add i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4ojph5local9param_qcd7get_qccEj(ptr noundef nonnull align 8 dereferenceable(248), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4ojph5local9param_qcd17propose_precisionEPKNS0_9param_codE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #2

declare void @_ZN4ojph5local9codeblock9pre_allocEPNS0_10codestreamERKNS_4sizeEj(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local7subband14finalize_allocEPNS0_10codestreamERKNS_4rectEPNS0_10resolutionEjj(ptr noundef nonnull align 8 dereferenceable(120) initializes((4, 13), (16, 32), (40, 48), (64, 92), (112, 120)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.ojph::size", align 4       ; 6 uses
  %7 = alloca %"struct.ojph::size", align 4       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.d, ptr %i.e, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %4, ptr %i.f, align 4, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %5, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !97
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %3, ptr %i.i, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.m = tail call noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96) %i.l, i32 noundef %i.k) ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.s = lshr i16 %i.q, 12
  %i.t = trunc nuw nsw i16 %i.s to i8
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.r, align 4, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.z = load i8, ptr %i.y, align 2, !tbaa !48
  %i.aa = zext i8 %i.z to i64
  %.sroa.2.0.insert.ext.i.i = shl nuw nsw i64 %i.aa, 32
  %.sroa.0.0.insert.ext.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %i.x
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 8589934594 ; 2 uses
  %.sroa.058.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw nsw i64 %.sroa.5.0.extract.shift to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !49
  %i.ad = and i8 %i.ac, 1
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %i.af = zext i32 %4 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 15
  %i.ak = lshr i32 %i.ai, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = or disjoint i64 %i.am, %i.an
  br label %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit

_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %i.ao, %bb.b ], [ 64424509455, %bb.a ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = and i32 %i.as, 1
  %i.au = shl i32 %i.as, 30
  %sext = ashr i32 %i.au, 31
  %i.av = trunc i64 %.sroa.0.0.insert.insert.i to i32
  %i.aw = sub i32 %i.av, %i.at
  %.sroa.058.0.extract.trunc. = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.sroa.058.0.extract.trunc) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %.sroa.058.0.extract.trunc., ptr %i.ax, align 8, !tbaa !73
  %i.ay = lshr i64 %.sroa.0.0.insert.insert.i, 32
end_hunk_0
