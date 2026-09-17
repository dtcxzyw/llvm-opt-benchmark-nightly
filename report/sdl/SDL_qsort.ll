Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_qsort?download=true
inline.NumInlined: 86
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@SDL_qsort_r_REAL:bb.a
  %i.aad = load i32, ptr %.0181213.i, align 4
  store i32 %i.aad, ptr %i.zu, align 4
  store i32 %i.aac, ptr %.0181213.i, align 4
  %i.aae = tail call i32 %3(ptr noundef %4, ptr noundef %.0179214.i, ptr noundef nonnull %i.zu) #4, !inline_history !120
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.aag = load i32, ptr %.0179214.i, align 4
  %i.aah = load i32, ptr %i.zu, align 4
  store i32 %i.aah, ptr %.0179214.i, align 4
  store i32 %i.aag, ptr %i.zu, align 4
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bc
  %i.aai = load i32, ptr %.0179214.i, align 4     ; 2 uses
  br i1 %i.aab, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.aaj = load i32, ptr %.0181213.i, align 4
  store i32 %i.aaj, ptr %.0179214.i, align 4
  store i32 %i.aai, ptr %.0181213.i, align 4
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.aak = load i32, ptr %i.zu, align 4
  store i32 %i.aak, ptr %.0179214.i, align 4
  store i32 %i.aai, ptr %i.zu, align 4
  %i.aal = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.zu, ptr noundef nonnull %.0181213.i) #4, !inline_history !120
  %i.aam = icmp sgt i32 %i.aal, 0
  br i1 %i.aam, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.aan = load i32, ptr %i.zu, align 4
  %i.aao = load i32, ptr %.0181213.i, align 4
  store i32 %i.aao, ptr %i.zu, align 4
  store i32 %i.aan, ptr %.0181213.i, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd
  %i.aap = getelementptr inbounds nuw i8, ptr %.0179214.i, i64 4
  %i.aaq = getelementptr inbounds i8, ptr %.0181213.i, i64 -4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bb
  %.0183.i = phi ptr [ %i.zx, %bb.bb ], [ %i.zu, %bb.bk ]
  %.1171.i = phi ptr [ %.0181213.i, %bb.bb ], [ %i.aaq, %bb.bk ]
  %.1169.i = phi ptr [ %.0179214.i, %bb.bb ], [ %i.aap, %bb.bk ]
  %i.aar = load i32, ptr %.0183.i, align 4
  store i32 %i.aar, ptr %i.zk, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.br, %bb.bl
  %.3173.i = phi ptr [ %.1171.i, %bb.bl ], [ %.5175.i, %bb.br ]
  %.3.i121 = phi ptr [ %.1169.i, %bb.bl ], [ %.5.i123, %bb.br ]
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.4.i = phi ptr [ %.3.i121, %bb.bm ], [ %i.aau, %bb.bn ] ; 7 uses
  %i.aas = tail call i32 %3(ptr noundef %4, ptr noundef %.4.i, ptr noundef nonnull %i.zk) #4, !inline_history !120
  %i.aat = icmp slt i32 %i.aas, 0
  %i.aau = getelementptr inbounds nuw i8, ptr %.4.i, i64 4 ; 3 uses
  br i1 %i.aat, label %bb.bn, label %.preheader.i122, !llvm.loop !12

.preheader.i122:                                  ; preds = %bb.bn, %.preheader.i122
  %.4174.i = phi ptr [ %i.aax, %.preheader.i122 ], [ %.3173.i, %bb.bn ] ; 7 uses
  %i.aav = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.zk, ptr noundef %.4174.i) #4, !inline_history !120
  %i.aaw = icmp slt i32 %i.aav, 0
  %i.aax = getelementptr inbounds i8, ptr %.4174.i, i64 -4 ; 3 uses
  br i1 %i.aaw, label %.preheader.i122, label %bb.bo, !llvm.loop !13

bb.bo:                                            ; preds = %.preheader.i122
  %i.aay = icmp ult ptr %.4.i, %.4174.i
  br i1 %i.aay, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aaz = load i32, ptr %.4.i, align 4
  %i.aba = load i32, ptr %.4174.i, align 4
  store i32 %i.aba, ptr %.4.i, align 4
  store i32 %i.aaz, ptr %.4174.i, align 4
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.abb = icmp eq ptr %.4.i, %.4174.i
  br i1 %i.abb, label %.loopexit.i124, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.5175.i = phi ptr [ %i.aax, %bb.bp ], [ %.4174.i, %bb.bq ] ; 3 uses
  %.5.i123 = phi ptr [ %i.aau, %bb.bp ], [ %.4.i, %bb.bq ] ; 3 uses
  %.not192.i = icmp ugt ptr %.5.i123, %.5175.i
  br i1 %.not192.i, label %.loopexit.i124, label %bb.bm, !llvm.loop !14

.loopexit.i124:                                   ; preds = %bb.br, %bb.bq
  %.6176.i = phi ptr [ %i.aax, %bb.bq ], [ %.5175.i, %bb.br ] ; 4 uses
  %.6.i125 = phi ptr [ %i.aau, %bb.bq ], [ %.5.i123, %bb.br ] ; 4 uses
  %i.abc = ptrtoint ptr %.6176.i to i64
  %i.abd = ptrtoint ptr %.0179214.i to i64
  %i.abe = sub i64 %i.abc, %i.abd                 ; 4 uses
  %i.abf = ptrtoint ptr %.0181213.i to i64
  %i.abg = ptrtoint ptr %.6.i125 to i64
  %i.abh = sub i64 %i.abf, %i.abg                 ; 5 uses
  %i.abi = icmp ult i64 %i.abe, 48
  br i1 %i.abi, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %.loopexit.i124
  %i.abj = icmp ugt i64 %i.abh, 47
  br i1 %i.abj, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.abk = icmp slt i32 %.0167215.i, 1
  br i1 %i.abk, label %.lr.ph221.preheader.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.abl = add nsw i32 %.0167215.i, -1            ; 2 uses
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.abm ; 2 uses
  %i.abo = load ptr, ptr %i.abn, align 16         ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8          ; 2 uses
  %.pre.i128 = ptrtoint ptr %i.abq to i64
  %.pre244.i = ptrtoint ptr %i.abo to i64
  %.pre246.i = sub i64 %.pre.i128, %.pre244.i
  br label %bb.bz

bb.bv:                                            ; preds = %.loopexit.i124
  %.not193.i = icmp ugt i64 %i.abe, %i.abh
  br i1 %.not193.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abr = sext i32 %.0167215.i to i64
  %i.abs = getelementptr inbounds [16 x i8], ptr %5, i64 %i.abr ; 2 uses
  store ptr %.6.i125, ptr %i.abs, align 16
  %i.abt = add nsw i32 %.0167215.i, 1
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store ptr %.0181213.i, ptr %i.abu, align 8
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.abv = icmp ugt i64 %i.abh, 47
  br i1 %i.abv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.abw = sext i32 %.0167215.i to i64
  %i.abx = getelementptr inbounds [16 x i8], ptr %5, i64 %i.abw ; 2 uses
  store ptr %.0179214.i, ptr %i.abx, align 16
  %i.aby = add nsw i32 %.0167215.i, 1
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store ptr %.6176.i, ptr %i.abz, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bs
  %.pre-phi247.i = phi i64 [ %i.abe, %bb.bx ], [ %i.abh, %bb.bs ], [ %i.abh, %bb.by ], [ %i.abe, %bb.bw ], [ %.pre246.i, %bb.bu ] ; 2 uses
  %.1182.i = phi ptr [ %.6176.i, %bb.bx ], [ %.0181213.i, %bb.bs ], [ %.0181213.i, %bb.by ], [ %.6176.i, %bb.bw ], [ %i.abq, %bb.bu ] ; 2 uses
  %.1180.i = phi ptr [ %.0179214.i, %bb.bx ], [ %.6.i125, %bb.bs ], [ %.6.i125, %bb.by ], [ %.0179214.i, %bb.bw ], [ %i.abo, %bb.bu ] ; 2 uses
  %.1.i126 = phi i32 [ %.0167215.i, %bb.bx ], [ %.0167215.i, %bb.bs ], [ %i.aby, %bb.by ], [ %i.abt, %bb.bw ], [ %i.abl, %bb.bu ]
  %i.aca = lshr i64 %.pre-phi247.i, 1
  %i.acb = and i64 %i.aca, 9223372036854775804
  %i.acc = getelementptr inbounds nuw i8, ptr %.1180.i, i64 %i.acb ; 2 uses
  %.not.i127 = icmp ult ptr %i.acc, %.1182.i
  br i1 %.not.i127, label %.lr.ph.i120, label %.lr.ph221.preheader.i

.lr.ph221.preheader.i:                            ; preds = %bb.bz, %bb.bt, %bb.ba, %bb.az
  %i.acd = tail call i64 @llvm.umin.i64(i64 range(i64 2, 0) %1, i64 12)
  %i.ace = shl nuw nsw i64 %i.acd, 2
  %i.acf = getelementptr i8, ptr %0, i64 %i.ace
  %.8178217.i = getelementptr i8, ptr %i.acf, i64 -4
  br label %.lr.ph221.i

.lr.ph221.i:                                      ; preds = %.lr.ph221.i, %.lr.ph221.preheader.i
  %.8178220.i = phi ptr [ %.8178.i, %.lr.ph221.i ], [ %.8178217.i, %.lr.ph221.preheader.i ] ; 3 uses
  %.8219.i = phi ptr [ %spec.select.i116, %.lr.ph221.i ], [ %0, %.lr.ph221.preheader.i ] ; 2 uses
  %i.acg = tail call i32 %3(ptr noundef %4, ptr noundef %.8219.i, ptr noundef %.8178220.i) #4, !inline_history !120
  %i.ach = icmp sgt i32 %i.acg, 0
  %spec.select.i116 = select i1 %i.ach, ptr %.8178220.i, ptr %.8219.i ; 4 uses
  %.8178.i = getelementptr i8, ptr %.8178220.i, i64 -4 ; 2 uses
  %.not194.i = icmp eq ptr %.8178.i, %0
  br i1 %.not194.i, label %._crit_edge.i117, label %.lr.ph221.i, !llvm.loop !15

._crit_edge.i117:                                 ; preds = %.lr.ph221.i
  %.not195.i = icmp eq ptr %spec.select.i116, %0
  br i1 %.not195.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i117
  %i.aci = load i32, ptr %spec.select.i116, align 4
  %i.acj = load i32, ptr %0, align 4
  store i32 %i.acj, ptr %spec.select.i116, align 4
  store i32 %i.aci, ptr %0, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i117
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 %i.zl
  %.not197236.i = icmp samesign eq i64 %i.zl, 4
  br i1 %.not197236.i, label %qsort_r_words.exit, label %.lr.ph240.preheader.i

.lr.ph240.preheader.i:                            ; preds = %bb.cb
  %.10.ptr235.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %.critedge.thread.i119, %.lr.ph240.preheader.i
  %.10.ptr238.i = phi ptr [ %.10.ptr.i, %.critedge.thread.i119 ], [ %.10.ptr235.i, %.lr.ph240.preheader.i ] ; 3 uses
  %.pn196237.i = phi ptr [ %.10.ptr238.i, %.critedge.thread.i119 ], [ %0, %.lr.ph240.preheader.i ] ; 5 uses
  %i.acl = load i32, ptr %.10.ptr238.i, align 4
  store i32 %i.acl, ptr %i.zk, align 4
  %.not198223.i = icmp ult ptr %.pn196237.i, %0
  br i1 %.not198223.i, label %.critedge.thread.i119, label %.lr.ph229.i.preheader

.lr.ph229.i.preheader:                            ; preds = %.lr.ph240.i
  %8 = tail call i32 %3(ptr noundef %4, ptr noundef %.pn196237.i, ptr noundef nonnull %i.zk) #4, !inline_history !120
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph.preheader, label %.critedge.thread.i119

.lr.ph.preheader:                                 ; preds = %.lr.ph229.i.preheader
  %.0.ptr222.i = getelementptr inbounds nuw i8, ptr %.pn196237.i, i64 4
  br label %.lr.ph

.lr.ph229.i:                                      ; preds = %.lr.ph
  %i.acm = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %.0166.ptr.i, ptr noundef nonnull %i.zk) #4, !inline_history !120
  %i.acn = icmp sgt i32 %i.acm, 0
  br i1 %i.acn, label %.lr.ph, label %.critedge.i118, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph229.i
  %.0166.idx224.i143 = phi i64 [ %.0166.add.i, %.lr.ph229.i ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0.ptr227.i142 = phi ptr [ %.0166.ptr226.i144, %.lr.ph229.i ], [ %.0.ptr222.i, %.lr.ph.preheader ]
  %.0166.ptr226.i144 = getelementptr inbounds i8, ptr %.pn196237.i, i64 %.0166.idx224.i143 ; 3 uses
  %i.aco = load i32, ptr %.0166.ptr226.i144, align 4
  store i32 %i.aco, ptr %.0.ptr227.i142, align 4
  %.0166.add.i = add nsw i64 %.0166.idx224.i143, -4 ; 2 uses
  %.0166.ptr.i = getelementptr inbounds i8, ptr %.pn196237.i, i64 %.0166.add.i ; 2 uses
  %.not198.i = icmp ult ptr %.0166.ptr.i, %0
  br i1 %.not198.i, label %..critedge.i118_crit_edge, label %.lr.ph229.i, !llvm.loop !16

..critedge.i118_crit_edge:                        ; preds = %.lr.ph
  br label %.critedge.i118, !llvm.loop !16

.critedge.i118:                                   ; preds = %.lr.ph229.i, %..critedge.i118_crit_edge
  %i.acp = icmp eq i64 %.0166.idx224.i143, 4
  br i1 %i.acp, label %.critedge.thread.i119, label %bb.cc

bb.cc:                                            ; preds = %.critedge.i118
  %i.acq = load i32, ptr %i.zk, align 4
  store i32 %i.acq, ptr %.0166.ptr226.i144, align 4
  br label %.critedge.thread.i119

.critedge.thread.i119:                            ; preds = %.lr.ph229.i.preheader, %bb.cc, %.critedge.i118, %.lr.ph240.i
  %.10.ptr.i = getelementptr inbounds nuw i8, ptr %.10.ptr238.i, i64 4 ; 2 uses
  %.not197.i = icmp eq ptr %.10.ptr.i, %i.ack
  br i1 %.not197.i, label %qsort_r_words.exit, label %.lr.ph240.i, !llvm.loop !17

qsort_r_words.exit:                               ; preds = %.critedge.thread.i119, %bb.cb
  tail call void @SDL_free_REAL(ptr noundef %i.zk) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.cd

bb.cd:                                            ; preds = %qsort_r_aligned.exit, %qsort_r_words.exit, %bb.a, %qsort_r_nonaligned.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_qsort_REAL(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [64 x %struct.stack_entry], align 16 ; 5 uses
  %5 = alloca [64 x %struct.stack_entry], align 16 ; 5 uses
  %6 = alloca [64 x %struct.stack_entry], align 16 ; 5 uses
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %SDL_qsort_r_REAL.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = or i64 %2, %i.b
  %i.d = and i64 %i.c, 3
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.e = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %2) #4 ; 8 uses
  %i.f = mul i64 %2, 12                           ; 4 uses
  %i.g = add i64 %1, -1
  %i.h = mul i64 %i.g, %2                         ; 5 uses
  %.not.i.i = icmp ult i64 %i.h, %i.f
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = udiv i64 %i.h, %2
  %i.j = lshr i64 %i.i, 1
  %i.k = mul i64 %i.j, %2                         ; 2 uses
  %.not274318.i.i = icmp samesign ult i64 %i.k, %i.h
  br i1 %.not274318.i.i, label %.lr.ph323.i.i, label %.thread.i.i

.lr.ph323.i.i:                                    ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.n = mul i64 %2, 40
  %i.o = sub i64 0, %2                            ; 4 uses
  %min.iters.check221 = icmp ult i64 %2, 4        ; 2 uses
  %min.iters.check309 = icmp ult i64 %2, 32
  %i.p = and i64 %2, 28
  %n.vec311 = and i64 %2, -32                     ; 5 uses
  %i.q = and i64 %2, 31
  %cmp.n322 = icmp eq i64 %2, %n.vec311
  %min.epilog.iters.check329 = icmp eq i64 %i.p, 0
  %n.vec331 = and i64 %2, -4                      ; 4 uses
  %i.r = and i64 %2, 3
  %cmp.n340 = icmp eq i64 %2, %n.vec331
  %min.iters.check264 = icmp ult i64 %2, 4
  %min.iters.check266 = icmp ult i64 %2, 32
  %i.s = and i64 %2, 28
  %n.vec268 = and i64 %2, -32                     ; 5 uses
  %i.t = and i64 %2, 31
  %cmp.n279 = icmp eq i64 %2, %n.vec268
  %min.epilog.iters.check286 = icmp eq i64 %i.s, 0
  %n.vec288 = and i64 %2, -4                      ; 4 uses
  %i.u = and i64 %2, 3
  %cmp.n297 = icmp eq i64 %2, %n.vec288
  %min.iters.check223 = icmp ult i64 %2, 32
  %i.v = and i64 %2, 28
  %n.vec225 = and i64 %2, -32                     ; 5 uses
  %i.w = and i64 %2, 31
  %cmp.n236 = icmp eq i64 %2, %n.vec225
  %min.epilog.iters.check243 = icmp eq i64 %i.v, 0
  %n.vec245 = and i64 %2, -4                      ; 4 uses
  %i.x = and i64 %2, 3
  %cmp.n254 = icmp eq i64 %2, %n.vec245
  %min.iters.check178 = icmp ult i64 %2, 4
  %min.iters.check180 = icmp ult i64 %2, 32
  %i.y = and i64 %2, 28
  %n.vec182 = and i64 %2, -32                     ; 5 uses
  %i.z = and i64 %2, 31
  %cmp.n193 = icmp eq i64 %2, %n.vec182
  %min.epilog.iters.check200 = icmp eq i64 %i.y, 0
  %n.vec202 = and i64 %2, -4                      ; 4 uses
  %i.aa = and i64 %2, 3
  %cmp.n211 = icmp eq i64 %2, %n.vec202
  %min.iters.check135 = icmp ult i64 %2, 4
  %min.iters.check137 = icmp ult i64 %2, 32
  %i.ab = and i64 %2, 28
  %n.vec139 = and i64 %2, -32                     ; 5 uses
  %i.ac = and i64 %2, 31
  %cmp.n150 = icmp eq i64 %2, %n.vec139
  %min.epilog.iters.check157 = icmp eq i64 %i.ab, 0
  %n.vec159 = and i64 %2, -4                      ; 4 uses
  %i.ad = and i64 %2, 3
  %cmp.n168 = icmp eq i64 %2, %n.vec159
  %min.iters.check = icmp ult i64 %2, 4
  %min.iters.check111 = icmp ult i64 %2, 32
  %i.ae = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.af = and i64 %2, 31
  %cmp.n = icmp eq i64 %2, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  %n.vec118 = and i64 %2, -4                      ; 4 uses
  %i.ag = and i64 %2, 3
  %cmp.n125 = icmp eq i64 %2, %n.vec118
  br label %bb.e

bb.e:                                             ; preds = %bb.af, %.lr.ph323.i.i
  %i.ah = phi ptr [ %i.m, %.lr.ph323.i.i ], [ %i.lv, %bb.af ] ; 43 uses
  %i.ai = phi i64 [ %i.h, %.lr.ph323.i.i ], [ %.pre-phi353.i.i, %bb.af ]
  %.0226321.i.i = phi i32 [ 0, %.lr.ph323.i.i ], [ %.1.i.i, %bb.af ] ; 8 uses
  %.0253320.i.i = phi ptr [ %0, %.lr.ph323.i.i ], [ %.1254.i.i, %bb.af ] ; 41 uses
  %.0258319.i.i = phi ptr [ %i.l, %.lr.ph323.i.i ], [ %.1259.i.i, %bb.af ] ; 41 uses
  %i.aj = icmp ugt i64 %i.ai, %i.n
  br i1 %i.aj, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %.0258319.i.i to i64
  %i.al = ptrtoint ptr %.0253320.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = udiv i64 %i.am, %2
  %i.ao = lshr i64 %i.an, 3
  %i.ap = mul i64 %i.ao, %2                       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0253320.i.i, i64 %i.ap ; 4 uses
  %i.ar = shl i64 %i.ap, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0253320.i.i, i64 %i.ar ; 4 uses
  %i.at = tail call i32 %3(ptr noundef %.0253320.i.i, ptr noundef %i.aq) #4, !inline_history !149
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 %3(ptr noundef %i.aq, ptr noundef %i.as) #4, !inline_history !149
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %.sink.split.i12

bb.h:                                             ; preds = %bb.f
  %i.ax = tail call i32 %3(ptr noundef %.0253320.i.i, ptr noundef %i.as) #4, !inline_history !149
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.sink.split.i12

.sink.split.i12:                                  ; preds = %bb.h, %bb.g
  %.sink.i13 = phi ptr [ %.0253320.i.i, %bb.g ], [ %i.aq, %bb.h ] ; 2 uses
  %i.az = tail call i32 %3(ptr noundef %.sink.i13, ptr noundef %i.as) #4, !inline_history !149
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = select i1 %i.ba, ptr %i.as, ptr %.sink.i13
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i12, %bb.h, %bb.g
  %i.bc = phi ptr [ %i.aq, %bb.g ], [ %.0253320.i.i, %bb.h ], [ %i.bb, %.sink.split.i12 ] ; 4 uses
  %i.bd = sub i64 0, %i.ap                        ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ah, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ap ; 4 uses
  %i.bg = tail call i32 %3(ptr noundef %i.be, ptr noundef %i.ah) #4, !inline_history !149
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = tail call i32 %3(ptr noundef %i.ah, ptr noundef %i.bf) #4, !inline_history !149
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %.sink.split124.i14

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call i32 %3(ptr noundef %i.be, ptr noundef %i.bf) #4, !inline_history !149
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %.sink.split124.i14

.sink.split124.i14:                               ; preds = %bb.k, %bb.j
  %.sink128.i15 = phi ptr [ %i.be, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %i.bm = tail call i32 %3(ptr noundef %.sink128.i15, ptr noundef %i.bf) #4, !inline_history !149
  %i.bn = icmp slt i32 %i.bm, 0
  %i.bo = select i1 %i.bn, ptr %i.bf, ptr %.sink128.i15
  br label %bb.l

bb.l:                                             ; preds = %.sink.split124.i14, %bb.k, %bb.j
  %i.bp = phi ptr [ %i.ah, %bb.j ], [ %i.be, %bb.k ], [ %i.bo, %.sink.split124.i14 ] ; 4 uses
  %i.bq = sub i64 0, %i.ar
  %i.br = getelementptr inbounds i8, ptr %.0258319.i.i, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.0258319.i.i, i64 %i.bd ; 4 uses
  %i.bt = tail call i32 %3(ptr noundef %i.br, ptr noundef %i.bs) #4, !inline_history !149
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call i32 %3(ptr noundef %i.bs, ptr noundef nonnull %.0258319.i.i) #4, !inline_history !149
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %.sink.split129.i16

bb.n:                                             ; preds = %bb.l
  %i.bx = tail call i32 %3(ptr noundef %i.br, ptr noundef nonnull %.0258319.i.i) #4, !inline_history !149
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.o, label %.sink.split129.i16

.sink.split129.i16:                               ; preds = %bb.n, %bb.m
  %.sink133.i17 = phi ptr [ %i.br, %bb.m ], [ %i.bs, %bb.n ] ; 2 uses
  %i.bz = tail call i32 %3(ptr noundef nonnull %.sink133.i17, ptr noundef nonnull %.0258319.i.i) #4, !inline_history !149
  %i.ca = icmp slt i32 %i.bz, 0
end_hunk_0
begin_hunk_1_@SDL_qsort_REAL:bb.a
  %i.agf = load i32, ptr %.0181213.i.i, align 4
  store i32 %i.agf, ptr %i.adw, align 4
  store i32 %i.age, ptr %.0181213.i.i, align 4
  %i.agg = tail call i32 %3(ptr noundef %.0179214.i.i, ptr noundef nonnull %i.adw) #4, !inline_history !243
  %i.agh = icmp sgt i32 %i.agg, 0
  br i1 %i.agh, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.agi = load i32, ptr %.0179214.i.i, align 4
  %i.agj = load i32, ptr %i.adw, align 4
  store i32 %i.agj, ptr %.0179214.i.i, align 4
  store i32 %i.agi, ptr %i.adw, align 4
  br label %bb.cp

bb.cl:                                            ; preds = %bb.ch
  %i.agk = load i32, ptr %.0179214.i.i, align 4   ; 2 uses
  br i1 %i.agd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.agl = load i32, ptr %.0181213.i.i, align 4
  store i32 %i.agl, ptr %.0179214.i.i, align 4
  store i32 %i.agk, ptr %.0181213.i.i, align 4
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.agm = load i32, ptr %i.adw, align 4
  store i32 %i.agm, ptr %.0179214.i.i, align 4
  store i32 %i.agk, ptr %i.adw, align 4
  %i.agn = tail call i32 %3(ptr noundef nonnull %i.adw, ptr noundef nonnull %.0181213.i.i) #4, !inline_history !243
  %i.ago = icmp sgt i32 %i.agn, 0
  br i1 %i.ago, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.agp = load i32, ptr %i.adw, align 4
  %i.agq = load i32, ptr %.0181213.i.i, align 4
  store i32 %i.agq, ptr %i.adw, align 4
  store i32 %i.agp, ptr %.0181213.i.i, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.ci
  %i.agr = getelementptr inbounds nuw i8, ptr %.0179214.i.i, i64 4
  %i.ags = getelementptr inbounds i8, ptr %.0181213.i.i, i64 -4
  br label %pivot_big.exit

pivot_big.exit:                                   ; preds = %.sink.split134.i, %bb.cg, %bb.cf, %bb.cp
  %.0183.i.i = phi ptr [ %i.adw, %bb.cp ], [ %i.afd, %bb.cf ], [ %i.aeq, %bb.cg ], [ %i.afz, %.sink.split134.i ]
  %.1171.i.i = phi ptr [ %i.ags, %bb.cp ], [ %.0181213.i.i, %bb.cf ], [ %.0181213.i.i, %bb.cg ], [ %.0181213.i.i, %.sink.split134.i ]
  %.1169.i.i = phi ptr [ %i.agr, %bb.cp ], [ %.0179214.i.i, %bb.cf ], [ %.0179214.i.i, %bb.cg ], [ %.0179214.i.i, %.sink.split134.i ]
  %i.agt = load i32, ptr %.0183.i.i, align 4
  store i32 %i.agt, ptr %i.adm, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %pivot_big.exit
  %.3173.i.i = phi ptr [ %.1171.i.i, %pivot_big.exit ], [ %.5175.i.i, %bb.cv ]
  %.3.i121.i = phi ptr [ %.1169.i.i, %pivot_big.exit ], [ %.5.i123.i, %bb.cv ]
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.4.i.i = phi ptr [ %.3.i121.i, %bb.cq ], [ %i.agw, %bb.cr ] ; 7 uses
  %i.agu = tail call i32 %3(ptr noundef %.4.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !243
  %i.agv = icmp slt i32 %i.agu, 0
  %i.agw = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 4 ; 3 uses
  br i1 %i.agv, label %bb.cr, label %.preheader.i122.i, !llvm.loop !12

.preheader.i122.i:                                ; preds = %bb.cr, %.preheader.i122.i
  %.4174.i.i = phi ptr [ %i.agz, %.preheader.i122.i ], [ %.3173.i.i, %bb.cr ] ; 7 uses
  %i.agx = tail call i32 %3(ptr noundef nonnull %i.adm, ptr noundef %.4174.i.i) #4, !inline_history !243
  %i.agy = icmp slt i32 %i.agx, 0
  %i.agz = getelementptr inbounds i8, ptr %.4174.i.i, i64 -4 ; 3 uses
  br i1 %i.agy, label %.preheader.i122.i, label %bb.cs, !llvm.loop !13

bb.cs:                                            ; preds = %.preheader.i122.i
  %i.aha = icmp ult ptr %.4.i.i, %.4174.i.i
  br i1 %i.aha, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ahb = load i32, ptr %.4.i.i, align 4
  %i.ahc = load i32, ptr %.4174.i.i, align 4
  store i32 %i.ahc, ptr %.4.i.i, align 4
  store i32 %i.ahb, ptr %.4174.i.i, align 4
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ahd = icmp eq ptr %.4.i.i, %.4174.i.i
  br i1 %i.ahd, label %.loopexit.i124.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.5175.i.i = phi ptr [ %i.agz, %bb.ct ], [ %.4174.i.i, %bb.cu ] ; 3 uses
  %.5.i123.i = phi ptr [ %i.agw, %bb.ct ], [ %.4.i.i, %bb.cu ] ; 3 uses
  %.not192.i.i = icmp ugt ptr %.5.i123.i, %.5175.i.i
  br i1 %.not192.i.i, label %.loopexit.i124.i, label %bb.cq, !llvm.loop !14

.loopexit.i124.i:                                 ; preds = %bb.cv, %bb.cu
  %.6176.i.i = phi ptr [ %i.agz, %bb.cu ], [ %.5175.i.i, %bb.cv ] ; 4 uses
  %.6.i125.i = phi ptr [ %i.agw, %bb.cu ], [ %.5.i123.i, %bb.cv ] ; 4 uses
  %i.ahe = ptrtoint ptr %.6176.i.i to i64
  %i.ahf = ptrtoint ptr %.0179214.i.i to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf                 ; 4 uses
  %i.ahh = ptrtoint ptr %.0181213.i.i to i64
  %i.ahi = ptrtoint ptr %.6.i125.i to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi                 ; 5 uses
  %i.ahk = icmp ult i64 %i.ahg, 48
  br i1 %i.ahk, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %.loopexit.i124.i
  %i.ahl = icmp ugt i64 %i.ahj, 47
  br i1 %i.ahl, label %bb.dd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ahm = icmp slt i32 %.0167215.i.i, 1
  br i1 %i.ahm, label %.lr.ph221.preheader.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ahn = add nsw i32 %.0167215.i.i, -1          ; 2 uses
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.aho ; 2 uses
  %i.ahq = load ptr, ptr %i.ahp, align 16         ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8          ; 2 uses
  %.pre.i128.i = ptrtoint ptr %i.ahs to i64
  %.pre244.i.i = ptrtoint ptr %i.ahq to i64
  %.pre246.i.i = sub i64 %.pre.i128.i, %.pre244.i.i
  br label %bb.dd

bb.cz:                                            ; preds = %.loopexit.i124.i
  %.not193.i.i = icmp ugt i64 %i.ahg, %i.ahj
  br i1 %.not193.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aht = sext i32 %.0167215.i.i to i64
  %i.ahu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aht ; 2 uses
  store ptr %.6.i125.i, ptr %i.ahu, align 16
  %i.ahv = add nsw i32 %.0167215.i.i, 1
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store ptr %.0181213.i.i, ptr %i.ahw, align 8
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %i.ahx = icmp ugt i64 %i.ahj, 47
  br i1 %i.ahx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ahy = sext i32 %.0167215.i.i to i64
  %i.ahz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ahy ; 2 uses
  store ptr %.0179214.i.i, ptr %i.ahz, align 16
  %i.aia = add nsw i32 %.0167215.i.i, 1
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store ptr %.6176.i.i, ptr %i.aib, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy, %bb.cw
  %.pre-phi247.i.i = phi i64 [ %i.ahg, %bb.db ], [ %i.ahj, %bb.cw ], [ %i.ahj, %bb.dc ], [ %i.ahg, %bb.da ], [ %.pre246.i.i, %bb.cy ] ; 2 uses
  %.1182.i.i = phi ptr [ %.6176.i.i, %bb.db ], [ %.0181213.i.i, %bb.cw ], [ %.0181213.i.i, %bb.dc ], [ %.6176.i.i, %bb.da ], [ %i.ahs, %bb.cy ] ; 2 uses
  %.1180.i.i = phi ptr [ %.0179214.i.i, %bb.db ], [ %.6.i125.i, %bb.cw ], [ %.6.i125.i, %bb.dc ], [ %.0179214.i.i, %bb.da ], [ %i.ahq, %bb.cy ] ; 2 uses
  %.1.i126.i = phi i32 [ %.0167215.i.i, %bb.db ], [ %.0167215.i.i, %bb.cw ], [ %i.aia, %bb.dc ], [ %i.ahv, %bb.da ], [ %i.ahn, %bb.cy ]
  %i.aic = lshr i64 %.pre-phi247.i.i, 1
  %i.aid = and i64 %i.aic, 9223372036854775804
  %i.aie = getelementptr inbounds nuw i8, ptr %.1180.i.i, i64 %i.aid ; 2 uses
  %.not.i127.i = icmp ult ptr %i.aie, %.1182.i.i
  br i1 %.not.i127.i, label %.lr.ph.i120.i, label %.lr.ph221.preheader.i.i

.lr.ph221.preheader.i.i:                          ; preds = %bb.dd, %bb.cx, %bb.bu, %bb.bt
  %i.aif = tail call i64 @llvm.umin.i64(i64 range(i64 2, 0) %1, i64 12)
  %i.aig = shl nuw nsw i64 %i.aif, 2
  %i.aih = getelementptr i8, ptr %0, i64 %i.aig
  %.8178217.i.i = getelementptr i8, ptr %i.aih, i64 -4
  br label %.lr.ph221.i.i

.lr.ph221.i.i:                                    ; preds = %.lr.ph221.i.i, %.lr.ph221.preheader.i.i
  %.8178220.i.i = phi ptr [ %.8178.i.i, %.lr.ph221.i.i ], [ %.8178217.i.i, %.lr.ph221.preheader.i.i ] ; 3 uses
  %.8219.i.i = phi ptr [ %spec.select.i116.i, %.lr.ph221.i.i ], [ %0, %.lr.ph221.preheader.i.i ] ; 2 uses
  %i.aii = tail call i32 %3(ptr noundef %.8219.i.i, ptr noundef %.8178220.i.i) #4, !inline_history !243
  %i.aij = icmp sgt i32 %i.aii, 0
  %spec.select.i116.i = select i1 %i.aij, ptr %.8178220.i.i, ptr %.8219.i.i ; 4 uses
  %.8178.i.i = getelementptr i8, ptr %.8178220.i.i, i64 -4 ; 2 uses
  %.not194.i.i = icmp eq ptr %.8178.i.i, %0
  br i1 %.not194.i.i, label %._crit_edge.i117.i, label %.lr.ph221.i.i, !llvm.loop !15

._crit_edge.i117.i:                               ; preds = %.lr.ph221.i.i
  %.not195.i.i = icmp eq ptr %spec.select.i116.i, %0
  br i1 %.not195.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge.i117.i
  %i.aik = load i32, ptr %spec.select.i116.i, align 4
  %i.ail = load i32, ptr %0, align 4
  store i32 %i.ail, ptr %spec.select.i116.i, align 4
  store i32 %i.aik, ptr %0, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge.i117.i
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 %i.adn
  %.not197236.i.i = icmp samesign eq i64 %i.adn, 4
  br i1 %.not197236.i.i, label %qsort_r_words.exit.i, label %.lr.ph240.preheader.i.i

.lr.ph240.preheader.i.i:                          ; preds = %bb.df
  %.10.ptr235.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.critedge.thread.i119.i, %.lr.ph240.preheader.i.i
  %.10.ptr238.i.i = phi ptr [ %.10.ptr.i.i, %.critedge.thread.i119.i ], [ %.10.ptr235.i.i, %.lr.ph240.preheader.i.i ] ; 3 uses
  %.pn196237.i.i = phi ptr [ %.10.ptr238.i.i, %.critedge.thread.i119.i ], [ %0, %.lr.ph240.preheader.i.i ] ; 5 uses
  %i.ain = load i32, ptr %.10.ptr238.i.i, align 4
  store i32 %i.ain, ptr %i.adm, align 4
  %.not198223.i.i = icmp ult ptr %.pn196237.i.i, %0
  br i1 %.not198223.i.i, label %.critedge.thread.i119.i, label %.lr.ph229.i.preheader.i

.lr.ph229.i.preheader.i:                          ; preds = %.lr.ph240.i.i
  %7 = tail call i32 %3(ptr noundef %.pn196237.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !243
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph.i.preheader, label %.critedge.thread.i119.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph229.i.preheader.i
  %.0.ptr222.i.i = getelementptr inbounds nuw i8, ptr %.pn196237.i.i, i64 4
  br label %.lr.ph.i

.lr.ph229.i.i:                                    ; preds = %.lr.ph.i
  %i.aio = tail call i32 %3(ptr noundef nonnull %.0166.ptr.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !243
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph.i, label %.critedge.i118.i, !llvm.loop !16

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph229.i.i
  %.0166.idx224.i143.i = phi i64 [ %.0166.add.i.i, %.lr.ph229.i.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0.ptr227.i142.i = phi ptr [ %.0166.ptr226.i144.i, %.lr.ph229.i.i ], [ %.0.ptr222.i.i, %.lr.ph.i.preheader ]
  %.0166.ptr226.i144.i = getelementptr inbounds i8, ptr %.pn196237.i.i, i64 %.0166.idx224.i143.i ; 3 uses
  %i.aiq = load i32, ptr %.0166.ptr226.i144.i, align 4
  store i32 %i.aiq, ptr %.0.ptr227.i142.i, align 4
  %.0166.add.i.i = add nsw i64 %.0166.idx224.i143.i, -4 ; 2 uses
  %.0166.ptr.i.i = getelementptr inbounds i8, ptr %.pn196237.i.i, i64 %.0166.add.i.i ; 2 uses
  %.not198.i.i = icmp ult ptr %.0166.ptr.i.i, %0
  br i1 %.not198.i.i, label %..critedge.i118_crit_edge.i, label %.lr.ph229.i.i, !llvm.loop !16

..critedge.i118_crit_edge.i:                      ; preds = %.lr.ph.i
  br label %.critedge.i118.i, !llvm.loop !16

.critedge.i118.i:                                 ; preds = %.lr.ph229.i.i, %..critedge.i118_crit_edge.i
  %i.air = load i32, ptr %i.adm, align 4
  store i32 %i.air, ptr %.0166.ptr226.i144.i, align 4
  br label %.critedge.thread.i119.i

.critedge.thread.i119.i:                          ; preds = %.critedge.i118.i, %.lr.ph229.i.preheader.i, %.lr.ph240.i.i
  %.10.ptr.i.i = getelementptr inbounds nuw i8, ptr %.10.ptr238.i.i, i64 4 ; 2 uses
  %.not197.i.i = icmp eq ptr %.10.ptr.i.i, %i.aim
  br i1 %.not197.i.i, label %qsort_r_words.exit.i, label %.lr.ph240.i.i, !llvm.loop !17

qsort_r_words.exit.i:                             ; preds = %.critedge.thread.i119.i, %bb.df
  tail call void @SDL_free_REAL(ptr noundef %i.adm) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %SDL_qsort_r_REAL.exit

SDL_qsort_r_REAL.exit:                            ; preds = %bb.a, %qsort_r_nonaligned.exit.i, %qsort_r_aligned.exit.i, %qsort_r_words.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_bsearch_r_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not21 = icmp eq i64 %2, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01723 = phi ptr [ %.1, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01822 = phi i64 [ %.119, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.01822, 1                      ; 3 uses
  %i.b = mul i64 %i.a, %3
  %i.c = getelementptr inbounds nuw i8, ptr %.01723, i64 %i.b ; 3 uses
  %i.d = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.c) #4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i64 %.01822, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.h = xor i64 %i.f, 1
  %i.i = sub nsw i64 %i.a, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = icmp eq i32 %i.d, 0
  br i1 %i.j, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119 = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.g, %bb.b ], [ %.01723, %bb.c ]
  %.not = icmp eq i64 %.119, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_bsearch_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not21.i = icmp eq i64 %2, 0
  br i1 %.not21.i, label %SDL_bsearch_r_REAL.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.01723.i = phi ptr [ %.1.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01822.i = phi i64 [ %.119.i, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.01822.i, 1                    ; 3 uses
  %i.b = mul i64 %i.a, %3
  %i.c = getelementptr inbounds nuw i8, ptr %.01723.i, i64 %i.b ; 3 uses
  %i.d = tail call i32 %4(ptr noundef %0, ptr noundef %i.c) #4, !inline_history !272 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = and i64 %.01822.i, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.h = xor i64 %i.f, 1
  %i.i = sub nsw i64 %i.a, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.d, 0
  br i1 %i.j, label %SDL_bsearch_r_REAL.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %.01723.i, %bb.c ]
  %.not.i = icmp eq i64 %.119.i, 0
  br i1 %.not.i, label %SDL_bsearch_r_REAL.exit, label %.lr.ph.i, !llvm.loop !18

SDL_bsearch_r_REAL.exit:                          ; preds = %bb.c, %bb.d, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %bb.d ]
  ret ptr %.0.i
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pivot_big(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = udiv i64 %i.c, %3
  %i.e = lshr i64 %i.d, 3
  %i.f = mul i64 %i.e, %3                         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 4 uses
  %i.h = shl i64 %i.f, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 4 uses
  %i.j = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.g) #4
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 %4(ptr noundef %5, ptr noundef %i.g, ptr noundef %i.i) #4
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.i) #4
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %0, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = tail call i32 %4(ptr noundef %5, ptr noundef %.sink, ptr noundef %i.i) #4
  %i.q = icmp slt i32 %i.p, 0
  %i.r = select i1 %i.q, ptr %i.i, ptr %.sink
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.s = phi ptr [ %i.g, %bb.b ], [ %0, %bb.c ], [ %i.r, %.sink.split ] ; 4 uses
  %i.t = sub i64 0, %i.f                          ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  %i.w = tail call i32 %4(ptr noundef %5, ptr noundef %i.u, ptr noundef %1) #4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i32 %4(ptr noundef %5, ptr noundef %1, ptr noundef %i.v) #4
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.sink.split124

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call i32 %4(ptr noundef %5, ptr noundef %i.u, ptr noundef %i.v) #4
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.sink.split124

.sink.split124:                                   ; preds = %bb.f, %bb.e
  %.sink128 = phi ptr [ %i.u, %bb.e ], [ %1, %bb.f ] ; 2 uses
  %i.ac = tail call i32 %4(ptr noundef %5, ptr noundef %.sink128, ptr noundef %i.v) #4
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = select i1 %i.ad, ptr %i.v, ptr %.sink128
  br label %bb.g

bb.g:                                             ; preds = %.sink.split124, %bb.f, %bb.e
  %i.af = phi ptr [ %1, %bb.e ], [ %i.u, %bb.f ], [ %i.ae, %.sink.split124 ] ; 4 uses
  %i.ag = sub i64 0, %i.h
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.t ; 4 uses
  %i.aj = tail call i32 %4(ptr noundef %5, ptr noundef %i.ah, ptr noundef %i.ai) #4
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 %4(ptr noundef %5, ptr noundef %i.ai, ptr noundef %2) #4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %.sink.split129

bb.i:                                             ; preds = %bb.g
  %i.an = tail call i32 %4(ptr noundef %5, ptr noundef %i.ah, ptr noundef %2) #4
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %.sink.split129

.sink.split129:                                   ; preds = %bb.i, %bb.h
  %.sink133 = phi ptr [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ap = tail call i32 %4(ptr noundef %5, ptr noundef %.sink133, ptr noundef %2) #4
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = select i1 %i.aq, ptr %2, ptr %.sink133
  br label %bb.j

bb.j:                                             ; preds = %.sink.split129, %bb.i, %bb.h
  %i.as = phi ptr [ %i.ai, %bb.h ], [ %i.ah, %bb.i ], [ %i.ar, %.sink.split129 ] ; 4 uses
  %i.at = tail call i32 %4(ptr noundef %5, ptr noundef %i.s, ptr noundef %i.af) #4
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = tail call i32 %4(ptr noundef %5, ptr noundef %i.af, ptr noundef %i.as) #4
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.sink.split134

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call i32 %4(ptr noundef %5, ptr noundef %i.s, ptr noundef %i.as) #4
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.sink.split134

.sink.split134:                                   ; preds = %bb.l, %bb.k
  %.sink138 = phi ptr [ %i.s, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
end_hunk_1
