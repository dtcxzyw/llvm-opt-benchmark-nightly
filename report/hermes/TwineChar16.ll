inline.NumInlined: 120
inline.NumDeleted: 68
begin_hunk_0_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %.tr.lcssa272 = phi ptr [ %.tr, %tailrecurse ]  ; 6 uses
  %.tr10.lcssa266 = phi ptr [ %.tr10, %tailrecurse ] ; 6 uses
  %.tr12.lcssa260 = phi i64 [ %.tr12, %tailrecurse ] ; 14 uses
end_hunk_0
begin_hunk_1_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  %i.r = shl nuw i64 %n.vec121, 1
  %i.s = getelementptr i8, ptr %.tr.lcssa272, i64 %i.r
  %i.t = getelementptr i8, ptr %.tr10.lcssa266, i64 %n.vec121
  %scevgep287.a = getelementptr i8, ptr %.tr10, i64 8
  %scevgep290 = getelementptr i8, ptr %.tr, i64 16 ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
end_hunk_1
begin_hunk_2_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph138
  %index142 = phi i64 [ %vec.epilog.resume.val131, %vec.epilog.ph138 ], [ %index.next146, %vec.epilog.vector.body141 ] ; 3 uses
  %i.ad = shl i64 %index142, 1
  %scevgep295.a = getelementptr i8, ptr %.tr, i64 %i.ad
  %scevgep294 = getelementptr i8, ptr %.tr10, i64 %index142
  %wide.load145 = load <4 x i8>, ptr %scevgep294, align 1, !tbaa !12, !alias.scope !37
  %i.ae = sext <4 x i8> %wide.load145 to <4 x i16>
  store <4 x i16> %i.ae, ptr %scevgep295.a, align 2, !tbaa !40, !alias.scope !42, !noalias !37
end_hunk_2
begin_hunk_3_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  br label %_ZSt4copyIPKcPDsET0_T_S4_S3_.exit

bb.m:                                             ; preds = %tailrecurse
  %.tr.lcssa275 = phi ptr [ %.tr, %tailrecurse ]  ; 3 uses
  %.tr10.lcssa269 = phi ptr [ %.tr10, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
end_hunk_3
begin_hunk_4_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  %i.bf = getelementptr i8, ptr %.tr.lcssa275, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.a, i64 %n.vec
  %scevgep276 = getelementptr nuw i8, ptr %i.a, i64 8
  %scevgep279 = getelementptr i8, ptr %.tr, i64 16 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_4
begin_hunk_5_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = shl i64 %index106, 1
  %scevgep283 = getelementptr i8, ptr %.tr, i64 %i.bp
  %next.gep108 = getelementptr i8, ptr %i.a, i64 %index106
  %wide.load109 = load <4 x i8>, ptr %next.gep108, align 4, !tbaa !12
  %i.bq = sext <4 x i8> %wide.load109 to <4 x i16>
end_hunk_5
begin_hunk_6_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  br label %_ZSt4copyIPKcPDsET0_T_S4_S3_.exit

bb.n:                                             ; preds = %tailrecurse
  %.tr.lcssa271 = phi ptr [ %.tr, %tailrecurse ]  ; 3 uses
  %.tr10.lcssa265 = phi ptr [ %.tr10, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
end_hunk_6
begin_hunk_7_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  %i.cc = getelementptr i8, ptr %.tr.lcssa271, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.b, i64 %n.vec157
  %scevgep301 = getelementptr nuw i8, ptr %i.b, i64 8
  %scevgep304 = getelementptr i8, ptr %.tr, i64 16 ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
end_hunk_7
begin_hunk_8_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
vec.epilog.vector.body176:                        ; preds = %vec.epilog.vector.body176, %vec.epilog.ph173
  %index177 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph173 ], [ %index.next181, %vec.epilog.vector.body176 ] ; 3 uses
  %i.cm = shl i64 %index177, 1
  %scevgep308 = getelementptr i8, ptr %.tr, i64 %i.cm
  %next.gep179 = getelementptr i8, ptr %i.b, i64 %index177
  %wide.load180 = load <4 x i8>, ptr %next.gep179, align 4, !tbaa !12
  %i.cn = sext <4 x i8> %wide.load180 to <4 x i16>
end_hunk_8
begin_hunk_9_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  br label %_ZSt4copyIPKcPDsET0_T_S4_S3_.exit

bb.o:                                             ; preds = %tailrecurse
  %.tr.lcssa270 = phi ptr [ %.tr, %tailrecurse ]  ; 3 uses
  %.tr10.lcssa264 = phi ptr [ %.tr10, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
end_hunk_9
begin_hunk_10_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
  %i.cz = getelementptr i8, ptr %.tr.lcssa270, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.c, i64 %n.vec191
  %scevgep313 = getelementptr nuw i8, ptr %i.c, i64 8
  %scevgep316 = getelementptr i8, ptr %.tr, i64 16 ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph189
end_hunk_10
begin_hunk_11_@"_ZZNK6hermes2vm11TwineChar1611toChar16StrEPDsmENK3$_0clES2_NS1_4NodeENS1_8NodeKindEm":bb.a
vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph207
  %index211 = phi i64 [ %vec.epilog.resume.val201, %vec.epilog.ph207 ], [ %index.next215, %vec.epilog.vector.body210 ] ; 3 uses
  %i.dj = shl i64 %index211, 1
  %scevgep320 = getelementptr i8, ptr %.tr, i64 %i.dj
  %next.gep213 = getelementptr i8, ptr %i.c, i64 %index211
  %wide.load214 = load <4 x i8>, ptr %next.gep213, align 4, !tbaa !12
  %i.dk = sext <4 x i8> %wide.load214 to <4 x i16>
end_hunk_11
