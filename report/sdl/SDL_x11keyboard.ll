Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11keyboard?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@X11_InitKeyboard:bb.a
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
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1804 ; 3 uses
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
  %i.bq = phi ptr [ %i.bd, %.lr.ph282 ], [ %i.ff, %.loopexit ]
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
  %i.cp = and i8 %i.ck, -64
  switch i8 %i.cp, label %bb.m [
    i8 64, label %bb.n
    i8 -128, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc i64 %indvars.iv291 to i8
  %i.cq = urem i8 %.lhs.trunc, %i.cl
  %.zext = zext nneg i8 %i.cq to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cr = add nsw i32 %i.cm, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cs = lshr i8 %i.ck, 4
  %i.ct = and i8 %i.cs, 3                         ; 2 uses
  %.not187 = icmp samesign ult i8 %i.ct, %i.cl
  %narrow = select i1 %.not187, i8 %i.ct, i8 0
  %spec.store.select = zext nneg i8 %narrow to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.k
  %.1165 = phi i32 [ %i.co, %bb.k ], [ %.zext, %bb.m ], [ %i.cr, %bb.n ], [ %spec.store.select, %bb.o ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = and i32 %.1165, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %.not284 = icmp eq i8 %i.dd, 0
  br i1 %.not284, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  br label %bb.q

._crit_edge279:                                   ; preds = %X11_KeyCodeToSym.exit.thread, %bb.p
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next292, 4
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.k, !llvm.loop !12

bb.q:                                             ; preds = %.lr.ph278, %X11_KeyCodeToSym.exit.thread
  %.0163276 = phi i32 [ 0, %.lr.ph278 ], [ %i.fb, %X11_KeyCodeToSym.exit.thread ] ; 4 uses
  %.val200 = load ptr, ptr %i.a, align 8          ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val200, i64 688
  %i.dh = load i8, ptr %i.dg, align 8, !range !5, !noundef !6
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr @X11_XkbKeycodeToKeysym, align 8
  %i.dk = load ptr, ptr %.val200, align 8
  %i.dl = call i64 %i.dj(ptr noundef %i.dk, i8 noundef zeroext %i.bv, i32 noundef %.1165, i32 noundef range(i32 0, 255) %.0163276) #9, !inline_history !13
  br label %X11_KeyCodeToSym.exit

bb.s:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %.val200, i64 1720
  %i.dn = getelementptr inbounds nuw i8, ptr %.val200, i64 1732
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
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
  %i.ee = phi i8 [ %i.eb, %.lr.ph274 ], [ %i.ew, %bb.z ] ; 3 uses
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
  %i.en = load i8, ptr %i.em, align 2             ; 2 uses
  %i.eo = zext i8 %i.en to i32                    ; 5 uses
  %i.ep = or i32 %i.bc, %i.eo
  %i.eq = icmp eq i32 %i.ep, %i.bc
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.not190 = trunc i8 %i.en to i1
  %3 = select i1 %.not190, i32 3, i32 0
  %i.er = shl nuw nsw i32 %i.eo, 12
  %i.es = and i32 %i.er, 8192
  %4 = or disjoint i32 %i.es, %3
  %i.et = load i32, ptr %i.ae, align 8
  %5 = and i32 %i.et, %i.eo
  %.not192 = icmp eq i32 %5, 0
  %6 = select i1 %.not192, i32 0, i32 768
  %7 = or disjoint i32 %4, %6
  %8 = load i32, ptr %i.aj, align 8
  %9 = and i32 %8, %i.eo
  %.not193 = icmp eq i32 %9, 0
  %10 = select i1 %.not193, i32 0, i32 16384
  %11 = or disjoint i32 %7, %10
  %12 = load i32, ptr %i.al, align 4
  %13 = and i32 %12, %i.eo
  %.not194 = icmp eq i32 %13, 0
  %14 = select i1 %.not194, i32 0, i32 4
  %op.rdx = or disjoint i32 %11, %14
  %i.eu = trunc nuw nsw i32 %op.rdx to i16        ; 2 uses
  %i.ev = call i32 @SDL_GetKeyCodeFromKeySym(i32 noundef %i.ec, i32 noundef %i.bu, i16 noundef zeroext range(i16 0, -32768) %i.eu) #9 ; 2 uses
  %.not.i210 = icmp eq i32 %i.ev, 0
  %.not.i210.not = xor i1 %.not.i210, true        ; 2 uses
  %or.cond320.not = xor i1 %or.cond320, true
  %brmerge = select i1 %.not.i210.not, i1 true, i1 %or.cond320.not
  %.mux = select i1 %.not.i210.not, i32 %i.ev, i32 %i.bw
  br i1 %brmerge, label %X11_AddKeymapEntry.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %X11_AddKeymapEntry.exit

X11_AddKeymapEntry.exit:                          ; preds = %bb.y, %switch.lookup
  %.0.i211 = phi i32 [ %.mux, %bb.y ], [ %switch.ext, %switch.lookup ]
  call void @SDL_SetKeymapEntry(ptr noundef %i.cc, i32 noundef range(i32 1, 0) %i.bs, i16 noundef zeroext range(i16 0, -32768) %i.eu, i32 noundef %.0.i211) #9
  %.pre = load i8, ptr %i.de, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %X11_AddKeymapEntry.exit, %bb.v, %bb.w
  %i.ew = phi i8 [ %i.ee, %bb.v ], [ %i.ee, %bb.w ], [ %.pre, %X11_AddKeymapEntry.exit ], [ %i.ee, %bb.x ] ; 2 uses
  %.2 = phi i1 [ %.0162272, %bb.v ], [ %.0162272, %bb.w ], [ true, %X11_AddKeymapEntry.exit ], [ %.0162272, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = zext i8 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %bb.v, label %._crit_edge275, !llvm.loop !14

bb.aa:                                            ; preds = %._crit_edge275
  %i.ez = trunc i64 %.0.i to i32
  %i.fa = call i32 @SDL_GetKeyCodeFromKeySym(i32 noundef %i.ez, i32 noundef %i.bu, i16 noundef zeroext 0) #9 ; 2 uses
  %.not.i212 = icmp eq i32 %i.fa, 0
  %.not.i212.not = xor i1 %.not.i212, true        ; 2 uses
  %or.cond330.not = xor i1 %or.cond330, true
  %brmerge341 = select i1 %.not.i212.not, i1 true, i1 %or.cond330.not
  %.mux342 = select i1 %.not.i212.not, i32 %i.fa, i32 %i.bw
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
  %i.fb = add nuw nsw i32 %.0163276, 1            ; 2 uses
  %i.fc = load i8, ptr %i.dc, align 4
  %i.fd = zext i8 %i.fc to i32
  %i.fe = icmp samesign ult i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.q, label %._crit_edge279, !llvm.loop !15

.loopexit.loopexit:                               ; preds = %._crit_edge279
  %.pre301 = load ptr, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %i.ff = phi ptr [ %.pre301, %.loopexit.loopexit ], [ %i.bq, %bb.j ] ; 2 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 13
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv.next295, %i.fi
  br i1 %i.fj, label %bb.j, label %._crit_edge283, !llvm.loop !16

bb.ab:                                            ; preds = %bb.a
  %i.fk = tail call ptr @SDL_CreateKeymap(i1 noundef zeroext true) #9 ; 3 uses
  %.not.not = icmp eq ptr %i.fk, null
  br i1 %.not.not, label %.critedge199, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %1, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 1720 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not181 = icmp eq ptr %i.fm, null
  br i1 %.not181, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = load ptr, ptr @X11_XFree, align 8
  %i.fo = tail call i32 %i.fn(ptr noundef nonnull %i.fm) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fp = load ptr, ptr @X11_XDisplayKeycodes, align 8
  %i.fq = load ptr, ptr %i.b, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 1732 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 1736 ; 2 uses
  %i.ft = tail call i32 %i.fp(ptr noundef %i.fq, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fs) #9 ; 0 uses
  %i.fu = load ptr, ptr @X11_XGetKeyboardMapping, align 8
  %i.fv = load ptr, ptr %i.b, align 8
  %i.fw = load i32, ptr %i.fr, align 4            ; 2 uses
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = load i32, ptr %i.fs, align 8
  %i.fz = sub nsw i32 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 1728
  %i.gb = tail call ptr %i.fu(ptr noundef %i.fv, i8 noundef zeroext %i.fx, i32 noundef %i.fz, ptr noundef nonnull %i.ga) #9
  store ptr %i.gb, ptr %i.fl, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 1732
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 1736 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8
  %.not182264 = icmp ugt i32 %i.gd, %i.gf
  br i1 %.not182264, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 692
  br label %bb.bb

._crit_edge:                                      ; preds = %X11_KeyCodeToSym.exit252.thread, %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 1792
  store <4 x i32> <i32 8, i32 64, i32 128, i32 32>, ptr %i.gh, align 8
  %.val209 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.gi = load ptr, ptr %.val209, align 8
  %i.gj = load ptr, ptr @X11_XGetModifierMapping, align 8
  %i.gk = tail call ptr %i.gj(ptr noundef %i.gi) #9, !inline_history !17 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 8            ; 7 uses
  %.not.i215 = icmp eq i32 %i.gl, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %.val209, i64 692 ; 5 uses
  br i1 %.not.i215, label %X11_GetXModifierMask.exit, label %.split.us.i

.split.us.i:                                      ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8            ; 5 uses
  %i.gp = mul i32 %i.gl, 3
  %wide.trip.count.i = zext i32 %i.gl to i64      ; 5 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..split.loop.exit_crit_edge.us.i, label %bb.ai, !llvm.loop !18

bb.ai:                                            ; preds = %bb.ah, %.split.us.i
  %indvars.iv.i = phi i64 [ 0, %.split.us.i ], [ %indvars.iv.next.i, %bb.ah ] ; 2 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gr = add i32 %i.gp, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4
  %.not.us.i = icmp eq i32 %i.gx, 83
  br i1 %.not.us.i, label %..split.loop.exit_crit_edge.us.i, label %bb.ah

..split.loop.exit_crit_edge.us.i:                 ; preds = %bb.ai, %bb.ah
  %.3.us.i = phi i32 [ 0, %bb.ah ], [ 8, %bb.ai ]
  %i.gy = shl i32 %i.gl, 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %..split.loop.exit_crit_edge.us.i
  %indvars.iv.1.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.i ], [ %indvars.iv.next.1.i, %bb.ak ] ; 2 uses
  %i.gz = trunc nuw nsw i64 %indvars.iv.1.i to i32
  %i.ha = add i32 %i.gy, %i.gz
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %.not.us.1.i = icmp eq i32 %i.hg, 83
  br i1 %.not.us.1.i, label %..split.loop.exit_crit_edge.us.1.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %..split.loop.exit_crit_edge.us.1.i, label %bb.aj, !llvm.loop !18

..split.loop.exit_crit_edge.us.1.i:               ; preds = %bb.ak, %bb.aj
  %.3.us.1.i = phi i32 [ %.3.us.i, %bb.ak ], [ 16, %bb.aj ]
  %i.hh = mul i32 %i.gl, 5
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %..split.loop.exit_crit_edge.us.1.i
  %indvars.iv.2.i = phi i64 [ 0, %..split.loop.exit_crit_edge.us.1.i ], [ %indvars.iv.next.2.i, %bb.am ] ; 2 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.hj = add i32 %i.hh, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4
  %.not.us.2.i = icmp eq i32 %i.hp, 83
  br i1 %.not.us.2.i, label %..split.loop.exit_crit_edge.us.2.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.i
  br i1 %exitcond.2.not.i, label %..split.loop.exit_crit_edge.us.2.i, label %bb.al, !llvm.loop !18

..split.loop.exit_crit_edge.us.2.i:               ; preds = %bb.am, %bb.al
end_hunk_0
begin_hunk_1_@X11_UpdateTextInputArea:bb.a
  %i.i = add nsw i32 %i.h, %i.f
  %i.j = trunc i32 %i.i to i16                    ; 2 uses
  store i16 %i.j, ptr %2, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, %i.l                   ; 2 uses
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 562 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %.not16 = icmp eq i16 %i.s, %i.j
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sext = shl i32 %i.o, 16
  %i.t = ashr exact i32 %sext, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 564
  %i.v = load i16, ptr %i.u, align 4
  %i.w = sext i16 %i.v to i32
  %.not17 = icmp eq i32 %i.t, %i.w
  br i1 %.not17, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr @X11_XVaCreateNestedList, align 8
  %i.y = call ptr (i32, ...) %i.x(i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %2, ptr noundef null) #9 ; 3 uses
  %.not18 = icmp eq ptr %i.y, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr @X11_XSetICValues, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = call ptr (ptr, ...) %i.z(ptr noundef %i.aa, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.y, ptr noundef null) #9 ; 0 uses
  %i.ac = load ptr, ptr @X11_XFree, align 8
  %i.ad = call i32 %i.ac(ptr noundef nonnull %i.y) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load i32, ptr %2, align 4
  store i32 %i.ae, ptr %i.r, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @X11_StopTextInput(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 392
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %X11_ResetXIM.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.c, null
  br i1 %.not8.i, label %X11_ResetXIM.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @X11_Xutf8ResetIC, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull %i.c) #9, !inline_history !1 ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %X11_ResetXIM.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @X11_XFree, align 8
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.e) #9, !inline_history !1 ; 0 uses
  br label %X11_ResetXIM.exit

X11_ResetXIM.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @X11_HasScreenKeyboardSupport(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1832
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @X11_ShowScreenKeyboard(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1832
  %i.e = load i8, ptr %i.d, align 8, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = tail call i32 @SDL_GetTextInputType(i32 noundef %2) #9
  %switch.tableidx = add i32 %i.g, -2             ; 3 uses
  %i.h = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 113, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @SDL_GetTextInputMultiline(i32 noundef %2) #9
  %. = zext i1 %i.i to i32
  br label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.X11_ShowScreenKeyboard, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.0 = phi i32 [ %., %bb.c ], [ %switch.ext, %switch.lookup ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = load i32, ptr %i.q, align 4
  %i.s = call i32 (ptr, i64, ptr, ...) @SDL_snprintf_REAL(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %.0) #9 ; 0 uses
  %i.t = call zeroext i1 @SDL_OpenURL_REAL(ptr noundef nonnull %i.a) #9 ; 0 uses
  call void @SDL_SendScreenKeyboardShown() #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare i32 @SDL_GetTextInputType(i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_GetTextInputMultiline(i32 noundef) local_unnamed_addr #3

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @SDL_OpenURL_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_SendScreenKeyboardShown() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @X11_HideScreenKeyboard(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1832
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @SDL_OpenURL_REAL(ptr noundef nonnull @.str.21) #9 ; 0 uses
  tail call void @SDL_SendScreenKeyboardHidden() #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_SendScreenKeyboardHidden() local_unnamed_addr #3

declare i32 @SDL_GetScancodeFromKeySym(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_GetKeyCodeFromKeySym(i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SetKeymapEntry(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @SDL_StepUTF8_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @SDL_utf8strlen_REAL(ptr noundef) local_unnamed_addr #3

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{null, null}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{null}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{null}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = !{ptr @X11_UpdateTextInputArea}
end_hunk_1
