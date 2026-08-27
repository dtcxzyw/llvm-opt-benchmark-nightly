Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  store i64 20, ptr %i.xx, align 8, !tbaa !12
  %i.xy = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %107, i32 noundef 0)
          to label %bb.fw unwind label %bb.gf

bb.fv:                                            ; preds = %bb.fu
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.fw:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %.not616 = icmp eq i32 %i.xy, 0
  br i1 %.not616, label %bb.gh, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  store i64 %spec.select2507, ptr %37, align 8
  store ptr @.str.130, ptr %38, align 8, !tbaa !7
  %i.ya = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 12, ptr %i.ya, align 8, !tbaa !12
  store ptr @.str.251, ptr %39, align 8, !tbaa !7
  %i.yb = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 8, ptr %i.yb, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %38, ptr noundef nonnull dead_on_return %39)
          to label %.noexc1071 unwind label %bb.gg

.noexc1071:                                       ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store i32 1, ptr %i.r, align 4, !tbaa !3
  store ptr @.str.135, ptr %36, align 8, !tbaa !7
  %i.yc = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 21, ptr %i.yc, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %36, i64 263, ptr noundef nonnull %i.r)
          to label %.noexc1072 unwind label %bb.gg

.noexc1072:                                       ; preds = %.noexc1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.yd = trunc i64 %spec.select2507 to i8        ; 5 uses
  %i.ye = icmp eq i8 %i.yd, 2
  %i.yf = getelementptr inbounds nuw i8, ptr %37, i64 1
  %i.yg = lshr i64 %spec.select2507, 8
  %i.yh = trunc i64 %i.yg to i8                   ; 2 uses
  %i.yi = icmp eq i8 %i.yh, 1                     ; 3 uses
  %or.cond.i.i = select i1 %i.ye, i1 %i.yi, i1 false
  %i.yj = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.yk = lshr i64 %spec.select2507, 32           ; 2 uses
  %i.yl = trunc nuw i64 %i.yk to i32
  %.not.i.i1067 = icmp eq i64 %i.yk, 0            ; 3 uses
  %or.cond.i1068 = select i1 %or.cond.i.i, i1 %.not.i.i1067, i1 false
  br i1 %or.cond.i1068, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread.i: ; preds = %.noexc1072
  %i.ym = icmp eq i8 %i.yd, 3
  %or.cond.i8.i = select i1 %i.ym, i1 %i.yi, i1 false
  %or.cond39.i = select i1 %or.cond.i8.i, i1 %.not.i.i1067, i1 false
  br i1 %or.cond39.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread.i, %.noexc1072
  store i32 64, ptr %i.bi, align 8, !tbaa !41
  store i32 64, ptr %i.bl, align 4, !tbaa !60
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread.i
  %i.yn = icmp eq i8 %i.yd, 4
  %or.cond.i11.i = select i1 %i.yn, i1 %i.yi, i1 false
  %or.cond41.i = select i1 %or.cond.i11.i, i1 %.not.i.i1067, i1 false
  br i1 %or.cond41.i, label %bb.fy, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.i

bb.fy:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i
  store i64 261, ptr %37, align 8
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.i: ; preds = %bb.fy, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i
  %i.yo = phi i32 [ %i.yl, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i ], [ 0, %bb.fy ] ; 2 uses
  %i.yp = phi i8 [ %i.yh, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i ], [ 1, %bb.fy ] ; 2 uses
  %i.yq = phi i8 [ %i.yd, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit10.thread.i ], [ 5, %bb.fy ] ; 3 uses
  %i.yr = icmp eq i8 %i.yq, 5
  %i.ys = icmp eq i8 %i.yp, 1                     ; 2 uses
  %or.cond.i14.i = select i1 %i.yr, i1 %i.ys, i1 false
  %.not.i15.i = icmp eq i32 %i.yo, 0              ; 2 uses
  %or.cond43.i = select i1 %or.cond.i14.i, i1 %.not.i15.i, i1 false
  br i1 %or.cond43.i, label %bb.fz, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i

bb.fz:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.i
  store i32 64, ptr %i.bi, align 8, !tbaa !41
  store i32 32, ptr %i.bl, align 4, !tbaa !60
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.i
  %i.yt = icmp eq i8 %i.yq, 12
  %or.cond.i17.i = select i1 %i.yt, i1 %i.ys, i1 false
  %or.cond45.i = select i1 %or.cond.i17.i, i1 %.not.i15.i, i1 false
  br i1 %or.cond45.i, label %bb.ga, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i

bb.ga:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i
  store i64 267, ptr %37, align 8
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i: ; preds = %bb.ga, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i, %bb.fz, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i
  %i.yu = phi i32 [ %i.yo, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i ], [ 0, %bb.ga ], [ 0, %bb.fz ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i ]
  %i.yv = phi i8 [ %i.yp, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i ], [ 1, %bb.ga ], [ 1, %bb.fz ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i ]
  %i.yw = phi i8 [ %i.yq, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit16.thread.i ], [ 11, %bb.ga ], [ 5, %bb.fz ], [ %i.yd, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit13.thread.thread.i ]
  br i1 %i.xw, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i
  %i.yx = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_18TypeDesc17is_floating_pointEv(ptr noundef nonnull align 4 dereferenceable(8) %37) #30
  br i1 %i.yx, label %._crit_edge.i, label %.thread.i1069

._crit_edge.i:                                    ; preds = %bb.gb
  %.pre.i1070 = load i8, ptr %37, align 8, !tbaa !121
  %.pre50.i = load i8, ptr %i.yf, align 1
  %.pre51.i = load i32, ptr %i.yj, align 4
  br label %bb.gc

.thread.i1069:                                    ; preds = %bb.gb
  store i64 267, ptr %37, align 8
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i

bb.gc:                                            ; preds = %._crit_edge.i, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i
  %i.yy = phi i32 [ %.pre51.i, %._crit_edge.i ], [ %i.yu, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i ]
  %i.yz = phi i8 [ %.pre50.i, %._crit_edge.i ], [ %i.yv, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i ]
  %i.za = phi i8 [ %.pre.i1070, %._crit_edge.i ], [ %i.yw, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit19.thread.i ] ; 2 uses
  %i.zb = icmp eq i8 %i.za, 10
  %i.zc = icmp eq i8 %i.yz, 1                     ; 2 uses
  %or.cond.i20.i = select i1 %i.zb, i1 %i.zc, i1 false
  %.not.i21.i = icmp eq i32 %i.yy, 0              ; 2 uses
  %or.cond47.i = select i1 %or.cond.i20.i, i1 %.not.i21.i, i1 false
  br i1 %or.cond47.i, label %bb.gd, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i: ; preds = %bb.gc, %.thread.i1069
  %.not.i2167.i = phi i1 [ true, %.thread.i1069 ], [ %.not.i21.i, %bb.gc ]
  %i.zd = phi i1 [ true, %.thread.i1069 ], [ %i.zc, %bb.gc ]
  %i.ze = phi i8 [ 11, %.thread.i1069 ], [ %i.za, %bb.gc ]
  %i.zf = icmp eq i8 %i.ze, 11
  %or.cond.i23.i = select i1 %i.zf, i1 %i.zd, i1 false
  %or.cond49.i = select i1 %or.cond.i23.i, i1 %.not.i2167.i, i1 false
  br i1 %or.cond49.i, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i, %bb.gc
  store i32 32, ptr %i.bi, align 8, !tbaa !41
  store i32 32, ptr %i.bl, align 4, !tbaa !60
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit22.thread.i
  %.sroa.0.0.copyload.i = load i64, ptr %37, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  br label %bb.gm

bb.gf:                                            ; preds = %bb.gh, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.gg:                                            ; preds = %.noexc1071, %bb.fx
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.gh:                                            ; preds = %bb.fw
  store ptr @.str.73, ptr %108, align 8, !tbaa !7
  %i.zi = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i64 19, ptr %i.zi, align 8, !tbaa !12
  %i.zj = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %108, i32 noundef 0)
          to label %bb.gi unwind label %bb.gf

bb.gi:                                            ; preds = %bb.gh
  %.not617 = icmp eq i32 %i.zj, 0
  br i1 %.not617, label %bb.gm, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  store ptr @.str.130, ptr %34, align 8, !tbaa !7
  %i.zk = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 12, ptr %i.zk, align 8, !tbaa !12
  store ptr @.str.131, ptr %35, align 8, !tbaa !7
  %i.zl = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 6, ptr %i.zl, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %34, ptr noundef nonnull dead_on_return %35)
          to label %bb.gk unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 64, ptr %i.bi, align 8, !tbaa !41
  store i32 64, ptr %i.bl, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.gm:                                            ; preds = %bb.gi, %bb.gk, %bb.ge
  %.sroa.02330.1.in = phi i64 [ %spec.select2507, %bb.gi ], [ %spec.select2507, %bb.gk ], [ %.sroa.0.0.copyload.i, %bb.ge ] ; 7 uses
  %.sroa.17.sroa.0.1.in = lshr i64 %.sroa.02330.1.in, 32 ; 2 uses
  %.sroa.172377.1.in = lshr i64 %.sroa.02330.1.in, 16 ; 3 uses
  store ptr @.str.74, ptr %109, align 8, !tbaa !7
  %i.zn = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i64 20, ptr %i.zn, align 8, !tbaa !12
  %i.zo = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %109, i32 noundef 1024)
          to label %bb.gn unwind label %bb.gx

bb.gn:                                            ; preds = %bb.gm
  %i.zp = load ptr, ptr %64, align 16, !tbaa !80
  %i.zq = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zp)
          to label %bb.go unwind label %bb.gy

bb.go:                                            ; preds = %bb.gn
  %i.zr = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.zq, i1 noundef zeroext false) #30
  %i.zs = shl nsw i32 %i.zo, 20
  %i.zt = sext i32 %i.zs to i64
  %i.zu = icmp ult i64 %i.zr, %i.zt
  store ptr @.str.75, ptr %110, align 8, !tbaa !7
  %i.zv = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i64 14, ptr %i.zv, align 8, !tbaa !12
  %i.zw = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %110, i32 noundef 0)
          to label %bb.gp unwind label %bb.gz

bb.gp:                                            ; preds = %bb.go
  %i.zx = icmp ne i32 %i.zw, 0                    ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.zy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %33) #30 ; 0 uses
  %i.zz = load i64, ptr %33, align 8, !tbaa !32
  %i.aaa = mul nsw i64 %i.zz, 1000000000
  %i.aab = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !34
  %i.aad = add nsw i64 %i.aaa, %i.aac             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  %i.aae = load i8, ptr %57, align 8, !tbaa !26, !range !122, !noundef !123
  %i.aaf = trunc nuw i8 %i.aae to i1
  br i1 %i.aaf, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aag = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.aah = sub nsw i64 %i.aad, %i.aag
  %i.aai = call noundef i64 @llvm.abs.i64(i64 %i.aah, i1 true)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.aaj = phi i64 [ %i.aai, %bb.gq ], [ 0, %bb.gp ] ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 19 uses
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !124
  %i.aam = add nsw i64 %i.aal, %i.aaj
  store i64 %i.aam, ptr %i.aak, align 8, !tbaa !124
  store i64 %i.aad, ptr %i.ba, align 8, !tbaa !35
  store i8 1, ptr %57, align 8, !tbaa !26
  %i.aan = uitofp nneg i64 %i.aaj to double
  %i.aao = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !39
  %i.aap = fmul double %i.aao, %i.aan
  store double %i.aap, ptr %i.ae, align 8, !tbaa !39
  %i.aaq = invoke noundef i64 @_ZN11OpenImageIO4v3_17Sysutil11memory_usedEb(i1 noundef zeroext true)
          to label %bb.gs unwind label %bb.hb     ; 2 uses

bb.gs:                                            ; preds = %bb.gr
  %i.aar = load i64, ptr %i.ab, align 8, !tbaa !18
  %.sroa.speculated2326 = call i64 @llvm.umax.i64(i64 %i.aar, i64 %i.aaq) ; 2 uses
  store i64 %.sroa.speculated2326, ptr %i.ab, align 8, !tbaa !18
  br i1 %i.zx, label %bb.gt, label %.thread2424

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #30
  %i.aas = load double, ptr %i.ae, align 8, !tbaa !39
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %111, double noundef %i.aas, i32 noundef 2)
          to label %bb.gu unwind label %bb.hc

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil9memformatB5cxx11Exi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %112, i64 noundef %i.aaq, i32 noundef 1)
          to label %bb.gv unwind label %bb.hd

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN3fmt3v125printIJRA5_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr nonnull @.str.76, i64 19, ptr noundef nonnull align 1 dereferenceable(5) @.str.77, ptr noundef nonnull align 8 dereferenceable(32) %111, ptr noundef nonnull align 8 dereferenceable(32) %112)
          to label %bb.gw unwind label %bb.he

bb.gw:                                            ; preds = %bb.gv
  %i.aat = load ptr, ptr %112, align 8, !tbaa !19 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 2 uses
  %i.aav = icmp eq ptr %i.aat, %i.aau
  br i1 %i.aav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074: ; preds = %bb.gw
  %i.aaw = load i64, ptr %i.aau, align 8, !tbaa !21
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aax) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #30
  %i.aay = load ptr, ptr %111, align 8, !tbaa !19 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 2 uses
  %i.aba = icmp eq ptr %i.aay, %i.aaz
  br i1 %i.aba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1078, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076
  %i.abb = load i64, ptr %i.aaz, align 8, !tbaa !21
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abc) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1078

bb.gx:                                            ; preds = %bb.gm
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.gy:                                            ; preds = %bb.gn
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.gz:                                            ; preds = %bb.go
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.body1063

bb.ha:                                            ; preds = %bb.hf, %bb.nz, %.thread2425
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.atk

bb.hb:                                            ; preds = %bb.gr
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %bb.atk

bb.hc:                                            ; preds = %bb.gt
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085

bb.hd:                                            ; preds = %bb.gu
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082

bb.he:                                            ; preds = %bb.gv
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abl = load ptr, ptr %112, align 8, !tbaa !19 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 2 uses
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1080

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1080: ; preds = %bb.he
  %i.abo = load i64, ptr %i.abm, align 8, !tbaa !21
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1080, %bb.hd
  %.pn618 = phi { ptr, i32 } [ %i.abj, %bb.hd ], [ %i.abk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1080 ], [ %i.abk, %bb.he ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #30
  %i.abq = load ptr, ptr %111, align 8, !tbaa !19 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 2 uses
  %i.abs = icmp eq ptr %i.abq, %i.abr
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1083

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1083: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082
  %i.abt = load i64, ptr %i.abr, align 8, !tbaa !21
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1083, %bb.hc
  %.pn618.pn = phi { ptr, i32 } [ %i.abi, %bb.hc ], [ %.pn618, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1083 ], [ %.pn618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #30
  br label %bb.atk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1078: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1077
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #30
  br i1 %i.bz, label %bb.hf, label %bb.hv

.thread2424:                                      ; preds = %bb.gs
  br i1 %i.bz, label %.thread2425, label %bb.hv

bb.hf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1078
  %i.abv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.78, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1087 unwind label %bb.ha ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1087: ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #30
  %i.abw = load ptr, ptr %64, align 16, !tbaa !80
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf4nameEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %113, ptr noundef nonnull align 8 dereferenceable(16) %i.abw)
          to label %bb.hg unwind label %bb.hl

bb.hg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1087
  %i.abx = load ptr, ptr %i.by, align 8, !tbaa !68
  %i.aby = getelementptr i8, ptr %i.abx, i64 -24
  %i.abz = load i64, ptr %i.aby, align 8          ; 2 uses
  %i.aca = getelementptr inbounds i8, ptr %i.by, i64 %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !125
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %bb.hh, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

bb.hh:                                            ; preds = %bb.hg
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  call void @_ZdlPvm(ptr noundef %i.cci, i64 noundef %i.ccl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425

bb.wj:                                            ; preds = %bb.wg, %bb.wf
  %i.ccm = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccm, ptr %202, align 8, !tbaa !7
  %i.ccn = load i64, ptr %i.bzk, align 8, !tbaa !22
  store i64 %i.ccn, ptr %i.bzv, align 8, !tbaa !12
  store ptr @.str.115, ptr %203, align 8, !tbaa !7
  store i64 1, ptr %i.bzw, align 8, !tbaa !12
  %i.cco = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %202, ptr noundef nonnull dead_on_return %203)
          to label %bb.wk unwind label %bb.wi

bb.wk:                                            ; preds = %bb.wj
  br i1 %i.cco, label %bb.wr, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.ccp = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccp, ptr %204, align 8, !tbaa !7
  %i.ccq = load i64, ptr %i.bzk, align 8, !tbaa !22
  store i64 %i.ccq, ptr %i.bzx, align 8, !tbaa !12
  store ptr @.str.116, ptr %205, align 8, !tbaa !7
  store i64 2, ptr %i.bzy, align 8, !tbaa !12
  %i.ccr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %204, ptr noundef nonnull dead_on_return %205)
          to label %bb.wm unwind label %bb.wi

bb.wm:                                            ; preds = %bb.wl
  br i1 %i.ccr, label %bb.wr, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.ccs = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccs, ptr %206, align 8, !tbaa !7
  %i.cct = load i64, ptr %i.bzk, align 8, !tbaa !22
  store i64 %i.cct, ptr %i.bzz, align 8, !tbaa !12
  store ptr @.str.117, ptr %207, align 8, !tbaa !7
  store i64 5, ptr %i.caa, align 8, !tbaa !12
  %i.ccu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %206, ptr noundef nonnull dead_on_return %207)
          to label %bb.wo unwind label %bb.wi

bb.wo:                                            ; preds = %bb.wn
  br i1 %i.ccu, label %bb.wr, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.ccv = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccv, ptr %208, align 8, !tbaa !7
  %i.ccw = load i64, ptr %i.bzk, align 8, !tbaa !22
  store i64 %i.ccw, ptr %i.cab, align 8, !tbaa !12
  store ptr @.str.118, ptr %209, align 8, !tbaa !7
  store i64 6, ptr %i.cac, align 8, !tbaa !12
  %i.ccx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %208, ptr noundef nonnull dead_on_return %209)
          to label %bb.wq unwind label %bb.wi

bb.wq:                                            ; preds = %bb.wp
  br i1 %i.ccx, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq, %bb.wo, %bb.wm, %bb.wk
  %i.ccy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ccy, ptr %i.cad, align 4, !tbaa !220
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %bb.wq
  %i.ccz = load ptr, ptr %193, align 8, !tbaa !19 ; 2 uses
  %i.cda = icmp eq ptr %i.ccz, %i.bzj
  br i1 %i.cda, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426: ; preds = %bb.ws
  %i.cdb = load i64, ptr %i.bzj, align 8, !tbaa !21
  %i.cdc = add i64 %i.cdb, 1
  call void @_ZdlPvm(ptr noundef %i.ccz, i64 noundef %i.cdc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428: ; preds = %bb.ws, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1426
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #30
  %.pre2636.a = load i32, ptr %i.bzf, align 4, !tbaa !171
  br label %bb.wt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425: ; preds = %bb.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423, %bb.wh
  %.pn830 = phi { ptr, i32 } [ %i.ccg, %bb.wh ], [ %i.cch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423 ], [ %i.cch, %bb.wi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #30
  br label %bb.wu

bb.wt:                                            ; preds = %bb.vt, %bb.vu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428
  %i.cdd = phi i32 [ %i.caw, %bb.vt ], [ %i.caw, %bb.vu ], [ %.pre2636.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1428 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cde = sext i32 %i.cdd to i64
  %i.cdf = icmp slt i64 %indvars.iv.next, %i.cde
  br i1 %i.cdf, label %bb.vt, label %._crit_edge2579, !llvm.loop !221

bb.wu:                                            ; preds = %bb.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425, %bb.vr
  %.pn830.pn.pn = phi { ptr, i32 } [ %i.cau, %bb.vr ], [ %.pn830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425 ], [ %i.cav, %bb.vs ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %190) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #30
  br label %bb.atd

bb.wv:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1417.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1417
  br i1 %i.tw, label %bb.ww, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread

bb.ww:                                            ; preds = %bb.wv
  %i.cdg = load ptr, ptr %64, align 16, !tbaa !80
  %i.cdh = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cdg)
          to label %bb.wx unwind label %bb.xd

bb.wx:                                            ; preds = %bb.ww
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 60
  %i.cdj = load i32, ptr %i.cdi, align 4, !tbaa !171
  %.not684 = icmp eq i32 %i.cdj, 1
  br i1 %.not684, label %bb.xf, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #30
  %i.cdk = load ptr, ptr %64, align 16, !tbaa !80
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf4nameEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %210, ptr noundef nonnull align 8 dereferenceable(16) %i.cdk)
          to label %bb.wz unwind label %bb.xe

bb.wz:                                            ; preds = %bb.wy
  %i.cdl = load ptr, ptr %64, align 16, !tbaa !80
  %i.cdm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cdl)
          to label %bb.xa unwind label %bb.xe

bb.xa:                                            ; preds = %bb.wz
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !222
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.cdo = load ptr, ptr %210, align 8, !tbaa !7, !noalias !222
  %i.cdp = getelementptr inbounds nuw i8, ptr %210, i64 8
  %i.cdq = load i64, ptr %i.cdp, align 8, !tbaa !12, !noalias !222
  store ptr %i.cdo, ptr %25, align 16, !tbaa !21, !noalias !222
  %i.cdr = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.cdq, ptr %i.cdr, align 8, !tbaa !21, !noalias !222
  %i.cds = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cdt = load i32, ptr %i.cdn, align 4, !tbaa !3, !noalias !228
  store i32 %i.cdt, ptr %i.cds, align 16, !tbaa !21, !alias.scope !225, !noalias !222
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull @.str.119, i64 57, i64 29, ptr nonnull %25)
          to label %.noexc1434 unwind label %bb.xe

.noexc1434:                                       ; preds = %bb.xa
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !222
  %i.cdu = load ptr, ptr %27, align 8, !tbaa !19
  store ptr %i.cdu, ptr %26, align 8, !tbaa !7
  %i.cdv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cdw = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cdx = load i64, ptr %i.cdw, align 8, !tbaa !22
  store i64 %i.cdx, ptr %i.cdv, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %26)
          to label %bb.xb unwind label %bb.xc

bb.xb:                                            ; preds = %.noexc1434
  %i.cdy = load ptr, ptr %27, align 8, !tbaa !19  ; 2 uses
  %i.cdz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.cea = icmp eq ptr %i.cdy, %i.cdz
  br i1 %i.cea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432: ; preds = %bb.xb
  %i.ceb = load i64, ptr %i.cdz, align 8, !tbaa !21
  %i.cec = add i64 %i.ceb, 1
  call void @_ZdlPvm(ptr noundef %i.cdy, i64 noundef %i.cec) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1433

bb.xc:                                            ; preds = %.noexc1434
  %i.ced = landingpad { ptr, i32 }
          cleanup
  %i.cee = load ptr, ptr %27, align 8, !tbaa !19  ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ceg = icmp eq ptr %i.cee, %i.cef
  br i1 %i.ceg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1429: ; preds = %bb.xc
  %i.ceh = load i64, ptr %i.cef, align 8, !tbaa !21
  %i.cei = add i64 %i.ceh, 1
  call void @_ZdlPvm(ptr noundef %i.cee, i64 noundef %i.cei) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1430: ; preds = %bb.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1429
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %.body1435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1433: ; preds = %bb.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #30
  br label %bb.atb

bb.xd:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread, %bb.ww
  %i.cej = landingpad { ptr, i32 }
          cleanup
  br label %bb.atd

bb.xe:                                            ; preds = %bb.xa, %bb.wz, %bb.wy
  %i.cek = landingpad { ptr, i32 }
          cleanup
  br label %.body1435

.body1435:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1430, %bb.xe
  %eh.lpad-body1436 = phi { ptr, i32 } [ %i.cek, %bb.xe ], [ %i.ced, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1430 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #30
  br label %bb.atd

bb.xf:                                            ; preds = %bb.wx
  %i.cel = icmp eq i64 %.sroa.17.sroa.0.1.in, 0   ; 2 uses
  %i.cem = and i64 %.sroa.02330.1.in, 65534
  %or.cond2462.not3300 = icmp eq i64 %i.cem, 266
  %or.cond3295 = and i1 %or.cond2462.not3300, %i.cel
  br i1 %or.cond3295, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread: ; preds = %bb.xf
  %i.cen = and i64 %.sroa.02330.1.in, 65535
  %or.cond.i1447 = icmp eq i64 %i.cen, 268
  %or.cond2464.not = and i1 %or.cond.i1447, %i.cel ; 2 uses
  %spec.select = select i1 %or.cond2464.not, i64 12, i64 11
  %spec.select2469 = select i1 %or.cond2464.not, i64 %.sroa.172377.1.in, i64 0
  br label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread: ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread, %bb.xf, %bb.wv
  %.sroa.02330.2 = phi i64 [ %.sroa.02330.1.in, %bb.wv ], [ %spec.select, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread ], [ %.sroa.02330.1.in, %bb.xf ]
  %.sroa.14.2 = phi i64 [ %.sroa.02330.1.in, %bb.wv ], [ 256, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread ], [ 256, %bb.xf ]
  %.sroa.172377.2.a = phi i64 [ %.sroa.172377.1.in, %bb.wv ], [ %spec.select2469, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread ], [ %.sroa.172377.1.in, %bb.xf ]
  %.sroa.17.sroa.0.2 = phi i64 [ %.sroa.17.sroa.0.1.in, %bb.wv ], [ 0, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1444.thread ], [ 0, %bb.xf ]
  store ptr @.str.120, ptr %211, align 8, !tbaa !7
  %i.ceo = getelementptr inbounds nuw i8, ptr %211, i64 8
  store i64 25, ptr %i.ceo, align 8, !tbaa !12
  %i.cep = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %211, i32 noundef 0)
          to label %bb.xg unwind label %bb.xd

bb.xg:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1448.thread
  %.not685 = icmp eq i32 %i.cep, 0
  br i1 %.not685, label %bb.xk, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.ceq = load ptr, ptr %64, align 16, !tbaa !80
  %i.cer = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ceq)
          to label %bb.xi unwind label %bb.xj     ; 10 uses

bb.xi:                                            ; preds = %bb.xh
  store i32 0, ptr %i.cer, align 8, !tbaa !205
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cer, i64 24
  store i32 0, ptr %i.ces, align 8, !tbaa !208
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cer, i64 4
  store i32 0, ptr %i.cet, align 4, !tbaa !206
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cer, i64 28
  store i32 0, ptr %i.ceu, align 4, !tbaa !209
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cer, i64 8
  store i32 0, ptr %i.cev, align 8, !tbaa !207
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cer, i64 32
  store i32 0, ptr %i.cew, align 8, !tbaa !210
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cer, i64 12
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cer, i64 36
  %i.cez = load <2 x i32>, ptr %i.cex, align 4, !tbaa !3
  store <2 x i32> %i.cez, ptr %i.cey, align 4, !tbaa !3
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cer, i64 20
  %i.cfb = load i32, ptr %i.cfa, align 4, !tbaa !212
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cer, i64 44
  store i32 %i.cfb, ptr %i.cfc, align 4, !tbaa !211
  br label %bb.xk

bb.xj:                                            ; preds = %bb.xh
  %i.cfd = landingpad { ptr, i32 }
          cleanup
  br label %bb.atd

bb.xk:                                            ; preds = %bb.xi, %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #30
  %i.cfe = load ptr, ptr %64, align 16, !tbaa !80
  %i.cff = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cfe)
          to label %bb.xl unwind label %bb.xy

bb.xl:                                            ; preds = %bb.xk
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %212, ptr noundef nonnull align 8 dereferenceable(160) %i.cff)
          to label %bb.xm unwind label %bb.xy

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #30
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %213, ptr noundef nonnull align 8 dereferenceable(160) %212)
          to label %bb.xn unwind label %bb.xz

bb.xn:                                            ; preds = %bb.xm
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #30
  invoke void @_ZN11OpenImageIO4v3_17get_roiERKNS0_9ImageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %214, ptr noundef nonnull align 8 dereferenceable(160) %213)
          to label %bb.xo unwind label %bb.ya

bb.xo:                                            ; preds = %bb.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #30
  invoke void @_ZN11OpenImageIO4v3_112get_roi_fullERKNS0_9ImageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %215, ptr noundef nonnull align 8 dereferenceable(160) %213)
          to label %bb.xp unwind label %bb.yb

bb.xp:                                            ; preds = %bb.xo
  %i.cfg = load i32, ptr %215, align 4, !tbaa !3
  %i.cfh = load i32, ptr %214, align 4, !tbaa !3
  %i.cfi = call i32 @llvm.smin.i32(i32 %i.cfg, i32 %i.cfh)
  store i32 %i.cfi, ptr %214, align 4, !tbaa !156
  %i.cfj = getelementptr inbounds nuw i8, ptr %214, i64 8 ; 4 uses
  %i.cfk = getelementptr inbounds nuw i8, ptr %215, i64 8 ; 2 uses
  %i.cfl = load i32, ptr %i.cfk, align 4, !tbaa !3
  %i.cfm = load i32, ptr %i.cfj, align 4, !tbaa !3
  %i.cfn = call i32 @llvm.smin.i32(i32 %i.cfl, i32 %i.cfm)
  store i32 %i.cfn, ptr %i.cfj, align 4, !tbaa !229
  %i.cfo = getelementptr inbounds nuw i8, ptr %214, i64 16 ; 4 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %215, i64 16 ; 2 uses
  %i.cfq = load i32, ptr %i.cfp, align 4, !tbaa !3
  %i.cfr = load i32, ptr %i.cfo, align 4, !tbaa !3
  %i.cfs = call i32 @llvm.smin.i32(i32 %i.cfq, i32 %i.cfr)
  store i32 %i.cfs, ptr %i.cfo, align 4, !tbaa !230
  %i.cft = getelementptr inbounds nuw i8, ptr %214, i64 4 ; 4 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %215, i64 4 ; 2 uses
  %i.cfv = load i32, ptr %i.cft, align 4, !tbaa !3
  %i.cfw = load i32, ptr %i.cfu, align 4, !tbaa !3
  %i.cfx = call i32 @llvm.smax.i32(i32 %i.cfv, i32 %i.cfw)
  store i32 %i.cfx, ptr %i.cft, align 4, !tbaa !231
  %i.cfy = getelementptr inbounds nuw i8, ptr %214, i64 12 ; 4 uses
  %i.cfz = getelementptr inbounds nuw i8, ptr %215, i64 12 ; 2 uses
  %i.cga = load i32, ptr %i.cfy, align 4, !tbaa !3
  %i.cgb = load i32, ptr %i.cfz, align 4, !tbaa !3
  %i.cgc = call i32 @llvm.smax.i32(i32 %i.cga, i32 %i.cgb)
  store i32 %i.cgc, ptr %i.cfy, align 4, !tbaa !232
  %i.cgd = getelementptr inbounds nuw i8, ptr %214, i64 20 ; 4 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %215, i64 20 ; 2 uses
  %i.cgf = load i32, ptr %i.cgd, align 4, !tbaa !3
  %i.cgg = load i32, ptr %i.cge, align 4, !tbaa !3
  %i.cgh = call i32 @llvm.smax.i32(i32 %i.cgf, i32 %i.cgg)
  store i32 %i.cgh, ptr %i.cgd, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #30
  invoke void @_ZN11OpenImageIO4v3_17get_roiERKNS0_9ImageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %216, ptr noundef nonnull align 8 dereferenceable(160) %212)
          to label %bb.xq unwind label %bb.yc

bb.xq:                                            ; preds = %bb.xp
  %i.cgi = load i32, ptr %214, align 4, !tbaa !156 ; 2 uses
  %i.cgj = load i32, ptr %216, align 4, !tbaa !156
  %.not.i1455 = icmp eq i32 %i.cgi, %i.cgj
  br i1 %.not.i1455, label %bb.xr, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xr:                                            ; preds = %bb.xq
  %i.cgk = load i32, ptr %i.cft, align 4, !tbaa !231
  %i.cgl = getelementptr inbounds nuw i8, ptr %216, i64 4
  %i.cgm = load i32, ptr %i.cgl, align 4, !tbaa !231
  %.not16.i = icmp eq i32 %i.cgk, %i.cgm
  br i1 %.not16.i, label %bb.xs, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xs:                                            ; preds = %bb.xr
  %i.cgn = load i32, ptr %i.cfj, align 4, !tbaa !229
  %i.cgo = getelementptr inbounds nuw i8, ptr %216, i64 8
  %i.cgp = load i32, ptr %i.cgo, align 4, !tbaa !229
  %.not17.i = icmp eq i32 %i.cgn, %i.cgp
  br i1 %.not17.i, label %bb.xt, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xt:                                            ; preds = %bb.xs
  %i.cgq = load i32, ptr %i.cfy, align 4, !tbaa !232
  %i.cgr = getelementptr inbounds nuw i8, ptr %216, i64 12
  %i.cgs = load i32, ptr %i.cgr, align 4, !tbaa !232
  %.not18.i = icmp eq i32 %i.cgq, %i.cgs
  br i1 %.not18.i, label %bb.xu, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xu:                                            ; preds = %bb.xt
  %i.cgt = load i32, ptr %i.cfo, align 4, !tbaa !230
  %i.cgu = getelementptr inbounds nuw i8, ptr %216, i64 16
  %i.cgv = load i32, ptr %i.cgu, align 4, !tbaa !230
  %.not19.i = icmp eq i32 %i.cgt, %i.cgv
  br i1 %.not19.i, label %bb.xv, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xv:                                            ; preds = %bb.xu
  %i.cgw = load i32, ptr %i.cgd, align 4, !tbaa !233
  %i.cgx = getelementptr inbounds nuw i8, ptr %216, i64 20
  %i.cgy = load i32, ptr %i.cgx, align 4, !tbaa !233
  %.not20.i = icmp eq i32 %i.cgw, %i.cgy
  br i1 %.not20.i, label %bb.xw, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

bb.xw:                                            ; preds = %bb.xv
  %i.cgz = getelementptr inbounds nuw i8, ptr %214, i64 24
  %i.cha = load i32, ptr %i.cgz, align 4, !tbaa !234
  %i.chb = getelementptr inbounds nuw i8, ptr %216, i64 24
  %i.chc = load i32, ptr %i.chb, align 4, !tbaa !234
  %.not21.i1456 = icmp eq i32 %i.cha, %i.chc
  br i1 %.not21.i1456, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit, label %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread

_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread: ; preds = %bb.xw, %bb.xv, %bb.xu, %bb.xt, %bb.xs, %bb.xr, %bb.xq
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #30
  br label %bb.xx

_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit:      ; preds = %bb.xw
  %i.chd = getelementptr inbounds nuw i8, ptr %214, i64 28
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !235
  %i.chf = getelementptr inbounds nuw i8, ptr %216, i64 28
  %i.chg = load i32, ptr %i.chf, align 4, !tbaa !235
  %.not2499.a = icmp eq i32 %i.che, %i.chg
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #30
  br i1 %.not2499.a, label %bb.yd, label %bb.xx

bb.xx:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit.thread, %_ZN11OpenImageIO4v3_1neERKNS0_3ROIES3_.exit
  invoke void @_ZN11OpenImageIO4v3_17set_roiERNS0_9ImageSpecERKNS0_3ROIE(ptr noundef nonnull align 8 dereferenceable(160) %213, ptr noundef nonnull align 4 dereferenceable(32) %214)
          to label %._crit_edge2637 unwind label %bb.yb

._crit_edge2637:                                  ; preds = %bb.xx
  %.pre2638.a = load i32, ptr %214, align 4, !tbaa !156
  br label %bb.yd

bb.xy:                                            ; preds = %bb.xl, %bb.xk
  %i.chh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ata

bb.xz:                                            ; preds = %bb.xm
  %i.chi = landingpad { ptr, i32 }
          cleanup
  br label %bb.asz

bb.ya:                                            ; preds = %bb.xn
  %i.chj = landingpad { ptr, i32 }
          cleanup
  br label %bb.asy

bb.yb:                                            ; preds = %bb.xx, %bb.xo
  %i.chk = landingpad { ptr, i32 }
          cleanup
  br label %bb.asx

bb.yc:                                            ; preds = %bb.xp
  %i.chl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #30
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  store ptr @.str.272, ptr %10, align 8, !tbaa !7
  %i.efo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 14, ptr %i.efo, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %213, ptr noundef nonnull dead_on_return %10, i64 267, ptr noundef nonnull %i.b)
          to label %.noexc1812 unwind label %.loopexit.split-lp

.noexc1812:                                       ; preds = %.noexc1811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.apq

bb.apq:                                           ; preds = %.noexc1812, %.noexc1808
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.efp = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #30 ; 0 uses
  %i.efq = load i64, ptr %9, align 8, !tbaa !32
  %i.efr = mul nsw i64 %i.efq, 1000000000
  %i.efs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eft = load i64, ptr %i.efs, align 8, !tbaa !34
  %i.efu = add nsw i64 %i.efr, %i.eft             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.efv = load i8, ptr %57, align 8, !tbaa !26, !range !122, !noundef !123
  %i.efw = trunc nuw i8 %i.efv to i1
  br i1 %i.efw, label %bb.apr, label %bb.aps

bb.apr:                                           ; preds = %bb.apq
  %i.efx = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.efy = sub nsw i64 %i.efu, %i.efx
  %i.efz = call noundef i64 @llvm.abs.i64(i64 %i.efy, i1 true)
  br label %bb.aps

bb.aps:                                           ; preds = %bb.apr, %bb.apq
  %i.ega = phi i64 [ %i.efz, %bb.apr ], [ 0, %bb.apq ] ; 2 uses
  %i.egb = load i64, ptr %i.aak, align 8, !tbaa !124
  %i.egc = add nsw i64 %i.egb, %i.ega
  store i64 %i.egc, ptr %i.aak, align 8, !tbaa !124
  store i64 %i.efu, ptr %i.ba, align 8, !tbaa !35
  store i8 1, ptr %57, align 8, !tbaa !26
  %i.egd = uitofp nneg i64 %i.ega to double
  %i.ege = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !39
  %i.egf = fmul double %i.ege, %i.egd
  store double %i.egf, ptr %i.at, align 8, !tbaa !39
  %i.egg = invoke noundef i64 @_ZN11OpenImageIO4v3_17Sysutil11memory_usedEb(i1 noundef zeroext true)
          to label %bb.apt unwind label %bb.apy   ; 2 uses

bb.apt:                                           ; preds = %bb.aps
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated2099, i64 %i.egg)
  store i64 %.sroa.speculated, ptr %i.ab, align 8, !tbaa !18
  br i1 %i.zx, label %bb.apu, label %bb.aqc

bb.apu:                                           ; preds = %bb.apt
  call void @llvm.lifetime.start.p0(ptr nonnull %397) #30
  %i.egh = load double, ptr %i.at, align 8, !tbaa !39
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %397, double noundef %i.egh, i32 noundef 2)
          to label %bb.apv unwind label %bb.apz

bb.apv:                                           ; preds = %bb.apu
  call void @llvm.lifetime.start.p0(ptr nonnull %398) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil9memformatB5cxx11Exi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %398, i64 noundef %i.egg, i32 noundef 1)
          to label %bb.apw unwind label %bb.aqa

bb.apw:                                           ; preds = %bb.apv
  invoke void @_ZN3fmt3v125printIJRA6_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr nonnull @.str.76, i64 19, ptr noundef nonnull align 1 dereferenceable(6) @.str.217, ptr noundef nonnull align 8 dereferenceable(32) %397, ptr noundef nonnull align 8 dereferenceable(32) %398)
          to label %bb.apx unwind label %bb.aqb

bb.apx:                                           ; preds = %bb.apw
  %i.egi = load ptr, ptr %398, align 8, !tbaa !19 ; 2 uses
  %i.egj = getelementptr inbounds nuw i8, ptr %398, i64 16 ; 2 uses
  %i.egk = icmp eq ptr %i.egi, %i.egj
  br i1 %i.egk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1817, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1815

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1815: ; preds = %bb.apx
  %i.egl = load i64, ptr %i.egj, align 8, !tbaa !21
  %i.egm = add i64 %i.egl, 1
  call void @_ZdlPvm(ptr noundef %i.egi, i64 noundef %i.egm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1817

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1817: ; preds = %bb.apx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1815
  call void @llvm.lifetime.end.p0(ptr nonnull %398) #30
  %i.egn = load ptr, ptr %397, align 8, !tbaa !19 ; 2 uses
  %i.ego = getelementptr inbounds nuw i8, ptr %397, i64 16 ; 2 uses
  %i.egp = icmp eq ptr %i.egn, %i.ego
  br i1 %i.egp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1818

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1817
  %i.egq = load i64, ptr %i.ego, align 8, !tbaa !21
  %i.egr = add i64 %i.egq, 1
  call void @_ZdlPvm(ptr noundef %i.egn, i64 noundef %i.egr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1820

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1820: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1817, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1818
  call void @llvm.lifetime.end.p0(ptr nonnull %397) #30
  br label %bb.aqc

bb.apy:                                           ; preds = %bb.aps
  %i.egs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.apz:                                           ; preds = %bb.apu
  %i.egt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1826

bb.aqa:                                           ; preds = %bb.apv
  %i.egu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823

bb.aqb:                                           ; preds = %bb.apw
  %i.egv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.egw = load ptr, ptr %398, align 8, !tbaa !19 ; 2 uses
  %i.egx = getelementptr inbounds nuw i8, ptr %398, i64 16 ; 2 uses
  %i.egy = icmp eq ptr %i.egw, %i.egx
  br i1 %i.egy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1821

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1821: ; preds = %bb.aqb
  %i.egz = load i64, ptr %i.egx, align 8, !tbaa !21
  %i.eha = add i64 %i.egz, 1
  call void @_ZdlPvm(ptr noundef %i.egw, i64 noundef %i.eha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823: ; preds = %bb.aqb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1821, %bb.aqa
  %.pn785 = phi { ptr, i32 } [ %i.egu, %bb.aqa ], [ %i.egv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1821 ], [ %i.egv, %bb.aqb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %398) #30
  %i.ehb = load ptr, ptr %397, align 8, !tbaa !19 ; 2 uses
  %i.ehc = getelementptr inbounds nuw i8, ptr %397, i64 16 ; 2 uses
  %i.ehd = icmp eq ptr %i.ehb, %i.ehc
  br i1 %i.ehd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1826, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1824

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1824: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823
  %i.ehe = load i64, ptr %i.ehc, align 8, !tbaa !21
  %i.ehf = add i64 %i.ehe, 1
  call void @_ZdlPvm(ptr noundef %i.ehb, i64 noundef %i.ehf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1826

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1826: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1824, %bb.apz
  %.pn785.pn = phi { ptr, i32 } [ %i.egt, %bb.apz ], [ %.pn785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1824 ], [ %.pn785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1823 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %397) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.aqc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1820, %bb.apt
  store ptr @.str.218, ptr %399, align 8, !tbaa !7
  %i.ehg = getelementptr inbounds nuw i8, ptr %399, i64 8
  store i64 15, ptr %i.ehg, align 8, !tbaa !12
  %i.ehh = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %399, i32 noundef 0)
          to label %bb.aqd unwind label %bb.aqj

bb.aqd:                                           ; preds = %bb.aqc
  %i.ehi = getelementptr inbounds nuw i8, ptr %400, i64 16 ; 7 uses
  store ptr %i.ehi, ptr %400, align 8, !tbaa !16
  %i.ehj = load ptr, ptr %77, align 8, !tbaa !19  ; 2 uses
  %i.ehk = load i64, ptr %i.ob, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ehk, ptr %i.a, align 8, !tbaa !18
  %i.ehl = icmp ugt i64 %i.ehk, 15
  br i1 %i.ehl, label %.noexc.i1828, label %._crit_edge.i.i1827

.noexc.i1828:                                     ; preds = %bb.aqd
  %i.ehm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %400, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1829 unwind label %bb.aqk ; 2 uses

.noexc1829:                                       ; preds = %.noexc.i1828
  store ptr %i.ehm, ptr %400, align 8, !tbaa !19
  %i.ehn = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ehn, ptr %i.ehi, align 8, !tbaa !21
  br label %._crit_edge.i.i1827

._crit_edge.i.i1827:                              ; preds = %.noexc1829, %bb.aqd
  %i.eho = phi ptr [ %i.ehm, %.noexc1829 ], [ %i.ehi, %bb.aqd ] ; 2 uses
  switch i64 %i.ehk, label %bb.aqf [
    i64 1, label %bb.aqe
    i64 0, label %bb.aqg
  ]

bb.aqe:                                           ; preds = %._crit_edge.i.i1827
  %i.ehp = load i8, ptr %i.ehj, align 1, !tbaa !21
  store i8 %i.ehp, ptr %i.eho, align 1, !tbaa !21
  br label %bb.aqg

bb.aqf:                                           ; preds = %._crit_edge.i.i1827
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eho, ptr align 1 %i.ehj, i64 %i.ehk, i1 false)
  br label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf, %bb.aqe, %._crit_edge.i.i1827
  %i.ehq = load i64, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.ehr = getelementptr inbounds nuw i8, ptr %400, i64 8
  store i64 %i.ehq, ptr %i.ehr, align 8, !tbaa !22
  %i.ehs = load ptr, ptr %400, align 8, !tbaa !19
  %i.eht = getelementptr inbounds nuw i8, ptr %i.ehs, i64 %i.ehq
  store i8 0, ptr %i.eht, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not789 = icmp eq i32 %i.ehh, 0
  %i.ehu = load ptr, ptr %102, align 8, !tbaa !113
  %.sroa.172377.0.insert.shift = shl nuw i64 %.sroa.17.sroa.0.2, 32
  %.sroa.17.0.insert.ext = shl nuw i64 %.sroa.172377.2.a, 16
  %.sroa.17.0.insert.shift = and i64 %.sroa.17.0.insert.ext, 4294901760
  %.sroa.17.0.insert.insert = or disjoint i64 %.sroa.172377.0.insert.shift, %.sroa.17.0.insert.shift
  %.sroa.14.0.insert.ext = and i64 %.sroa.14.2, 65280
  %.sroa.14.0.insert.insert = or disjoint i64 %.sroa.17.0.insert.insert, %.sroa.14.0.insert.ext
  %.sroa.02330.0.insert.ext = and i64 %.sroa.02330.2, 255
  %.sroa.02330.0.insert.insert = or disjoint i64 %.sroa.14.0.insert.insert, %.sroa.02330.0.insert.ext
  %not. = xor i1 %i.tw, true
  %i.ehv = and i1 %.not789, %not.
  %i.ehw = load ptr, ptr %316, align 8, !tbaa !19
  store ptr %i.ehw, ptr %401, align 8, !tbaa !7
  %i.ehx = getelementptr inbounds nuw i8, ptr %401, i64 8
  %i.ehy = load i64, ptr %i.dte, align 8, !tbaa !22
  store i64 %i.ehy, ptr %i.ehx, align 8, !tbaa !12
  %i.ehz = invoke fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm(i32 noundef %.2359, ptr noundef nonnull align 8 dereferenceable(16) %322, ptr noundef nonnull align 8 dereferenceable(160) %213, ptr noundef %400, ptr noundef %i.ehu, i64 %.sroa.02330.0.insert.insert, i1 noundef zeroext %i.ehv, ptr noundef dead_on_return %401, ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.aqh unwind label %bb.aql   ; 2 uses

bb.aqh:                                           ; preds = %bb.aqg
  %i.eia = load ptr, ptr %400, align 8, !tbaa !19 ; 2 uses
  %i.eib = icmp eq ptr %i.eia, %i.ehi
  br i1 %i.eib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831: ; preds = %bb.aqh
  %i.eic = load i64, ptr %i.ehi, align 8, !tbaa !21
  %i.eid = add i64 %i.eic, 1
  call void @_ZdlPvm(ptr noundef %i.eia, i64 noundef %i.eid) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833: ; preds = %bb.aqh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1831
  %i.eie = load ptr, ptr %102, align 8, !tbaa !113 ; 3 uses
  store ptr null, ptr %102, align 8, !tbaa !113
  %.not.i.i1834 = icmp eq ptr %i.eie, null
  br i1 %.not.i.i1834, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_111ImageOutputESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_111ImageOutputEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_111ImageOutputEEclEPS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833
  %i.eif = load ptr, ptr %i.eie, align 8, !tbaa !68
  %i.eig = getelementptr inbounds nuw i8, ptr %i.eif, i64 8
  %i.eih = load ptr, ptr %i.eig, align 8
  call void %i.eih(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.eie) #30, !inline_history !331
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_111ImageOutputESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_111ImageOutputESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1833, %_ZNKSt14default_deleteIN11OpenImageIO4v3_111ImageOutputEEclEPS2_.exit.i.i
  %or.cond58 = and i1 %i.pj, %i.ehz
  %or.cond61 = and i1 %i.bz, %or.cond58
  br i1 %or.cond61, label %bb.aqi, label %bb.aqm

bb.aqi:                                           ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_111ImageOutputESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.eii = load ptr, ptr %77, align 8, !tbaa !19
  store ptr %i.eii, ptr %402, align 8, !tbaa !7
  %i.eij = getelementptr inbounds nuw i8, ptr %402, i64 8
  %i.eik = load i64, ptr %i.ob, align 8, !tbaa !22
  store i64 %i.eik, ptr %i.eij, align 8, !tbaa !12
  %i.eil = load i64, ptr %i.ac, align 8, !tbaa !18
  call void @_ZN11OpenImageIO4v3_110Filesystem15last_write_timeENS0_17basic_string_viewIcSt11char_traitsIcEEEl(ptr noundef nonnull dead_on_return %402, i64 noundef %i.eil) #30
  br label %bb.aqm

bb.aqj:                                           ; preds = %bb.aqc
  %i.eim = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.aqk:                                           ; preds = %.noexc.i1828, %bb.aqv, %bb.aqt, %.thread2454
  %i.ein = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.aql:                                           ; preds = %bb.aqg
  %i.eio = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eip = load ptr, ptr %400, align 8, !tbaa !19 ; 2 uses
  %i.eiq = icmp eq ptr %i.eip, %i.ehi
  br i1 %i.eiq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1835

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1835: ; preds = %bb.aql
  %i.eir = load i64, ptr %i.ehi, align 8, !tbaa !21
  %i.eis = add i64 %i.eir, 1
  call void @_ZdlPvm(ptr noundef %i.eip, i64 noundef %i.eis) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.aqm:                                           ; preds = %bb.aqi, %_ZNSt10unique_ptrIN11OpenImageIO4v3_111ImageOutputESt14default_deleteIS2_EE5resetEPS2_.exit
  br i1 %i.ehz, label %bb.aqn, label %.thread2454

bb.aqn:                                           ; preds = %bb.aqm
  call void @llvm.lifetime.start.p0(ptr nonnull %403) #30
  %i.eit = getelementptr inbounds nuw i8, ptr %403, i64 16 ; 6 uses
  store ptr %i.eit, ptr %403, align 8, !tbaa !16
  %i.eiu = getelementptr inbounds nuw i8, ptr %403, i64 8
  store i64 0, ptr %i.eiu, align 8, !tbaa !22
  store i8 0, ptr %i.eit, align 8, !tbaa !21
  %i.eiv = load ptr, ptr %77, align 8, !tbaa !19
  store ptr %i.eiv, ptr %404, align 8, !tbaa !7
  %i.eiw = getelementptr inbounds nuw i8, ptr %404, i64 8
  %i.eix = load i64, ptr %i.ob, align 8, !tbaa !22
  store i64 %i.eix, ptr %i.eiw, align 8, !tbaa !12
  %i.eiy = load ptr, ptr %3, align 8, !tbaa !19
  store ptr %i.eiy, ptr %405, align 8, !tbaa !7
  %i.eiz = getelementptr inbounds nuw i8, ptr %405, i64 8
  %i.eja = load i64, ptr %i.ie, align 8, !tbaa !22
  store i64 %i.eja, ptr %i.eiz, align 8, !tbaa !12
  %i.ejb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6renameENS0_17basic_string_viewIcSt11char_traitsIcEEES5_RNSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr noundef nonnull dead_on_return %404, ptr noundef nonnull dead_on_return %405, ptr noundef nonnull align 8 dereferenceable(32) %403)
          to label %bb.aqo unwind label %bb.aqq   ; 2 uses

bb.aqo:                                           ; preds = %bb.aqn
  br i1 %i.ejb, label %bb.aqr, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  invoke void @_ZN11OpenImageIO4v3_18errorfmtIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.219, ptr noundef nonnull align 8 dereferenceable(32) %403)
          to label %bb.aqr unwind label %bb.aqq

bb.aqq:                                           ; preds = %bb.aqp, %bb.aqn
  %i.ejc = landingpad { ptr, i32 }
          cleanup
  %i.ejd = load ptr, ptr %403, align 8, !tbaa !19 ; 2 uses
  %i.eje = icmp eq ptr %i.ejd, %i.eit
  br i1 %i.eje, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838: ; preds = %bb.aqq
  %i.ejf = load i64, ptr %i.eit, align 8, !tbaa !21
  %i.ejg = add i64 %i.ejf, 1
  call void @_ZdlPvm(ptr noundef %i.ejd, i64 noundef %i.ejg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840: ; preds = %bb.aqq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838
  call void @llvm.lifetime.end.p0(ptr nonnull %403) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837

bb.aqr:                                           ; preds = %bb.aqp, %bb.aqo
  %i.ejh = load ptr, ptr %403, align 8, !tbaa !19 ; 2 uses
  %i.eji = icmp eq ptr %i.ejh, %i.eit
  br i1 %i.eji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841: ; preds = %bb.aqr
  %i.ejj = load i64, ptr %i.eit, align 8, !tbaa !21
  %i.ejk = add i64 %i.ejj, 1
  call void @_ZdlPvm(ptr noundef %i.ejh, i64 noundef %i.ejk) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842: ; preds = %bb.aqr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1841
  call void @llvm.lifetime.end.p0(ptr nonnull %403) #30
  br i1 %i.ejb, label %bb.aqs, label %.thread2454

.thread2454:                                      ; preds = %bb.aqm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842
  %i.ejl = load ptr, ptr %77, align 8, !tbaa !19
  store ptr %i.ejl, ptr %406, align 8, !tbaa !7
  %i.ejm = getelementptr inbounds nuw i8, ptr %406, i64 8
  %i.ejn = load i64, ptr %i.ob, align 8, !tbaa !22
  store i64 %i.ejn, ptr %i.ejm, align 8, !tbaa !12
  %i.ejo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6removeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %406)
          to label %bb.aqs unwind label %bb.aqk   ; 0 uses

bb.aqs:                                           ; preds = %.thread2454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842
  %.0340.in2457 = phi i1 [ false, %.thread2454 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1842 ]
  br i1 %i.zx, label %bb.aqx, label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs
  store ptr @.str.220, ptr %407, align 8, !tbaa !7
  %i.ejp = getelementptr inbounds nuw i8, ptr %407, i64 8
  store i64 15, ptr %i.ejp, align 8, !tbaa !12
  %i.ejq = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %407, i32 noundef 0)
          to label %bb.aqu unwind label %bb.aqk

bb.aqu:                                           ; preds = %bb.aqt
  %.not790 = icmp eq i32 %i.ejq, 0
  br i1 %.not790, label %bb.aqv, label %bb.aqx

bb.aqv:                                           ; preds = %bb.aqu
  store ptr @.str.221, ptr %408, align 8, !tbaa !7
  %i.ejr = getelementptr inbounds nuw i8, ptr %408, i64 8
  store i64 12, ptr %i.ejr, align 8, !tbaa !12
  %i.ejs = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %408, i32 noundef 0)
          to label %bb.aqw unwind label %bb.aqk

bb.aqw:                                           ; preds = %bb.aqv
  %.not791 = icmp eq i32 %i.ejs, 0
  br i1 %.not791, label %bb.arq, label %bb.aqx

bb.aqx:                                           ; preds = %bb.aqw, %bb.aqu, %bb.aqs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #30
  %i.ejt = load i8, ptr %57, align 8, !tbaa !26, !range !122, !noundef !123
  %i.eju = trunc nuw i8 %i.ejt to i1
  br i1 %i.eju, label %bb.aqy, label %bb.aqz

bb.aqy:                                           ; preds = %bb.aqx
  %i.ejv = load i64, ptr %i.ba, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ejw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #30 ; 0 uses
  %i.ejx = load i64, ptr %8, align 8, !tbaa !32
  %i.ejy = mul nsw i64 %i.ejx, 1000000000
  %i.ejz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eka = load i64, ptr %i.ejz, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ekb = sub i64 %i.eka, %i.ejv
  %i.ekc = add i64 %i.ekb, %i.ejy
  %i.ekd = call noundef i64 @llvm.abs.i64(i64 %i.ekc, i1 true)
  br label %bb.aqz

bb.aqz:                                           ; preds = %bb.aqy, %bb.aqx
  %i.eke = phi i64 [ %i.ekd, %bb.aqy ], [ 0, %bb.aqx ]
  %i.ekf = load i64, ptr %i.aak, align 8, !tbaa !124
  %i.ekg = add nsw i64 %i.ekf, %i.eke
  %i.ekh = sitofp i64 %i.ekg to double
  %i.eki = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !39
  %i.ekj = fmul double %i.eki, %i.ekh
end_hunk_2
