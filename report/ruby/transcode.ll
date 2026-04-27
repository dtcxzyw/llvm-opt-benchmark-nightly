inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@rb_econv_convert:bb.a
  br label %ruby_nonempty_memcpy.exit200.i

ruby_nonempty_memcpy.exit200.i:                   ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %.pre225.i, %bb.j ], [ %i.au, %bb.i ]
  %i.bf = getelementptr i8, ptr %i.be, i64 %..i
  store ptr %i.bf, ptr %.020, align 8, !tbaa !29
  %i.bg = load ptr, ptr %spec.select24, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@rb_econv_insert_output:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.u, %bb.v
  %i.co = phi ptr [ %.pre, %bb.v ], [ %i.cn, %bb.u ]
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.s   ; 3 uses
  store ptr %i.cp, ptr %.0124, align 8, !tbaa !29
  %.not = icmp eq ptr %.0118, null
end_hunk_1
begin_hunk_2_@rb_econv_insert_output:bb.a
  br label %ruby_nonempty_memcpy.exit135

ruby_nonempty_memcpy.exit135:                     ; preds = %bb.z, %bb.aa
  %i.df = phi ptr [ %.pre138, %bb.aa ], [ %i.cp, %bb.z ]
  %i.dg = phi i64 [ %.pre137, %bb.aa ], [ 0, %bb.z ]
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %.0124, align 8, !tbaa !29
  store i64 0, ptr %i.da, align 8, !tbaa !87
end_hunk_2
begin_hunk_3_@transcode_restartable:bb.a

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  %6 = load i64, ptr %i.b, align 8, !tbaa !87     ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = ptrtoint ptr %i.y to i64
end_hunk_3
begin_hunk_4_@transcode_restartable:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !88
  %i.ad = getelementptr i8, ptr %i.x, i64 %i.ac
  %7 = getelementptr i8, ptr %i.ad, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %i.y, i64 noundef range(i64 1, 0) %i.ab, i1 noundef false) #20
  %.pre = load i64, ptr %i.b, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %8 = phi i64 [ %.pre, %bb.g ], [ %6, %bb.f ]
  %i.ae = add i64 %8, %i.ab
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
end_hunk_4
begin_hunk_5_@transcode_restartable0:bb.a
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.fm, %bb.fl
  %i.we = phi ptr [ %.pre.i, %bb.fm ], [ %i.vx, %bb.fl ] ; 2 uses
  %i.wf = phi i32 [ %.pre21.i, %bb.fm ], [ %i.vz, %bb.fl ]
  %i.wg = icmp slt i32 %i.wf, 9
  br i1 %i.wg, label %transcode_char_start.exit, label %bb.fn

end_hunk_5
begin_hunk_6_@transcode_restartable0:bb.a
  br i1 %.not.i.i1237, label %ruby_nonempty_memcpy.exit.i1241, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %6 = getelementptr i8, ptr %i.abp, i64 %i.abh
  %i.abq = ptrtoint ptr %.251154 to i64
  %i.abr = sub i64 %i.abq, %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull readonly align 1 %.24, i64 noundef range(i64 1, 0) %i.abr, i1 noundef false) #20
  %.pre.i1238 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1239 = getelementptr i8, ptr %.pre.i1238, i64 60
end_hunk_6
begin_hunk_7_@transcode_restartable0:bb.a
  br label %ruby_nonempty_memcpy.exit.i1241

ruby_nonempty_memcpy.exit.i1241:                  ; preds = %bb.hc, %bb.hb
  %i.abs = phi ptr [ %.pre.i1238, %bb.hc ], [ %i.abj, %bb.hb ] ; 2 uses
  %i.abt = phi i32 [ %.pre21.i1240, %bb.hc ], [ %i.abl, %bb.hb ]
  %i.abu = icmp slt i32 %i.abt, 9
  br i1 %i.abu, label %transcode_char_start.exit1242, label %bb.hd

end_hunk_7
begin_hunk_8_@transcode_restartable0:bb.a
  br i1 %.not.i.i1244, label %ruby_nonempty_memcpy.exit.i1248, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %7 = getelementptr i8, ptr %i.act, i64 %i.abh
  %i.acu = ptrtoint ptr %.251154 to i64
  %i.acv = sub i64 %i.acu, %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %.24, i64 noundef range(i64 1, 0) %i.acv, i1 noundef false) #20
  %.pre.i1245 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1246 = getelementptr i8, ptr %.pre.i1245, i64 60
end_hunk_8
begin_hunk_9_@transcode_restartable0:bb.a
  br label %ruby_nonempty_memcpy.exit.i1248

ruby_nonempty_memcpy.exit.i1248:                  ; preds = %bb.hl, %bb.hk
  %i.acw = phi ptr [ %.pre.i1245, %bb.hl ], [ %i.acn, %bb.hk ] ; 2 uses
  %i.acx = phi i32 [ %.pre21.i1247, %bb.hl ], [ %i.acp, %bb.hk ]
  %i.acy = icmp slt i32 %i.acx, 9
  br i1 %i.acy, label %transcode_char_start.exit1249, label %bb.hm

end_hunk_9
begin_hunk_10_@transcode_restartable0:bb.a
  br i1 %.not.i.i1251, label %ruby_nonempty_memcpy.exit.i1255, label %bb.io

bb.io:                                            ; preds = %bb.in
  %8 = getelementptr i8, ptr %i.agv, i64 %i.agn
  %i.agw = ptrtoint ptr %.281157 to i64
  %i.agx = sub i64 %i.agw, %i.agj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %8, ptr noundef nonnull readonly align 1 %.27, i64 noundef range(i64 1, 0) %i.agx, i1 noundef false) #20
  %.pre.i1252 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1253 = getelementptr i8, ptr %.pre.i1252, i64 60
end_hunk_10
begin_hunk_11_@transcode_restartable0:bb.a
  br label %ruby_nonempty_memcpy.exit.i1255

ruby_nonempty_memcpy.exit.i1255:                  ; preds = %bb.io, %bb.in
  %i.agy = phi ptr [ %.pre.i1252, %bb.io ], [ %i.agp, %bb.in ] ; 2 uses
  %i.agz = phi i32 [ %.pre21.i1254, %bb.io ], [ %i.agr, %bb.in ]
  %i.aha = icmp slt i32 %i.agz, 9
  br i1 %i.aha, label %transcode_char_start.exit1256, label %bb.ip

end_hunk_11
begin_hunk_12_@transcode_restartable0:bb.a
  br i1 %.not.i.i1258, label %ruby_nonempty_memcpy.exit.i1262, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %9 = getelementptr i8, ptr %i.aib, i64 %i.agn
  %i.aic = ptrtoint ptr %.281157 to i64
  %i.aid = sub i64 %i.aic, %i.agj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull readonly align 1 %.27, i64 noundef range(i64 1, 0) %i.aid, i1 noundef false) #20
  %.pre.i1259 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1260 = getelementptr i8, ptr %.pre.i1259, i64 60
end_hunk_12
begin_hunk_13_@transcode_restartable0:bb.a
  br label %ruby_nonempty_memcpy.exit.i1262

ruby_nonempty_memcpy.exit.i1262:                  ; preds = %bb.ix, %bb.iw
  %i.aie = phi ptr [ %.pre.i1259, %bb.ix ], [ %i.ahv, %bb.iw ] ; 2 uses
  %i.aif = phi i32 [ %.pre21.i1261, %bb.ix ], [ %i.ahx, %bb.iw ]
  %i.aig = icmp slt i32 %i.aif, 9
  br i1 %i.aig, label %transcode_char_start.exit1263, label %bb.iy

end_hunk_13
