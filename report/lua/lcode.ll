Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lcode?download=true
inline.NumInlined: 205
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@luaK_posfix:bb.a
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !25
  %i.bf = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.bg = zext i8 %i.bf to i32
  %.not.i.i.i = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i.i.i, label %freeexp.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !66
  %i.bj = add i8 %i.bi, -1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.r, %bb.q, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 7 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66  ; 3 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !67
  %.not.i94 = icmp ult i8 %i.bl, %i.bo
  br i1 %.not.i94, label %luaK_exp2nextreg.exit, label %bb.s

bb.s:                                             ; preds = %freeexp.exit.i
  %i.bp = zext i8 %i.bl to i32
  %i.bq = add nuw nsw i32 %i.bp, 1                ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.br = trunc i32 %i.bq to i8
  %i.bs = load ptr, ptr %0, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i8 %i.br, ptr %i.bt, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.bk, align 1, !tbaa !66
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.s
  %i.bu = phi i8 [ %i.bl, %freeexp.exit.i ], [ %.pre.i.i, %bb.s ]
  %i.bv = add i8 %i.bu, 1                         ; 2 uses
  store i8 %i.bv, ptr %i.bk, align 1, !tbaa !66
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !46
  %i.cc = icmp sgt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.t, label %previousinstruction.exit.i

bb.t:                                             ; preds = %luaK_exp2nextreg.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !56
  %i.cg = sext i32 %i.bz to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  br label %previousinstruction.exit.i

previousinstruction.exit.i:                       ; preds = %bb.t, %luaK_exp2nextreg.exit
  %.0.i.i = phi ptr [ %i.ci, %bb.t ], [ @previousinstruction.invalidinstruction, %luaK_exp2nextreg.exit ] ; 3 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !57 ; 2 uses
  %i.ck = and i32 %i.cj, 127
  %i.cl = icmp eq i32 %i.ck, 53
  br i1 %i.cl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %previousinstruction.exit.i
  %i.cm = load i32, ptr %3, align 8, !tbaa !24
  %i.cn = icmp eq i32 %i.cm, 8
  br i1 %i.cn, label %bb.v, label %freeexp.exit.i95

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !25
  %i.cq = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.cr = zext i8 %i.cq to i32
  %.not.i.i.i96 = icmp slt i32 %i.cp, %i.cr
  br i1 %.not.i.i.i96, label %freeexp.exit.i95, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.ct = add i8 %i.cs, -1
  store i8 %i.ct, ptr %i.bk, align 1, !tbaa !66
  br label %freeexp.exit.i95

freeexp.exit.i95:                                 ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = load i32, ptr %.0.i.i, align 4, !tbaa !57
  %i.cv = and i32 %i.cu, -16744321
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !25
  %i.cy = shl i32 %i.cx, 7
  %i.cz = and i32 %i.cy, 32640
  %i.da = add i32 %i.cj, 65536
  %i.db = and i32 %i.da, 16711680
  %i.dc = or disjoint i32 %i.cv, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %.0.i.i, align 4, !tbaa !57
  br label %codeconcat.exit

bb.x:                                             ; preds = %previousinstruction.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !25
  %i.dg = shl i32 %i.df, 7
  %i.dh = or i32 %i.dg, 131125
  %i.di = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.dh) ; 0 uses
  %i.dj = load i32, ptr %3, align 8, !tbaa !24
  %i.dk = icmp eq i32 %i.dj, 8
  br i1 %i.dk, label %bb.y, label %freeexp.exit17.i

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !25
  %i.dn = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.do = zext i8 %i.dn to i32
  %.not.i.i16.i = icmp slt i32 %i.dm, %i.do
  br i1 %.not.i.i16.i, label %freeexp.exit17.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.dq = add i8 %i.dp, -1
  store i8 %i.dq, ptr %i.bk, align 1, !tbaa !66
  br label %freeexp.exit17.i

freeexp.exit17.i:                                 ; preds = %bb.z, %bb.y, %bb.x
  tail call void @luaK_fixline(ptr noundef nonnull %0, i32 noundef %4)
  br label %codeconcat.exit

bb.aa:                                            ; preds = %bb.c, %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %i.ds, %i.du
  br i1 %.not.i.i, label %bb.ab, label %tonumeral.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i32, ptr %2, align 8, !tbaa !24
  %.off.i = add i32 %i.dv, -5
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %tonumeral.exit.i, label %tonumeral.exit.thread.i

tonumeral.exit.i:                                 ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %tonumeral.exit.thread.i

tonumeral.exit.thread.i:                          ; preds = %tonumeral.exit.i, %bb.ab, %bb.aa
  %.0.i97 = phi i32 [ 1, %tonumeral.exit.i ], [ 0, %bb.aa ], [ 0, %bb.ab ] ; 3 uses
  %i.dw = icmp eq i32 %1, 0
  br i1 %i.dw, label %bb.ac, label %.split.i

.split.i:                                         ; preds = %tonumeral.exit.thread.i
  tail call fastcc void @codearith(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.0.i97, i32 noundef %4)
  br label %codeconcat.exit

bb.ac:                                            ; preds = %tonumeral.exit.thread.i
  %i.dx = load i32, ptr %3, align 8, !tbaa !24
  %i.dy = icmp eq i32 %i.dx, 6
  br i1 %i.dy, label %isKint.exit.i.i, label %.split15.i

isKint.exit.i.i:                                  ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !23
  %.not.i.not.i.i = icmp eq i32 %i.ea, %i.ec
  br i1 %.not.i.not.i.i, label %isSCint.exit.i, label %.split15.i

isSCint.exit.i:                                   ; preds = %isKint.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !25 ; 2 uses
  %i.ef = add i64 %i.ee, -129
  %i.eg = icmp ult i64 %i.ef, -256
  br i1 %i.eg, label %.split15.i, label %bb.ad

.split15.i:                                       ; preds = %isSCint.exit.i, %isKint.exit.i.i, %bb.ac
  tail call fastcc void @codearith(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %.0.i97, i32 noundef %4)
  br label %codeconcat.exit

bb.ad:                                            ; preds = %isSCint.exit.i
  %i.eh = trunc nsw i64 %i.ee to i32
  %i.ei = add nsw i32 %i.eh, 127
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull readonly %3, i32 noundef 21, i32 noundef %i.ei, i32 noundef range(i32 0, 2) %.0.i97, i32 noundef %4, i32 noundef 47, i32 noundef 6)
  br label %codeconcat.exit

bb.ae:                                            ; preds = %bb.c
  %i.ej = load i32, ptr %3, align 8, !tbaa !24
  %i.ek = icmp eq i32 %i.ej, 6
  br i1 %i.ek, label %isKint.exit.i, label %finishbinexpneg.exit.thread

isKint.exit.i:                                    ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load i32, ptr %i.el, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !23
  %.not.i.not.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not.i.not.i, label %bb.af, label %finishbinexpneg.exit.thread

bb.af:                                            ; preds = %isKint.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !25 ; 4 uses
  %i.er = sub i64 128, %i.eq
  %i.es = sub i64 127, %i.eq
  %i.et = or i64 %i.er, %i.es
  %or.cond.not.i = icmp ult i64 %i.et, 256
  br i1 %or.cond.not.i, label %finishbinexpneg.exit, label %finishbinexpneg.exit.thread

finishbinexpneg.exit:                             ; preds = %bb.af
  %i.eu = trunc i64 %i.eq to i32
  %i.ev = sub i32 127, %i.eu
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %3, i32 noundef 21, i32 noundef %i.ev, i32 noundef 0, i32 noundef %4, i32 noundef 47, i32 noundef 7)
  %i.ew = load ptr, ptr %0, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !56
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !45
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr [4 x i8], ptr %i.ey, i64 %i.fb
  %11 = trunc i64 %i.eq to i8
  %12 = add i8 %11, 127
  %13 = getelementptr i8, ptr %i.fc, i64 -2
  store i8 %12, ptr %13, align 2, !tbaa !57
  br label %codeconcat.exit

finishbinexpneg.exit.thread:                      ; preds = %bb.af, %bb.ae, %isKint.exit.i, %bb.c, %bb.c, %bb.c, %bb.c
  tail call fastcc void @codearith(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  br label %codeconcat.exit

bb.ag:                                            ; preds = %bb.c, %bb.c, %bb.c
  %i.fd = load i32, ptr %2, align 8, !tbaa !24
  %.not17.i = icmp eq i32 %i.fd, 6                ; 2 uses
  br i1 %.not17.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i98 = phi i32 [ 1, %bb.ah ], [ 0, %bb.ag ]
  %i.fe = load i32, ptr %3, align 8, !tbaa !24
  %i.ff = icmp eq i32 %i.fe, 6
  br i1 %i.ff, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fg = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef nonnull %3)
  %.not.i99 = icmp eq i32 %i.fg, 0
  br i1 %.not.i99, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = add nuw nsw i32 %1, 6
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !25
  %i.fk = add nuw nsw i32 %1, 22
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull readonly %3, i32 noundef %i.fk, i32 noundef %i.fj, i32 noundef range(i32 0, 2) %.0.i98, i32 noundef %4, i32 noundef 48, i32 noundef %i.fh)
  br label %codeconcat.exit

bb.al:                                            ; preds = %bb.aj, %bb.ai
  br i1 %.not17.i, label %bb.am, label %codebinNoK.exit.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %codebinNoK.exit.i

codebinNoK.exit.i:                                ; preds = %bb.am, %bb.al
  %i.fl = add nuw nsw i32 %1, 34
  %i.fm = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3)
  %i.fn = add nuw nsw i32 %1, 6
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef 0, i32 noundef %4, i32 noundef 46, i32 noundef %i.fn)
  br label %codeconcat.exit

bb.an:                                            ; preds = %bb.c
  %i.fo = load i32, ptr %2, align 8, !tbaa !24
  %i.fp = icmp eq i32 %i.fo, 6
  br i1 %i.fp, label %isKint.exit.i100, label %isSCint.exit.thread

isKint.exit.i100:                                 ; preds = %bb.an
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !23
  %.not.i.not.i101 = icmp eq i32 %i.fr, %i.ft
  br i1 %.not.i.not.i101, label %isSCint.exit, label %isSCint.exit.thread

isSCint.exit:                                     ; preds = %isKint.exit.i100
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !25
  %i.fw = add i64 %i.fv, -129
  %i.fx = icmp ult i64 %i.fw, -256
  br i1 %i.fx, label %isSCint.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %isSCint.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !25
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = add nsw i32 %i.ga, 127
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef nonnull %2, ptr noundef readonly %3, i32 noundef 32, i32 noundef %i.gb, i32 noundef 1, i32 noundef %4, i32 noundef 47, i32 noundef 16)
  br label %codeconcat.exit

isSCint.exit.thread:                              ; preds = %bb.an, %isKint.exit.i100, %isSCint.exit
  %i.gc = tail call fastcc i32 @finishbinexpneg(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 33, i32 noundef %4, i32 noundef 16)
  %.not82 = icmp eq i32 %i.gc, 0
  br i1 %.not82, label %bb.ap, label %codeconcat.exit

bb.ap:                                            ; preds = %isSCint.exit.thread
  tail call fastcc void @codebinexpval(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4)
  br label %codeconcat.exit

bb.aq:                                            ; preds = %bb.c
  %i.gd = load i32, ptr %3, align 8, !tbaa !24
  %i.ge = icmp eq i32 %i.gd, 6
  br i1 %i.ge, label %isKint.exit.i102, label %isSCint.exit104.thread

isKint.exit.i102:                                 ; preds = %bb.aq
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !23
  %.not.i.not.i103 = icmp eq i32 %i.gg, %i.gi
  br i1 %.not.i.not.i103, label %isSCint.exit104, label %isSCint.exit104.thread

isSCint.exit104:                                  ; preds = %isKint.exit.i102
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !25 ; 2 uses
  %i.gl = add i64 %i.gk, -129
  %i.gm = icmp ult i64 %i.gl, -256
  br i1 %i.gm, label %isSCint.exit104.thread, label %bb.ar

bb.ar:                                            ; preds = %isSCint.exit104
  %i.gn = trunc nsw i64 %i.gk to i32
  %i.go = add nsw i32 %i.gn, 127
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %3, i32 noundef 33, i32 noundef %i.go, i32 noundef 0, i32 noundef %4, i32 noundef 47, i32 noundef 17)
  br label %codeconcat.exit

isSCint.exit104.thread:                           ; preds = %bb.aq, %isKint.exit.i102, %isSCint.exit104
  tail call fastcc void @codebinexpval(ptr noundef %0, i32 noundef 11, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4)
  br label %codeconcat.exit

bb.as:                                            ; preds = %bb.c, %bb.c
  %i.gp = load i32, ptr %2, align 8, !tbaa !24
  %.not.i105 = icmp eq i32 %i.gp, 8
  br i1 %.not.i105, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gq = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.gr = load i32, ptr %3, align 8, !tbaa !24
  switch i32 %i.gr, label %bb.ba [
    i32 6, label %bb.av
    i32 5, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !25
  store i64 %i.gt, ptr %i.c, align 8, !tbaa !72
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !25
  %i.gw = call i32 @luaV_flttointeger(double noundef %i.gv, ptr noundef nonnull %i.c, i32 noundef 0) #11
  %.not.i.i106 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i106, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.026.i = phi i32 [ 0, %bb.av ], [ 1, %bb.aw ]  ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !23
  %.not9.i.i = icmp eq i32 %i.gy, %i.ha
  br i1 %.not9.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load i64, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.hc = add i64 %i.hb, -129
  %i.hd = icmp ult i64 %i.hc, -256
  br i1 %i.hd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.he = trunc nsw i64 %i.hb to i32
  %i.hf = add nsw i32 %i.he, 127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  %.1.ph.i = phi i32 [ 0, %bb.aw ], [ %.026.i, %bb.ax ], [ %.026.i, %bb.ay ], [ 0, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.hg = call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef nonnull %3)
  %.not.i23.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i23.i, label %bb.bb, label %exp2RK.exit.i

exp2RK.exit.i:                                    ; preds = %bb.ba
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !25
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hj = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3) ; 0 uses
  %i.hk = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3)
  br label %bb.bc
end_hunk_0
begin_hunk_1_@luaK_posfix:bb.a
    i32 5, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !25
  store i64 %i.ja, ptr %i.b, align 8, !tbaa !72
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !25
  %i.jd = call i32 @luaV_flttointeger(double noundef %i.jc, ptr noundef nonnull %i.b, i32 noundef 0) #11
  %.not.i.i108 = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i108, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1.i109 = phi i32 [ 0, %bb.bn ], [ 1, %bb.bo ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !23
  %.not9.i.i110 = icmp eq i32 %i.jf, %i.jh
  br i1 %.not9.i.i110, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ji = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.jj = add i64 %i.ji, -129
  %i.jk = icmp ult i64 %i.jj, -256
  br i1 %i.jk, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jl = trunc nsw i64 %i.ji to i32
  %i.jm = add nsw i32 %i.jl, 127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.jn = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2.ph.i = phi i32 [ 0, %bb.bo ], [ %.1.i109, %bb.bp ], [ %.1.i109, %bb.bq ], [ 0, %bb.bm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.jo = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.jo, label %bb.by [
    i32 6, label %bb.bt
    i32 5, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !25
  store i64 %i.jq, ptr %i.a, align 8, !tbaa !72
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.js = load double, ptr %i.jr, align 8, !tbaa !25
  %i.jt = call i32 @luaV_flttointeger(double noundef %i.js, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not.i24.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i24.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.3.i = phi i32 [ %.2.ph.i, %bb.bt ], [ 1, %bb.bu ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !22
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !23
  %.not9.i25.i = icmp eq i32 %i.jv, %i.jx
  br i1 %.not9.i25.i, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jy = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.jz = add i64 %i.jy, -129
  %i.ka = icmp ult i64 %i.jz, -256
  br i1 %i.ka, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kb = trunc nsw i64 %i.jy to i32
  %i.kc = add nsw i32 %i.kb, 127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.kd = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %.4.ph.i = phi i32 [ %.2.ph.i, %bb.bu ], [ %.3.i, %bb.bv ], [ %.3.i, %bb.bw ], [ %.2.ph.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ke = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2)
  %i.kf = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.br
  %.sink.i = phi i32 [ 50, %bb.bx ], [ 44, %bb.by ], [ 48, %bb.br ]
  %.030.i = phi i32 [ %.3.i, %bb.bx ], [ %.4.ph.i, %bb.by ], [ %.1.i109, %bb.br ]
  %.022.i = phi i32 [ %i.kd, %bb.bx ], [ %i.ke, %bb.by ], [ %i.jn, %bb.br ]
  %.021.i = phi i32 [ %i.kc, %bb.bx ], [ %i.kf, %bb.by ], [ %i.jm, %bb.br ]
  %i.kg = load i32, ptr %2, align 8, !tbaa !24
  %i.kh = icmp eq i32 %i.kg, 8
  br i1 %i.kh, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.kk = phi i32 [ %i.kj, %bb.ca ], [ -1, %bb.bz ] ; 3 uses
  %i.kl = load i32, ptr %3, align 8, !tbaa !24
  %i.km = icmp eq i32 %i.kl, 8
  br i1 %i.km, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !25
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kp = phi i32 [ %i.ko, %bb.cc ], [ -1, %bb.cb ] ; 3 uses
  %i.kq = icmp sgt i32 %i.kk, %i.kp
  %i.kr = call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.ks = zext i8 %i.kr to i32                    ; 2 uses
  br i1 %i.kq, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i.i115 = icmp slt i32 %i.kk, %i.ks
  br i1 %.not.i.i.i.i115, label %freereg.exit.i.i.i116, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !66
  %i.kv = add i8 %i.ku, -1
  store i8 %i.kv, ptr %i.kt, align 1, !tbaa !66
  br label %freereg.exit.i.i.i116

freereg.exit.i.i.i116:                            ; preds = %bb.cf, %bb.ce
  %i.kw = call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.kx = zext i8 %i.kw to i32
  %.not.i11.i.i.i117 = icmp slt i32 %i.kp, %i.kx
  br i1 %.not.i11.i.i.i117, label %codeorder.exit, label %freereg.exit12.sink.split.i.i.i114

bb.cg:                                            ; preds = %bb.cd
  %.not.i13.i.i.i111 = icmp slt i32 %i.kp, %i.ks
  br i1 %.not.i13.i.i.i111, label %freereg.exit14.i.i.i112, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !66
  %i.la = add i8 %i.kz, -1
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !66
  br label %freereg.exit14.i.i.i112

freereg.exit14.i.i.i112:                          ; preds = %bb.ch, %bb.cg
  %i.lb = call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.lc = zext i8 %i.lb to i32
  %.not.i15.i.i.i113 = icmp slt i32 %i.kk, %i.lc
  br i1 %.not.i15.i.i.i113, label %codeorder.exit, label %freereg.exit12.sink.split.i.i.i114

freereg.exit12.sink.split.i.i.i114:               ; preds = %freereg.exit14.i.i.i112, %freereg.exit.i.i.i116
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !66
  %i.lf = add i8 %i.le, -1
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !66
  br label %codeorder.exit

codeorder.exit:                                   ; preds = %freereg.exit.i.i.i116, %freereg.exit14.i.i.i112, %freereg.exit12.sink.split.i.i.i114
  %i.lg = add nuw nsw i32 %.sink.i, %.0
  %i.lh = shl i32 %.022.i, 7
  %i.li = shl i32 %.021.i, 16
  %i.lj = shl nuw nsw i32 %.030.i, 24
  %i.lk = or i32 %i.lg, %i.lj
  %i.ll = or i32 %i.lk, %i.lh
  %i.lm = or i32 %i.ll, %i.li
  %i.ln = or i32 %i.lm, 32768
  %i.lo = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.ln) ; 0 uses
  %i.lp = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.lp, ptr %i.lq, align 8, !tbaa !25
  store i32 19, ptr %2, align 8, !tbaa !24
  br label %codeconcat.exit

codeconcat.exit:                                  ; preds = %codebinNoK.exit.i, %bb.ak, %finishbinexpneg.exit, %bb.ad, %.split15.i, %.split.i, %freeexp.exit17.i, %freeexp.exit.i95, %bb.c, %bb.ar, %isSCint.exit104.thread, %bb.ao, %isSCint.exit.thread, %bb.ap, %bb.b, %codeorder.exit, %codeeq.exit, %finishbinexpneg.exit.thread, %luaK_concat.exit93, %luaK_concat.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @finishbinexpneg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 21, 34) %3, i32 noundef %4, i32 noundef range(i32 7, 17) %5) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %isKint.exit, label %isKint.exit.thread

isKint.exit:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not.i.not = icmp eq i32 %i.d, %i.f
  br i1 %.not.i.not, label %bb.b, label %isKint.exit.thread

bb.b:                                             ; preds = %isKint.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25   ; 4 uses
  %i.i = sub i64 128, %i.h
  %i.j = sub i64 127, %i.h
  %i.k = or i64 %i.i, %i.j
  %or.cond.not = icmp ult i64 %i.k, 256
  br i1 %or.cond.not, label %bb.c, label %isKint.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.h to i32
  %i.m = sub i32 127, %i.l
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.m, i32 noundef 0, i32 noundef %4, i32 noundef 47, i32 noundef %5)
  %i.n = load ptr, ptr %0, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %i.p, i64 %i.s
  %6 = trunc i64 %i.h to i8
  %7 = add i8 %6, 127
  %8 = getelementptr i8, ptr %i.t, i64 -2
  store i8 %7, ptr %8, align 2, !tbaa !57
  br label %isKint.exit.thread

isKint.exit.thread:                               ; preds = %bb.a, %bb.c, %bb.b, %isKint.exit
  %.1 = phi i32 [ 0, %isKint.exit ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %6 = alloca %struct.expdesc, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %tonumeral.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 8, !tbaa !24
  %.off = add i32 %i.e, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %tonumeral.exit, label %tonumeral.exit.thread

tonumeral.exit:                                   ; preds = %bb.b
  %i.f = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef nonnull %3)
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %tonumeral.exit.thread, label %bb.c

bb.c:                                             ; preds = %tonumeral.exit
  %i.g = add nsw i32 %1, 6
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = add nsw i32 %1, 22
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %3, i32 noundef %i.j, i32 noundef %i.i, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef 48, i32 noundef %i.g)
  br label %bb.e

tonumeral.exit.thread:                            ; preds = %bb.b, %bb.a, %tonumeral.exit
  %.not.i15 = icmp eq i32 %4, 0
  br i1 %.not.i15, label %codebinNoK.exit, label %bb.d

bb.d:                                             ; preds = %tonumeral.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %codebinNoK.exit

codebinNoK.exit:                                  ; preds = %tonumeral.exit.thread, %bb.d
  %i.k = add nsw i32 %1, 34
  %i.l = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3)
  %i.m = add nsw i32 %1, 6
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %i.k, i32 noundef %i.l, i32 noundef 0, i32 noundef %5, i32 noundef 46, i32 noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %codebinNoK.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codebinexpval(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %1, 34
  %i.b = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %3)
  %i.c = add nsw i32 %1, 6
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 0, i32 noundef %4, i32 noundef 46, i32 noundef %i.c)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_settablesize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @luaO_ceillog2(i32 noundef %4) #11
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = add nuw nsw i32 %i.f, 65536
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.i = icmp sgt i32 %3, 1023
  %i.j = sdiv i32 %3, 1024
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = shl i32 %2, 7
  %i.n = shl i32 %3, 22
  %i.o = select i1 %i.i, i32 32768, i32 0
  %i.p = or i32 %i.m, %i.n
  %i.q = or i32 %i.p, %i.o
  %i.r = or i32 %i.q, %i.h
  %i.s = or i32 %i.r, 19
  store i32 %i.s, ptr %i.l, align 4, !tbaa !57
  %i.t = shl nsw i32 %i.j, 7
  %i.u = or disjoint i32 %i.t, 84
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !57
  ret void
}

declare hidden zeroext i8 @luaO_ceillog2(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaK_setlist(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %3, -1
  %i.b = icmp slt i32 %2, 1024
  %i.c = shl i32 %1, 7
  %i.d = shl i32 %3, 16
  %i.e = select i1 %i.a, i32 0, i32 %i.d
  %i.f = shl i32 %2, 22
  %i.g = or i32 %i.c, %i.f
  %i.h = or i32 %i.g, %i.e                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.h, 78
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = or i32 %i.h, 32846
  %i.k = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.j) ; 0 uses
  %i.l = lshr i32 %2, 3
  %i.m = and i32 %i.l, 268435328
  %i.n = or disjoint i32 %i.m, 84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.o = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %.sink) ; 0 uses
  %i.p = trunc i32 %1 to i8
  %i.q = add i8 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.q, ptr %i.r, align 1, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_finish(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !68    ; 3 uses
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.c, -2                          ; 2 uses
  store i8 %i.e, ptr %i.b, align 1, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ %i.e, %bb.b ], [ %i.c, %bb.a ]  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 79 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.n = and i8 %i.f, 2
  %.not30 = icmp eq i8 %i.n, 0
  %i.o = and i8 %i.f, 2
  %.not31 = icmp eq i8 %i.o, 0
  %.not33 = trunc i8 %i.f to i1
  %i.p = and i8 %i.f, 1
  %.not35 = icmp eq i8 %i.p, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57   ; 6 uses
  %i.s = and i32 %i.r, 127
  switch i32 %i.s, label %bb.q [
    i32 71, label %bb.e
    i32 72, label %bb.e
    i32 70, label %bb.g
    i32 69, label %bb.g
    i32 81, label %bb.k
    i32 80, label %bb.m
    i32 56, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br label %.preheader

bb.e:                                             ; preds = %bb.d, %bb.d
end_hunk_1
