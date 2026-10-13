Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cabac?download=true
inline.NumInlined: 172
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ff_vvc_new_palette_entries:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = add i32 %i.l, -65535
  %i.x = add i32 %i.w, %i.v                       ; 3 uses
  store i32 %i.x, ptr %i.c, align 8, !tbaa !85
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.z = icmp ult ptr %i.n, %i.y
  br i1 %i.z, label %bb.d, label %refill.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !84
  br label %refill.exit.i.i

refill.exit.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = phi i32 [ %i.x, %bb.d ], [ %i.x, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.i
  br i1 %i.ac, label %get_cabac_bypass.exit.i, label %bb.e

bb.e:                                             ; preds = %refill.exit.i.i
  %i.ad = sub nsw i32 %i.ab, %i.i                 ; 2 uses
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !85
  %i.ae = or disjoint i32 %i.k, 1
  br label %get_cabac_bypass.exit.i

get_cabac_bypass.exit.i:                          ; preds = %bb.e, %refill.exit.i.i
  %i.af = phi i32 [ %i.ad, %bb.e ], [ %i.ab, %refill.exit.i.i ]
  %.0.i.i = phi i32 [ %i.ae, %bb.e ], [ %i.k, %refill.exit.i.i ] ; 2 uses
  %i.ag = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ag, %1
  br i1 %exitcond.not.i, label %fixed_length_decode.exit, label %bb.b, !llvm.loop !167

fixed_length_decode.exit:                         ; preds = %get_cabac_bypass.exit.i, %bb.a
  %.05.lcssa.i = phi i32 [ 0, %bb.a ], [ %.0.i.i, %get_cabac_bypass.exit.i ]
  ret i32 %.05.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @ff_vvc_palette_escape_val_present_flag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = shl nsw i32 %i.d, 1                      ; 3 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !85
  %i.f = and i32 %i.d, 32767
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %refill.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !109
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !109
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = add i32 %i.e, -65535
  %i.r = add i32 %i.q, %i.p                       ; 3 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = icmp ult ptr %i.h, %i.t
  br i1 %i.u, label %bb.c, label %refill.exit.i

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.v, ptr %i.g, align 8, !tbaa !84
  br label %refill.exit.i

refill.exit.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.w = phi i32 [ %i.r, %bb.c ], [ %i.r, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !111
  %i.z = shl i32 %i.y, 17                         ; 2 uses
  %i.aa = icmp sge i32 %i.w, %i.z                 ; 2 uses
  br i1 %i.aa, label %bb.d, label %get_cabac_bypass.exit

bb.d:                                             ; preds = %refill.exit.i
  %i.ab = sub nsw i32 %i.w, %i.z
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !85
  br label %get_cabac_bypass.exit

get_cabac_bypass.exit:                            ; preds = %refill.exit.i, %bb.d
  ret i1 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ff_vvc_palette_transpose_flag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 722 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 2 uses
  %i.g = ashr i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 724 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !75
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = load i16, ptr %i.d, align 2, !tbaa !75
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = shl nuw nsw i32 %i.l, 4
  %i.n = add nuw nsw i32 %i.m, %i.j               ; 3 uses
  %i.o = lshr i32 %i.n, 14                        ; 3 uses
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = sub nsw i32 32767, %i.n
  %i.q = select i1 %.not.i, i32 %i.n, i32 %i.p
  %i.r = ashr i32 %i.q, 9
  %i.s = mul nsw i32 %i.r, %i.g
  %i.t = ashr i32 %i.s, 1
  %i.u = add nsw i32 %i.t, 4                      ; 2 uses
  %i.v = sub nsw i32 %i.f, %i.u                   ; 2 uses
  %i.w = shl i32 %i.v, 17                         ; 2 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x                  ; 3 uses
  %i.z = select i1 %i.y, i32 %i.w, i32 0
  %i.aa = sub nsw i32 %i.x, %i.z
  %i.ab = select i1 %i.y, i32 %i.u, i32 %i.v      ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = shl i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.e, align 4, !tbaa !111
  %i.ah = shl i32 %i.aa, %i.af                    ; 5 uses
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !85
  %i.ai = and i32 %i.ah, 65535
  %.not42.i = icmp eq i32 %i.ai, 0
  br i1 %.not42.i, label %bb.b, label %vvc_get_cabac.exit

bb.b:                                             ; preds = %bb.a
  %i.aj = add nsw i32 %i.ah, -32768
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = lshr exact i32 %i.ak, 15
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !109
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub nsw i32 7, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !109
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !109
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = or disjoint i32 %i.az, %i.av
  %i.bb = add nsw i32 %i.ba, -65535
  %i.bc = shl nsw i32 %i.bb, %i.aq
  %i.bd = add i32 %i.bc, %i.ah
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.bg = icmp ult ptr %i.as, %i.bf
  br i1 %i.bg, label %bb.c, label %vvc_get_cabac.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !84
  br label %vvc_get_cabac.exit

vvc_get_cabac.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %i.bi = zext i1 %i.y to i32                     ; 2 uses
  %i.bj = xor i32 %i.o, %i.bi                     ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 726
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !109
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.l, %i.bm
  %i.bo = sub nsw i32 %i.l, %i.bn
  %i.bp = mul nuw nsw i32 %i.bj, 1023
  %i.bq = lshr i32 %i.bp, %i.bm
  %i.br = add nsw i32 %i.bo, %i.bq
  %i.bs = trunc i32 %i.br to i16
  store i16 %i.bs, ptr %i.d, align 2, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 727
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !109
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = lshr i32 %i.j, %i.bv
  %i.bx = sub nsw i32 %i.j, %i.bw
  %i.by = mul nuw nsw i32 %i.bj, 16383
  %i.bz = lshr i32 %i.by, %i.bv
  %i.ca = add nsw i32 %i.bx, %i.bz
  %i.cb = trunc i32 %i.ca to i16
  store i16 %i.cb, ptr %i.h, align 4, !tbaa !75
  %i.cc = icmp ne i32 %i.o, %i.bi
  ret i1 %i.cc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ff_vvc_run_copy_flag(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = xor i32 %2, -1
  %6 = add i32 %3, %5                             ; 2 uses
  %7 = icmp eq i32 %1, 1                          ; 2 uses
  %8 = icmp slt i32 %6, 5
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = select i1 %7, ptr @__const.ff_vvc_run_copy_flag.run_top_lut, ptr @__const.ff_vvc_run_copy_flag.run_left_lut
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !109
  br label %bb.a

14:                                               ; preds = %4
  %15 = select i1 %7, i8 7, i8 4
  br label %bb.a

bb.a:                                             ; preds = %14, %9
  %16 = phi i8 [ %13, %9 ], [ %15, %14 ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = zext i8 %16 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 728
  %i.f = getelementptr [6 x i8], ptr %i.e, i64 %i.d ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !111  ; 2 uses
  %i.i = ashr i32 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !75
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = load i16, ptr %i.f, align 2, !tbaa !75
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = shl nuw nsw i32 %i.n, 4
  %i.p = add nuw nsw i32 %i.o, %i.l               ; 3 uses
  %i.q = lshr i32 %i.p, 14                        ; 3 uses
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = sub nsw i32 32767, %i.p
  %i.s = select i1 %.not.i, i32 %i.p, i32 %i.r
  %i.t = ashr i32 %i.s, 9
  %i.u = mul nsw i32 %i.t, %i.i
  %i.v = ashr i32 %i.u, 1
  %i.w = add nsw i32 %i.v, 4                      ; 2 uses
  %i.x = sub nsw i32 %i.h, %i.w                   ; 2 uses
  %i.y = shl i32 %i.x, 17                         ; 2 uses
  %i.z = load i32, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z                 ; 3 uses
  %i.ab = select i1 %i.aa, i32 %i.y, i32 0
  %i.ac = sub nsw i32 %i.z, %i.ab
  %i.ad = select i1 %i.aa, i32 %i.w, i32 %i.x     ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !109
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = shl i32 %i.ad, %i.ah
  store i32 %i.ai, ptr %i.g, align 4, !tbaa !111
  %i.aj = shl i32 %i.ac, %i.ah                    ; 5 uses
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !85
  %i.ak = and i32 %i.aj, 65535
  %.not42.i = icmp eq i32 %i.ak, 0
  br i1 %.not42.i, label %bb.b, label %vvc_get_cabac.exit

bb.b:                                             ; preds = %bb.a
  %i.al = add nsw i32 %i.aj, -32768
  %i.am = xor i32 %i.al, %i.aj
  %i.an = lshr exact i32 %i.am, 15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !109
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 7, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !109
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !109
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = add nsw i32 %i.bc, -65535
  %i.be = shl nsw i32 %i.bd, %i.as
  %i.bf = add i32 %i.be, %i.aj
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !86
  %i.bi = icmp ult ptr %i.au, %i.bh
  br i1 %i.bi, label %bb.c, label %vvc_get_cabac.exit

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.bj, ptr %i.at, align 8, !tbaa !84
  br label %vvc_get_cabac.exit

vvc_get_cabac.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %i.bk = zext i1 %i.aa to i32                    ; 2 uses
  %i.bl = xor i32 %i.q, %i.bk                     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !109
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = lshr i32 %i.n, %i.bo
  %i.bq = sub nsw i32 %i.n, %i.bp
  %i.br = mul nuw nsw i32 %i.bl, 1023
  %i.bs = lshr i32 %i.br, %i.bo
  %i.bt = add nsw i32 %i.bq, %i.bs
  %i.bu = trunc i32 %i.bt to i16
  store i16 %i.bu, ptr %i.f, align 2, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !109
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = lshr i32 %i.l, %i.bx
  %i.bz = sub nsw i32 %i.l, %i.by
  %i.ca = mul nuw nsw i32 %i.bl, 16383
  %i.cb = lshr i32 %i.ca, %i.bx
  %i.cc = add nsw i32 %i.bz, %i.cb
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %i.j, align 2, !tbaa !75
  %i.ce = icmp ne i32 %i.q, %i.bk
  ret i1 %i.ce
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ff_vvc_copy_above_palette_indices_flag(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 716 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 2 uses
  %i.g = ashr i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 718 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !75
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = load i16, ptr %i.d, align 4, !tbaa !75
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = shl nuw nsw i32 %i.l, 4
  %i.n = add nuw nsw i32 %i.m, %i.j               ; 3 uses
  %i.o = lshr i32 %i.n, 14                        ; 3 uses
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = sub nsw i32 32767, %i.n
  %i.q = select i1 %.not.i, i32 %i.n, i32 %i.p
  %i.r = ashr i32 %i.q, 9
  %i.s = mul nsw i32 %i.r, %i.g
  %i.t = ashr i32 %i.s, 1
  %i.u = add nsw i32 %i.t, 4                      ; 2 uses
  %i.v = sub nsw i32 %i.f, %i.u                   ; 2 uses
  %i.w = shl i32 %i.v, 17                         ; 2 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x                  ; 3 uses
  %i.z = select i1 %i.y, i32 %i.w, i32 0
  %i.aa = sub nsw i32 %i.x, %i.z
  %i.ab = select i1 %i.y, i32 %i.u, i32 %i.v      ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = shl i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.e, align 4, !tbaa !111
  %i.ah = shl i32 %i.aa, %i.af                    ; 5 uses
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !85
  %i.ai = and i32 %i.ah, 65535
  %.not42.i = icmp eq i32 %i.ai, 0
  br i1 %.not42.i, label %bb.b, label %vvc_get_cabac.exit

bb.b:                                             ; preds = %bb.a
  %i.aj = add nsw i32 %i.ah, -32768
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = lshr exact i32 %i.ak, 15
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !109
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub nsw i32 7, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !109
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !109
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = or disjoint i32 %i.az, %i.av
  %i.bb = add nsw i32 %i.ba, -65535
  %i.bc = shl nsw i32 %i.bb, %i.aq
  %i.bd = add i32 %i.bc, %i.ah
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.bg = icmp ult ptr %i.as, %i.bf
  br i1 %i.bg, label %bb.c, label %vvc_get_cabac.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !84
  br label %vvc_get_cabac.exit

vvc_get_cabac.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %i.bi = zext i1 %i.y to i32                     ; 2 uses
  %i.bj = xor i32 %i.o, %i.bi                     ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !109
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.l, %i.bm
  %i.bo = sub nsw i32 %i.l, %i.bn
  %i.bp = mul nuw nsw i32 %i.bj, 1023
  %i.bq = lshr i32 %i.bp, %i.bm
  %i.br = add nsw i32 %i.bo, %i.bq
  %i.bs = trunc i32 %i.br to i16
  store i16 %i.bs, ptr %i.d, align 4, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 721
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !109
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = lshr i32 %i.j, %i.bv
  %i.bx = sub nsw i32 %i.j, %i.bw
  %i.by = mul nuw nsw i32 %i.bj, 16383
  %i.bz = lshr i32 %i.by, %i.bv
  %i.ca = add nsw i32 %i.bx, %i.bz
  %i.cb = trunc i32 %i.ca to i16
  store i16 %i.cb, ptr %i.h, align 2, !tbaa !75
  %i.cc = icmp ne i32 %i.o, %i.bi
end_hunk_0
