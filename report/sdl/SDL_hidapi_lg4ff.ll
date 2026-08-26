Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_lg4ff?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@HIDAPI_DriverLg4ff_UpdateDevice:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.14.i = phi i1 [ true, %bb.au ], [ %.13.i, %bb.at ]
  %i.fl = load i8, ptr %i.w, align 1              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.fn = load i8, ptr %i.fm, align 1
  %.not193.i = icmp eq i8 %i.fl, %i.fn
  br i1 %.not193.i, label %HIDAPI_DriverLg4ff_HandleState.exit, label %HIDAPI_DriverLg4ff_HandleState.exit.thread

bb.aw:                                            ; preds = %._crit_edge.i
  %i.fo = load i8, ptr %i.c, align 16
  %i.fp = load i8, ptr %i.ap, align 2
  %i.fq = zext i8 %i.fo to i16
  %i.fr = load i8, ptr %i.x, align 1
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i16
  %i.fu = shl nuw nsw i16 %i.ft, 8
  %i.fv = or disjoint i16 %i.fu, %i.fq            ; 3 uses
  %i.fw = zext i8 %i.fp to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 8
  %i.gc = or disjoint i32 %i.gb, %i.fw
  %i.gd = zext nneg i16 %i.fv to i32              ; 2 uses
  %.not188.i = icmp eq i32 %i.gc, %i.gd
  br i1 %.not188.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ap, i64 34
  %i.gf = load i16, ptr %i.ge, align 2            ; 3 uses
  switch i16 %i.gf, label %bb.ay [
    i16 900, label %lg4ff_adjust_dfp_x_axis.exit.i
    i16 200, label %lg4ff_adjust_dfp_x_axis.exit.i
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.gg = zext i16 %i.gf to i32
  %i.gh = icmp ult i16 %i.gf, 200
  %..i.i = select i1 %i.gh, i32 200, i32 900
  %i.gi = add nsw i32 %i.gd, -8192
  %i.gj = mul nsw i32 %..i.i, %i.gi
  %i.gk = sdiv i32 %i.gj, %i.gg                   ; 3 uses
  %i.gl = icmp slt i32 %i.gk, -8192
  br i1 %i.gl, label %lg4ff_adjust_dfp_x_axis.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gm = icmp sgt i32 %i.gk, 8191
  br i1 %i.gm, label %lg4ff_adjust_dfp_x_axis.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gn = trunc nsw i32 %i.gk to i16
  %i.go = add nsw i16 %i.gn, 8192
  br label %lg4ff_adjust_dfp_x_axis.exit.i

lg4ff_adjust_dfp_x_axis.exit.i:                   ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.ax
  %.0.i204.i = phi i16 [ %i.go, %bb.ba ], [ %i.fv, %bb.ax ], [ %i.fv, %bb.ax ], [ 0, %bb.ay ], [ 16383, %bb.az ]
  %i.gp = shl nuw i16 %.0.i204.i, 2
  %i.gq = xor i16 %i.gp, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext 0, i16 noundef signext %i.gq) #7
  br label %bb.bb

bb.bb:                                            ; preds = %lg4ff_adjust_dfp_x_axis.exit.i, %bb.aw
  %.16.i = phi i1 [ true, %lg4ff_adjust_dfp_x_axis.exit.i ], [ %.3.lcssa.i, %bb.aw ]
  %i.gr = load i8, ptr %i.u, align 1              ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.gt = load i8, ptr %i.gs, align 1
  %.not189.i = icmp eq i8 %i.gr, %i.gt
  br i1 %.not189.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = zext i8 %i.gr to i16
  %i.gv = mul nuw i16 %i.gu, 257
  %i.gw = xor i16 %i.gv, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext 1, i16 noundef signext %i.gw) #7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.17.i = phi i1 [ true, %bb.bc ], [ %.16.i, %bb.bb ]
  %i.gx = load i8, ptr %i.v, align 2              ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.gz = load i8, ptr %i.gy, align 2
  %.not190.i = icmp eq i8 %i.gx, %i.gz
  br i1 %.not190.i, label %HIDAPI_DriverLg4ff_HandleState.exit, label %HIDAPI_DriverLg4ff_HandleState.exit.thread

bb.be:                                            ; preds = %._crit_edge.i
  %i.ha = load i8, ptr %i.r, align 1              ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.hc = load i8, ptr %i.hb, align 1
  %.not184.i = icmp eq i8 %i.ha, %i.hc
  br i1 %.not184.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hd = zext i8 %i.ha to i16
  %i.he = mul nuw i16 %i.hd, 257
  %i.hf = xor i16 %i.he, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext 0, i16 noundef signext %i.hf) #7
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.19.i = phi i1 [ true, %bb.bf ], [ %.3.lcssa.i, %bb.be ]
  %i.hg = load i8, ptr %i.t, align 4              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.hi = load i8, ptr %i.hh, align 2
  %.not185.i = icmp eq i8 %i.hg, %i.hi
  br i1 %.not185.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = zext i8 %i.hg to i16
  %i.hk = mul nuw i16 %i.hj, 257
  %i.hl = xor i16 %i.hk, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext 1, i16 noundef signext %i.hl) #7
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.20.i = phi i1 [ true, %bb.bh ], [ %.19.i, %bb.bg ]
  %i.hm = load i8, ptr %i.u, align 1              ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ho = load i8, ptr %i.hn, align 1
  %.not186.i = icmp eq i8 %i.hm, %i.ho
  br i1 %.not186.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hp = zext i8 %i.hm to i16
  %i.hq = mul nuw i16 %i.hp, 257
  %i.hr = xor i16 %i.hq, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext 2, i16 noundef signext %i.hr) #7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.21.i = phi i1 [ true, %bb.bj ], [ %.20.i, %bb.bi ]
  %i.hs = load i8, ptr %i.v, align 2
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.hu = load i8, ptr %i.ht, align 2
  %.not187.i = icmp eq i8 %i.hs, %i.hu
  br i1 %.not187.i, label %HIDAPI_DriverLg4ff_HandleState.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hv = load i8, ptr %i.w, align 1
  br label %HIDAPI_DriverLg4ff_HandleState.exit.thread

HIDAPI_DriverLg4ff_HandleState.exit.thread:       ; preds = %bb.aj, %bb.aq, %bb.av, %bb.bd, %bb.bl
  %.sink236.i = phi i8 [ %i.fl, %bb.av ], [ %i.ek, %bb.aq ], [ %i.dd, %bb.aj ], [ %i.hv, %bb.bl ], [ %i.gx, %bb.bd ]
  %.sink.i = phi i8 [ 2, %bb.av ], [ 1, %bb.aq ], [ 1, %bb.aj ], [ 3, %bb.bl ], [ 2, %bb.bd ]
  %i.hw = zext i8 %.sink236.i to i16
  %i.hx = mul nuw i16 %i.hw, 257
  %i.hy = xor i16 %i.hx, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.ar, ptr noundef nonnull %i.l, i8 noundef zeroext %.sink.i, i16 noundef signext %i.hy) #7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull readonly align 16 %i.c, i64 range(i64 0, 28) %.021, i1 false)
  br label %bb.bm

HIDAPI_DriverLg4ff_HandleState.exit:              ; preds = %._crit_edge.i, %bb.aj, %bb.aq, %bb.av, %bb.bd, %bb.bk
  %.22.i = phi i1 [ %.3.lcssa.i, %._crit_edge.i ], [ %.21.i, %bb.bk ], [ %.7.i, %bb.aj ], [ %.11.i, %bb.aq ], [ %.14.i, %bb.av ], [ %.17.i, %bb.bd ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ap, ptr nonnull readonly align 16 %i.c, i64 range(i64 0, 28) %.021, i1 false)
  br i1 %.22.i, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %HIDAPI_DriverLg4ff_HandleState.exit.thread, %HIDAPI_DriverLg4ff_HandleState.exit
  %i.hz = load i8, ptr %i.z, align 2, !range !3, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.z, align 2
  %i.ib = call ptr @SDL_getenv_REAL(ptr noundef nonnull @.str.15) #7 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.id = call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.ib) #7
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.id, i32 40)
  %.1.i = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 900)
  br label %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit

SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit:            ; preds = %bb.bn, %bb.bo
  %.011.i = phi i32 [ %.1.i, %bb.bo ], [ 900, %bb.bn ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %i.ie = load ptr, ptr %i.d, align 8
  %i.if = trunc nuw nsw i32 %.011.i to i16        ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 34
  store i16 %i.if, ptr %i.ig, align 2
  %i.ih = load i16, ptr %i.n, align 2
  switch i16 %i.ih, label %HIDAPI_DriverLg4ff_SetRange.exit [
    i16 -15793, label %bb.bp
    i16 -15717, label %bb.bp
    i16 -15719, label %bb.bp
    i16 -15718, label %bb.bp
    i16 -15720, label %bb.bq
  ]

bb.bp:                                            ; preds = %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit, %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit, %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit, %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit
  store i8 -8, ptr %i.b, align 1
  store i8 -127, ptr %i.aa, align 1
  store i16 %i.if, ptr %i.ab, align 1
  br label %HIDAPI_DriverLg4ff_SetRange.exit.sink.split

bb.bq:                                            ; preds = %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit
  store i8 -8, ptr %i.b, align 1
  %i.ii = icmp samesign ugt i32 %.011.i, 200      ; 3 uses
  %..i = select i1 %i.ii, i8 3, i8 2
  %.30.i = select i1 %i.ii, i32 900, i32 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, i8 0, i64 5, i1 false)
  store i8 %..i, ptr %i.aa, align 1
  %i.ij = load ptr, ptr %i.p, align 8
  %i.ik = call i32 @SDL_hid_write_REAL(ptr noundef %i.ij, ptr noundef nonnull %i.b, i64 noundef 7) #7
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %HIDAPI_DriverLg4ff_SetRange.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i8 -127, ptr %i.b, align 1
  store i8 11, ptr %i.aa, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, i8 0, i64 5, i1 false)
  switch i32 %.011.i, label %bb.bs [
    i32 900, label %HIDAPI_DriverLg4ff_SetRange.exit.sink.split
    i32 200, label %HIDAPI_DriverLg4ff_SetRange.exit.sink.split
  ]

bb.bs:                                            ; preds = %bb.br
  %i.im = sub nsw i32 %.30.i, %.011.i
  %i.in = mul nsw i32 %i.im, 2047
  %i.io = add nsw i32 %i.in, 2047                 ; 2 uses
  %1 = sdiv i32 %i.io, 900
  %i.ip = sdiv i32 %i.io, 200
  %2 = select i1 %i.ii, i32 %1, i32 %i.ip         ; 3 uses
  %i.iq = sub nsw i32 4095, %2                    ; 2 uses
  %i.ir = lshr i32 %2, 4
  %i.is = trunc i32 %i.ir to i8
  store i8 %i.is, ptr %i.ab, align 1
  %i.it = lshr i32 %i.iq, 4
  %i.iu = trunc i32 %i.it to i8
  store i8 %i.iu, ptr %i.ac, align 1
  store i8 -1, ptr %i.ad, align 1
  %i.iv = shl nsw i32 %i.iq, 4
  %i.iw = and i32 %i.iv, 224
  %i.ix = and i32 %2, 14
  %i.iy = or disjoint i32 %i.iw, %i.ix
  %i.iz = trunc nuw i32 %i.iy to i8
  store i8 %i.iz, ptr %i.ae, align 1
  store i8 -1, ptr %i.af, align 1
  br label %HIDAPI_DriverLg4ff_SetRange.exit.sink.split

HIDAPI_DriverLg4ff_SetRange.exit.sink.split:      ; preds = %bb.br, %bb.br, %bb.bs, %bb.bp
  %i.ja = load ptr, ptr %i.p, align 8
  %i.jb = call i32 @SDL_hid_write_REAL(ptr noundef %i.ja, ptr noundef nonnull %i.b, i64 noundef 7) #7 ; 0 uses
  br label %HIDAPI_DriverLg4ff_SetRange.exit

HIDAPI_DriverLg4ff_SetRange.exit:                 ; preds = %HIDAPI_DriverLg4ff_SetRange.exit.sink.split, %SDL_HIDAPI_DriverLg4ff_GetEnvInt.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.jc = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ah, i8 0, i64 6, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 33
  %i.je = load i8, ptr %i.jd, align 1, !range !3, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bt, label %HIDAPI_DriverLg4ff_SetAutoCenter.exit

bb.bt:                                            ; preds = %HIDAPI_DriverLg4ff_SetRange.exit
  store i8 3, ptr %i.ag, align 1
  br label %HIDAPI_DriverLg4ff_SetAutoCenter.exit

HIDAPI_DriverLg4ff_SetAutoCenter.exit:            ; preds = %HIDAPI_DriverLg4ff_SetRange.exit, %bb.bt
  %.sink = phi i8 [ -2, %bb.bt ], [ -11, %HIDAPI_DriverLg4ff_SetRange.exit ]
  store i8 %.sink, ptr %i.a, align 1
  %i.jg = load ptr, ptr %i.p, align 8
  %i.jh = call i32 @SDL_hid_write_REAL(ptr noundef %i.jg, ptr noundef nonnull %i.a, i64 noundef 7) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bu

bb.bu:                                            ; preds = %HIDAPI_DriverLg4ff_HandleState.exit, %bb.bm, %HIDAPI_DriverLg4ff_SetAutoCenter.exit, %bb.k
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %.loopexit, label %bb.i, !llvm.loop !7

.loopexit:                                        ; preds = %bb.bu, %bb.a, %bb.b, %bb.j
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.j ], [ false, %bb.a ], [ true, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverLg4ff_OpenJoystick(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((96, 100), (112, 116)) %1) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  switch i16 %i.c, label %bb.g [
    i16 -15793, label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit
    i16 -15717, label %bb.b
    i16 -15719, label %bb.c
    i16 -15718, label %bb.d
    i16 -15720, label %bb.e
    i16 -15724, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

bb.c:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

bb.d:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

bb.e:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

bb.f:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

bb.g:                                             ; preds = %bb.a
  br label %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit

HIDAPI_DriverLg4ff_GetNumberOfButtons.exit:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ 13, %bb.f ], [ 23, %bb.b ], [ 19, %bb.c ], [ 21, %bb.d ], [ 14, %bb.e ], [ 25, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %.0.i, ptr %i.d, align 8
  %i.e = load i16, ptr %i.b, align 2
  switch i16 %i.e, label %bb.i [
    i16 -15793, label %.sink.split
    i16 -15717, label %.sink.split
    i16 -15719, label %.sink.split
    i16 -15724, label %.sink.split
    i16 -15718, label %bb.h
    i16 -15720, label %bb.h
  ]

bb.h:                                             ; preds = %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit
  br label %.sink.split

.sink.split:                                      ; preds = %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit, %bb.h
  %.sink = phi i32 [ 4, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit ], [ 3, %bb.h ], [ 4, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit ], [ 4, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit ], [ 4, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.sink, ptr %i.f, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %HIDAPI_DriverLg4ff_GetNumberOfButtons.exit
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverLg4ff_RumbleJoystick(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #7
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverLg4ff_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #7
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HIDAPI_DriverLg4ff_GetJoystickCapabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %switch.selectcmp.case1 = icmp eq i16 %i.b, -15793
  %switch.selectcmp.case2 = icmp eq i16 %i.b, -15717
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.c = zext i1 %switch.selectcmp to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverLg4ff_SetJoystickLED(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.c = load i16, ptr %i.b, align 2
  switch i16 %i.c, label %bb.b [
    i16 -15793, label %switch.lookup
    i16 -15717, label %switch.lookup
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #7
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a, %bb.a
  %spec.select = tail call i8 @llvm.umax.i8(i8 %3, i8 %2)
  %.1.in = tail call i8 @llvm.umax.i8(i8 %4, i8 %spec.select)
  %i.e = udiv i8 %.1.in, 51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = shl nuw nsw i8 %i.e, 3
  %switch.shiftamt = zext nneg i8 %i.f to i48
  %switch.downshift = lshr i48 34149402607872, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  store i8 -8, ptr %i.a, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 18, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %switch.masked, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.i, align 1
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 @SDL_hid_write_REAL(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef 7) #7
  %i.m = icmp eq i32 %i.l, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.011 = phi i1 [ %i.d, %bb.b ], [ %i.m, %switch.lookup ]
  ret i1 %.011
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverLg4ff_SendJoystickEffect(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %3 to i64
  %i.d = tail call i32 @SDL_hid_write_REAL(ptr noundef %i.b, ptr noundef %2, i64 noundef %i.c) #7
  %i.e = icmp eq i32 %i.d, %3
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverLg4ff_SetSensorsEnabled(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #7
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal void @HIDAPI_DriverLg4ff_CloseJoystick(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.c = load i16, ptr %i.b, align 2
  switch i16 %i.c, label %bb.b [
    i16 -15793, label %bb.c
end_hunk_0
