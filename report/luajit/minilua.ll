Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@chunk:bb.a
  %or.cond4.i = and i1 %i.ajo, %i.agx
  br i1 %or.cond4.i, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %luaK_setreturns.exit.i
  %i.ajp = load i32, ptr %i.m, align 8, !tbaa !81
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.ail, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !162
  %i.ajt = and i32 %i.ajs, -64
  %i.aju = or disjoint i32 %i.ajt, 29
  store i32 %i.aju, ptr %i.ajr, align 4, !tbaa !162
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %luaK_setreturns.exit.i
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agr, i64 74
  %i.ajw = load i8, ptr %i.ajv, align 2, !tbaa !249
  %i.ajx = zext i8 %i.ajw to i32
  br label %retstat.exit

bb.gx:                                            ; preds = %explist1.exit.i.thread
  %i.ajy = call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.agr, ptr noundef %23), !inline_history !481
  br label %retstat.exit

bb.gy:                                            ; preds = %explist1.exit.i
  call fastcc void @luaK_dischargevars(ptr noundef %i.agr, ptr noundef nonnull %23), !inline_history !481
  %i.ajz = load i32, ptr %23, align 8, !tbaa !244
  %i.aka = icmp eq i32 %i.ajz, 12
  br i1 %i.aka, label %bb.gz, label %freeexp.exit.i.i

bb.gz:                                            ; preds = %bb.gy
  %i.akb = load i32, ptr %i.m, align 8, !tbaa !81 ; 2 uses
  %i.akc = and i32 %i.akb, 256
  %.not.i.i.i.i = icmp eq i32 %i.akc, 0
  br i1 %.not.i.i.i.i, label %bb.ha, label %freeexp.exit.i.i

bb.ha:                                            ; preds = %bb.gz
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agr, i64 74
  %i.ake = load i8, ptr %i.akd, align 2, !tbaa !249
  %i.akf = zext i8 %i.ake to i32
  %.not3.i.i.i.i = icmp slt i32 %i.akb, %i.akf
  br i1 %.not3.i.i.i.i, label %freeexp.exit.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akg = getelementptr inbounds nuw i8, ptr %i.agr, i64 60 ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !253
  %i.aki = add nsw i32 %i.akh, -1
  store i32 %i.aki, ptr %i.akg, align 4, !tbaa !253
  br label %freeexp.exit.i.i

freeexp.exit.i.i:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy
  %i.akj = getelementptr inbounds nuw i8, ptr %i.agr, i64 60 ; 2 uses
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !253 ; 4 uses
  %i.akl = add nsw i32 %i.akk, 1                  ; 2 uses
  %i.akm = load ptr, ptr %i.agr, align 8, !tbaa !232
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 115 ; 2 uses
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !182
  %i.akp = zext i8 %i.ako to i32
  %.not.i25.i = icmp slt i32 %i.akk, %i.akp
  br i1 %.not.i25.i, label %luaK_exp2nextreg.exit.i, label %bb.hc

bb.hc:                                            ; preds = %freeexp.exit.i.i
  %i.akq = icmp samesign ugt i32 %i.akk, 248
  br i1 %i.akq, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.akr = getelementptr inbounds nuw i8, ptr %i.agr, i64 24
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !236 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.aks, ptr noundef nonnull @.str.152, i32 noundef %i.aku), !inline_history !481
  unreachable

bb.he:                                            ; preds = %bb.hc
  %i.akv = trunc nuw i32 %i.akl to i8
  store i8 %i.akv, ptr %i.akn, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit.i

luaK_exp2nextreg.exit.i:                          ; preds = %bb.he, %freeexp.exit.i.i
  store i32 %i.akl, ptr %i.akj, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.agr, ptr noundef nonnull %23, i32 noundef %i.akk), !inline_history !481
  %i.akw = getelementptr inbounds nuw i8, ptr %i.agr, i64 74
  %i.akx = load i8, ptr %i.akw, align 2, !tbaa !249
  %i.aky = zext i8 %i.akx to i32
  %i.akz = shl i32 %i.aia, 23
  %i.ala = add i32 %i.akz, 8388638
  br label %retstat.exit

retstat.exit:                                     ; preds = %luaX_next.exit.i, %luaX_next.exit.i, %luaX_next.exit.i, %luaX_next.exit.i, %luaX_next.exit.i, %luaX_next.exit.i, %bb.gw, %bb.gx, %luaK_exp2nextreg.exit.i
  %.020.i = phi i32 [ %i.aky, %luaK_exp2nextreg.exit.i ], [ %i.ajx, %bb.gw ], [ %i.ajy, %bb.gx ], [ 0, %luaX_next.exit.i ], [ 0, %luaX_next.exit.i ], [ 0, %luaX_next.exit.i ], [ 0, %luaX_next.exit.i ], [ 0, %luaX_next.exit.i ], [ 0, %luaX_next.exit.i ]
  %.0.i13 = phi i32 [ %i.ala, %luaK_exp2nextreg.exit.i ], [ 30, %bb.gw ], [ 16777246, %bb.gx ], [ 8388638, %luaX_next.exit.i ], [ 8388638, %luaX_next.exit.i ], [ 8388638, %luaX_next.exit.i ], [ 8388638, %luaX_next.exit.i ], [ 8388638, %luaX_next.exit.i ], [ 8388638, %luaX_next.exit.i ]
  %i.alb = shl i32 %.020.i, 6
  %i.alc = or i32 %.0.i13, %i.alb
  %i.ald = getelementptr inbounds nuw i8, ptr %i.agr, i64 24
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !236
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !224
  %i.alh = call fastcc i32 @luaK_code(ptr noundef %i.agr, i32 noundef %i.alc, i32 noundef %i.alg), !inline_history !481 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %statement.exit

bb.hf:                                            ; preds = %bb.d
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.ali = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i10 = icmp eq i32 %i.ali, 287
  br i1 %.not.i10, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit

bb.hh:                                            ; preds = %bb.hf
  %i.alj = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.alj, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.hg, %bb.hh
  call fastcc void @breakstat(ptr noundef nonnull %0), !inline_history !462
  br label %statement.exit

bb.hi:                                            ; preds = %bb.d
  %i.alk = load ptr, ptr %i.l, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  call fastcc void @primaryexp(ptr noundef nonnull %0, ptr noundef %i.bh), !inline_history !483
  %i.all = load i32, ptr %i.bh, align 8, !tbaa !258
  %i.alm = icmp eq i32 %i.all, 13
  br i1 %i.alm, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aln = load ptr, ptr %i.alk, align 8, !tbaa !232
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 24
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !160
  %i.alq = load i32, ptr %i.bi, align 8, !tbaa !81
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [4 x i8], ptr %i.alp, i64 %i.alr ; 2 uses
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !162
  %i.alu = and i32 %i.alt, -8372225
  %i.alv = or disjoint i32 %i.alu, 16384
  store i32 %i.alv, ptr %i.als, align 4, !tbaa !162
  br label %exprstat.exit

bb.hk:                                            ; preds = %bb.hi
  store ptr null, ptr %24, align 8, !tbaa !259
  call fastcc void @assignment(ptr noundef nonnull %0, ptr noundef %24, i32 noundef 1), !inline_history !483
  br label %exprstat.exit

exprstat.exit:                                    ; preds = %bb.hj, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %statement.exit

statement.exit:                                   ; preds = %ifstat.exit, %whilestat.exit, %luaX_next.exit51, %forstat.exit, %repeatstat.exit, %body.exit, %luaK_reserveregs.exit.i, %localstat.exit, %retstat.exit, %luaX_next.exit, %exprstat.exit
  %.not = phi i1 [ true, %exprstat.exit ], [ true, %ifstat.exit ], [ true, %whilestat.exit ], [ true, %luaX_next.exit51 ], [ true, %forstat.exit ], [ true, %repeatstat.exit ], [ true, %body.exit ], [ false, %luaX_next.exit ], [ false, %retstat.exit ], [ true, %localstat.exit ], [ true, %luaK_reserveregs.exit.i ]
  %i.alw = load i32, ptr %i.g, align 8, !tbaa !234
  %i.alx = icmp eq i32 %i.alw, 59
  br i1 %i.alx, label %bb.hl, label %testnext.exit

bb.hl:                                            ; preds = %statement.exit
  %i.aly = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.aly, ptr %i.i, align 8, !tbaa !224
  %i.alz = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i = icmp eq i32 %i.alz, 287
  br i1 %.not.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %testnext.exit

bb.hn:                                            ; preds = %bb.hl
  %i.ama = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.ama, ptr %i.g, align 8, !tbaa !234
  br label %testnext.exit

testnext.exit:                                    ; preds = %statement.exit, %bb.hm, %bb.hn
  %i.amb = load ptr, ptr %i.l, align 8, !tbaa !222 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 74
  %i.amd = load i8, ptr %i.amc, align 2, !tbaa !249
  %i.ame = zext i8 %i.amd to i32
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amb, i64 60
  store i32 %i.ame, ptr %i.amf, align 4, !tbaa !253
  br i1 %.not, label %bb.c, label %.critedge, !llvm.loop !484

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %testnext.exit
  %i.amg = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 96 ; 2 uses
  %i.ami = load i16, ptr %i.amh, align 8, !tbaa !116
  %i.amj = add i16 %i.ami, -1
  store i16 %i.amj, ptr %i.amh, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_func(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 31 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 74 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !249   ; 4 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %removevars.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !238  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 196 ; 5 uses
  %i.m = zext i8 %i.g to i64                      ; 2 uses
  %xtraiter = and i8 %i.g, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.n, %.prol.preheader ], [ %i.m, %.lr.ph.i ]
  %prol.iter = phi i8 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.n = add nsw i64 %indvars.iv.prol, -1         ; 3 uses
  %1 = and i64 %i.n, 255
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %1
  %i.p = load i16, ptr %i.o, align 2, !tbaa !177
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.i, ptr %i.s, align 4, !tbaa !260
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !485

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.m, %.lr.ph.i ], [ %i.n, %.prol.preheader ]
  %i.t = icmp ult i8 %i.g, 4
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %indvars.iv.next.i = add i64 %indvars.iv, 255
  %2 = and i64 %indvars.iv.next.i, 255
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %2
  %i.u = load i16, ptr %3, align 2, !tbaa !177
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.i, ptr %i.x, align 4, !tbaa !260
  %indvars.iv.next.i.1 = add i64 %indvars.iv, 254
  %4 = and i64 %indvars.iv.next.i.1, 255
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %4
  %i.y = load i16, ptr %5, align 2, !tbaa !177
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.i, ptr %i.ab, align 4, !tbaa !260
  %indvars.iv.next.i.2 = add i64 %indvars.iv, 253
  %6 = and i64 %indvars.iv.next.i.2, 255
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %6
  %i.ac = load i16, ptr %7, align 2, !tbaa !177
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.i, ptr %i.af, align 4, !tbaa !260
  %i.ag = add nsw i64 %indvars.iv, -4             ; 3 uses
  %8 = and i64 %i.ag, 255
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %8
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !177
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.i, ptr %i.al, align 4, !tbaa !260
  %9 = and i64 %i.ag, 255
  %.not88.wide.3 = icmp eq i64 %9, 0
  br i1 %.not88.wide.3, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  store i8 0, ptr %i.f, align 2, !tbaa !249
  br label %removevars.exit

removevars.exit:                                  ; preds = %bb.a, %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !224
  %i.aq = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.d, i32 noundef 8388638, i32 noundef %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !238 ; 3 uses
  %i.at = icmp sgt i32 %i.as, -2
  br i1 %i.at, label %bb.b, label %bb.h

bb.b:                                             ; preds = %removevars.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !201
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 2                    ; 2 uses
  %i.ba = sext i32 %i.as to i64
  %i.bb = shl nsw i64 %i.ba, 2                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 18 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79
  %i.bi = tail call ptr %i.bf(ptr noundef %i.bh, ptr noundef %i.av, i64 noundef %i.az, i64 noundef %i.bb) #33, !inline_history !8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = icmp ne i32 %i.as, 0
  %or.cond.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i, label %bb.c, label %luaM_realloc_.exit

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  store volatile i32 4, ptr %i.bn, align 8, !tbaa !136
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.bo, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.bp, align 2, !tbaa !74
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84
  %.not10.i.i = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  %i.bw = tail call i32 %i.bv(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit:                               ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 120 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !89
  %i.bz = sub nsw i64 %i.bb, %i.az
  %i.ca = add i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !89
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !160
  %i.cb = load i32, ptr %i.ar, align 8, !tbaa !238 ; 4 uses
  store i32 %i.cb, ptr %i.aw, align 8, !tbaa !201
  %i.cc = icmp sgt i32 %i.cb, -2
  br i1 %i.cc, label %bb.i, label %bb.o

bb.h:                                             ; preds = %removevars.exit
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.i:                                             ; preds = %luaM_realloc_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !161
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !202
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 2                    ; 2 uses
  %i.cj = sext i32 %i.cb to i64
  %i.ck = shl nsw i64 %i.cj, 2                    ; 2 uses
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !79
  %i.cq = tail call ptr %i.cn(ptr noundef %i.cp, ptr noundef %i.ce, i64 noundef %i.ci, i64 noundef %i.ck) #33, !inline_history !8 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = icmp ne i32 %i.cb, 0
  %or.cond.i64 = and i1 %i.cs, %i.cr
  br i1 %or.cond.i64, label %bb.j, label %luaM_realloc_.exit67

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !71 ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 208
  store volatile i32 4, ptr %i.cv, align 8, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.cw, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.cx, align 2, !tbaa !74
  %i.cy = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !84
  %.not10.i.i66 = icmp eq ptr %i.da, null
  br i1 %.not10.i.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.db = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !84
  %i.de = tail call i32 %i.dd(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit67:                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 120 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !89
  %i.dh = sub nsw i64 %i.ck, %i.ci
  %i.di = add i64 %i.dh, %i.dg
  store i64 %i.di, ptr %i.df, align 8, !tbaa !89
  store ptr %i.cq, ptr %i.cd, align 8, !tbaa !161
  %i.dj = load i32, ptr %i.ar, align 8, !tbaa !238
  store i32 %i.dj, ptr %i.cf, align 4, !tbaa !202
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !261 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, -2
  br i1 %i.dm, label %bb.p, label %bb.v

bb.o:                                             ; preds = %luaM_realloc_.exit
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.p:                                             ; preds = %luaM_realloc_.exit67
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !171
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !193
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 4                    ; 2 uses
  %i.dt = sext i32 %i.dl to i64
  %i.du = shl nsw i64 %i.dt, 4                    ; 2 uses
  %i.dv = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !79
  %i.ea = tail call ptr %i.dx(ptr noundef %i.dz, ptr noundef %i.do, i64 noundef %i.ds, i64 noundef %i.du) #33, !inline_history !8 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  %i.ec = icmp ne i32 %i.dl, 0
  %or.cond.i69 = and i1 %i.ec, %i.eb
  br i1 %or.cond.i69, label %bb.q, label %luaM_realloc_.exit72

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !71 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i70, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 208
  store volatile i32 4, ptr %i.ef, align 8, !tbaa !136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.eg, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.eh, align 2, !tbaa !74
  %i.ei = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !84
  %.not10.i.i71 = icmp eq ptr %i.ek, null
end_hunk_0
begin_hunk_1_@singlevaraux:bb.a
  %i.dc = trunc nuw nsw i64 %indvars.iv.i20 to i32
  br label %indexupvalue.exit

indexupvalue.exit:                                ; preds = %luaC_barrierf.exit.i, %.loopexit.loopexit.i
  %.040.i = phi i32 [ %i.db, %luaC_barrierf.exit.i ], [ %i.dc, %.loopexit.loopexit.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.040.i, ptr %i.dd, align 8, !tbaa !81
  store i32 7, ptr %2, align 8, !tbaa !244
  br label %markupval.exit

markupval.exit:                                   ; preds = %bb.g, %.critedge.i, %indexupvalue.exit, %searchvar.exit, %searchvar.exit.thread, %bb.b
  %.1 = phi i32 [ 8, %bb.b ], [ 7, %indexupvalue.exit ], [ 6, %searchvar.exit ], [ 8, %searchvar.exit.thread ], [ 6, %.critedge.i ], [ 6, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !244
  switch i32 %i.a, label %.thread.thread [
    i32 11, label %bb.b
    i32 12, label %discharge2anyreg.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !81
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !162  ; 2 uses
  %i.j = and i32 %i.i, 63
  %i.k = icmp eq i32 %i.j, 19
  br i1 %i.k, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !238
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !238
  %i.o = lshr i32 %i.i, 23
  %i.p = xor i32 %2, 1
  %i.q = tail call fastcc i32 @condjump(ptr noundef nonnull %0, i32 noundef 26, i32 noundef %i.o, i32 noundef 0, i32 noundef %i.p)
  br label %bb.i

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !253  ; 4 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !232
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 115 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !182
  %i.x = zext i8 %i.w to i32
  %.not5.i = icmp slt i32 %i.s, %i.x
  br i1 %.not5.i, label %discharge2anyreg.exit, label %bb.d

bb.d:                                             ; preds = %.thread.thread
  %i.y = icmp samesign ugt i32 %i.s, 248
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !236 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.aa, ptr noundef nonnull @.str.152, i32 noundef %i.ac)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = trunc nuw i32 %i.t to i8
  store i8 %i.ad, ptr %i.v, align 1, !tbaa !182
  br label %discharge2anyreg.exit

discharge2anyreg.exit:                            ; preds = %.thread.thread, %bb.f
  store i32 %i.t, ptr %i.r, align 4, !tbaa !253
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.s)
  %.pre = load i32, ptr %1, align 8, !tbaa !244
  %i.ae = icmp eq i32 %.pre, 12
  br i1 %i.ae, label %discharge2anyreg.exit.thread, label %freeexp.exit

discharge2anyreg.exit.thread:                     ; preds = %bb.a, %discharge2anyreg.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !81 ; 2 uses
  %i.ah = and i32 %i.ag, 256
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.g, label %freeexp.exit

bb.g:                                             ; preds = %discharge2anyreg.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !249
  %i.ak = zext i8 %i.aj to i32
  %.not3.i.i = icmp slt i32 %i.ag, %i.ak
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !253
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !253
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %discharge2anyreg.exit, %discharge2anyreg.exit.thread, %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !81
  %i.aq = tail call fastcc i32 @condjump(ptr noundef %0, i32 noundef 27, i32 noundef 255, i32 noundef %i.ap, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %freeexp.exit
  %.1 = phi i32 [ %i.aq, %freeexp.exit ], [ %i.q, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @condjump(ptr nofree noundef captures(none) %0, i32 noundef range(i32 23, 28) %1, i32 noundef range(i32 0, 512) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 6
  %i.b = or disjoint i32 %i.a, %1
  %i.c = shl i32 %3, 23
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = shl i32 %4, 14
  %i.f = or i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !224
  %i.k = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.j) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !240  ; 3 uses
  store i32 -1, ptr %i.l, align 8, !tbaa !240
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !236
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !224
  %i.q = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef 2147450902, i32 noundef %i.p) ; 4 uses
  %i.r = icmp eq i32 %i.m, -1
  br i1 %i.r, label %luaK_jump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.q, -1
  br i1 %i.s, label %luaK_jump.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.t = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.t, align 8, !tbaa !160 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.q, %.preheader.i.i ] ; 3 uses
  %i.u = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162  ; 2 uses
  %i.x = lshr i32 %i.w, 14
  %i.y = add nsw i32 %i.x, -131071                ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %i.aa = add nuw nsw i32 %.0.i.i, 1
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ab, -1
  %.not.i.i = select i1 %i.z, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !26

bb.d:                                             ; preds = %bb.c
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.ac = add i32 %i.m, %.neg.i.i.i               ; 2 uses
  %i.ad = add i32 %i.ac, -131072
  %i.ae = icmp ult i32 %i.ad, -262143
  br i1 %i.ae, label %bb.e, label %fixjump.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !236 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.af, ptr noundef nonnull @.str.150, i32 noundef %i.ah)
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.d
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.u
  %i.aj = and i32 %i.w, 16383
  %i.ak = shl nsw i32 %i.ac, 14
  %i.al = add i32 %i.ak, 2147467264
  %i.am = or disjoint i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !162
  br label %luaK_jump.exit

luaK_jump.exit:                                   ; preds = %bb.a, %bb.b, %fixjump.exit.i.i
  %.0.i = phi i32 [ %i.q, %bb.a ], [ %i.q, %fixjump.exit.i.i ], [ %i.m, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @leaveblock(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !252
  store ptr %i.c, ptr %i.a, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !236  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !250   ; 6 uses
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr i8, ptr %i.e, i64 48
  %.val = load ptr, ptr %i.i, align 8, !tbaa !222 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 74 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !249   ; 4 uses
  %i.l = icmp ult i8 %i.g, %i.k
  br i1 %i.l, label %.lr.ph.i, label %removevars.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !238  ; 5 uses
  %i.o = load ptr, ptr %.val, align 8, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 196 ; 5 uses
  %i.s = zext i8 %i.k to i64                      ; 2 uses
  %1 = sub nuw i8 %i.k, %i.g
  %xtraiter = and i8 %1, 3                        ; 2 uses
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.t, %.prol.preheader ], [ %i.s, %.lr.ph.i ]
  %prol.iter = phi i8 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.t = add nsw i64 %indvars.iv.prol, -1         ; 3 uses
  %2 = and i64 %i.t, 255
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !177
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.n, ptr %i.y, align 4, !tbaa !260
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !529

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.s, %.lr.ph.i ], [ %i.t, %.prol.preheader ]
  %3 = sub i8 %i.g, %i.k
  %i.z = icmp ugt i8 %3, -4
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %indvars.iv.next.i = add i64 %indvars.iv, 255
  %4 = and i64 %indvars.iv.next.i, 255
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %4
  %i.aa = load i16, ptr %5, align 2, !tbaa !177
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.n, ptr %i.ad, align 4, !tbaa !260
  %indvars.iv.next.i.1 = add i64 %indvars.iv, 254
  %6 = and i64 %indvars.iv.next.i.1, 255
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %6
  %i.ae = load i16, ptr %7, align 2, !tbaa !177
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.n, ptr %i.ah, align 4, !tbaa !260
  %indvars.iv.next.i.2 = add i64 %indvars.iv, 253
  %8 = and i64 %indvars.iv.next.i.2, 255
  %9 = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %8
  %i.ai = load i16, ptr %9, align 2, !tbaa !177
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.n, ptr %i.al, align 4, !tbaa !260
  %i.am = add nsw i64 %indvars.iv, -4             ; 3 uses
  %indvars.i.3 = trunc i64 %i.am to i8
  %10 = and i64 %i.am, 255
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !177
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.n, ptr %i.ar, align 4, !tbaa !260
  %11 = icmp ult i8 %i.g, %indvars.i.3
  br i1 %11, label %.lr.ph.i.new, label %._crit_edge.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  store i8 %i.g, ptr %i.j, align 2, !tbaa !249
  br label %removevars.exit

removevars.exit:                                  ; preds = %bb.a, %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.at = load i8, ptr %i.as, align 1, !tbaa !251
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %removevars.exit
  %i.au = shl nuw nsw i32 %i.h, 6
  %i.av = or disjoint i32 %i.au, 35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !224
  %i.ay = tail call fastcc i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.ax) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %removevars.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !249
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !253
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !247 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !238
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !239
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = icmp eq i32 %i.be, -1
  br i1 %i.bj, label %luaK_patchtohere.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !162 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.bm = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.be, ptr %i.bi, align 8, !tbaa !162
  br label %luaK_patchtohere.exit

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.bu, %bb.f ], [ %i.bk, %.preheader.i.i ] ; 3 uses
  %i.bn = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !162 ; 2 uses
  %i.bq = lshr i32 %i.bp, 14
  %i.br = add nsw i32 %i.bq, -131071              ; 2 uses
  %i.bs = icmp eq i32 %i.br, -1
  %i.bt = add nuw nsw i32 %.0.i.i, 1
  %i.bu = add nsw i32 %i.bt, %i.br                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bu, -1
  %.not.i.i = select i1 %i.bs, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f, !llvm.loop !26

bb.g:                                             ; preds = %bb.f
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.bv = add i32 %i.be, %.neg.i.i.i              ; 2 uses
  %i.bw = add i32 %i.bv, -131072
  %i.bx = icmp ult i32 %i.bw, -262143
  br i1 %i.bx, label %bb.h, label %fixjump.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !236 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.by, ptr noundef nonnull @.str.150, i32 noundef %i.ca)
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.g
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bn
  %i.cc = and i32 %i.bp, 16383
  %i.cd = shl nsw i32 %i.bv, 14
  %i.ce = add i32 %i.cd, 2147467264
  %i.cf = or disjoint i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cb, align 4, !tbaa !162
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %bb.c, %bb.e, %fixjump.exit.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp1(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.expdesc, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !33 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222  ; 7 uses
  call fastcc void @luaK_dischargevars(ptr noundef %i.c, ptr noundef nonnull %1)
  %i.d = load i32, ptr %1, align 8, !tbaa !244
  %i.e = icmp eq i32 %i.d, 12
  br i1 %i.e, label %bb.b, label %freeexp.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = and i32 %i.g, 256
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.c, label %freeexp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 74
  %i.j = load i8, ptr %i.i, align 2, !tbaa !249
  %i.k = zext i8 %i.j to i32
  %.not3.i.i.i = icmp slt i32 %i.g, %i.k
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !253
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !253  ; 4 uses
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 115 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !182
  %i.u = zext i8 %i.t to i32
  %.not.i = icmp slt i32 %i.p, %i.u
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.e

bb.e:                                             ; preds = %freeexp.exit.i
  %i.v = icmp samesign ugt i32 %i.p, 248
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.x, ptr noundef nonnull @.str.152, i32 noundef %i.z)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = trunc nuw i32 %i.q to i8
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.g
  store i32 %i.q, ptr %i.o, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 2147483645) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
adjustlocalvars.exit:
  %5 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %6 = alloca %struct.BlockCnt, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 74 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !249
  %i.e = add i8 %i.d, 3                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 2, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !238  ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.l = zext i8 %i.e to i64                      ; 3 uses
  %i.m = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !177
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.g, ptr %i.r, align 8, !tbaa !254
  %i.s = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !177
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.g, ptr %i.x, align 8, !tbaa !254
  %i.y = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !177
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.g, ptr %i.ad, align 8, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !234
  %.not.i.i = icmp eq i32 %i.af, 259
end_hunk_1
