Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11keyboard?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@X11_InitKeyboard:bb.a
  br i1 %i.hm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph143
  %i.hn = trunc i64 %indvars.iv150 to i8
  %i.ho = load ptr, ptr @X11_XkbKeycodeToKeysym, align 8
  %i.hp = load ptr, ptr %.val121, align 8
  %i.hq = call i64 %i.ho(ptr noundef %i.hp, i8 noundef zeroext %i.hn, i32 noundef 0, i32 noundef 0) #9, !inline_history !8
  br label %X11_KeyCodeToSym.exit.i

bb.bh:                                            ; preds = %.lr.ph143
  %i.hr = trunc nsw i64 %indvars.iv150 to i32
  %i.hs = and i32 %i.hr, 255                      ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val121, i64 1720
  %i.hu = getelementptr inbounds nuw i8, ptr %.val121, i64 1732
  %i.hv = load i32, ptr %i.hu, align 4            ; 2 uses
  %.not.i.i = icmp sgt i32 %i.hv, %i.hs
  br i1 %.not.i.i, label %X11_KeyCodeToSDLScancode.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %.val121, i64 1736
  %i.hx = load i32, ptr %i.hw, align 8
  %.not16.i.i = icmp slt i32 %i.hx, %i.hs
  br i1 %.not16.i.i, label %X11_KeyCodeToSDLScancode.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hy = load ptr, ptr %i.ht, align 8
  %i.hz = sub nsw i32 %i.hs, %i.hv
  %i.ia = getelementptr inbounds nuw i8, ptr %.val121, i64 1728
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = mul nsw i32 %i.ib, %i.hz
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8
  br label %X11_KeyCodeToSym.exit.i

X11_KeyCodeToSym.exit.i:                          ; preds = %bb.bj, %bb.bg
  %.0.i.i = phi i64 [ %i.hq, %bb.bg ], [ %i.if, %bb.bj ] ; 2 uses
  %i.ig = icmp eq i64 %.0.i.i, 0
  br i1 %i.ig, label %X11_KeyCodeToSDLScancode.exit, label %bb.bk

bb.bk:                                            ; preds = %X11_KeyCodeToSym.exit.i
  %i.ih = trunc i64 %.0.i.i to i32
  %i.ii = trunc nsw i64 %indvars.iv150 to i32
  %i.ij = and i32 %i.ii, 255
  %i.ik = call i32 @SDL_GetScancodeFromKeySym(i32 noundef %i.ih, i32 noundef %i.ij) #9
  br label %X11_KeyCodeToSDLScancode.exit

X11_KeyCodeToSDLScancode.exit:                    ; preds = %bb.bh, %bb.bi, %X11_KeyCodeToSym.exit.i, %bb.bk
  %.0.i = phi i32 [ %i.ik, %bb.bk ], [ 0, %X11_KeyCodeToSym.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bh ] ; 4 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %indvars.iv150 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %i.in = icmp eq i32 %.0.i, %i.im
  br i1 %i.in, label %X11_ScancodeIsRemappable.exit, label %bb.bl

bb.bl:                                            ; preds = %X11_KeyCodeToSDLScancode.exit
  %i.io = call i32 @SDL_GetKeymapKeycode(ptr noundef null, i32 noundef %.0.i, i16 noundef zeroext 0) #9
  %i.ip = and i32 %i.io, 1610612736
  %.not115 = icmp eq i32 %i.ip, 0
  br i1 %.not115, label %X11_ScancodeIsRemappable.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  switch i32 %.0.i, label %bb.bn [
    i32 41, label %X11_ScancodeIsRemappable.exit
    i32 57, label %X11_ScancodeIsRemappable.exit
    i32 83, label %X11_ScancodeIsRemappable.exit
    i32 225, label %X11_ScancodeIsRemappable.exit
    i32 229, label %X11_ScancodeIsRemappable.exit
    i32 224, label %X11_ScancodeIsRemappable.exit
    i32 228, label %X11_ScancodeIsRemappable.exit
    i32 226, label %X11_ScancodeIsRemappable.exit
    i32 230, label %X11_ScancodeIsRemappable.exit
    i32 227, label %X11_ScancodeIsRemappable.exit
    i32 231, label %X11_ScancodeIsRemappable.exit
  ]

bb.bn:                                            ; preds = %bb.bm
  store i32 %.0.i, ptr %i.il, align 4
  br label %X11_ScancodeIsRemappable.exit

X11_ScancodeIsRemappable.exit:                    ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bl, %bb.bn, %X11_KeyCodeToSDLScancode.exit
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1
  %i.iq = load i32, ptr %i.b, align 4
  %i.ir = sext i32 %i.iq to i64
  %.not114.not = icmp slt i64 %indvars.iv150, %i.ir
  br i1 %.not114.not, label %.lr.ph143, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %X11_ScancodeIsRemappable.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bc
  %i.is = load i32, ptr %i.a, align 4             ; 2 uses
  %i.it = load i32, ptr %i.b, align 4
  %.not113139 = icmp sgt i32 %i.is, %i.it
  br i1 %.not113139, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 692
  %i.iv = sext i32 %i.is to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %X11_KeyCodeToSDLScancode.exit128
  %indvars.iv147 = phi i64 [ %i.iv, %.lr.ph ], [ %indvars.iv.next148, %X11_KeyCodeToSDLScancode.exit128 ] ; 6 uses
  %.val = load ptr, ptr %i.h, align 8             ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val, i64 688
  %i.ix = load i8, ptr %i.iw, align 8, !range !5, !noundef !6
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iz = trunc i64 %indvars.iv147 to i8
  %i.ja = load ptr, ptr @X11_XkbKeycodeToKeysym, align 8
  %i.jb = load ptr, ptr %.val, align 8
  %i.jc = call i64 %i.ja(ptr noundef %i.jb, i8 noundef zeroext %i.iz, i32 noundef 0, i32 noundef 0) #9, !inline_history !8
  br label %X11_KeyCodeToSym.exit.i125

bb.br:                                            ; preds = %bb.bp
  %i.jd = trunc nsw i64 %indvars.iv147 to i32
  %i.je = and i32 %i.jd, 255                      ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val, i64 1720
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 1732
  %i.jh = load i32, ptr %i.jg, align 4            ; 2 uses
  %.not.i.i123 = icmp sgt i32 %i.jh, %i.je
  br i1 %.not.i.i123, label %X11_KeyCodeToSDLScancode.exit128, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ji = getelementptr inbounds nuw i8, ptr %.val, i64 1736
  %i.jj = load i32, ptr %i.ji, align 8
  %.not16.i.i124 = icmp slt i32 %i.jj, %i.je
  br i1 %.not16.i.i124, label %X11_KeyCodeToSDLScancode.exit128, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jk = load ptr, ptr %i.jf, align 8
  %i.jl = sub nsw i32 %i.je, %i.jh
  %i.jm = getelementptr inbounds nuw i8, ptr %.val, i64 1728
  %i.jn = load i32, ptr %i.jm, align 8
  %i.jo = mul nsw i32 %i.jn, %i.jl
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jp
  %i.jr = load i64, ptr %i.jq, align 8
  br label %X11_KeyCodeToSym.exit.i125

X11_KeyCodeToSym.exit.i125:                       ; preds = %bb.bt, %bb.bq
  %.0.i.i126 = phi i64 [ %i.jc, %bb.bq ], [ %i.jr, %bb.bt ] ; 2 uses
  %i.js = icmp eq i64 %.0.i.i126, 0
  br i1 %i.js, label %X11_KeyCodeToSDLScancode.exit128, label %bb.bu

bb.bu:                                            ; preds = %X11_KeyCodeToSym.exit.i125
  %i.jt = trunc i64 %.0.i.i126 to i32
  %i.ju = trunc nsw i64 %indvars.iv147 to i32
  %i.jv = and i32 %i.ju, 255
  %i.jw = call i32 @SDL_GetScancodeFromKeySym(i32 noundef %i.jt, i32 noundef %i.jv) #9
  br label %X11_KeyCodeToSDLScancode.exit128

X11_KeyCodeToSDLScancode.exit128:                 ; preds = %bb.br, %bb.bs, %X11_KeyCodeToSym.exit.i125, %bb.bu
  %.0.i127 = phi i32 [ %i.jw, %bb.bu ], [ 0, %X11_KeyCodeToSym.exit.i125 ], [ 0, %bb.bs ], [ 0, %bb.br ]
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv147
  store i32 %.0.i127, ptr %i.jx, align 4
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1
  %i.jy = load i32, ptr %i.b, align 4
  %i.jz = sext i32 %i.jy to i64
  %.not113.not = icmp slt i64 %indvars.iv147, %i.jz
  br i1 %.not113.not, label %bb.bp, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %X11_KeyCodeToSDLScancode.exit128, %bb.bo, %._crit_edge
  call void @X11_UpdateKeymap(ptr noundef %0, i1 noundef zeroext false)
  %i.ka = call zeroext i1 @SDL_SetScancodeName_REAL(i32 noundef 101, ptr noundef nonnull @.str.1) #9 ; 0 uses
  call void @X11_ReconcileKeyboardState(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #3

declare ptr @SDL_GetScancodeTable(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SDL_GetKeymapKeycode(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @X11_UpdateKeymap(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._XkbStateRec, align 2       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1728 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @SDL_DestroyKeymap(ptr noundef %i.g) #9
  store ptr null, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1736 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @SDL_DestroyKeymap(ptr noundef %i.i) #9
  store ptr null, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1744 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @SDL_DestroyKeymap(ptr noundef %i.k) #9
  store ptr null, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1752 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @SDL_DestroyKeymap(ptr noundef %i.m) #9
  store ptr null, ptr %i.l, align 8
  %i.n = load ptr, ptr @X11_XkbGetNames, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1720 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.n(ptr noundef %i.o, i32 noundef 2048, ptr noundef %i.q) #9 ; 0 uses
  %i.s = load ptr, ptr @X11_XkbGetUpdatedMap, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = tail call i32 %i.s(ptr noundef %i.t, i32 noundef 71, ptr noundef %i.u) #9 ; 0 uses
  %i.w = load ptr, ptr @X11_XkbGetState, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call i32 %i.w(ptr noundef %i.x, i32 noundef 256, ptr noundef nonnull %2) #9
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %2, align 2
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1772
  store i32 %i.ab, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val207 = load ptr, ptr %i.a, align 8
  %i.ad = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val207, ptr noundef nonnull @.str.2) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1792 ; 4 uses
  store i32 %i.ad, ptr %i.ae, align 8
  %.not183 = icmp eq i32 %i.ad, 0
  br i1 %.not183, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val206 = load ptr, ptr %i.a, align 8
  %i.af = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val206, ptr noundef nonnull @.str.3)
  store i32 %i.af, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val205 = load ptr, ptr %i.a, align 8
  %i.ag = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val205, ptr noundef nonnull @.str.4)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1796
  store i32 %i.ag, ptr %i.ah, align 4
  %.val204 = load ptr, ptr %i.a, align 8
  %i.ai = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val204, ptr noundef nonnull @.str.5)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1800 ; 3 uses
  store i32 %i.ai, ptr %i.aj, align 8
  %.val203 = load ptr, ptr %i.a, align 8
  %i.ak = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val203, ptr noundef nonnull @.str.6)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1804 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4
  %.val202 = load ptr, ptr %i.a, align 8
  %i.am = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val202, ptr noundef nonnull @.str.7)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1808
  store i32 %i.am, ptr %i.an, align 8
  %.val201 = load ptr, ptr %i.a, align 8
  %i.ao = call fastcc i32 @X11_GetXkbVirtualModifierMask(ptr %.val201, ptr noundef nonnull @.str.8)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1812
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = call ptr @SDL_CreateKeymap(i1 noundef zeroext false) #9 ; 2 uses
  store ptr %i.aq, ptr %i.f, align 8
  %.not184 = icmp eq ptr %i.aq, null
  br i1 %.not184, label %.critedge197, label %bb.g

.lr.ph271.preheader:                              ; preds = %bb.i, %bb.h, %bb.g
  %.0172269.lcssa.wide.ph = phi i64 [ 3, %bb.i ], [ 2, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0172269.lcssa.wide.ph
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv297 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next298, %.lr.ph271 ] ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  call void @SDL_DestroyKeymap(ptr noundef %i.as) #9
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv297
  store ptr null, ptr %i.at, align 8
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %.0172269.lcssa.wide.ph
  br i1 %exitcond300.not, label %.critedge197, label %.lr.ph271, !llvm.loop !11

bb.g:                                             ; preds = %bb.f
  %i.au = call ptr @SDL_CreateKeymap(i1 noundef zeroext false) #9 ; 2 uses
  store ptr %i.au, ptr %i.h, align 8
  %.not184.1 = icmp eq ptr %i.au, null
  br i1 %.not184.1, label %.lr.ph271.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = call ptr @SDL_CreateKeymap(i1 noundef zeroext false) #9 ; 2 uses
  store ptr %i.av, ptr %i.j, align 8
  %.not184.2 = icmp eq ptr %i.av, null
  br i1 %.not184.2, label %.lr.ph271.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call ptr @SDL_CreateKeymap(i1 noundef zeroext false) #9 ; 2 uses
  store ptr %i.aw, ptr %i.l, align 8
  %.not184.3 = icmp eq ptr %i.aw, null
  br i1 %.not184.3, label %.lr.ph271.preheader, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.ax = load i32, ptr %i.ae, align 8
  %i.ay = load i32, ptr %i.aj, align 8
  %i.az = load i32, ptr %i.al, align 4
  %i.ba = or i32 %i.ax, %i.ay
  %i.bb = or i32 %i.ba, %i.az
  %i.bc = or i32 %i.bb, 3                         ; 2 uses
  %i.bd = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i8, ptr %i.be, align 4             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 13
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp ult i8 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 692
  %i.bk = zext i8 %i.bf to i64
  br label %bb.j

._crit_edge283:                                   ; preds = %.loopexit, %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1772
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8
  call void @SDL_SetKeymap(ptr noundef %i.bp, i1 noundef zeroext %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.critedge199

bb.j:                                             ; preds = %.lr.ph282, %.loopexit
  %i.bq = phi ptr [ %i.bd, %.lr.ph282 ], [ %i.fp, %.loopexit ]
  %indvars.iv294 = phi i64 [ %i.bk, %.lr.ph282 ], [ %indvars.iv.next295, %.loopexit ] ; 7 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv294
  %i.bs = load i32, ptr %i.br, align 4            ; 6 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.preheader260

.preheader260:                                    ; preds = %bb.j
  %i.bu = trunc nuw nsw i64 %indvars.iv294 to i32 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv294 to i8
  %i.bw = or i32 %i.bs, 1073741824                ; 2 uses
  %switch.tableidx = add i32 %i.bs, -40           ; 3 uses
  %i.bx = icmp ult i32 %switch.tableidx, 37
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 68719476743, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond320 = select i1 %i.bx, i1 %switch.lobit, i1 false
  %i.by = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.X11_UpdateKeymap.7, i64 %i.by
  %switch.tableidx321 = add i32 %i.bs, -40        ; 3 uses
  %i.bz = icmp ult i32 %switch.tableidx321, 37
  %switch.maskindex324 = zext nneg i32 %switch.tableidx321 to i64
  %switch.shifted325 = lshr i64 68719476743, %switch.maskindex324
  %switch.lobit326 = trunc i64 %switch.shifted325 to i1
  %or.cond330 = select i1 %i.bz, i1 %switch.lobit326, i1 false
  %i.ca = zext nneg i32 %switch.tableidx321 to i64
  %switch.gep327 = getelementptr inbounds nuw i8, ptr @switch.table.X11_UpdateKeymap.7, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %.preheader260, %._crit_edge279
  %indvars.iv291 = phi i64 [ 0, %.preheader260 ], [ %indvars.iv.next292, %._crit_edge279 ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv291
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.p, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv294 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i8, ptr %i.cj, align 2             ; 3 uses
  %i.cl = and i8 %i.ck, 15                        ; 5 uses
  %i.cm = zext nneg i8 %i.cl to i32
  %.not185 = icmp eq i8 %i.cl, 0
  %i.cn = zext nneg i8 %i.cl to i64
  %.not186 = icmp samesign ult i64 %indvars.iv291, %i.cn
  %or.cond195 = select i1 %.not185, i1 true, i1 %.not186
  %i.co = trunc nuw nsw i64 %indvars.iv291 to i32
  br i1 %or.cond195, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@X11_UpdateKeymap:bb.a
  %i.dp = sext i32 %i.do to i64
  %.not.i = icmp slt i64 %indvars.iv294, %i.dp
  br i1 %.not.i, label %X11_KeyCodeToSym.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %.val200, i64 1736
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = sext i32 %i.dr to i64
  %.not16.i = icmp sgt i64 %indvars.iv294, %i.ds
  br i1 %.not16.i, label %X11_KeyCodeToSym.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = load ptr, ptr %i.dm, align 8
  %i.du = sub nsw i32 %i.bu, %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %.val200, i64 1728
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = mul nsw i32 %i.dw, %i.du
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8
  br label %X11_KeyCodeToSym.exit

X11_KeyCodeToSym.exit:                            ; preds = %bb.r, %bb.u
  %.0.i = phi i64 [ %i.dl, %bb.r ], [ %i.ea, %bb.u ] ; 3 uses
  %.not188 = icmp eq i64 %.0.i, 0
  br i1 %.not188, label %X11_KeyCodeToSym.exit.thread, label %.preheader

.preheader:                                       ; preds = %X11_KeyCodeToSym.exit
  %i.eb = load i8, ptr %i.de, align 1             ; 2 uses
  %.not285 = icmp eq i8 %i.eb, 0
  br i1 %.not285, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader
  %i.ec = trunc i64 %.0.i to i32
  br label %bb.v

._crit_edge275:                                   ; preds = %bb.z, %.preheader
  %.0162.lcssa = phi i1 [ false, %.preheader ], [ %.2, %bb.z ]
  %i.ed = icmp ne i32 %.0163276, 0
  %or.cond = select i1 %i.ed, i1 true, i1 %.0162.lcssa
  br i1 %or.cond, label %X11_KeyCodeToSym.exit.thread, label %bb.aa

bb.v:                                             ; preds = %.lr.ph274, %bb.z
  %i.ee = phi i8 [ %i.eb, %.lr.ph274 ], [ %i.fg, %bb.z ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %.0162272 = phi i1 [ false, %.lr.ph274 ], [ %.2, %bb.z ] ; 3 uses
  %i.ef = load ptr, ptr %i.df, align 8
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ef, i64 %indvars.iv ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %.not189 = icmp eq i32 %i.eh, 0
  br i1 %.not189, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = zext i8 %i.ej to i32
  %i.el = icmp eq i32 %.0163276, %i.ek
  br i1 %i.el, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 6
  %i.en = load i8, ptr %i.em, align 2
  %i.eo = zext i8 %i.en to i32                    ; 3 uses
  %i.ep = or i32 %i.bc, %i.eo
  %i.eq = icmp eq i32 %i.ep, %i.bc
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.er = shl nuw nsw i32 %i.eo, 12
  %i.es = and i32 %i.er, 8192
  %i.et = load i32, ptr %i.ae, align 8
  %i.eu = load <2 x i32>, ptr %i.aj, align 8
  %i.ev = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %i.et, i64 1
  %i.ew = shufflevector <2 x i32> %i.eu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ex = shufflevector <4 x i32> %i.ev, <4 x i32> %i.ew, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ey = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fa = and <4 x i32> %i.ex, %i.ez
  %i.fb = icmp eq <4 x i32> %i.fa, zeroinitializer
  %i.fc = select <4 x i1> %i.fb, <4 x i32> zeroinitializer, <4 x i32> <i32 3, i32 768, i32 16384, i32 4>
  %i.fd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fc)
  %op.rdx = or disjoint i32 %i.fd, %i.es
  %i.fe = trunc nuw nsw i32 %op.rdx to i16        ; 2 uses
  %i.ff = call i32 @SDL_GetKeyCodeFromKeySym(i32 noundef %i.ec, i32 noundef %i.bu, i16 noundef zeroext range(i16 0, -32768) %i.fe) #9 ; 2 uses
  %.not.i210 = icmp eq i32 %i.ff, 0
  %.not.i210.not = xor i1 %.not.i210, true        ; 2 uses
  %or.cond320.not = xor i1 %or.cond320, true
  %brmerge = select i1 %.not.i210.not, i1 true, i1 %or.cond320.not
  %.mux = select i1 %.not.i210.not, i32 %i.ff, i32 %i.bw
  br i1 %brmerge, label %X11_AddKeymapEntry.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %X11_AddKeymapEntry.exit

X11_AddKeymapEntry.exit:                          ; preds = %bb.y, %switch.lookup
  %.0.i211 = phi i32 [ %.mux, %bb.y ], [ %switch.ext, %switch.lookup ]
  call void @SDL_SetKeymapEntry(ptr noundef %i.cc, i32 noundef range(i32 1, 0) %i.bs, i16 noundef zeroext range(i16 0, -32768) %i.fe, i32 noundef %.0.i211) #9
  %.pre = load i8, ptr %i.de, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %X11_AddKeymapEntry.exit, %bb.v, %bb.w
  %i.fg = phi i8 [ %i.ee, %bb.v ], [ %i.ee, %bb.w ], [ %.pre, %X11_AddKeymapEntry.exit ], [ %i.ee, %bb.x ] ; 2 uses
  %.2 = phi i1 [ %.0162272, %bb.v ], [ %.0162272, %bb.w ], [ true, %X11_AddKeymapEntry.exit ], [ %.0162272, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fh = zext i8 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %bb.v, label %._crit_edge275, !llvm.loop !14

bb.aa:                                            ; preds = %._crit_edge275
  %i.fj = trunc i64 %.0.i to i32
  %i.fk = call i32 @SDL_GetKeyCodeFromKeySym(i32 noundef %i.fj, i32 noundef %i.bu, i16 noundef zeroext 0) #9 ; 2 uses
  %.not.i212 = icmp eq i32 %i.fk, 0
  %.not.i212.not = xor i1 %.not.i212, true        ; 2 uses
  %or.cond330.not = xor i1 %or.cond330, true
  %brmerge341 = select i1 %.not.i212.not, i1 true, i1 %or.cond330.not
  %.mux342 = select i1 %.not.i212.not, i32 %i.fk, i32 %i.bw
  br i1 %brmerge341, label %X11_AddKeymapEntry.exit214, label %switch.lookup323

switch.lookup323:                                 ; preds = %bb.aa
  %switch.load328 = load i8, ptr %switch.gep327, align 1
  %switch.ext329 = zext i8 %switch.load328 to i32
  br label %X11_AddKeymapEntry.exit214

X11_AddKeymapEntry.exit214:                       ; preds = %bb.aa, %switch.lookup323
  %.0.i213 = phi i32 [ %.mux342, %bb.aa ], [ %switch.ext329, %switch.lookup323 ]
  call void @SDL_SetKeymapEntry(ptr noundef %i.cc, i32 noundef range(i32 1, 0) %i.bs, i16 noundef zeroext 0, i32 noundef %.0.i213) #9
  br label %X11_KeyCodeToSym.exit.thread

X11_KeyCodeToSym.exit.thread:                     ; preds = %bb.s, %bb.t, %._crit_edge275, %X11_AddKeymapEntry.exit214, %X11_KeyCodeToSym.exit
  %i.fl = add nuw nsw i32 %.0163276, 1            ; 2 uses
  %i.fm = load i8, ptr %i.dc, align 4
  %i.fn = zext i8 %i.fm to i32
  %i.fo = icmp samesign ult i32 %i.fl, %i.fn
  br i1 %i.fo, label %bb.q, label %._crit_edge279, !llvm.loop !15

.loopexit.loopexit:                               ; preds = %._crit_edge279
  %.pre301 = load ptr, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %i.fp = phi ptr [ %.pre301, %.loopexit.loopexit ], [ %i.bq, %bb.j ] ; 2 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 13
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next295, %i.fs
  br i1 %i.ft, label %bb.j, label %._crit_edge283, !llvm.loop !16

bb.ab:                                            ; preds = %bb.a
  %i.fu = tail call ptr @SDL_CreateKeymap(i1 noundef zeroext true) #9 ; 3 uses
  %.not.not = icmp eq ptr %i.fu, null
  br i1 %.not.not, label %.critedge199, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %1, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 1720 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not181 = icmp eq ptr %i.fw, null
  br i1 %.not181, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load ptr, ptr @X11_XFree, align 8
  %i.fy = tail call i32 %i.fx(ptr noundef nonnull %i.fw) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fz = load ptr, ptr @X11_XDisplayKeycodes, align 8
  %i.ga = load ptr, ptr %i.b, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 1732 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 1736 ; 2 uses
  %i.gd = tail call i32 %i.fz(ptr noundef %i.ga, ptr noundef nonnull %i.gb, ptr noundef nonnull %i.gc) #9 ; 0 uses
  %i.ge = load ptr, ptr @X11_XGetKeyboardMapping, align 8
  %i.gf = load ptr, ptr %i.b, align 8
  %i.gg = load i32, ptr %i.gb, align 4            ; 2 uses
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = load i32, ptr %i.gc, align 8
  %i.gj = sub nsw i32 %i.gi, %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 1728
  %i.gl = tail call ptr %i.ge(ptr noundef %i.gf, i8 noundef zeroext %i.gh, i32 noundef %i.gj, ptr noundef nonnull %i.gk) #9
  store ptr %i.gl, ptr %i.fv, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 1732
  %i.gn = load i32, ptr %i.gm, align 4            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 1736 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8
  %.not182264 = icmp ugt i32 %i.gn, %i.gp
  br i1 %.not182264, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 692
  br label %bb.bb

._crit_edge:                                      ; preds = %X11_KeyCodeToSym.exit252.thread, %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 1792
  store <4 x i32> <i32 8, i32 64, i32 128, i32 32>, ptr %i.gr, align 8
  %.val209 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.gs = load ptr, ptr %.val209, align 8
  %i.gt = load ptr, ptr @X11_XGetModifierMapping, align 8
  %i.gu = tail call ptr %i.gt(ptr noundef %i.gs) #9, !inline_history !17 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 8            ; 7 uses
  %.not.i215 = icmp eq i32 %i.gv, 0
  %i.gw = getelementptr inbounds nuw i8, ptr %.val209, i64 692 ; 5 uses
  br i1 %.not.i215, label %X11_GetXModifierMask.exit, label %.split.us.i

.split.us.i:                                      ; preds = %._crit_edge
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8            ; 5 uses
  %i.gz = mul i32 %i.gv, 3
  %wide.trip.count.i = zext i32 %i.gv to i64      ; 5 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..split.loop.exit_crit_edge.us.i, label %bb.ai, !llvm.loop !18

bb.ai:                                            ; preds = %bb.ah, %.split.us.i
  %indvars.iv.i = phi i64 [ 0, %.split.us.i ], [ %indvars.iv.next.i, %bb.ah ] ; 2 uses
  %i.ha = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.hb = add i32 %i.gz, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4
  %.not.us.i = icmp eq i32 %i.hh, 83
  br i1 %.not.us.i, label %..split.loop.exit_crit_edge.us.i, label %bb.ah

..split.loop.exit_crit_edge.us.i:                 ; preds = %bb.ai, %bb.ah
  %.3.us.i = phi i32 [ 0, %bb.ah ], [ 8, %bb.ai ]
  %i.hi = shl i32 %i.gv, 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %..split.loop.exit_crit_edge.us.i
  %indvars.iv.1.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.i ], [ %indvars.iv.next.1.i, %bb.ak ] ; 2 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv.1.i to i32
  %i.hk = add i32 %i.hi, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4
  %.not.us.1.i = icmp eq i32 %i.hq, 83
  br i1 %.not.us.1.i, label %..split.loop.exit_crit_edge.us.1.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %..split.loop.exit_crit_edge.us.1.i, label %bb.aj, !llvm.loop !18

..split.loop.exit_crit_edge.us.1.i:               ; preds = %bb.ak, %bb.aj
  %.3.us.1.i = phi i32 [ %.3.us.i, %bb.ak ], [ 16, %bb.aj ]
  %i.hr = mul i32 %i.gv, 5
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %..split.loop.exit_crit_edge.us.1.i
  %indvars.iv.2.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.1.i ], [ %indvars.iv.next.2.i, %bb.am ] ; 2 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4
  %.not.us.2.i = icmp eq i32 %i.hz, 83
  br i1 %.not.us.2.i, label %..split.loop.exit_crit_edge.us.2.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.i
  br i1 %exitcond.2.not.i, label %..split.loop.exit_crit_edge.us.2.i, label %bb.al, !llvm.loop !18

..split.loop.exit_crit_edge.us.2.i:               ; preds = %bb.am, %bb.al
  %.3.us.2.i = phi i32 [ %.3.us.1.i, %bb.am ], [ 32, %bb.al ]
  %i.ia = mul i32 %i.gv, 6
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %..split.loop.exit_crit_edge.us.2.i
  %indvars.iv.3.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.2.i ], [ %indvars.iv.next.3.i, %bb.ao ] ; 2 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.3.i to i32
  %i.ic = add i32 %i.ia, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  %.not.us.3.i = icmp eq i32 %i.ii, 83
  br i1 %.not.us.3.i, label %..split.loop.exit_crit_edge.us.3.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.i
  br i1 %exitcond.3.not.i, label %..split.loop.exit_crit_edge.us.3.i, label %bb.an, !llvm.loop !18

..split.loop.exit_crit_edge.us.3.i:               ; preds = %bb.ao, %bb.an
  %.3.us.3.i = phi i32 [ %.3.us.2.i, %bb.ao ], [ 64, %bb.an ]
  %i.ij = mul i32 %i.gv, 7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %..split.loop.exit_crit_edge.us.3.i
  %indvars.iv.4.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.3.i ], [ %indvars.iv.next.4.i, %bb.aq ] ; 2 uses
  %i.ik = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.il = add i32 %i.ij, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4
  %.not.us.4.i = icmp eq i32 %i.ir, 83
  br i1 %.not.us.4.i, label %X11_GetXModifierMask.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.i
  br i1 %exitcond.4.not.i, label %X11_GetXModifierMask.exit, label %bb.ap, !llvm.loop !18

X11_GetXModifierMask.exit:                        ; preds = %bb.ap, %bb.aq, %._crit_edge
  %.us-phi.i = phi i32 [ 0, %._crit_edge ], [ %.3.us.3.i, %bb.aq ], [ 128, %bb.ap ]
  %i.is = load ptr, ptr @X11_XFreeModifiermap, align 8
  %i.it = tail call i32 %i.is(ptr noundef nonnull %i.gu) #9, !inline_history !17 ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 1808
  store i32 %.us-phi.i, ptr %i.iu, align 8
  %.val208 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.iv = load ptr, ptr %.val208, align 8
  %i.iw = load ptr, ptr @X11_XGetModifierMapping, align 8
  %i.ix = tail call ptr %i.iw(ptr noundef %i.iv) #9, !inline_history !17 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8            ; 7 uses
  %.not.i216 = icmp eq i32 %i.iy, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %.val208, i64 692 ; 5 uses
  br i1 %.not.i216, label %X11_GetXModifierMask.exit248, label %.split.us.i217

.split.us.i217:                                   ; preds = %X11_GetXModifierMask.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8            ; 5 uses
  %i.jc = mul i32 %i.iy, 3
  %wide.trip.count.i218 = zext i32 %i.iy to i64   ; 5 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i219, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i218
  br i1 %exitcond.not.i222, label %..split.loop.exit_crit_edge.us.i223, label %bb.as, !llvm.loop !18

bb.as:                                            ; preds = %bb.ar, %.split.us.i217
  %indvars.iv.i219 = phi i64 [ 0, %.split.us.i217 ], [ %indvars.iv.next.i221, %bb.ar ] ; 2 uses
  %i.jd = trunc nuw nsw i64 %indvars.iv.i219 to i32
  %i.je = add i32 %i.jc, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4
  %.not.us.i220 = icmp eq i32 %i.jk, 71
  br i1 %.not.us.i220, label %..split.loop.exit_crit_edge.us.i223, label %bb.ar

..split.loop.exit_crit_edge.us.i223:              ; preds = %bb.as, %bb.ar
  %.3.us.i224 = phi i32 [ 0, %bb.ar ], [ 8, %bb.as ]
  %i.jl = shl i32 %i.iy, 2
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %..split.loop.exit_crit_edge.us.i223
  %indvars.iv.1.i225 = phi i64 [ 0, %..split.loop.exit_crit_edge.us.i223 ], [ %indvars.iv.next.1.i227, %bb.au ] ; 2 uses
  %i.jm = trunc nuw nsw i64 %indvars.iv.1.i225 to i32
  %i.jn = add i32 %i.jl, %i.jm
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4
  %.not.us.1.i226 = icmp eq i32 %i.jt, 71
  br i1 %.not.us.1.i226, label %..split.loop.exit_crit_edge.us.1.i229, label %bb.au

bb.au:                                            ; preds = %bb.at
  %indvars.iv.next.1.i227 = add nuw nsw i64 %indvars.iv.1.i225, 1 ; 2 uses
  %exitcond.1.not.i228 = icmp eq i64 %indvars.iv.next.1.i227, %wide.trip.count.i218
  br i1 %exitcond.1.not.i228, label %..split.loop.exit_crit_edge.us.1.i229, label %bb.at, !llvm.loop !18

..split.loop.exit_crit_edge.us.1.i229:            ; preds = %bb.au, %bb.at
  %.3.us.1.i230 = phi i32 [ %.3.us.i224, %bb.au ], [ 16, %bb.at ]
  %i.ju = mul i32 %i.iy, 5
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %..split.loop.exit_crit_edge.us.1.i229
  %indvars.iv.2.i231 = phi i64 [ 0, %..split.loop.exit_crit_edge.us.1.i229 ], [ %indvars.iv.next.2.i233, %bb.aw ] ; 2 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv.2.i231 to i32
  %i.jw = add i32 %i.ju, %i.jv
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jx
end_hunk_1
