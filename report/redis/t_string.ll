inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@lcsCommand:bb.a
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph368, %.thread326
  %.0367 = phi i32 [ %i.cg, %.lr.ph368 ], [ %.2325, %.thread326 ] ; 4 uses
  %.3366 = phi i32 [ %i.cu, %.lr.ph368 ], [ %.5323, %.thread326 ] ; 4 uses
  %.0212365 = phi i32 [ 0, %.lr.ph368 ], [ %.2214, %.thread326 ] ; 5 uses
  %.0215364 = phi i32 [ 0, %.lr.ph368 ], [ %.2217321, %.thread326 ] ; 5 uses
  %.0218363 = phi i32 [ 0, %.lr.ph368 ], [ %.2220319, %.thread326 ] ; 6 uses
  %.0221362 = phi i32 [ 0, %.lr.ph368 ], [ %.2223317, %.thread326 ] ; 6 uses
  %.0224361 = phi i32 [ %i.cg, %.lr.ph368 ], [ %.3227, %.thread326 ] ; 8 uses
  %.0231360 = phi i32 [ %i.dv, %.lr.ph368 ], [ %.1232314, %.thread326 ] ; 3 uses
  %i.ff = add i32 %.0367, -1                      ; 11 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !84  ; 2 uses
  %i.fj = add i32 %.3366, -1                      ; 11 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84
end_hunk_0
begin_hunk_1_@lcsCommand:bb.a
  br i1 %i.fn, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fo = add i32 %.0231360, -1                   ; 5 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fp
  store i8 %i.fi, ptr %i.fq, align 1, !tbaa !84
  %i.fr = icmp eq i32 %.0224361, %i.cg
  br i1 %i.fr, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = icmp eq i32 %.0224361, %.0367
  %i.ft = icmp eq i32 %.0218363, %.3366
  %or.cond273 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond273, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1222 = phi i32 [ %i.ff, %bb.au ], [ %.0221362, %bb.av ] ; 2 uses
  %.1216 = phi i32 [ %i.fj, %bb.au ], [ %.0215364, %bb.av ] ; 2 uses
  %i.fu = icmp eq i32 %i.ff, 0
  %i.fv = icmp eq i32 %i.fj, 0
  %or.cond9 = or i1 %i.fu, %i.fv
  br i1 %or.cond9, label %.thread303, label %.thread326

.thread:                                          ; preds = %bb.av
  %i.fw = icmp eq i32 %.0224361, 0
  %i.fx = icmp eq i32 %.0218363, 0
  %or.cond9415 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond9415, label %.thread303, label %.thread421

.thread421:                                       ; preds = %.thread
  %i.fy = sub i32 %.0221362, %.0224361
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fz = mul i32 %i.ff, %i.cx
  %i.ga = add i32 %i.fz, %.3366
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !9
  %i.ge = mul i32 %.0367, %i.cx
  %i.gf = add i32 %i.ge, %i.fj
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9
  %i.gj = icmp ugt i32 %i.gd, %i.gi               ; 2 uses
  %.4 = select i1 %i.gj, i32 %.3366, i32 %i.fj    ; 2 uses
  %.1 = select i1 %i.gj, i32 %i.ff, i32 %.0367    ; 2 uses
  %.not262 = icmp eq i32 %.0224361, %i.cg
  br i1 %.not262, label %.thread326, label %.thread303

.thread303:                                       ; preds = %.thread, %bb.ax, %bb.aw
  %.1232.ph = phi i32 [ %.0231360, %bb.ax ], [ %i.fo, %bb.aw ], [ %i.fo, %.thread ]
  %.2226.ph = phi i32 [ %.0224361, %bb.ax ], [ %i.ff, %bb.aw ], [ %.0224361, %.thread ] ; 2 uses
  %.2223.ph = phi i32 [ %.0221362, %bb.ax ], [ %.1222, %bb.aw ], [ %.0221362, %.thread ] ; 2 uses
  %.2220.ph = phi i32 [ %.0218363, %bb.ax ], [ %i.fj, %bb.aw ], [ %.0218363, %.thread ]
  %.2217.ph = phi i32 [ %.0215364, %bb.ax ], [ %.1216, %bb.aw ], [ %.0215364, %.thread ]
  %.5.ph = phi i32 [ %.4, %bb.ax ], [ %i.fj, %bb.aw ], [ %i.fj, %.thread ]
  %.2.ph = phi i32 [ %.1, %bb.ax ], [ %i.ff, %bb.aw ], [ %i.ff, %.thread ]
  %i.gk = sub i32 %.2223.ph, %.2226.ph
  br label %bb.ay

bb.ay:                                            ; preds = %.thread421, %.thread303
  %.in = phi i32 [ %i.gk, %.thread303 ], [ %i.fy, %.thread421 ]
  %.2324 = phi i32 [ %.2.ph, %.thread303 ], [ %i.ff, %.thread421 ] ; 3 uses
  %.5322 = phi i32 [ %.5.ph, %.thread303 ], [ %i.fj, %.thread421 ] ; 3 uses
  %.2217320 = phi i32 [ %.2217.ph, %.thread303 ], [ %.0215364, %.thread421 ] ; 4 uses
  %.2220318 = phi i32 [ %.2220.ph, %.thread303 ], [ %.0218363, %.thread421 ] ; 4 uses
  %.2223316 = phi i32 [ %.2223.ph, %.thread303 ], [ %.0221362, %.thread421 ] ; 4 uses
  %.2226315 = phi i32 [ %.2226.ph, %.thread303 ], [ %.0224361, %.thread421 ]
  %.1232313 = phi i32 [ %.1232.ph, %.thread303 ], [ %i.fo, %.thread421 ] ; 3 uses
  %i.gl = add i32 %.in, 1                         ; 2 uses
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
end_hunk_1
begin_hunk_2_@lcsCommand:bb.a
bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.fe) #11
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #11
  %i.gq = zext i32 %.2226315 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gq) #11
  %i.gr = zext i32 %.2223316 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gr) #11
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #11
  %i.gs = zext i32 %.2220318 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gs) #11
  %i.gt = zext i32 %.2217320 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gt) #11
  br i1 %.not264, label %bb.bd, label %bb.bc

end_hunk_2
begin_hunk_3_@lcsCommand:bb.a
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gv = add i32 %.0212365, 1
  br label %.thread326

.thread326:                                       ; preds = %bb.aw, %bb.ax, %bb.az, %bb.bd, %bb.ba
  %.2325 = phi i32 [ %.1, %bb.ax ], [ %.2324, %bb.ba ], [ %.2324, %bb.bd ], [ %.2324, %bb.az ], [ %i.ff, %bb.aw ] ; 2 uses
  %.5323 = phi i32 [ %.4, %bb.ax ], [ %.5322, %bb.ba ], [ %.5322, %bb.bd ], [ %.5322, %bb.az ], [ %i.fj, %bb.aw ] ; 2 uses
  %.2217321 = phi i32 [ %.0215364, %bb.ax ], [ %.2217320, %bb.ba ], [ %.2217320, %bb.bd ], [ %.2217320, %bb.az ], [ %.1216, %bb.aw ]
  %.2220319 = phi i32 [ %.0218363, %bb.ax ], [ %.2220318, %bb.ba ], [ %.2220318, %bb.bd ], [ %.2220318, %bb.az ], [ %i.fj, %bb.aw ]
  %.2223317 = phi i32 [ %.0221362, %bb.ax ], [ %.2223316, %bb.ba ], [ %.2223316, %bb.bd ], [ %.2223316, %bb.az ], [ %.1222, %bb.aw ]
  %.1232314 = phi i32 [ %.0231360, %bb.ax ], [ %.1232313, %bb.ba ], [ %.1232313, %bb.bd ], [ %.1232313, %bb.az ], [ %i.fo, %bb.aw ]
  %.3227 = phi i32 [ %i.cg, %bb.ax ], [ %i.cg, %bb.ba ], [ %i.cg, %bb.bd ], [ %i.cg, %bb.az ], [ %i.ff, %bb.aw ]
  %.2214 = phi i32 [ %.0212365, %bb.ax ], [ %.0212365, %bb.ba ], [ %i.gv, %bb.bd ], [ %.0212365, %bb.az ], [ %.0212365, %bb.aw ] ; 2 uses
  %i.gw = icmp ne i32 %.2325, 0
  %i.gx = icmp ne i32 %.5323, 0
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.at, label %._crit_edge369.loopexit, !llvm.loop !123

end_hunk_3
