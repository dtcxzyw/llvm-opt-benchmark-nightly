Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx512?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5localL16proc_vlc_encode2EPNS0_17vlc_struct_avx512EPjS3_j:bb.a
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = add nsw i32 %i.am, %i.ad                ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.w
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = shl i32 %i.ap, %i.an
  %i.ar = or i32 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.w
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = add nsw i32 %i.at, %i.an                ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.ag
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %i.ax = shl i32 %i.aw, %i.au
  %i.ay = or i32 %i.ar, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.ag
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = add nsw i32 %i.ba, %i.au
  %i.bc = zext i32 %i.ay to i64
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl i64 %i.bc, %i.be
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !25
  %i.bh = or i64 %i.bf, %i.bg                     ; 2 uses
  store i64 %i.bh, ptr %i.d, align 8, !tbaa !25
  %i.bi = add nsw i32 %i.bb, %i.bd                ; 2 uses
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !24
  %i.bj = icmp sgt i32 %i.bi, 7
  br i1 %i.bj, label %.lr.ph.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !26, !range !30
  %i.bk = trunc nuw i8 %.pre.i to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.bl = phi i64 [ %i.bh, %.lr.ph.i ], [ %i.ce, %bb.j ] ; 3 uses
  %i.bm = phi i1 [ %i.bk, %.lr.ph.i ], [ %.sink.shrunk.i, %bb.j ]
  %i.bn = trunc i64 %i.bl to i8                   ; 3 uses
  br i1 %i.bm, label %bb.f, label %bb.i, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.bo = and i8 %i.bn, 127
  %.not.i = icmp eq i8 %i.bo, 127
  %i.bp = load ptr, ptr %0, align 8, !tbaa !21
  %i.bq = load i32, ptr %i.f, align 8, !tbaa !22
  %i.br = zext i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  store i8 %i.bn, ptr %i.bt, align 1, !tbaa !23
  %i.bu = and i64 %i.bl, 240
  %i.bv = icmp samesign ugt i64 %i.bu, 143
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i8 127, ptr %i.bt, align 1, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %0, align 8, !tbaa !21
  %i.bx = load i32, ptr %i.f, align 8, !tbaa !22
  %i.by = zext i32 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  store i8 %i.bn, ptr %i.ca, align 1, !tbaa !23
  %i.cb = and i64 %i.bl, 240
  %i.cc = icmp samesign ugt i64 %i.cb, 143
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sink.shrunk.i = phi i1 [ %i.bv, %bb.g ], [ false, %bb.h ], [ %i.cc, %bb.i ] ; 2 uses
  %.sink35.i = phi i64 [ 8, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.sink33.i = phi i32 [ -8, %bb.g ], [ -7, %bb.h ], [ -8, %bb.i ]
  %.sink.i = zext i1 %.sink.shrunk.i to i8
  store i8 %.sink.i, ptr %i.e, align 8, !tbaa !26
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ce = lshr i64 %i.cd, %.sink35.i              ; 2 uses
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !25
  %i.cf = load i32, ptr %i.c, align 8, !tbaa !24
  %i.cg = add nsw i32 %i.cf, %.sink33.i           ; 2 uses
  store i32 %i.cg, ptr %i.c, align 8, !tbaa !24
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !22
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.f, align 8, !tbaa !22
  %i.cj = icmp sgt i32 %i.cg, 7
  br i1 %i.cj, label %bb.e, label %_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit, !llvm.loop !0

_ZN4ojph5localL10vlc_encodeEPNS0_17vlc_struct_avx512Eji.exit: ; preds = %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.ck, label %bb.b, label %._crit_edge, !llvm.loop !69
}

declare void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  br i1 %1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = shl i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 1                  ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i32 %i.i to i8
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !29
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  store i8 %i.n, ptr %i.t, align 1, !tbaa !23
  %i.u = load i32, ptr %i.f, align 4, !tbaa !27
  %i.v = icmp eq i32 %i.u, 255
  %i.w = select i1 %i.v, i32 7, i32 8
  store i32 %i.w, ptr %i.j, align 8, !tbaa !28
  store i32 0, ptr %i.f, align 4, !tbaa !27
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit: ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 11)
  %spec.select = add nsw i32 %i.z, 1              ; 2 uses
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !16
  %i.aa = sext i32 %spec.select to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9
  %i.ad = shl nuw i32 1, %i.ac
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !17
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = shl i32 %i.af, 1                        ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !28
  %i.aj = add nsw i32 %i.ai, -1                   ; 3 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !28
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

bb.f:                                             ; preds = %bb.e
  %i.al = trunc i32 %i.ag to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !29
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store i8 %i.al, ptr %i.ar, align 1, !tbaa !23
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.at = icmp eq i32 %i.as, 255
  %i.au = select i1 %i.at, i32 7, i32 8           ; 2 uses
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !28
  store i32 0, ptr %i.ae, align 4, !tbaa !27
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25: ; preds = %bb.e, %bb.f
  %i.av = phi i32 [ %i.aj, %bb.e ], [ %i.au, %bb.f ]
  %i.aw = phi i32 [ %i.ag, %bb.e ], [ 0, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.az, -3
  %i.bb = icmp ult i64 %i.ba, 10
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre28 = load i32, ptr %i.be, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %i.bg = phi i32 [ %i.av, %.lr.ph ], [ %i.by, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %i.bh = phi i32 [ %i.aw, %.lr.ph ], [ %i.bz, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %.027.a = phi i32 [ %.pre28, %.lr.ph ], [ %2, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ] ; 2 uses
  %.027 = phi i32 [ %i.bd, %.lr.ph ], [ %i.bi, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ] ; 2 uses
  %i.bi = add nsw i32 %.027, -1                   ; 2 uses
  %i.bj = lshr i32 %.027.a, %i.bi
  %i.bk = and i32 %i.bj, 1
  %i.bl = shl i32 %i.bh, 1
  %i.bm = or disjoint i32 %i.bl, %i.bk            ; 3 uses
  store i32 %i.bm, ptr %i.ae, align 4, !tbaa !27
  %i.bn = add nsw i32 %i.bg, -1                   ; 3 uses
  store i32 %i.bn, ptr %i.ah, align 8, !tbaa !28
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

bb.h:                                             ; preds = %bb.g
  %i.bp = trunc i32 %i.bm to i8
  %i.bq = load ptr, ptr %0, align 8, !tbaa !14
  %i.br = load i32, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bf, align 8, !tbaa !29
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !23
  %i.bv = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.bw = icmp eq i32 %i.bv, 255
  %i.bx = select i1 %i.bw, i32 7, i32 8           ; 2 uses
  store i32 %i.bx, ptr %i.ah, align 8, !tbaa !28
  store i32 0, ptr %i.ae, align 4, !tbaa !27
  %.pre = load i32, ptr %i.be, align 8, !tbaa !15
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26: ; preds = %bb.g, %bb.h
  %i.by = phi i32 [ %i.bn, %bb.g ], [ %i.bx, %bb.h ]
  %i.bz = phi i32 [ %i.bm, %bb.g ], [ 0, %bb.h ]
  %2 = phi i32 [ %.027.a, %bb.g ], [ %.pre, %bb.h ]
  %i.ca = icmp sgt i32 %.027, 1
  br i1 %i.ca, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %.pre.a = load i32, ptr %i.ax, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.cb = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.ay, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cc, align 8, !tbaa !15
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %spec.select24 = add nsw i32 %i.cd, -1          ; 2 uses
  store i32 %spec.select24, ptr %i.ax, align 4, !tbaa !16
  %i.ce = zext nneg i32 %spec.select24 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !9
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32>, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i32> @llvm.masked.load.v16i32.p0(ptr captures(none), <16 x i1>, <16 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.ctlz.v16i32(<16 x i32>, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.permvar.si.512(<16 x i32>, <16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32>, <16 x i32>) #10

declare noundef ptr @_ZN4ojph9get_errorEv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.usub.sat.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.ctpop.v16i32(<16 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSN4ojph5local10mel_structE", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !6, i64 24}
!16 = !{!13, !6, i64 28}
!17 = !{!13, !6, i64 32}
!18 = !{!"long", !5, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"_ZTSN4ojph5local17vlc_struct_avx512E", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !18, i64 24, !19, i64 32}
!21 = !{!20, !12, i64 0}
!22 = !{!20, !6, i64 8}
!23 = !{!5, !5, i64 0}
!24 = !{!20, !6, i64 16}
!25 = !{!20, !18, i64 24}
!26 = !{!20, !19, i64 32}
!27 = !{!13, !6, i64 20}
!28 = !{!13, !6, i64 16}
!29 = !{!13, !6, i64 8}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{!"_ZTSZN4ojph5localL15vlc_init_tablesEvE13vlc_src_table", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!39 = !{!38, !6, i64 0}
!40 = !{!38, !6, i64 4}
!41 = !{!38, !6, i64 8}
!42 = !{!38, !6, i64 12}
!43 = !{!38, !6, i64 16}
!44 = !{!38, !6, i64 20}
!45 = !{!38, !6, i64 24}
!46 = distinct !{null, null}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = !{!20, !6, i64 12}
!54 = !{ptr @_ZN4ojph5localL8proc_cq1EjPDv8_xRS1_S1_, ptr @_ZN4ojph5localL8proc_cq2EjPDv8_xRS1_S1_}
!55 = !{ptr @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv8_xS4_S3_jS3_, ptr @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv8_xS4_S3_jS3_}
!56 = !{!"vtable pointer", !4, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{ptr @_ZN4ojph5localL16proc_vlc_encode1EPNS0_17vlc_struct_avx512EPjS3_j, ptr @_ZN4ojph5localL16proc_vlc_encode2EPNS0_17vlc_struct_avx512EPjS3_j}
!59 = !{}
!60 = !{!13, !6, i64 12}
!61 = !{!"p1 _ZTSN4ojph11coded_listsE", !11, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"_ZTSN4ojph11coded_listsE", !61, i64 0, !6, i64 8, !6, i64 12, !12, i64 16}
!64 = !{!63, !12, i64 16}
!65 = !{!63, !6, i64 12}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
end_hunk_0
