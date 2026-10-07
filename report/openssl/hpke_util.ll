Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/hpke_util?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ossl_hpke_str2suite:bb.a

bb.w:                                             ; preds = %bb.v
  %i.at = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.28) #4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread136, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.29) #4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread136, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %bb.x
  %i.ax = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.11) #4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread136, label %bb.y

bb.y:                                             ; preds = %.preheader.i.4
  %i.az = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.30) #4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread136, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.30) #4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.thread136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.31) #4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.thread136, label %.thread

.thread136:                                       ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader, %.preheader.i.1, %bb.p, %bb.q, %bb.r, %.preheader.i.2, %bb.s, %bb.t, %bb.u, %.preheader.i.3, %bb.v, %bb.w, %bb.x, %.preheader.i.4, %bb.y, %bb.z, %bb.aa
  %.lcssa = phi ptr [ @kemstrtab, %.preheader.i.preheader ], [ @kemstrtab, %bb.m ], [ @kemstrtab, %bb.n ], [ @kemstrtab, %bb.o ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 40), %.preheader.i.1 ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 40), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 40), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 40), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 80), %.preheader.i.2 ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 80), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 80), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 80), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 120), %.preheader.i.3 ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 120), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 120), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 120), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 160), %.preheader.i.4 ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 160), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 160), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @kemstrtab, i64 160), %bb.aa ]
  %i.bf = load i16, ptr %.lcssa, align 8, !tbaa !21
  br label %bb.aw

.preheader.i70.preheader:                         ; preds = %bb.l
  %i.bg = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.33) #4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %synonyms_name2id.exit74, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i70.preheader
  %i.bi = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.34) #4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %synonyms_name2id.exit74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.35) #4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %synonyms_name2id.exit74, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.36) #4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %synonyms_name2id.exit74, label %.preheader.i70.1

.preheader.i70.1:                                 ; preds = %bb.ad
  %i.bo = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.37) #4
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %synonyms_name2id.exit74, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i70.1
  %i.bq = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.38) #4
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %synonyms_name2id.exit74, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.39) #4
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %synonyms_name2id.exit74, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.40) #4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %synonyms_name2id.exit74, label %.preheader.i70.2

.preheader.i70.2:                                 ; preds = %bb.ag
  %i.bw = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.41) #4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %synonyms_name2id.exit74, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i70.2
  %i.by = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.42) #4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %synonyms_name2id.exit74, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.43) #4
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %synonyms_name2id.exit74, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.44) #4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %synonyms_name2id.exit74, label %.thread

synonyms_name2id.exit74:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %.preheader.i70.2, %bb.ag, %bb.af, %bb.ae, %.preheader.i70.1, %.preheader.i70.preheader, %bb.ab, %bb.ac, %bb.ad
  %.lcssa121 = phi ptr [ @kdfstrtab, %.preheader.i70.preheader ], [ @kdfstrtab, %bb.ab ], [ @kdfstrtab, %bb.ac ], [ @kdfstrtab, %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 40), %.preheader.i70.1 ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 40), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 40), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 40), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 80), %.preheader.i70.2 ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 80), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 80), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @kdfstrtab, i64 80), %bb.aj ]
  %i.ce = load i16, ptr %.lcssa121, align 8, !tbaa !21
  br label %bb.aw

.preheader.i75.preheader:                         ; preds = %bb.l
  %i.cf = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.14) #4
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %synonyms_name2id.exit79, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i75.preheader
  %i.ch = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.34) #4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %synonyms_name2id.exit79, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cj = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.35) #4
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %synonyms_name2id.exit79, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.36) #4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %synonyms_name2id.exit79, label %.preheader.i75.1

.preheader.i75.1:                                 ; preds = %bb.am
  %i.cn = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.15) #4
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %synonyms_name2id.exit79, label %bb.an

bb.an:                                            ; preds = %.preheader.i75.1
  %i.cp = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.38) #4
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %synonyms_name2id.exit79, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.39) #4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %synonyms_name2id.exit79, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.40) #4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %synonyms_name2id.exit79, label %.preheader.i75.2

.preheader.i75.2:                                 ; preds = %bb.ap
  %i.cv = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.16) #4
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %synonyms_name2id.exit79, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i75.2
  %i.cx = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.42) #4
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %synonyms_name2id.exit79, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cz = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.43) #4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %synonyms_name2id.exit79, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.44) #4
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %synonyms_name2id.exit79, label %.preheader.i75.3

.preheader.i75.3:                                 ; preds = %bb.as
  %i.dd = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.46) #4
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %synonyms_name2id.exit79, label %bb.at

bb.at:                                            ; preds = %.preheader.i75.3
  %i.df = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.47) #4
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %synonyms_name2id.exit79, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.48) #4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %synonyms_name2id.exit79, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dj = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.49) #4
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %synonyms_name2id.exit79, label %.thread

synonyms_name2id.exit79:                          ; preds = %bb.av, %bb.au, %bb.at, %.preheader.i75.3, %bb.as, %bb.ar, %bb.aq, %.preheader.i75.2, %bb.ap, %bb.ao, %bb.an, %.preheader.i75.1, %.preheader.i75.preheader, %bb.ak, %bb.al, %bb.am
  %.lcssa123 = phi ptr [ @aeadstrtab, %.preheader.i75.preheader ], [ @aeadstrtab, %bb.ak ], [ @aeadstrtab, %bb.al ], [ @aeadstrtab, %bb.am ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 40), %.preheader.i75.1 ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 40), %bb.an ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 40), %bb.ao ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 40), %bb.ap ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 80), %.preheader.i75.2 ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 80), %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 80), %bb.ar ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 80), %bb.as ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 120), %.preheader.i75.3 ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 120), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 120), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @aeadstrtab, i64 120), %bb.av ]
  %i.dl = load i16, ptr %.lcssa123, align 8, !tbaa !21
  br label %.thread145

.thread145:                                       ; preds = %bb.l, %synonyms_name2id.exit79
  %.152.ph = phi i16 [ %i.dl, %synonyms_name2id.exit79 ], [ 0, %bb.l ]
  %i.dm = add nuw nsw i32 %.047117, 1
  br label %.loopexit

bb.aw:                                            ; preds = %.thread136, %synonyms_name2id.exit74
  %.158138.ph = phi i16 [ %i.bf, %.thread136 ], [ %.057113, %synonyms_name2id.exit74 ] ; 2 uses
  %.155.ph = phi i16 [ %.054114, %.thread136 ], [ %i.ce, %synonyms_name2id.exit74 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.2 = select i1 %.not69, ptr %i.dn, ptr null
  %i.do = add nuw nsw i32 %.047117, 1             ; 2 uses
  br i1 %.not69, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %.thread145
  %i.dp = phi i32 [ %i.dm, %.thread145 ], [ %i.do, %bb.aw ]
  %.152152 = phi i16 [ %.152.ph, %.thread145 ], [ 0, %bb.aw ]
  %.158138142151 = phi i16 [ %.057113, %.thread145 ], [ %.158138.ph, %bb.aw ]
  %.155143150 = phi i16 [ %.054114, %.thread145 ], [ %.155.ph, %bb.aw ]
  %i.dq = icmp ne i32 %i.dp, 3
  %or.cond3 = select i1 %.not69, i1 true, i1 %i.dq
  br i1 %or.cond3, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  store i16 %.158138142151, ptr %1, align 2, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %.155143150, ptr %i.dr, align 2, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %.152152, ptr %i.ds, align 2, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.aa, %bb.av, %.loopexit, %bb.j, %bb.ax
  %.046 = phi i32 [ 0, %bb.j ], [ 1, %bb.ax ], [ 0, %.loopexit ], [ 0, %bb.av ], [ 0, %bb.aa ], [ 0, %bb.aj ]
  tail call void @CRYPTO_free(ptr noundef %i.o, ptr noundef nonnull @.str, i32 noundef 528) #4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.i, %bb.f, %.thread, %bb.e, %bb.c
  %.060 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.f ], [ %.046, %.thread ]
  ret i32 %.060
}

declare i64 @OPENSSL_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 0, i64 8, !11, i64 8, i64 4, !8, i64 16, i64 8, !12, i64 24, i64 8, !14, i64 32, i64 8, !14}
!16 = distinct !{!16, !18}
!17 = !{!4, !4, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"short", !4, i64 0}
!20 = !{!"", !19, i64 0, !4, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!"", !19, i64 0, !19, i64 2, !19, i64 4}
!23 = !{!22, !19, i64 0}
!24 = !{!22, !19, i64 2}
!25 = !{!22, !19, i64 4}
end_hunk_0
