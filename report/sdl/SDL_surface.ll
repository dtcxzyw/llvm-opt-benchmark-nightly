Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_surface?download=true
inline.NumInlined: 117
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_LoadSurface_REAL:bb.a
  %i.b = tail call zeroext i1 @SDL_IsBMP(ptr noundef nonnull %i.a) #10
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @SDL_LoadBMP_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true) #10
  br label %SDL_LoadSurface_IO_REAL.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_IsPNG(ptr noundef nonnull %i.a) #10
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @SDL_LoadPNG_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true) #10
  br label %SDL_LoadSurface_IO_REAL.exit

bb.f:                                             ; preds = %bb.d
  %i.f = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.30) #10 ; 0 uses
  br label %SDL_LoadSurface_IO_REAL.exit

SDL_LoadSurface_IO_REAL.exit:                     ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

declare ptr @SDL_GetPixelFormatDetails_REAL(i32 noundef) local_unnamed_addr #4

declare zeroext i1 @SDL_CopyProperties_REAL(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @SDL_DitherPalette(ptr noundef) local_unnamed_addr #4

declare void @SDL_DetectPalette(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @SDL_ConvertColorkeyToAlpha(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1024
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %SDL_SetSurfaceBlendMode_REAL.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 6 uses
  %.not122 = icmp eq i32 %i.h, 0
  %.mask = and i32 %i.h, -268435456
  %.not123 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not122, %.not123
  br i1 %or.cond, label %bb.d, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i32 %i.h, 24
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %.off = add nsw i32 %i.j, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i32 %i.h, 20
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
  ]

bb.f:                                             ; preds = %bb.d
  %.off136 = add nsw i32 %i.j, -7
  %switch137 = icmp ult i32 %.off136, 5
  br i1 %switch137, label %bb.g, label %SDL_SetSurfaceBlendMode_REAL.exit

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %i.h, 20
  %i.n = and i32 %i.m, 15
  switch i32 %i.n, label %SDL_SetSurfaceBlendMode_REAL.exit [
    i32 3, label %bb.h
    i32 2, label %bb.h
    i32 6, label %bb.h
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.e, %bb.e, %bb.e, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %SDL_LockSurface_REAL.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 4
  %.not8.i = icmp eq i32 %i.s, 0
  br i1 %.not8.i, label %SDL_LockSurface_REAL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_UnRLESurface(ptr noundef nonnull %0) #10
  %.pre.i = load i32, ptr %i.o, align 8
  br label %SDL_LockSurface_REAL.exit

SDL_LockSurface_REAL.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  %i.t = phi i32 [ 0, %bb.i ], [ %.pre.i, %bb.j ], [ %i.p, %bb.h ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %0, align 8
  %i.w = or i32 %i.v, 6
  store i32 %i.w, ptr %0, align 8
  %trunc = trunc i32 %i.h to i8
  switch i8 %trunc, label %.loopexit [
    i8 2, label %bb.k
    i8 4, label %bb.n
  ]

bb.k:                                             ; preds = %SDL_LockSurface_REAL.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.aa, 65535
  %i.ae = xor i32 %i.ad, 65535                    ; 4 uses
  %i.af = and i32 %i.ae, %i.ac                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not132161 = icmp eq i32 %i.ah, 0
  br i1 %.not132161, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %.lr.ph164.split.preheader

.lr.ph164.split.preheader:                        ; preds = %.lr.ph164
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = trunc nuw i32 %i.af to i16              ; 21 uses
  %broadcast.splatinsert32 = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat33 = shufflevector <8 x i32> %broadcast.splatinsert32, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert96 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat97 = shufflevector <4 x i32> %broadcast.splatinsert96, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph164.split

.lr.ph164.splitthread-pre-split:                  ; preds = %._crit_edge160
  %i.ap = load i32, ptr %i.aj, align 8
  %i.aq = sdiv i32 %i.ap, 2
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %.0102162, i64 %i.ar
  %.pr = load i32, ptr %i.ai, align 8
  br label %.lr.ph164.split

.lr.ph164.split:                                  ; preds = %.lr.ph164.splitthread-pre-split, %.lr.ph164.split.preheader
  %i.at = phi i32 [ %.pr, %.lr.ph164.splitthread-pre-split ], [ %i.ak, %.lr.ph164.split.preheader ] ; 7 uses
  %.in178 = phi i32 [ %i.au, %.lr.ph164.splitthread-pre-split ], [ %i.ah, %.lr.ph164.split.preheader ]
  %.0102162 = phi ptr [ %i.as, %.lr.ph164.splitthread-pre-split ], [ %i.an, %.lr.ph164.split.preheader ] ; 24 uses
  %i.au = add nsw i32 %.in178, -1                 ; 2 uses
  %.not133156 = icmp eq i32 %i.at, 0
  br i1 %.not133156, label %._crit_edge160, label %iter.check

iter.check:                                       ; preds = %.lr.ph164.split
  %i.av = zext i32 %i.at to i64                   ; 5 uses
  %min.iters.check28 = icmp ult i32 %i.at, 4
  br i1 %min.iters.check28, label %.lr.ph159.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i32 %i.at, 16
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.av, 12
  %n.vec31 = and i64 %i.av, 4294967280            ; 5 uses
  %i.ax = trunc nuw i64 %n.vec31 to i32
  %i.ay = sub i32 %i.at, %i.ax
  %i.az = shl nuw nsw i64 %n.vec31, 1
  %i.ba = getelementptr i8, ptr %.0102162, i64 %i.az
  br label %vector.body36

vector.body36:                                    ; preds = %vector.ph30, %pred.store.continue87
  %index37 = phi i64 [ 0, %vector.ph30 ], [ %index.next88, %pred.store.continue87 ] ; 2 uses
  %i.bb = shl i64 %index37, 1                     ; 16 uses
  %next.gep38 = getelementptr i8, ptr %.0102162, i64 %i.bb ; 3 uses
  %i.bc = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep39 = getelementptr i8, ptr %i.bc, i64 2
  %i.bd = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep40 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep41 = getelementptr i8, ptr %i.be, i64 6
  %i.bf = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep42 = getelementptr i8, ptr %i.bf, i64 8
  %i.bg = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep43 = getelementptr i8, ptr %i.bg, i64 10
  %i.bh = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep44 = getelementptr i8, ptr %i.bh, i64 12
  %i.bi = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep45 = getelementptr i8, ptr %i.bi, i64 14
  %i.bj = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep46 = getelementptr i8, ptr %i.bj, i64 16
  %i.bk = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep47 = getelementptr i8, ptr %i.bk, i64 18
  %i.bl = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep48 = getelementptr i8, ptr %i.bl, i64 20
  %i.bm = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep49 = getelementptr i8, ptr %i.bm, i64 22
  %i.bn = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep50 = getelementptr i8, ptr %i.bn, i64 24
  %i.bo = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep51 = getelementptr i8, ptr %i.bo, i64 26
  %i.bp = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep52 = getelementptr i8, ptr %i.bp, i64 28
  %i.bq = getelementptr i8, ptr %.0102162, i64 %i.bb
  %next.gep53 = getelementptr i8, ptr %i.bq, i64 30
  %i.br = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load54 = load <8 x i16>, ptr %next.gep38, align 2
  %wide.load55 = load <8 x i16>, ptr %i.br, align 2
  %i.bs = zext <8 x i16> %wide.load54 to <8 x i32>
  %i.bt = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.bu = and <8 x i32> %broadcast.splat33, %i.bs
  %i.bv = and <8 x i32> %broadcast.splat33, %i.bt
  %i.bw = icmp eq <8 x i32> %i.bu, %broadcast.splat35 ; 8 uses
  %i.bx = icmp eq <8 x i32> %i.bv, %broadcast.splat35 ; 8 uses
  %i.by = extractelement <8 x i1> %i.bw, i64 0
  br i1 %i.by, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %vector.body36
  store i16 %i.ao, ptr %next.gep38, align 2
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %vector.body36
  %i.bz = extractelement <8 x i1> %i.bw, i64 1
  br i1 %i.bz, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i16 %i.ao, ptr %next.gep39, align 2
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.ca = extractelement <8 x i1> %i.bw, i64 2
  br i1 %i.ca, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i16 %i.ao, ptr %next.gep40, align 2
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.cb = extractelement <8 x i1> %i.bw, i64 3
  br i1 %i.cb, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i16 %i.ao, ptr %next.gep41, align 2
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.cc = extractelement <8 x i1> %i.bw, i64 4
  br i1 %i.cc, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i16 %i.ao, ptr %next.gep42, align 2
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.cd = extractelement <8 x i1> %i.bw, i64 5
  br i1 %i.cd, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i16 %i.ao, ptr %next.gep43, align 2
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ce = extractelement <8 x i1> %i.bw, i64 6
  br i1 %i.ce, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i16 %i.ao, ptr %next.gep44, align 2
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.cf = extractelement <8 x i1> %i.bw, i64 7
  br i1 %i.cf, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i16 %i.ao, ptr %next.gep45, align 2
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.cg = extractelement <8 x i1> %i.bx, i64 0
  br i1 %i.cg, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i16 %i.ao, ptr %next.gep46, align 2
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.ch = extractelement <8 x i1> %i.bx, i64 1
  br i1 %i.ch, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i16 %i.ao, ptr %next.gep47, align 2
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ci = extractelement <8 x i1> %i.bx, i64 2
  br i1 %i.ci, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i16 %i.ao, ptr %next.gep48, align 2
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.cj = extractelement <8 x i1> %i.bx, i64 3
  br i1 %i.cj, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store i16 %i.ao, ptr %next.gep49, align 2
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.ck = extractelement <8 x i1> %i.bx, i64 4
  br i1 %i.ck, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  store i16 %i.ao, ptr %next.gep50, align 2
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.cl = extractelement <8 x i1> %i.bx, i64 5
  br i1 %i.cl, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i16 %i.ao, ptr %next.gep51, align 2
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.cm = extractelement <8 x i1> %i.bx, i64 6
  br i1 %i.cm, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i16 %i.ao, ptr %next.gep52, align 2
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.cn = extractelement <8 x i1> %i.bx, i64 7
  br i1 %i.cn, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i16 %i.ao, ptr %next.gep53, align 2
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %index.next88 = add nuw i64 %index37, 16        ; 2 uses
  %i.co = icmp eq i64 %index.next88, %n.vec31
  br i1 %i.co, label %middle.block89, label %vector.body36, !llvm.loop !51

middle.block89:                                   ; preds = %pred.store.continue87
  %cmp.n90 = icmp eq i64 %n.vec31, %i.av
  br i1 %cmp.n90, label %._crit_edge160, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block89
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph159.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.av, 4294967292            ; 4 uses
  %i.cp = trunc nuw i64 %n.vec93 to i32
  %i.cq = sub i32 %i.at, %i.cp
  %i.cr = shl nuw nsw i64 %n.vec93, 1
  %i.cs = getelementptr i8, ptr %.0102162, i64 %i.cr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue111, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %pred.store.continue111 ] ; 2 uses
  %i.ct = shl i64 %index98, 1                     ; 4 uses
  %next.gep99 = getelementptr i8, ptr %.0102162, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %.0102162, i64 %i.ct
  %next.gep100 = getelementptr i8, ptr %i.cu, i64 2
  %i.cv = getelementptr i8, ptr %.0102162, i64 %i.ct
  %next.gep101 = getelementptr i8, ptr %i.cv, i64 4
  %i.cw = getelementptr i8, ptr %.0102162, i64 %i.ct
end_hunk_0
