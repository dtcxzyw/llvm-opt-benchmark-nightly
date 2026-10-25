Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-core?download=true
inline.NumInlined: 502
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ata_build_rw_tf:bb.a
  %.0.i = phi i64 [ %i.eb, %bb.s ], [ %i.ek, %bb.v ], [ 16, %bb.w ]
  %i.em = getelementptr i8, ptr @ata_rw_cmds, i64 %.0.i
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ds
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.du
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.dv
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %.not25.i.not = icmp eq i8 %i.eq, 0
  br i1 %.not25.i.not, label %ata_set_rwcmd_protocol.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr i8, ptr %0, i64 53
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = trunc i32 %2 to i8
  %i.et = getelementptr i8, ptr %0, i64 48
  store i8 %i.es, ptr %i.et, align 8
  %i.eu = lshr i64 %1, 16
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr i8, ptr %0, i64 51
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = lshr i64 %1, 8
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = getelementptr i8, ptr %0, i64 50
  store i8 %i.ey, ptr %i.ez, align 2
  %i.fa = trunc i64 %1 to i8
  %i.fb = getelementptr i8, ptr %0, i64 49
  store i8 %i.fa, ptr %i.fb, align 1
  %i.fc = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 4
  %i.fe = or i8 %i.fd, 64
  store i8 %i.fe, ptr %i.fc, align 4
  br label %ata_set_rwcmd_protocol.exit

bb.z:                                             ; preds = %bb.f
  %i.ff = zext i32 %2 to i64
  %i.fg = add i64 %1, %i.ff
  %i.fh = icmp ult i64 %i.fg, 268435455
  %i.fi = icmp ult i32 %2, 257
  %i.fj = and i1 %i.fi, %i.fh
  br i1 %i.fj, label %bb.aa, label %ata_set_rwcmd_protocol.exit

bb.aa:                                            ; preds = %bb.z
  %i.fk = lshr i64 %i.f, 3                        ; 2 uses
  %i.fl = and i64 %i.fk, 4
  %i.fm = and i64 %i.f, 1                         ; 2 uses
  %i.fn = shl nuw nsw i64 %i.fm, 1
  %i.fo = and i64 %i.fk, 1
  %i.fp = and i64 %.val, 16384
  %.not21.i123 = icmp eq i64 %i.fp, 0
  br i1 %.not21.i123, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr i8, ptr %0, i64 40
  store i8 1, ptr %i.fq, align 8
  %i.fr = getelementptr i8, ptr %i.c, i64 864
  %i.fs = load i32, ptr %i.fr, align 32
  %.not24.i124 = icmp eq i32 %i.fs, 0
  %i.ft = select i1 %.not24.i124, i64 8, i64 0
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %.not.i127 = icmp eq i64 %i.fm, 0
  br i1 %.not.i127, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = load ptr, ptr %i.c, align 64
  %i.fv = load ptr, ptr %i.fu, align 64
  %i.fw = getelementptr i8, ptr %i.fv, i64 24
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = and i64 %i.fx, 256
  %.not22.i128 = icmp eq i64 %i.fy, 0
  br i1 %.not22.i128, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr i8, ptr %0, i64 40
  store i8 1, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %i.c, i64 864
  %i.gb = load i32, ptr %i.ga, align 32
  %.not23.i129 = icmp eq i32 %i.gb, 0
  %i.gc = select i1 %.not23.i129, i64 8, i64 0
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.gd = getelementptr i8, ptr %0, i64 40
  store i8 2, ptr %i.gd, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %.0.i125 = phi i64 [ %i.ft, %bb.ab ], [ %i.gc, %bb.ae ], [ 16, %bb.af ]
  %i.ge = getelementptr i8, ptr @ata_rw_cmds, i64 %.0.i125
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.fl
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.fn
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.fo
  %i.gi = load i8, ptr %i.gh, align 1             ; 2 uses
  %.not25.i126.not = icmp eq i8 %i.gi, 0
  br i1 %.not25.i126.not, label %ata_set_rwcmd_protocol.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr i8, ptr %0, i64 53
  store i8 %i.gi, ptr %i.gj, align 1
  %i.gk = trunc i64 %1 to i32                     ; 2 uses
  %i.gl = getelementptr i8, ptr %i.c, i64 892
  %i.gm = load i16, ptr %i.gl, align 4
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = udiv i32 %i.gk, %i.gn                   ; 2 uses
  %i.gp = getelementptr i8, ptr %i.c, i64 890
  %i.gq = load i16, ptr %i.gp, align 2
  %i.gr = zext i16 %i.gq to i32                   ; 2 uses
  %i.gs = udiv i32 %i.go, %i.gr                   ; 2 uses
  %i.gt = urem i32 %i.go, %i.gr                   ; 2 uses
  %i.gu = urem i32 %i.gk, %i.gn                   ; 2 uses
  %.not113 = icmp ult i32 %i.gs, 65536
  %.not114 = icmp samesign ult i32 %i.gt, 16
  %or.cond120 = select i1 %.not113, i1 %.not114, i1 false
  %i.gv = icmp samesign ult i32 %i.gu, 255
  %or.cond121 = select i1 %or.cond120, i1 %i.gv, i1 false
  br i1 %or.cond121, label %ata_set_rwcmd_protocol.exit130, label %ata_set_rwcmd_protocol.exit

ata_set_rwcmd_protocol.exit130:                   ; preds = %bb.ah
  %i.gw = trunc i32 %2 to i8
  %i.gx = getelementptr i8, ptr %0, i64 48
  store i8 %i.gw, ptr %i.gx, align 8
  %i.gy = trunc nuw i32 %i.gu to i8
  %i.gz = add nuw i8 %i.gy, 1
  %i.ha = getelementptr i8, ptr %0, i64 49
  store i8 %i.gz, ptr %i.ha, align 1
  %i.hb = getelementptr i8, ptr %0, i64 50
  %i.hc = trunc nuw i32 %i.gs to i16
  store i16 %i.hc, ptr %i.hb, align 2
  %i.hd = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.he = load i8, ptr %i.hd, align 4
  %i.hf = trunc nuw nsw i32 %i.gt to i8
  %i.hg = or i8 %i.he, %i.hf
  store i8 %i.hg, ptr %i.hd, align 4
  br label %ata_set_rwcmd_protocol.exit

ata_set_rwcmd_protocol.exit:                      ; preds = %bb.ag, %bb.ah, %bb.z, %ata_set_tf_cdl.exit, %bb.e, %bb.y, %ata_set_rwcmd_protocol.exit130, %bb.x, %bb.o, %bb.p, %bb.b
  %.1 = phi i32 [ -22, %bb.x ], [ 0, %ata_set_tf_cdl.exit ], [ -34, %bb.o ], [ -34, %bb.b ], [ -34, %bb.p ], [ 0, %ata_set_rwcmd_protocol.exit130 ], [ 0, %bb.y ], [ 0, %bb.e ], [ -22, %bb.ag ], [ -34, %bb.ah ], [ -34, %bb.z ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 0, 1048576) i32 @ata_pack_xfermask(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, 127
  %i.b = shl i32 %1, 7
  %i.c = and i32 %i.b, 3968
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = shl i32 %2, 12
  %i.f = and i32 %i.e, 1044480
  %i.g = or disjoint i32 %i.d, %i.f
  ret i32 %i.g
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @ata_unpack_xfermask(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %0, 127
  store i32 %i.a, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = lshr i32 %0, 7
  %i.c = and i32 %i.b, 31
  store i32 %i.c, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = lshr i32 %0, 12
  %i.e = and i32 %i.d, 255
  store i32 %i.e, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(none)
define dso_local zeroext i8 @ata_xfer_mask2mode(i32 noundef %0) #9 align 16 prefalign(16) {
fls.exit:
  %i.a = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #33, !srcloc !25 ; 5 uses
  %.not = icmp slt i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %fls.exit
  %i.b = icmp samesign ult i32 %i.a, 7
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.lcssa.neg = phi i32 [ 0, %bb.a ], [ -7, %bb.c ], [ -12, %bb.d ]
  %.016.lcssa = phi ptr [ @ata_xfer_tbl, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 12), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 24), %bb.d ]
  %i.c = getelementptr i8, ptr %.016.lcssa, i64 8
  %i.d = load i8, ptr %i.c, align 4
  %i.e = add nsw i32 %.lcssa.neg, %i.a
  %i.f = trunc nsw i32 %i.e to i8
  %i.g = add i8 %i.d, %i.f
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i32 %i.a, 12
  br i1 %i.h, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i32 %i.a, 20
  br i1 %i.i, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %fls.exit, %bb.d, %bb.b
  %.011 = phi i8 [ %i.g, %bb.b ], [ -1, %bb.d ], [ -1, %fls.exit ]
  ret i8 %.011
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local i32 @ata_xfer_mode2mask(i8 noundef zeroext %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = zext nneg i8 %0 to i32
  %.not = icmp ult i8 %0, 8
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i8 %0, 15
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.lcssa19 = phi i32 [ 0, %bb.b ], [ 7, %bb.e ], [ 12, %bb.f ] ; 2 uses
  %.lcssa.neg = phi i32 [ -8, %bb.b ], [ -32, %bb.e ], [ -64, %bb.f ]
  %i.c = add nuw nsw i32 %.lcssa19, %i.a
  %i.d = add nsw i32 %.lcssa.neg, %i.c
  %i.e = shl i32 2, %i.d
  %i.f = add i32 %i.e, -1
  %notmask = shl nsw i32 -1, %.lcssa19
  %i.g = and i32 %i.f, %notmask
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not.1 = icmp ult i8 %0, 32
  br i1 %.not.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult i8 %0, 37
  br i1 %i.h, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i8 %0, -8
  %or.cond = icmp eq i8 %i.i, 64
  br i1 %or.cond, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d, %bb.f, %bb.c
  %.011 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.011
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i32 -1, 13) i32 @ata_xfer_mode2shift(i8 noundef zeroext %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i8 %0, 8
  br i1 %.not, label %.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i8 %0, 15
  br i1 %i.a, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.1 = icmp ult i8 %0, 32
  br i1 %.not.1, label %.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = icmp ult i8 %0, 37
  br i1 %i.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = and i8 %0, -8
  %or.cond = icmp eq i8 %i.c, 64
  br i1 %or.cond, label %bb.f, label %.thread14

.thread14:                                        ; preds = %bb.a, %bb.c, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread14, %bb.d, %bb.b
  %.08 = phi i32 [ 0, %bb.b ], [ -1, %.thread14 ], [ 7, %bb.d ], [ 12, %bb.e ]
  ret i32 %.08
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(none)
define dso_local ptr @ata_mode_string(i32 noundef %0) #9 align 16 prefalign(16) {
fls.exit:
  %i.a = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #33, !srcloc !25 ; 2 uses
  %i.b = icmp ult i32 %i.a, 20
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %fls.exit
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [8 x i8], ptr @ata_mode_string.xfer_mode_str, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %fls.exit, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ @.str.27, %fls.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @sata_spd_string(i32 noundef %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, -1                           ; 2 uses
  %i.c = icmp ugt i32 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr [8 x i8], ptr @sata_spd_string.spd_str, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ @.str.31, %bb.b ], [ @.str.31, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 10) i32 @ata_dev_classify(ptr nofree noundef readonly captures(none) %0) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 18
  %i.b = load i8, ptr %i.a, align 2
  switch i8 %i.b, label %.thread14 [
    i8 0, label %bb.b
    i8 20, label %bb.c
    i8 105, label %bb.d
    i8 60, label %bb.e
    i8 -51, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 19
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.g, label %.thread14

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 19
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, -21
  br i1 %i.h, label %bb.g, label %.thread14

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 19
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, -106
  br i1 %i.k, label %bb.g, label %.thread14

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 19
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -61
  br i1 %i.n, label %bb.g, label %.thread14

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 19
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, -85
  br i1 %i.q, label %bb.g, label %.thread14

.thread14:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.thread14
  %.0 = phi i32 [ 0, %.thread14 ], [ 1, %bb.b ], [ 3, %bb.c ], [ 5, %bb.d ], [ 7, %bb.e ], [ 9, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_id_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %3, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b, !prof !18

.preheader:                                       ; preds = %bb.a
  %.not1516 = icmp eq i32 %3, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.b = add i32 %3, -2                           ; 2 uses
  %i.c = and i32 %i.b, 2
  %lcmp.mod.not.not = icmp eq i32 %i.c, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2
  %i.g = lshr i16 %i.f, 8
end_hunk_0
begin_hunk_1_@ata_set_mode:bb.a
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.ad, !llvm.loop !145

._crit_edge.i.i:                                  ; preds = %ata_link_max_devices.exit34.i.i.i, %ata_dev_next.exit29.i.i, %ata_is_host_link.exit.i30.i21.i.i, %ata_is_host_link.exit.i30.i21.us.i.i, %ata_is_host_link.exit.i30.i21.us.us.i.i, %ata_is_host_link.exit.thread.i32.i27.us.i.i, %ata_is_host_link.exit.thread.i32.i27.us.us.i.i, %ata_dev_next.exit.i.i
  %i.hu = icmp eq ptr %.01352.i.i, %i.fp
  br i1 %i.hu, label %.loopexit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.hv = load ptr, ptr %i.fq, align 64
  %i.hw = icmp eq ptr %.01352.i.i, %i.hv
  br i1 %i.hw, label %.loopexit.i, label %bb.am, !prof !19

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr i8, ptr %.01352.i.i, i64 7552 ; 3 uses
  %i.hy = load ptr, ptr %i.fr, align 16
  %i.hz = getelementptr [7552 x i8], ptr %i.hy, i64 %i.fs
  %i.ia = icmp uge ptr %i.hx, %i.hz
  %.not.i57.i = icmp eq ptr %i.hx, null
  %or.cond.i.i = or i1 %.not.i57.i, %i.ia
  br i1 %or.cond.i.i, label %.loopexit.i, label %bb.z, !llvm.loop !146

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %._crit_edge.i.i, %ata_link_next.exit.i.i, %bb.v
  %i.ib = load ptr, ptr %.065270, align 64        ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 64
  %i.id = getelementptr i8, ptr %i.ic, i64 36
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr i8, ptr %i.ib, i64 8
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = load i32, ptr %i.di, align 8
  %i.ii = add i32 %i.ih, %i.ig
  %i.ij = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.557, i32 noundef %i.ie, i32 noundef %i.ii) #32 ; 0 uses
  %i.ik = and i32 %.4.i, -1015809
  br label %cable_is_40wire.exit.i

cable_is_40wire.exit.i:                           ; preds = %ata_is_40wire.exit.i.i, %bb.af, %.split.i.i, %.loopexit.i, %bb.v, %bb.v, %bb.v, %bb.u
  %.5.i = phi i32 [ %i.ik, %.loopexit.i ], [ %.4.i, %bb.u ], [ %.4.i, %bb.v ], [ %.4.i, %bb.v ], [ %.4.i, %bb.v ], [ %.4.i, %.split.i.i ], [ %.4.i, %bb.af ], [ %.4.i, %ata_is_40wire.exit.i.i ] ; 3 uses
  %.not.i58.i = icmp eq ptr %i.aw, null
  br i1 %.not.i58.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %cable_is_40wire.exit.i
  %i.il = and i32 %.5.i, 127
  store i32 %i.il, ptr %i.aw, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %cable_is_40wire.exit.i
  %.not10.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.im = lshr i32 %.5.i, 7
  %i.in = and i32 %i.im, 31
  store i32 %i.in, ptr %i.ay, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not11.i.i = icmp eq ptr %i.ba, null
  br i1 %.not11.i.i, label %ata_dev_xfermask.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.io = lshr i32 %.5.i, 12
  %i.ip = and i32 %i.io, 255
  store i32 %i.ip, ptr %i.ba, align 4
  br label %ata_dev_xfermask.exit

ata_dev_xfermask.exit:                            ; preds = %bb.aq, %bb.ar
  %i.iq = load ptr, ptr %.065270, align 64        ; 5 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 8      ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = load i32, ptr %i.di, align 8            ; 2 uses
  %i.iu = add i32 %i.it, %i.is                    ; 4 uses
  %i.iv = load ptr, ptr %i.iq, align 64           ; 3 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 8256
  %i.ix = icmp eq ptr %i.iq, %i.iw
  br i1 %i.ix, label %ata_is_host_link.exit.thread.i, label %ata_is_host_link.exit.i

ata_is_host_link.exit.thread.i:                   ; preds = %ata_dev_xfermask.exit
  %i.iy = add i32 %i.iu, 15
  br label %bb.as

ata_is_host_link.exit.i:                          ; preds = %ata_dev_xfermask.exit
  %i.iz = getelementptr i8, ptr %i.iv, i64 15808
  %i.ja = load ptr, ptr %i.iz, align 64
  %.fr.i = freeze ptr %i.ja
  %i.jb = icmp eq ptr %i.iq, %.fr.i
  %i.jc = add i32 %i.iu, 15
  %spec.select.i85 = select i1 %i.jb, i32 %i.jc, i32 %i.iu
  br label %bb.as

bb.as:                                            ; preds = %ata_is_host_link.exit.i, %ata_is_host_link.exit.thread.i
  %i.jd = phi i32 [ %spec.select.i85, %ata_is_host_link.exit.i ], [ %i.iy, %ata_is_host_link.exit.thread.i ]
  %i.je = load i32, ptr @ata_force_tbl_size, align 4
  %.02848.i = add i32 %i.je, -1                   ; 2 uses
  %i.jf = icmp sgt i32 %.02848.i, -1
  br i1 %i.jf, label %.lr.ph.i, label %ata_force_xfermask.exit

.lr.ph.i:                                         ; preds = %bb.as
  %i.jg = load ptr, ptr @ata_force_tbl, align 8
  %i.jh = getelementptr i8, ptr %i.iv, i64 36
  %i.ji = zext nneg i32 %.02848.i to i64
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ji, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.jj = getelementptr [56 x i8], ptr %i.jg, i64 %indvars.iv.i ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 8            ; 2 uses
  %.not.i87 = icmp eq i32 %i.jk, -1
  br i1 %.not.i87, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jl = load i32, ptr %i.jh, align 4
  %.not34.i = icmp eq i32 %i.jk, %i.jl
  br i1 %.not34.i, label %bb.av, label %.critedge.i

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jm = getelementptr i8, ptr %i.jj, i64 4
  %i.jn = load i32, ptr %i.jm, align 4            ; 3 uses
  %.not35.i = icmp eq i32 %i.jn, -1
  %.not36.i = icmp eq i32 %i.jn, %i.iu
  %or.cond.i88 = select i1 %.not35.i, i1 true, i1 %.not36.i
  %.not37.i = icmp eq i32 %i.jn, %i.jd
  %or.cond41.i = select i1 %or.cond.i88, i1 true, i1 %.not37.i
  br i1 %or.cond41.i, label %bb.aw, label %.critedge.i

bb.aw:                                            ; preds = %bb.av
  %i.jo = getelementptr i8, ptr %i.jj, i64 28
  %i.jp = load i32, ptr %i.jo, align 4            ; 4 uses
  %.not38.i = icmp eq i32 %i.jp, 0
  br i1 %.not38.i, label %.critedge.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jq = getelementptr i8, ptr %i.jj, i64 8
  %i.jr = and i32 %i.jp, 127
  %i.js = lshr i32 %i.jp, 7
  %i.jt = and i32 %i.js, 31                       ; 2 uses
  %i.ju = lshr i32 %i.jp, 12
  %i.jv = and i32 %i.ju, 255                      ; 2 uses
  %.not39.i = icmp eq i32 %i.jv, 0
  br i1 %.not39.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.jv, ptr %i.ba, align 4
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %.not40.i = icmp eq i32 %i.jt, 0
  store i32 0, ptr %i.ba, align 4
  br i1 %.not40.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.jt, ptr %i.ay, align 16
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  store i32 0, ptr %i.ay, align 16
  store i32 %i.jr, ptr %i.aw, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %i.jw = load ptr, ptr %i.iq, align 64
  %i.jx = getelementptr i8, ptr %i.jw, i64 36
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = load i32, ptr %i.ir, align 8
  %i.ka = add i32 %i.jz, %i.it
  %i.kb = load ptr, ptr %i.jq, align 8
  %i.kc = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.337, i32 noundef %i.jy, i32 noundef %i.ka, ptr noundef %i.kb) #32 ; 0 uses
  br label %ata_force_xfermask.exit

.critedge.i:                                      ; preds = %bb.aw, %bb.av, %bb.au
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.kd = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.kd, label %bb.at, label %ata_force_xfermask.exit, !llvm.loop !147

ata_force_xfermask.exit:                          ; preds = %.critedge.i, %bb.as, %bb.bc
  %i.ke = load i32, ptr %i.aw, align 4
  %i.kf = and i32 %i.ke, 127
  %i.kg = load i32, ptr @libata_dma_mask, align 4
  %i.kh = and i32 %i.kg, %.0
  %.not81 = icmp eq i32 %i.kh, 0
  br i1 %.not81, label %fls.exit.i, label %bb.bd

bb.bd:                                            ; preds = %ata_force_xfermask.exit
  %i.ki = load i32, ptr %i.ay, align 16
  %i.kj = load i32, ptr %i.ba, align 4
  %i.kk = shl i32 %i.ki, 7
  %i.kl = and i32 %i.kk, 3968
  %i.km = shl i32 %i.kj, 12
  %i.kn = and i32 %i.km, 1044480
  %i.ko = or disjoint i32 %i.kn, %i.kl
  br label %fls.exit.i

fls.exit.i:                                       ; preds = %bb.bd, %ata_force_xfermask.exit
  %.060 = phi i32 [ %i.ko, %bb.bd ], [ 0, %ata_force_xfermask.exit ]
  %i.kp = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kf, i32 -1) #33, !srcloc !25 ; 5 uses
  %.not.i90 = icmp slt i32 %i.kp, 0
  br i1 %.not.i90, label %ata_xfer_mask2mode.exit, label %bb.be

bb.be:                                            ; preds = %fls.exit.i
  %i.kq = icmp samesign ult i32 %i.kp, 7
  br i1 %i.kq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %.lcssa.neg.i = phi i32 [ 0, %bb.be ], [ -7, %bb.bg ], [ -12, %bb.bh ]
  %.016.lcssa.i = phi ptr [ @ata_xfer_tbl, %bb.be ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 12), %bb.bg ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 24), %bb.bh ]
  %i.kr = getelementptr i8, ptr %.016.lcssa.i, i64 8
  %i.ks = load i8, ptr %i.kr, align 4
  %i.kt = add nsw i32 %.lcssa.neg.i, %i.kp
  %i.ku = trunc nsw i32 %i.kt to i8
  %i.kv = add i8 %i.ks, %i.ku
  br label %ata_xfer_mask2mode.exit

bb.bg:                                            ; preds = %bb.be
  %i.kw = icmp samesign ult i32 %i.kp, 12
  br i1 %i.kw, label %bb.bf, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kx = icmp samesign ult i32 %i.kp, 20
  br i1 %i.kx, label %bb.bf, label %ata_xfer_mask2mode.exit

ata_xfer_mask2mode.exit:                          ; preds = %fls.exit.i, %bb.bf, %bb.bh
  %.011.i = phi i8 [ %i.kv, %bb.bf ], [ -1, %bb.bh ], [ -1, %fls.exit.i ]
  %i.ky = getelementptr i8, ptr %.065270, i64 856
  store i8 %.011.i, ptr %i.ky, align 8
  %i.kz = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.060, i32 -1) #33, !srcloc !25 ; 5 uses
  %.not.i94 = icmp slt i32 %i.kz, 0
  br i1 %.not.i94, label %ata_xfer_mask2mode.exit99.thread, label %bb.bi

bb.bi:                                            ; preds = %ata_xfer_mask2mode.exit
  %i.la = icmp samesign ult i32 %i.kz, 7
  br i1 %i.la, label %ata_xfer_mask2mode.exit99, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lb = icmp samesign ult i32 %i.kz, 12
  br i1 %i.lb, label %ata_xfer_mask2mode.exit99, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lc = icmp samesign ult i32 %i.kz, 20
  br i1 %i.lc, label %ata_xfer_mask2mode.exit99, label %ata_xfer_mask2mode.exit99.thread

ata_xfer_mask2mode.exit99.thread:                 ; preds = %bb.bk, %ata_xfer_mask2mode.exit
  %i.ld = getelementptr i8, ptr %.065270, i64 857
  store i8 -1, ptr %i.ld, align 1
  br label %bb.bl

ata_xfer_mask2mode.exit99:                        ; preds = %bb.bi, %bb.bj, %bb.bk
  %.lcssa.neg.i97 = phi i32 [ 0, %bb.bi ], [ -7, %bb.bj ], [ -12, %bb.bk ]
  %.016.lcssa.i98 = phi ptr [ @ata_xfer_tbl, %bb.bi ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 12), %bb.bj ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 24), %bb.bk ]
  %i.le = getelementptr i8, ptr %.016.lcssa.i98, i64 8
  %i.lf = load i8, ptr %i.le, align 4
  %i.lg = add nsw i32 %.lcssa.neg.i97, %i.kz
  %i.lh = trunc nsw i32 %i.lg to i8
  %i.li = add i8 %i.lf, %i.lh
  %.fr = freeze i8 %i.li                          ; 2 uses
  %i.lj = getelementptr i8, ptr %.065270, i64 857
  store i8 %.fr, ptr %i.lj, align 1
  %.not222 = icmp eq i8 %.fr, -1
  %spec.select = select i1 %.not222, i32 %.062271, i32 1
  br label %bb.bl

bb.bl:                                            ; preds = %ata_xfer_mask2mode.exit99, %ata_xfer_mask2mode.exit99.thread
  %i.lk = phi i32 [ %.062271, %ata_xfer_mask2mode.exit99.thread ], [ %spec.select, %ata_xfer_mask2mode.exit99 ] ; 2 uses
  %i.ll = load ptr, ptr %0, align 64              ; 8 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8256
  %i.ln = icmp eq ptr %0, %i.lm
  %i.lo = getelementptr i8, ptr %i.ll, i64 24     ; 2 uses
  br i1 %i.ln, label %.split257.us, label %.split257

.split257.us:                                     ; preds = %bb.bl
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = and i64 %i.lp, 1
  %.not.i33.i108.us = icmp eq i64 %i.lq, 0
  br i1 %.not.i33.i108.us, label %ata_is_host_link.exit.thread.i32.i107.us.us, label %ata_is_host_link.exit.thread.i32.i107.us

ata_is_host_link.exit.thread.i32.i107.us.us:      ; preds = %.split257.us, %bb.bm
  %.024.i.us.us = phi ptr [ %i.lr, %bb.bm ], [ %.065270, %.split257.us ] ; 2 uses
  %i.lr = getelementptr i8, ptr %.024.i.us.us, i64 3136 ; 7 uses
  %i.ls = icmp ult ptr %i.lr, %i.v
  br i1 %i.ls, label %bb.bm, label %._crit_edge

bb.bm:                                            ; preds = %ata_is_host_link.exit.thread.i32.i107.us.us
  %i.lt = getelementptr i8, ptr %.024.i.us.us, i64 3976
  %.1.val.i106.us.us = load i32, ptr %i.lt, align 8
  switch i32 %.1.val.i106.us.us, label %ata_is_host_link.exit.thread.i32.i107.us.us [
    i32 7, label %ata_dev_next.exit109
    i32 5, label %ata_dev_next.exit109
    i32 3, label %ata_dev_next.exit109
    i32 1, label %ata_dev_next.exit109
    i32 9, label %ata_dev_next.exit109
  ]

ata_is_host_link.exit.thread.i32.i107.us:         ; preds = %.split257.us, %bb.bn
  %.024.i.us = phi ptr [ %i.lu, %bb.bn ], [ %.065270, %.split257.us ] ; 2 uses
  %i.lu = getelementptr i8, ptr %.024.i.us, i64 3136 ; 7 uses
  %i.lv = icmp ult ptr %i.lu, %i.w
  br i1 %i.lv, label %bb.bn, label %._crit_edge

bb.bn:                                            ; preds = %ata_is_host_link.exit.thread.i32.i107.us
  %i.lw = getelementptr i8, ptr %.024.i.us, i64 3976
  %.1.val.i106.us = load i32, ptr %i.lw, align 8
  switch i32 %.1.val.i106.us, label %ata_is_host_link.exit.thread.i32.i107.us [
    i32 7, label %ata_dev_next.exit109
    i32 5, label %ata_dev_next.exit109
    i32 3, label %ata_dev_next.exit109
    i32 1, label %ata_dev_next.exit109
    i32 9, label %ata_dev_next.exit109
  ]

.split257:                                        ; preds = %bb.bl
  %i.lx = getelementptr i8, ptr %i.ll, i64 15808
  %i.ly = load ptr, ptr %i.lx, align 64
  %i.lz = icmp eq ptr %0, %i.ly
  br i1 %i.lz, label %.split257.split.us, label %ata_is_host_link.exit.i30.i101

.split257.split.us:                               ; preds = %.split257
  %i.ma = load i64, ptr %i.lo, align 8
  %i.mb = and i64 %i.ma, 1
  %.not.i33.i108.us261 = icmp eq i64 %i.mb, 0
  br i1 %.not.i33.i108.us261, label %ata_is_host_link.exit.i30.i101.us.us, label %ata_is_host_link.exit.i30.i101.us

ata_is_host_link.exit.i30.i101.us.us:             ; preds = %.split257.split.us, %bb.bo
  %.024.i.us259.us = phi ptr [ %i.mc, %bb.bo ], [ %.065270, %.split257.split.us ] ; 2 uses
  %i.mc = getelementptr i8, ptr %.024.i.us259.us, i64 3136 ; 7 uses
  %i.md = icmp ult ptr %i.mc, %i.v
  br i1 %i.md, label %bb.bo, label %._crit_edge

bb.bo:                                            ; preds = %ata_is_host_link.exit.i30.i101.us.us
  %i.me = getelementptr i8, ptr %.024.i.us259.us, i64 3976
  %.1.val.i106.us264.us = load i32, ptr %i.me, align 8
  switch i32 %.1.val.i106.us264.us, label %ata_is_host_link.exit.i30.i101.us.us [
    i32 7, label %ata_dev_next.exit109
    i32 5, label %ata_dev_next.exit109
    i32 3, label %ata_dev_next.exit109
    i32 1, label %ata_dev_next.exit109
    i32 9, label %ata_dev_next.exit109
  ]

ata_is_host_link.exit.i30.i101.us:                ; preds = %.split257.split.us, %bb.bp
  %.024.i.us259 = phi ptr [ %i.mf, %bb.bp ], [ %.065270, %.split257.split.us ] ; 2 uses
  %i.mf = getelementptr i8, ptr %.024.i.us259, i64 3136 ; 7 uses
  %i.mg = icmp ult ptr %i.mf, %i.w
  br i1 %i.mg, label %bb.bp, label %._crit_edge

bb.bp:                                            ; preds = %ata_is_host_link.exit.i30.i101.us
  %i.mh = getelementptr i8, ptr %.024.i.us259, i64 3976
  %.1.val.i106.us264 = load i32, ptr %i.mh, align 8
  switch i32 %.1.val.i106.us264, label %ata_is_host_link.exit.i30.i101.us [
    i32 7, label %ata_dev_next.exit109
    i32 5, label %ata_dev_next.exit109
    i32 3, label %ata_dev_next.exit109
    i32 1, label %ata_dev_next.exit109
    i32 9, label %ata_dev_next.exit109
  ]

ata_is_host_link.exit.i30.i101:                   ; preds = %.split257, %bb.bq
  %.024.i = phi ptr [ %i.mi, %bb.bq ], [ %.065270, %.split257 ] ; 2 uses
  %i.mi = getelementptr i8, ptr %.024.i, i64 3136 ; 7 uses
  %i.mj = icmp ult ptr %i.mi, %i.v
  br i1 %i.mj, label %bb.bq, label %._crit_edge

bb.bq:                                            ; preds = %ata_is_host_link.exit.i30.i101
  %i.mk = getelementptr i8, ptr %.024.i, i64 3976
  %.1.val.i106 = load i32, ptr %i.mk, align 8
  switch i32 %.1.val.i106, label %ata_is_host_link.exit.i30.i101 [
    i32 7, label %ata_dev_next.exit109
    i32 5, label %ata_dev_next.exit109
    i32 3, label %ata_dev_next.exit109
    i32 1, label %ata_dev_next.exit109
    i32 9, label %ata_dev_next.exit109
  ]

ata_dev_next.exit109:                             ; preds = %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %.us-phi258 = phi ptr [ %i.lr, %bb.bm ], [ %i.lu, %bb.bn ], [ %i.mc, %bb.bo ], [ %i.mf, %bb.bp ], [ %i.lr, %bb.bm ], [ %i.lr, %bb.bm ], [ %i.lr, %bb.bm ], [ %i.lr, %bb.bm ], [ %i.lu, %bb.bn ], [ %i.lu, %bb.bn ], [ %i.lu, %bb.bn ], [ %i.lu, %bb.bn ], [ %i.mc, %bb.bo ], [ %i.mc, %bb.bo ], [ %i.mc, %bb.bo ], [ %i.mc, %bb.bo ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bp ], [ %i.mi, %bb.bq ], [ %i.mi, %bb.bq ], [ %i.mi, %bb.bq ], [ %i.mi, %bb.bq ], [ %i.mi, %bb.bq ] ; 2 uses
  %.not = icmp eq ptr %.us-phi258, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !148

._crit_edge:                                      ; preds = %ata_dev_next.exit109, %ata_is_host_link.exit.i30.i101, %ata_is_host_link.exit.i30.i101.us, %ata_is_host_link.exit.i30.i101.us.us, %ata_is_host_link.exit.thread.i32.i107.us, %ata_is_host_link.exit.thread.i32.i107.us.us
  %i.ml = icmp eq i32 %i.lk, 0
  %i.mm = getelementptr i8, ptr %i.ll, i64 8256
  %i.mn = icmp eq ptr %0, %i.mm
  %i.mo = getelementptr i8, ptr %i.ll, i64 15808
  %i.mp = getelementptr i8, ptr %i.ll, i64 24
  br label %.preheader228

bb.br:                                            ; preds = %.preheader228
  %i.mq = getelementptr i8, ptr %.1.i110, i64 3136 ; 2 uses
  br i1 %i.mn, label %ata_is_host_link.exit.thread.i32.i117, label %ata_is_host_link.exit.i30.i114

ata_is_host_link.exit.i30.i114:                   ; preds = %bb.br
  %i.mr = load ptr, ptr %i.mo, align 64
  %i.ms = icmp eq ptr %0, %i.mr
  br i1 %i.ms, label %ata_is_host_link.exit.thread.i32.i117, label %bb.bs

ata_is_host_link.exit.thread.i32.i117:            ; preds = %ata_is_host_link.exit.i30.i114, %bb.br
  %i.mt = load i64, ptr %i.mp, align 8
  %i.mu = and i64 %i.mt, 1
  %.not.i33.i118 = icmp eq i64 %i.mu, 0
  br i1 %.not.i33.i118, label %bb.bs, label %ata_link_max_devices.exit34.i115

bb.bs:                                            ; preds = %ata_is_host_link.exit.thread.i32.i117, %ata_is_host_link.exit.i30.i114
  br label %ata_link_max_devices.exit34.i115

ata_link_max_devices.exit34.i115:                 ; preds = %bb.bs, %ata_is_host_link.exit.thread.i32.i117
  %.0.i31.i116 = phi i64 [ 1, %bb.bs ], [ 2, %ata_is_host_link.exit.thread.i32.i117 ]
  %i.mv = getelementptr [3136 x i8], ptr %i.b, i64 %.0.i31.i116
  %i.mw = icmp ult ptr %i.mq, %i.mv
  br i1 %i.mw, label %.preheader228, label %.preheader226

.preheader228:                                    ; preds = %._crit_edge, %ata_link_max_devices.exit34.i115
  %.1.i110 = phi ptr [ %i.mq, %ata_link_max_devices.exit34.i115 ], [ %i.b, %._crit_edge ] ; 4 uses
  %i.mx = getelementptr i8, ptr %.1.i110, i64 840
  %.1.val.i111 = load i32, ptr %i.mx, align 8
  switch i32 %.1.val.i111, label %bb.br [
    i32 7, label %ata_dev_next.exit119
    i32 5, label %ata_dev_next.exit119
    i32 3, label %ata_dev_next.exit119
    i32 1, label %ata_dev_next.exit119
    i32 9, label %ata_dev_next.exit119
  ]

ata_dev_next.exit119:                             ; preds = %.preheader228, %.preheader228, %.preheader228, %.preheader228, %.preheader228
  %.not72284 = icmp eq ptr %.1.i110, null
  br i1 %.not72284, label %.preheader226, label %.lr.ph286

.lr.ph286:                                        ; preds = %ata_dev_next.exit119
  %i.my = getelementptr i8, ptr %.fr318, i64 8
  %i.mz = getelementptr i8, ptr %0, i64 4352      ; 3 uses
  %i.na = getelementptr i8, ptr %0, i64 7488      ; 2 uses
  br label %bb.bt

.preheader226:                                    ; preds = %ata_link_max_devices.exit34.i115, %ata_dev_next.exit130, %ata_is_host_link.exit.i30.i122, %ata_is_host_link.exit.i30.i122.us, %ata_is_host_link.exit.i30.i122.us.us, %ata_is_host_link.exit.thread.i32.i128.us, %ata_is_host_link.exit.thread.i32.i128.us.us, %ata_dev_next.exit119
  %i.nb = phi ptr [ %i.ny, %ata_is_host_link.exit.thread.i32.i128.us.us ], [ %i.ll, %ata_dev_next.exit119 ], [ %i.ny, %ata_dev_next.exit130 ], [ %i.ny, %ata_is_host_link.exit.i30.i122 ], [ %i.ny, %ata_is_host_link.exit.thread.i32.i128.us ], [ %i.ny, %ata_is_host_link.exit.i30.i122.us.us ], [ %i.ny, %ata_is_host_link.exit.i30.i122.us ], [ %i.ll, %ata_link_max_devices.exit34.i115 ] ; 5 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 8256
  %i.nd = icmp eq ptr %0, %i.nc
  %i.ne = getelementptr i8, ptr %i.nb, i64 15808
  %i.nf = getelementptr i8, ptr %i.nb, i64 24
  br label %bb.ce

bb.bt:                                            ; preds = %.lr.ph286, %ata_dev_next.exit130
  %.166285 = phi ptr [ %.1.i110, %.lr.ph286 ], [ %.us-phi273, %ata_dev_next.exit130 ] ; 12 uses
  %i.ng = getelementptr i8, ptr %.166285, i64 856
  %i.nh = load i8, ptr %i.ng, align 8             ; 2 uses
  %i.ni = icmp eq i8 %i.nh, -1
  br i1 %i.ni, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.nj = load ptr, ptr %.166285, align 64        ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 64
  %i.nl = getelementptr i8, ptr %i.nk, i64 36
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = getelementptr i8, ptr %i.nj, i64 8
  %i.no = load i32, ptr %i.nn, align 8
end_hunk_1
begin_hunk_2_@ata_set_mode:bb.a
.thread77.i:                                      ; preds = %ata_pio_need_iordy.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread.i

bb.dd:                                            ; preds = %ata_pio_need_iordy.exit.thread.i.i, %ata_pio_need_iordy.exit.thread8.i.i
  %.sink.i.i = phi i8 [ %i.ts, %ata_pio_need_iordy.exit.thread8.i.i ], [ 1, %ata_pio_need_iordy.exit.thread.i.i ]
  store i8 %.sink.i.i, ptr %i.rk, align 8
  %i.tw = call i32 @ata_exec_internal(ptr noundef nonnull %.3313, ptr noundef nonnull %2, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 15000) #34 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not50.i168 = icmp ult i32 %i.tw, 2
  br i1 %.not50.i168, label %.thread.i, label %bb.eg

.thread.i:                                        ; preds = %bb.dd, %.thread77.i, %bb.cz
  %.04476.i = phi i32 [ 0, %.thread77.i ], [ %i.tw, %bb.dd ], [ 0, %bb.cz ]
  %.04674.i = phi ptr [ @.str.3, %.thread77.i ], [ @.str.3, %bb.dd ], [ @.str.338, %bb.cz ]
  %i.tx = getelementptr i8, ptr %i.rn, i64 996    ; 4 uses
  %i.ty = load i32, ptr %i.tx, align 4
  %i.tz = or i32 %i.ty, 1048576
  store i32 %i.tz, ptr %i.tx, align 4
  %i.ua = tail call i32 @ata_dev_revalidate(ptr noundef nonnull %.3313, i32 noundef 0, i32 noundef 0) #34 ; 2 uses
  %i.ub = load i32, ptr %i.tx, align 4            ; 2 uses
  %i.uc = and i32 %i.ub, -1048577
  store i32 %i.uc, ptr %i.tx, align 4
  %.not51.i170 = icmp eq i32 %i.ua, 0
  br i1 %.not51.i170, label %bb.de, label %ata_dev_set_mode.exit

bb.de:                                            ; preds = %.thread.i
  %i.ud = load i32, ptr %i.rv, align 4
  switch i32 %i.ud, label %.thread85.i [
    i32 0, label %bb.df
    i32 7, label %bb.di
  ]

bb.df:                                            ; preds = %bb.de
  %i.ue = getelementptr i8, ptr %.3313, i64 896
  %i.uf = load i16, ptr %i.ue, align 64
  switch i16 %i.uf, label %ata_id_is_cfa.exit.i [
    i16 -31606, label %ata_id_is_cfa.exit.thread.i
    i16 -31670, label %ata_id_is_cfa.exit.thread.i
  ]

ata_id_is_cfa.exit.i:                             ; preds = %bb.df
  %i.ug = getelementptr i8, ptr %.3313, i64 1062
  %i.uh = load i16, ptr %i.ug, align 2
  %.fr99.i = freeze i16 %i.uh
  %i.ui = and i16 %.fr99.i, -16380
  %i.uj = icmp eq i16 %i.ui, 16388
  br i1 %i.uj, label %ata_id_is_cfa.exit.thread.i, label %bb.dg

ata_id_is_cfa.exit.thread.i:                      ; preds = %ata_id_is_cfa.exit.i, %bb.df, %bb.df
  br label %bb.dg

bb.dg:                                            ; preds = %ata_id_is_cfa.exit.thread.i, %ata_id_is_cfa.exit.i
  %i.uk = phi i32 [ 1, %ata_id_is_cfa.exit.thread.i ], [ 0, %ata_id_is_cfa.exit.i ] ; 2 uses
  %i.ul = getelementptr i8, ptr %.3313, i64 1056
  %.val.i = load i16, ptr %i.ul, align 32         ; 2 uses
  %i.um = icmp eq i16 %.val.i, -1
  %i.un = and i16 %.val.i, 32766
  %or.cond102.i = icmp eq i16 %i.un, 0
  %or.cond106.i = or i1 %i.um, %or.cond102.i
  br i1 %or.cond106.i, label %ata_id_major_version.exit.thread83.i, label %ata_id_major_version.exit.thread.i

ata_id_major_version.exit.thread83.i:             ; preds = %bb.dg
  %i.uo = getelementptr i8, ptr %.3313, i64 856
  %i.up = load i8, ptr %i.uo, align 8
  %i.uq = icmp ult i8 %i.up, 11
  %spec.select58.i = select i1 %i.uq, i32 1, i32 %i.uk
  br label %ata_id_major_version.exit.thread.i

ata_id_major_version.exit.thread.i:               ; preds = %ata_id_major_version.exit.thread83.i, %bb.dg
  %.1.i188 = phi i32 [ %i.uk, %bb.dg ], [ %spec.select58.i, %ata_id_major_version.exit.thread83.i ] ; 2 uses
  %i.ur = getelementptr i8, ptr %.3313, i64 994
  %i.us = load i16, ptr %i.ur, align 2
  %i.ut = and i16 %i.us, 2048
  %.not52.i = icmp eq i16 %i.ut, 0
  br i1 %.not52.i, label %bb.dh, label %.thread85.i

bb.dh:                                            ; preds = %ata_id_major_version.exit.thread.i
  %i.uu = getelementptr i8, ptr %.3313, i64 856
  %i.uv = load i8, ptr %i.uu, align 8
  %i.uw = icmp ult i8 %i.uv, 11
  %spec.select59.i = select i1 %i.uw, i32 1, i32 %.1.i188
  br label %.thread85.i

bb.di:                                            ; preds = %bb.de
  %i.ux = getelementptr i8, ptr %.3313, i64 857
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = icmp eq i8 %i.uy, 32
  br i1 %i.uz, label %bb.dj, label %.thread85.i

bb.dj:                                            ; preds = %bb.di
  %i.va = getelementptr i8, ptr %.3313, i64 1022
  %i.vb = load i16, ptr %i.va, align 2
  %i.vc = lshr i16 %i.vb, 8
  %.lobit.i = and i16 %i.vc, 1
  %spec.select60.i = zext nneg i16 %.lobit.i to i32
  br label %.thread85.i

.thread85.i:                                      ; preds = %bb.dj, %bb.di, %bb.dh, %ata_id_major_version.exit.thread.i, %bb.de
  %.3.i171 = phi i32 [ 0, %bb.de ], [ %spec.select60.i, %bb.dj ], [ 0, %bb.di ], [ %spec.select59.i, %bb.dh ], [ %.1.i188, %ata_id_major_version.exit.thread.i ]
  %i.vd = getelementptr i8, ptr %.3313, i64 858
  %i.ve = load i8, ptr %i.vd, align 2             ; 7 uses
  %i.vf = getelementptr i8, ptr %.3313, i64 896
  %i.vg = getelementptr i8, ptr %.3313, i64 1002
  %i.vh = load i16, ptr %i.vg, align 2            ; 2 uses
  %i.vi = and i16 %i.vh, 2
  %.not.i64.i = icmp eq i16 %i.vi, 0
  br i1 %.not.i64.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.thread85.i
  %i.vj = getelementptr i8, ptr %.3313, i64 1024
  %i.vk = load i16, ptr %i.vj, align 64
  %i.vl = shl i16 %i.vk, 3
  %i.vm = and i16 %i.vl, 24
  %i.vn = or disjoint i16 %i.vm, 7
  %i.vo = zext nneg i16 %i.vn to i32
  br label %bb.dm

bb.dl:                                            ; preds = %.thread85.i
  %i.vp = getelementptr i8, ptr %.3313, i64 998
  %i.vq = load i16, ptr %i.vp, align 2            ; 2 uses
  %i.vr = icmp ult i16 %i.vq, 1280
  %i.vs = lshr i16 %i.vq, 8
  %i.vt = zext nneg i16 %i.vs to i32
  %i.vu = shl nuw nsw i32 2, %i.vt
  %i.vv = add nsw i32 %i.vu, -1
  %.024.i.i187 = select i1 %i.vr, i32 %i.vv, i32 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.125.i.i172 = phi i32 [ %i.vo, %bb.dk ], [ %.024.i.i187, %bb.dl ] ; 3 uses
  %i.vw = getelementptr i8, ptr %.3313, i64 1022
  %i.vx = load i16, ptr %i.vw, align 2
  %i.vy = and i16 %i.vx, 7
  %i.vz = zext nneg i16 %i.vy to i32              ; 3 uses
  %i.wa = load i16, ptr %i.vf, align 64
  switch i16 %i.wa, label %ata_id_is_cfa.exit.i.i186 [
    i16 -31606, label %ata_id_is_cfa.exit.thread.i.i173
    i16 -31670, label %ata_id_is_cfa.exit.thread.i.i173
  ]

ata_id_is_cfa.exit.i.i186:                        ; preds = %bb.dm
  %i.wb = getelementptr i8, ptr %.3313, i64 1062
  %i.wc = load i16, ptr %i.wb, align 2
  %i.wd = and i16 %i.wc, -16380
  %i.we = icmp eq i16 %i.wd, 16388
  br i1 %i.we, label %ata_id_is_cfa.exit.thread.i.i173, label %bb.dn

ata_id_is_cfa.exit.thread.i.i173:                 ; preds = %ata_id_is_cfa.exit.i.i186, %bb.dm, %bb.dm
  %i.wf = getelementptr i8, ptr %.3313, i64 1222
  %i.wg = load i16, ptr %i.wf, align 2
  %i.wh = zext i16 %i.wg to i32                   ; 2 uses
  %i.wi = and i32 %i.wh, 7                        ; 2 uses
  %i.wj = lshr i32 %i.wh, 3
  %i.wk = and i32 %i.wj, 7                        ; 2 uses
  %.not28.i.i174 = icmp eq i32 %i.wi, 0
  %i.wl = or i32 %.125.i.i172, 32
  %spec.select.i.i175 = select i1 %.not28.i.i174, i32 %.125.i.i172, i32 %i.wl ; 2 uses
  %i.wm = icmp samesign ugt i32 %i.wi, 1
  %i.wn = or i32 %spec.select.i.i175, 64
  %.3.i.i176 = select i1 %i.wm, i32 %i.wn, i32 %spec.select.i.i175
  %.not29.i.i177 = icmp eq i32 %i.wk, 0
  %i.wo = or disjoint i32 %i.vz, 8
  %.023.i.i178 = select i1 %.not29.i.i177, i32 %i.vz, i32 %i.wo ; 2 uses
  %i.wp = icmp samesign ugt i32 %i.wk, 1
  %i.wq = or disjoint i32 %.023.i.i178, 16
  %.1.i.i179 = select i1 %i.wp, i32 %i.wq, i32 %.023.i.i178
  br label %bb.dn

bb.dn:                                            ; preds = %ata_id_is_cfa.exit.thread.i.i173, %ata_id_is_cfa.exit.i.i186
  %.4.i.i180 = phi i32 [ %.3.i.i176, %ata_id_is_cfa.exit.thread.i.i173 ], [ %.125.i.i172, %ata_id_is_cfa.exit.i.i186 ]
  %.2.i.i181 = phi i32 [ %.1.i.i179, %ata_id_is_cfa.exit.thread.i.i173 ], [ %i.vz, %ata_id_is_cfa.exit.i.i186 ]
  %i.wr = and i16 %i.vh, 4
  %.not30.i.i182 = icmp eq i16 %i.wr, 0
  br i1 %.not30.i.i182, label %ata_id_xfermask.exit.i183, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ws = getelementptr i8, ptr %.3313, i64 1072
  %i.wt = load i16, ptr %i.ws, align 16
  %i.wu = zext i16 %i.wt to i32
  %i.wv = shl nuw nsw i32 %i.wu, 12
  %i.ww = and i32 %i.wv, 1044480
  br label %ata_id_xfermask.exit.i183

ata_id_xfermask.exit.i183:                        ; preds = %bb.dn, %bb.do
  %.0.i65.i = phi i32 [ %i.ww, %bb.do ], [ 0, %bb.dn ]
  %i.wx = shl nuw nsw i32 %.2.i.i181, 7
  %i.wy = and i32 %i.wx, 3968
  %i.wz = and i32 %.4.i.i180, 127
  %i.xa = or disjoint i32 %i.wy, %i.wz
  %i.xb = or disjoint i32 %i.xa, %.0.i65.i
  %i.xc = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.xb, i32 -1) #33, !srcloc !25 ; 5 uses
  %.not.i66.i = icmp slt i32 %i.xc, 0
  br i1 %.not.i66.i, label %ata_xfer_mask2mode.exit.i, label %bb.dp

bb.dp:                                            ; preds = %ata_id_xfermask.exit.i183
  %i.xd = icmp samesign ult i32 %i.xc, 7
  br i1 %i.xd, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %.lcssa.neg.i.i = phi i32 [ 0, %bb.dp ], [ -7, %bb.dr ], [ -12, %bb.ds ]
  %.016.lcssa.i.i = phi ptr [ @ata_xfer_tbl, %bb.dp ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 12), %bb.dr ], [ getelementptr inbounds nuw (i8, ptr @ata_xfer_tbl, i64 24), %bb.ds ]
  %i.xe = getelementptr i8, ptr %.016.lcssa.i.i, i64 8
  %i.xf = load i8, ptr %i.xe, align 4
  %i.xg = add nsw i32 %.lcssa.neg.i.i, %i.xc
  %i.xh = trunc nsw i32 %i.xg to i8
  %i.xi = add i8 %i.xf, %i.xh
  br label %ata_xfer_mask2mode.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.xj = icmp samesign ult i32 %i.xc, 12
  br i1 %i.xj, label %bb.dq, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xk = icmp samesign ult i32 %i.xc, 20
  br i1 %i.xk, label %bb.dq, label %ata_xfer_mask2mode.exit.i

ata_xfer_mask2mode.exit.i:                        ; preds = %bb.ds, %bb.dq, %ata_id_xfermask.exit.i183
  %.011.i.i = phi i8 [ %i.xi, %bb.dq ], [ -1, %bb.ds ], [ -1, %ata_id_xfermask.exit.i183 ]
  %.not54.i = icmp eq i32 %.04476.i, 0
  br i1 %.not54.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %ata_xfer_mask2mode.exit.i
  %i.xl = icmp ne i8 %i.ve, %.011.i.i
  %.not55100.i = icmp eq i32 %.3.i171, 0
  %.not55.i = select i1 %i.xl, i1 %.not55100.i, i1 false
  br i1 %.not55.i, label %bb.eg, label %bb.du

bb.du:                                            ; preds = %bb.dt, %ata_xfer_mask2mode.exit.i
  %.147.i = phi ptr [ %.04674.i, %ata_xfer_mask2mode.exit.i ], [ @.str.340, %bb.dt ]
  %i.xm = and i32 %i.ub, 131080
  %or.cond.i185 = icmp eq i32 %i.xm, 8
  br i1 %or.cond.i185, label %.preheader, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xn = load ptr, ptr %.3313, align 64          ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 64
  %i.xp = getelementptr i8, ptr %i.xo, i64 36
  %i.xq = load i32, ptr %i.xp, align 4
  %i.xr = getelementptr i8, ptr %i.xn, i64 8
  %i.xs = load i32, ptr %i.xr, align 8
  %i.xt = getelementptr i8, ptr %.3313, i64 8
  %i.xu = load i32, ptr %i.xt, align 8
  %i.xv = add i32 %i.xu, %i.xs
  %i.xw = zext nneg i8 %i.ve to i32
  %.not.i202 = icmp ult i8 %i.ve, 8
  br i1 %.not.i202, label %ata_xfer_mode2mask.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xx = icmp ult i8 %i.ve, 15
  br i1 %i.xx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.ea, %bb.dz, %bb.dw
  %.lcssa19.i = phi i32 [ 0, %bb.dw ], [ 7, %bb.dz ], [ 12, %bb.ea ] ; 2 uses
  %.lcssa.neg.i207 = phi i32 [ -8, %bb.dw ], [ -32, %bb.dz ], [ -64, %bb.ea ]
  %i.xy = add nuw nsw i32 %.lcssa19.i, %i.xw
  %i.xz = add nsw i32 %i.xy, %.lcssa.neg.i207
  %i.ya = shl i32 2, %i.xz
  %i.yb = add i32 %i.ya, -1
  %notmask.i = shl nsw i32 -1, %.lcssa19.i
  %i.yc = and i32 %i.yb, %notmask.i
  br label %ata_xfer_mode2mask.exit

bb.dy:                                            ; preds = %bb.dw
  %.not.1.i203 = icmp ult i8 %i.ve, 32
  br i1 %.not.1.i203, label %ata_xfer_mode2mask.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yd = icmp ult i8 %i.ve, 37
  br i1 %i.yd, label %bb.dx, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ye = and i8 %i.ve, -8
  %or.cond.i204 = icmp eq i8 %i.ye, 64
  br i1 %or.cond.i204, label %bb.dx, label %ata_xfer_mode2mask.exit

ata_xfer_mode2mask.exit:                          ; preds = %bb.ea, %bb.dy, %bb.dx, %bb.dv
  %.011.i206 = phi i32 [ %i.yc, %bb.dx ], [ 0, %bb.ea ], [ 0, %bb.dv ], [ 0, %bb.dy ]
  %i.yf = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.011.i206, i32 -1) #33, !srcloc !25 ; 2 uses
  %i.yg = icmp ult i32 %i.yf, 20
  br i1 %i.yg, label %bb.eb, label %ata_mode_string.exit.i

bb.eb:                                            ; preds = %ata_xfer_mode2mask.exit
  %i.yh = zext nneg i32 %i.yf to i64
  %i.yi = getelementptr [8 x i8], ptr @ata_mode_string.xfer_mode_str, i64 %i.yh
  %i.yj = load ptr, ptr %i.yi, align 8
  br label %ata_mode_string.exit.i

ata_mode_string.exit.i:                           ; preds = %bb.eb, %ata_xfer_mode2mask.exit
  %.0.i69.i = phi ptr [ %i.yj, %bb.eb ], [ @.str.27, %ata_xfer_mode2mask.exit ]
  %i.yk = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.341, i32 noundef %i.xq, i32 noundef %i.xv, ptr noundef %.0.i69.i, ptr noundef %.147.i) #32 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.du, %ata_mode_string.exit.i
  %i.yl = load ptr, ptr %0, align 64              ; 3 uses
  %i.ym = getelementptr i8, ptr %i.yl, i64 8256
  %i.yn = icmp eq ptr %0, %i.ym
  %i.yo = getelementptr i8, ptr %i.yl, i64 24     ; 2 uses
  br i1 %i.yn, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.yp = load i64, ptr %i.yo, align 8
  %i.yq = and i64 %i.yp, 1
  %.not.i33.i200.us = icmp eq i64 %i.yq, 0
  br i1 %.not.i33.i200.us, label %ata_is_host_link.exit.thread.i32.i199.us.us, label %ata_is_host_link.exit.thread.i32.i199.us

ata_is_host_link.exit.thread.i32.i199.us.us:      ; preds = %.preheader.split.us, %bb.ec
  %.024.i191.us.us = phi ptr [ %i.yr, %bb.ec ], [ %.3313, %.preheader.split.us ] ; 2 uses
  %i.yr = getelementptr i8, ptr %.024.i191.us.us, i64 3136 ; 7 uses
  %i.ys = icmp ult ptr %i.yr, %i.rl
  br i1 %i.ys, label %bb.ec, label %._crit_edge315

bb.ec:                                            ; preds = %ata_is_host_link.exit.thread.i32.i199.us.us
  %i.yt = getelementptr i8, ptr %.024.i191.us.us, i64 3976
  %.1.val.i198.us.us = load i32, ptr %i.yt, align 8
  switch i32 %.1.val.i198.us.us, label %ata_is_host_link.exit.thread.i32.i199.us.us [
    i32 7, label %ata_dev_next.exit201
    i32 5, label %ata_dev_next.exit201
    i32 3, label %ata_dev_next.exit201
    i32 1, label %ata_dev_next.exit201
    i32 9, label %ata_dev_next.exit201
  ]

ata_is_host_link.exit.thread.i32.i199.us:         ; preds = %.preheader.split.us, %bb.ed
  %.024.i191.us = phi ptr [ %i.yu, %bb.ed ], [ %.3313, %.preheader.split.us ] ; 2 uses
  %i.yu = getelementptr i8, ptr %.024.i191.us, i64 3136 ; 7 uses
  %i.yv = icmp ult ptr %i.yu, %i.rm
  br i1 %i.yv, label %bb.ed, label %._crit_edge315

bb.ed:                                            ; preds = %ata_is_host_link.exit.thread.i32.i199.us
  %i.yw = getelementptr i8, ptr %.024.i191.us, i64 3976
  %.1.val.i198.us = load i32, ptr %i.yw, align 8
  switch i32 %.1.val.i198.us, label %ata_is_host_link.exit.thread.i32.i199.us [
    i32 7, label %ata_dev_next.exit201
    i32 5, label %ata_dev_next.exit201
    i32 3, label %ata_dev_next.exit201
    i32 1, label %ata_dev_next.exit201
    i32 9, label %ata_dev_next.exit201
  ]

.preheader.split:                                 ; preds = %.preheader
  %i.yx = getelementptr i8, ptr %i.yl, i64 15808
  %i.yy = load ptr, ptr %i.yx, align 64
  %i.yz = icmp eq ptr %0, %i.yy
  br i1 %i.yz, label %.preheader.split.split.us, label %ata_is_host_link.exit.i30.i192

.preheader.split.split.us:                        ; preds = %.preheader.split
  %i.za = load i64, ptr %i.yo, align 8
  %i.zb = and i64 %i.za, 1
  %.not.i33.i200.us304 = icmp eq i64 %i.zb, 0
  br i1 %.not.i33.i200.us304, label %ata_is_host_link.exit.i30.i192.us.us, label %ata_is_host_link.exit.i30.i192.us

ata_is_host_link.exit.i30.i192.us.us:             ; preds = %.preheader.split.split.us, %bb.ee
  %.024.i191.us302.us = phi ptr [ %i.zc, %bb.ee ], [ %.3313, %.preheader.split.split.us ] ; 2 uses
  %i.zc = getelementptr i8, ptr %.024.i191.us302.us, i64 3136 ; 7 uses
  %i.zd = icmp ult ptr %i.zc, %i.rl
  br i1 %i.zd, label %bb.ee, label %._crit_edge315

bb.ee:                                            ; preds = %ata_is_host_link.exit.i30.i192.us.us
  %i.ze = getelementptr i8, ptr %.024.i191.us302.us, i64 3976
  %.1.val.i198.us307.us = load i32, ptr %i.ze, align 8
  switch i32 %.1.val.i198.us307.us, label %ata_is_host_link.exit.i30.i192.us.us [
    i32 7, label %ata_dev_next.exit201
    i32 5, label %ata_dev_next.exit201
    i32 3, label %ata_dev_next.exit201
    i32 1, label %ata_dev_next.exit201
    i32 9, label %ata_dev_next.exit201
  ]

ata_is_host_link.exit.i30.i192.us:                ; preds = %.preheader.split.split.us, %bb.ef
  %.024.i191.us302 = phi ptr [ %i.zf, %bb.ef ], [ %.3313, %.preheader.split.split.us ] ; 2 uses
  %i.zf = getelementptr i8, ptr %.024.i191.us302, i64 3136 ; 7 uses
  %i.zg = icmp ult ptr %i.zf, %i.rm
  br i1 %i.zg, label %bb.ef, label %._crit_edge315

bb.ef:                                            ; preds = %ata_is_host_link.exit.i30.i192.us
  %i.zh = getelementptr i8, ptr %.024.i191.us302, i64 3976
  %.1.val.i198.us307 = load i32, ptr %i.zh, align 8
  switch i32 %.1.val.i198.us307, label %ata_is_host_link.exit.i30.i192.us [
    i32 7, label %ata_dev_next.exit201
    i32 5, label %ata_dev_next.exit201
    i32 3, label %ata_dev_next.exit201
    i32 1, label %ata_dev_next.exit201
    i32 9, label %ata_dev_next.exit201
  ]

bb.eg:                                            ; preds = %bb.dt, %bb.dd
  %.04475.i = phi i32 [ %i.tw, %bb.dd ], [ 1, %bb.dt ]
  %i.zi = load ptr, ptr %.3313, align 64          ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 64
  %i.zk = getelementptr i8, ptr %i.zj, i64 36
  %i.zl = load i32, ptr %i.zk, align 4
  %i.zm = getelementptr i8, ptr %i.zi, i64 8
  %i.zn = load i32, ptr %i.zm, align 8
  %i.zo = getelementptr i8, ptr %.3313, i64 8
  %i.zp = load i32, ptr %i.zo, align 8
  %i.zq = add i32 %i.zp, %i.zn
  %i.zr = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.342, i32 noundef %i.zl, i32 noundef %i.zq, i32 noundef %.04475.i) #32 ; 0 uses
  br label %ata_dev_set_mode.exit

ata_is_host_link.exit.i30.i192:                   ; preds = %.preheader.split, %bb.eh
  %.024.i191 = phi ptr [ %i.zs, %bb.eh ], [ %.3313, %.preheader.split ] ; 2 uses
  %i.zs = getelementptr i8, ptr %.024.i191, i64 3136 ; 7 uses
  %i.zt = icmp ult ptr %i.zs, %i.rl
  br i1 %i.zt, label %bb.eh, label %._crit_edge315

end_hunk_2
